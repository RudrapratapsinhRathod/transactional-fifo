`timescale 1ns / 1ps

module transactional_fifo #(
    parameter WIDTH = 8,      
    parameter DEPTH = 16       
)(
    input  wire             clk,
    input  wire             resetn,
    
    // Write Interface (Speculative & Commit/Rollback)
    input  wire [WIDTH-1:0] wdata,
    input  wire             wen,
    input  wire             commit,
    input  wire             rollback,
    
    // Read Interface
    input  wire             ren,
    output wire [WIDTH-1:0] rdata,
    
    // Status Flags
    output wire             empty,
    output wire             full
);

    // Calculate the pointer width needed to represent DEPTH.
    // An extra MSB is used for accurate full/empty detection.
    localparam ADDR_WIDTH = $clog2(DEPTH);

    // Core Memory Array
    reg [WIDTH-1:0] mem [0:DEPTH-1];

    // Internal Pointers [MSB : LSB] -> [ADDR_WIDTH : 0]
    reg [ADDR_WIDTH:0] rd_ptr;
    reg [ADDR_WIDTH:0] wr_ptr_actual;
    reg [ADDR_WIDTH:0] wr_ptr_speculative;

    // Status Flags & Continuous Read Assignment
    
    // Empty: The reader has caught up to the safely committed writer.
    assign empty = (rd_ptr == wr_ptr_actual);

    // Full: The speculative writer has lapped the reader.
    assign full = (wr_ptr_speculative[ADDR_WIDTH] != rd_ptr[ADDR_WIDTH]) &&
                  (wr_ptr_speculative[ADDR_WIDTH-1:0] == rd_ptr[ADDR_WIDTH-1:0]);

    // FWFT (First-Word Fall-Through) output mapping
    assign rdata = mem[rd_ptr[ADDR_WIDTH-1:0]];

    // Memory Write Operation (Speculative)
    always @(posedge clk) begin
        if (wen && !full && !rollback) begin
            mem[wr_ptr_speculative[ADDR_WIDTH-1:0]] <= wdata;
        end
    end

    // Write Pointer Management (The Transactional Engine)
    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            wr_ptr_actual      <= 0;
            wr_ptr_speculative <= 0;
        end else begin
            if (rollback) begin
                wr_ptr_speculative <= wr_ptr_actual;
            end 
            else if (commit) begin
                if (wen && !full) begin
                    wr_ptr_actual      <= wr_ptr_speculative + 1;
                    wr_ptr_speculative <= wr_ptr_speculative + 1;
                end else begin
                    wr_ptr_actual      <= wr_ptr_speculative;
                end
            end 
            else if (wen && !full) begin
                wr_ptr_speculative <= wr_ptr_speculative + 1;
            end
        end
    end

    // Read Pointer Management
    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            rd_ptr <= 0;
        end else if (ren && !empty) begin
            rd_ptr <= rd_ptr + 1;
        end
    end

endmodule