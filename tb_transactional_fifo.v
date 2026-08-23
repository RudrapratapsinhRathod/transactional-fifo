`timescale 1ns / 1ps

module tb_transactional_fifo_simple;

    parameter WIDTH = 8;
    parameter DEPTH = 16; 

    // --- Signals ---
    reg              clk;
    reg              resetn;
    reg  [WIDTH-1:0] wdata;
    reg              wen;
    reg              commit;
    reg              rollback;
    reg              ren;
    wire [WIDTH-1:0] rdata;
    wire             empty;
    wire             full;

    integer error_count = 0;
    integer i;

    // --- Instantiate the FIFO ---
    transactional_fifo #(
        .WIDTH(WIDTH),
        .DEPTH(DEPTH)
    ) uut (
        .clk(clk), .resetn(resetn), .wdata(wdata), .wen(wen),
        .commit(commit), .rollback(rollback), .ren(ren),
        .rdata(rdata), .empty(empty), .full(full)
    );

    // --- Clock Generation ---
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz clock
    end

    // --- The Main Simple Test Sequence ---
    initial begin
        $display("=== Starting Exhaustive FIFO Tests ===");
        
        // STEP 1: INITIALIZE AND RESET
        resetn = 0; wen = 0; commit = 0; rollback = 0; ren = 0; wdata = 0;
        #20; 
        @(negedge clk) resetn = 1;

        // STEP 2: TEST A STANDARD WRITE AND COMMIT
        @(negedge clk) wdata = 8'hAA; wen = 1;
        @(negedge clk) wen = 0; commit = 1;
        @(negedge clk) commit = 0;
        
        @(negedge clk);
        if (rdata !== 8'hAA) begin
            $display("ERROR! Expected AA, but got %h", rdata);
            error_count = error_count + 1;
        end
        ren = 1; @(negedge clk) ren = 0;

        // STEP 3: TEST A ROLLBACK (DELETING DATA)
        @(negedge clk) wdata = 8'hBB; wen = 1;
        @(negedge clk) wen = 0; rollback = 1;
        @(negedge clk) rollback = 0;
        
        @(negedge clk);
        if (empty !== 1) begin
            $display("ERROR! FIFO should be empty after a rollback!");
            error_count = error_count + 1;
        end

        // STEP 4: TEST THE FULL FLAG OVERFLOW
        for (i = 0; i < DEPTH; i = i + 1) begin
            @(negedge clk) wdata = i; wen = 1;
        end
        @(negedge clk) wen = 0;
        
        @(negedge clk);
        if (full !== 1) begin
            $display("ERROR! FIFO should be full right now!");
            error_count = error_count + 1;
        end

        // STEP 5: EDGE CASE - ROLLBACK FROM FULL
        @(negedge clk) rollback = 1;
        @(negedge clk) rollback = 0;
        
        @(negedge clk);
        if (full !== 0 || empty !== 1) begin
            $display("ERROR! Failed to clear flags after rolling back from Full!");
            error_count = error_count + 1;
        end

        // STEP 6: EDGE CASE - SIMULTANEOUS WRITE & COMMIT
        @(negedge clk) wdata = 8'hCC; wen = 1; commit = 1;
        @(negedge clk) wen = 0; commit = 0;
        
        @(negedge clk);
        if (rdata !== 8'hCC || empty !== 0) begin
            $display("ERROR! Failed to handle simultaneous Write and Commit! Got: %h", rdata);
            error_count = error_count + 1;
        end
        ren = 1; @(negedge clk) ren = 0;

        // STEP 7: EDGE CASE - READ UNDERFLOW PROTECTION
        @(negedge clk) ren = 1; 
        @(negedge clk) ren = 1;
        @(negedge clk) ren = 0;
        
        @(negedge clk) wdata = 8'hDD; wen = 1;
        @(negedge clk) wen = 0; commit = 1;
        @(negedge clk) commit = 0;
        
        @(negedge clk);
        if (rdata !== 8'hDD) begin
            $display("ERROR! Read pointer broke during underflow! Got: %h", rdata);
            error_count = error_count + 1;
        end
        ren = 1; @(negedge clk) ren = 0;

        // STEP 8: EDGE CASE - WRITE OVERFLOW PROTECTION
        for (i = 0; i < DEPTH; i = i + 1) begin
            @(negedge clk) wdata = i; wen = 1;
        end
        @(negedge clk) wen = 0;
        
        @(negedge clk) wdata = 8'hEE; wen = 1;
        @(negedge clk) wen = 0; rollback = 1; 
        @(negedge clk) rollback = 0;
        
        @(negedge clk);
        if (empty !== 1) begin
            $display("ERROR! Write pointer wrapped around during overflow!");
            error_count = error_count + 1;
        end

        // STEP 9: EDGE CASE - SIGNAL CONFLICT (WRITE + ROLLBACK)
        @(negedge clk) wdata = 8'h11; wen = 1;
        @(negedge clk) wen = 0; commit = 1;
        @(negedge clk) commit = 0;
        
        @(negedge clk) wdata = 8'hFF; wen = 1; rollback = 1;
        @(negedge clk) wen = 0; rollback = 0;
        
        @(negedge clk);
        if (rdata !== 8'h11) begin
            $display("ERROR! Write bypassed Rollback priority! Got: %h", rdata);
            error_count = error_count + 1;
        end

        // STEP 10: EDGE CASE - SIMULTANEOUS READ & WRITE
        // FIFO currently holds '11'. Write/Commit '22' while reading '11'.
        @(negedge clk) wdata = 8'h22; wen = 1; commit = 1; ren = 1;
        @(negedge clk) wen = 0; commit = 0; ren = 0;
        
        @(negedge clk);
        if (rdata !== 8'h22) begin
            $display("ERROR! Simultaneous Read/Write failed. Got: %h", rdata);
            error_count = error_count + 1;
        end
        ren = 1; @(negedge clk) ren = 0;

        // STEP 11: POINTER WRAP-AROUND STRESS TEST
        // Loop twice the DEPTH to force the internal pointers to roll over
        for (i = 0; i < (DEPTH * 2); i = i + 1) begin
            @(negedge clk) wdata = i; wen = 1; commit = 1;
            @(negedge clk) wen = 0; commit = 0;
            
            @(negedge clk);
            if (rdata !== (i % 256)) begin // % 256 guards against 8-bit overflow
                $display("ERROR! Wrap-around failed at index %0d. Got: %h", i, rdata);
                error_count = error_count + 1;
            end
            ren = 1; @(negedge clk) ren = 0;
        end

        // STEP 12: ASYNCHRONOUS RESET MID-OPERATION
        @(negedge clk) wdata = 8'h99; wen = 1; 
        resetn = 0; // Smash the reset button while writing
        @(negedge clk) wen = 0;
        
        @(negedge clk) resetn = 1;
        
        @(negedge clk);
        if (empty !== 1 || full !== 0) begin
            $display("ERROR! Asynchronous reset failed to clear flags!");
            error_count = error_count + 1;
        end

        // FINAL GRADING
        $display("=== Tests Finished ===");
        if (error_count == 0)
            $display(">> SUCCESS: 0 Errors! The design is flawless. <<");
        else
            $display(">> FAILED: Found %0d Errors <<", error_count);
            
        $finish;
    end

endmodule