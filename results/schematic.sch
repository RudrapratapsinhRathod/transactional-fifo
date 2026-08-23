# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #0000ff
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new transactional_fifo work:transactional_fifo:NOFILE -nosplit
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol RAM32M {hdi_primitives:netlist:no file specified} HIERBOX pin WCLK input.left pin WE input.left pinBus DOA output.right [1:0] pinBus DOB output.right [1:0] pinBus DOC output.right [1:0] pinBus DOD output.right [1:0] pinBus ADDRA input.left [4:0] pinBus ADDRB input.left [4:0] pinBus ADDRC input.left [4:0] pinBus ADDRD input.left [4:0] pinBus DIA input.left [1:0] pinBus DIB input.left [1:0] pinBus DIC input.left [1:0] pinBus DID input.left [1:0] fillcolor 2
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol RAM32X1D {hdi_primitives:netlist:no file specified} HIERBOX pin DPO output.right pin SPO output.right pin A0 input.left pin A1 input.left pin A2 input.left pin A3 input.left pin A4 input.left pin D input.left pin DPRA0 input.left pin DPRA1 input.left pin DPRA2 input.left pin DPRA3 input.left pin DPRA4 input.left pin WCLK input.left pin WE input.left fillcolor 2
load symbol RAM32X1D {hdi_primitives:abstract:no file specified} HIERBOX pin DPO output.right pin SPO output.right pin A0 input.left pin A1 input.left pin A2 input.left pin A3 input.left pin A4 input.left pin D input.left pin DPRA0 input.left pin DPRA1 input.left pin DPRA2 input.left pin DPRA3 input.left pin DPRA4 input.left pin WCLK input.left pin WE input.left fillcolor 2
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 1040
load port commit input -pg 1 -lvl 0 -x 0 -y 1120
load port empty output -pg 1 -lvl 20 -x 5060 -y 280
load port full output -pg 1 -lvl 20 -x 5060 -y 130
load port ren input -pg 1 -lvl 0 -x 0 -y 980
load port resetn input -pg 1 -lvl 0 -x 0 -y 1320
load port rollback input -pg 1 -lvl 0 -x 0 -y 1190
load port wen input -pg 1 -lvl 0 -x 0 -y 1230
load portBus rdata output [7:0] -attr @name rdata[7:0] -pg 1 -lvl 20 -x 5060 -y 610
load portBus wdata input [7:0] -attr @name wdata[7:0] -pg 1 -lvl 0 -x 0 -y 1260
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 270 -y 1040
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 1040
load inst commit_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 1120
load inst empty_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 280
load inst empty_OBUF_inst_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 18 -x 4650 -y 230
load inst empty_OBUF_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 17 -x 4210 -y 120
load inst full_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 130
load inst full_OBUF_inst_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 18 -x 4650 -y 80
load inst full_OBUF_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 9 -x 2120 -y 630
load inst mem_reg_0_15_0_5 RAM32M {hdi_primitives:netlist:no file specified} -autohide -attr @cell(#000000) RAM32M -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 18 -x 4650 -y 730
load inst mem_reg_0_15_0_5_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 17 -x 4210 -y 1030
load inst mem_reg_0_15_6_7 RAM32X1D {hdi_primitives:netlist:no file specified} -autohide -attr @cell(#000000) RAM32X1D -pinAttr SPO @attr n/c -pg 1 -lvl 18 -x 4650 -y 400
load inst mem_reg_0_15_6_7__0 RAM32X1D {hdi_primitives:abstract:no file specified} -autohide -attr @cell(#000000) RAM32X1D -pinAttr SPO @attr n/c -pg 1 -lvl 18 -x 4650 -y 1000
load inst rd_ptr[0]_i_1 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 4 -x 750 -y 100
load inst rd_ptr[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -x 750 -y 250
load inst rd_ptr[2]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 4 -x 750 -y 370
load inst rd_ptr[3]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 4 -x 750 -y 580
load inst rd_ptr[4]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 4 -x 750 -y 710
load inst rd_ptr[4]_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 7 -x 1540 -y 470
load inst rd_ptr_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -x 970 -y 80
load inst rd_ptr_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -x 970 -y 230
load inst rd_ptr_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -x 970 -y 380
load inst rd_ptr_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -x 970 -y 580
load inst rd_ptr_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -x 1860 -y 490
load inst rdata_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 610
load inst rdata_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 680
load inst rdata_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 750
load inst rdata_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 820
load inst rdata_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 890
load inst rdata_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 960
load inst rdata_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 1030
load inst rdata_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -x 4880 -y 1130
load inst ren_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 550 -y 820
load inst resetn_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 1320
load inst rollback_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 1190
load inst wdata_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 17 -x 4210 -y 330
load inst wdata_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 17 -x 4210 -y 530
load inst wdata_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 17 -x 4210 -y 600
load inst wdata_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 17 -x 4210 -y 670
load inst wdata_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 17 -x 4210 -y 740
load inst wdata_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 17 -x 4210 -y 810
load inst wdata_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 17 -x 4210 -y 880
load inst wdata_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 17 -x 4210 -y 1130
load inst wen_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 970 -y 1220
load inst wr_ptr_actual[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 11 -x 2540 -y 440
load inst wr_ptr_actual[1]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 2 -x 270 -y 890
load inst wr_ptr_actual[2]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 11 -x 2540 -y 530
load inst wr_ptr_actual[3]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 11 -x 2540 -y 690
load inst wr_ptr_actual[4]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 2 -x 270 -y 1110
load inst wr_ptr_actual[4]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 15 -x 3680 -y 790
load inst wr_ptr_actual[4]_i_3 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 2 -x 270 -y 1310
load inst wr_ptr_actual[4]_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 10 -x 2340 -y 570
load inst wr_ptr_actual_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -x 2800 -y 370
load inst wr_ptr_actual_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -x 550 -y 1100
load inst wr_ptr_actual_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -x 2800 -y 530
load inst wr_ptr_actual_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -x 2800 -y 760
load inst wr_ptr_actual_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -x 3900 -y 810
load inst wr_ptr_speculative[0]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 13 -x 3140 -y 300
load inst wr_ptr_speculative[1]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 13 -x 3140 -y 430
load inst wr_ptr_speculative[2]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -x 3140 -y 590
load inst wr_ptr_speculative[3]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 13 -x 3140 -y 810
load inst wr_ptr_speculative[4]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 1540 -y 950
load inst wr_ptr_speculative[4]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 6 -x 1240 -y 650
load inst wr_ptr_speculative_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -x 3440 -y 330
load inst wr_ptr_speculative_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -x 3440 -y 480
load inst wr_ptr_speculative_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -x 3440 -y 660
load inst wr_ptr_speculative_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -x 3440 -y 860
load inst wr_ptr_speculative_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -x 1860 -y 1000
load net <const0> -ground -pin mem_reg_0_15_0_5 ADDRA[4] -pin mem_reg_0_15_0_5 ADDRB[4] -pin mem_reg_0_15_0_5 ADDRC[4] -pin mem_reg_0_15_0_5 ADDRD[4] -pin mem_reg_0_15_0_5 DID[1] -pin mem_reg_0_15_0_5 DID[0] -pin mem_reg_0_15_6_7 A4 -pin mem_reg_0_15_6_7 DPRA4 -pin mem_reg_0_15_6_7__0 A4 -pin mem_reg_0_15_6_7__0 DPRA4
load net <const1> -power -pin wr_ptr_speculative_reg[0] CE -pin wr_ptr_speculative_reg[1] CE -pin wr_ptr_speculative_reg[2] CE -pin wr_ptr_speculative_reg[3] CE -pin wr_ptr_speculative_reg[4] CE
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 1040
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 1040
load net clk_IBUF_BUFG -pin clk_IBUF_BUFG_inst O -pin mem_reg_0_15_0_5 WCLK -pin mem_reg_0_15_6_7 WCLK -pin mem_reg_0_15_6_7__0 WCLK -pin rd_ptr_reg[0] C -pin rd_ptr_reg[1] C -pin rd_ptr_reg[2] C -pin rd_ptr_reg[3] C -pin rd_ptr_reg[4] C -pin wr_ptr_actual_reg[0] C -pin wr_ptr_actual_reg[1] C -pin wr_ptr_actual_reg[2] C -pin wr_ptr_actual_reg[3] C -pin wr_ptr_actual_reg[4] C -pin wr_ptr_speculative_reg[0] C -pin wr_ptr_speculative_reg[1] C -pin wr_ptr_speculative_reg[2] C -pin wr_ptr_speculative_reg[3] C -pin wr_ptr_speculative_reg[4] C
netloc clk_IBUF_BUFG 1 2 16 490 860 NJ 860 850 800 NJ 800 NJ 800 1760 820 NJ 820 NJ 820 NJ 820 2740 980 NJ 980 3300 980 NJ 980 3820 920 NJ 920 4490
load net commit -port commit -pin commit_IBUF_inst I
netloc commit 1 0 1 NJ 1120
load net commit_IBUF -pin commit_IBUF_inst O -pin wr_ptr_actual[4]_i_1 I0
netloc commit_IBUF 1 1 1 NJ 1120
load net empty -port empty -pin empty_OBUF_inst O
netloc empty 1 19 1 NJ 280
load net empty_OBUF -pin empty_OBUF_inst I -pin empty_OBUF_inst_i_1 O
netloc empty_OBUF 1 18 1 NJ 280
load net empty_OBUF_inst_i_2_n_0 -pin empty_OBUF_inst_i_1 I0 -pin empty_OBUF_inst_i_2 O -pin rd_ptr[4]_i_1 I5
netloc empty_OBUF_inst_i_2_n_0 1 3 15 710 880 NJ 880 NJ 880 NJ 880 NJ 880 NJ 880 NJ 880 NJ 880 2660J 1000 2920J 1020 NJ 1020 NJ 1020 NJ 1020 4120J 1000 4370
load net full -port full -pin full_OBUF_inst O
netloc full 1 19 1 NJ 130
load net full_OBUF -pin full_OBUF_inst I -pin full_OBUF_inst_i_1 O
netloc full_OBUF 1 18 1 NJ 130
load net full_OBUF_inst_i_2_n_0 -pin full_OBUF_inst_i_1 I0 -pin full_OBUF_inst_i_2 O -pin wr_ptr_actual[4]_i_4 I5 -pin wr_ptr_speculative[4]_i_2 I5
netloc full_OBUF_inst_i_2_n_0 1 5 13 1160 820 NJ 820 1780J 800 NJ 800 2240 90 NJ 90 NJ 90 NJ 90 NJ 90 NJ 90 NJ 90 NJ 90 NJ
load net p_0_in -pin empty_OBUF_inst_i_2 I1 -pin full_OBUF_inst_i_2 I2 -pin rd_ptr[4]_i_2 I4 -pin rd_ptr_reg[4] Q
netloc p_0_in 1 6 11 1460 620 NJ 620 2060 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ
load net p_0_in2_out -pin mem_reg_0_15_0_5 WE -pin mem_reg_0_15_0_5_i_1 O -pin mem_reg_0_15_6_7 WE -pin mem_reg_0_15_6_7__0 WE
netloc p_0_in2_out 1 17 1 4510 650n
load net p_0_in__0[0] -pin wr_ptr_speculative[0]_i_1 O -pin wr_ptr_speculative_reg[0] D
netloc p_0_in__0[0] 1 13 1 3320 330n
load net p_0_in__0[1] -pin wr_ptr_speculative[1]_i_1 O -pin wr_ptr_speculative_reg[1] D
netloc p_0_in__0[1] 1 13 1 3320 480n
load net p_0_in__0[2] -pin wr_ptr_speculative[2]_i_1 O -pin wr_ptr_speculative_reg[2] D
netloc p_0_in__0[2] 1 13 1 3280 640n
load net p_0_in__0[3] -pin wr_ptr_speculative[3]_i_1 O -pin wr_ptr_speculative_reg[3] D
netloc p_0_in__0[3] 1 13 1 3280 860n
load net p_0_in__0[4] -pin wr_ptr_speculative[4]_i_1 O -pin wr_ptr_speculative_reg[4] D
netloc p_0_in__0[4] 1 7 1 1680 1000n
load net p_0_in__1[4] -pin rd_ptr[4]_i_2 O -pin rd_ptr_reg[4] D
netloc p_0_in__1[4] 1 7 1 N 520
load net p_1_in -pin full_OBUF_inst_i_2 I3 -pin wr_ptr_actual[4]_i_2 I5 -pin wr_ptr_speculative[4]_i_1 I5 -pin wr_ptr_speculative_reg[4] Q
netloc p_1_in 1 6 9 1460 1160 NJ 1160 2060 1040 NJ 1040 NJ 1040 NJ 1040 NJ 1040 NJ 1040 3580
load net rd_ptr0 -pin rd_ptr[4]_i_1 O -pin rd_ptr_reg[0] CE -pin rd_ptr_reg[1] CE -pin rd_ptr_reg[2] CE -pin rd_ptr_reg[3] CE -pin rd_ptr_reg[4] CE
netloc rd_ptr0 1 4 4 870 480 NJ 480 1400J 440 1700
load net rd_ptr[0]_i_1_n_0 -pin rd_ptr[0]_i_1 O -pin rd_ptr_reg[0] D
netloc rd_ptr[0]_i_1_n_0 1 4 1 N 110
load net rd_ptr[1]_i_1_n_0 -pin rd_ptr[1]_i_1 O -pin rd_ptr_reg[1] D
netloc rd_ptr[1]_i_1_n_0 1 4 1 N 260
load net rd_ptr[2]_i_1_n_0 -pin rd_ptr[2]_i_1 O -pin rd_ptr_reg[2] D
netloc rd_ptr[2]_i_1_n_0 1 4 1 890 400n
load net rd_ptr[3]_i_1_n_0 -pin rd_ptr[3]_i_1 O -pin rd_ptr_reg[3] D
netloc rd_ptr[3]_i_1_n_0 1 4 1 N 610
load net rd_ptr_reg_n_0_[0] -attr @rip(#000000) 0 -pin empty_OBUF_inst_i_1 I4 -pin full_OBUF_inst_i_1 I3 -pin mem_reg_0_15_0_5 ADDRA[0] -pin mem_reg_0_15_0_5 ADDRB[0] -pin mem_reg_0_15_0_5 ADDRC[0] -pin mem_reg_0_15_6_7 DPRA0 -pin mem_reg_0_15_6_7__0 DPRA0 -pin rd_ptr[0]_i_1 I0 -pin rd_ptr[1]_i_1 I0 -pin rd_ptr[2]_i_1 I1 -pin rd_ptr[3]_i_1 I0 -pin rd_ptr[4]_i_1 I1 -pin rd_ptr[4]_i_2 I3 -pin rd_ptr_reg[0] Q -pin wr_ptr_actual[4]_i_4 I2 -pin wr_ptr_speculative[4]_i_2 I2
load net rd_ptr_reg_n_0_[1] -attr @rip(#000000) 1 -pin empty_OBUF_inst_i_1 I2 -pin full_OBUF_inst_i_1 I1 -pin mem_reg_0_15_0_5 ADDRA[1] -pin mem_reg_0_15_0_5 ADDRB[1] -pin mem_reg_0_15_0_5 ADDRC[1] -pin mem_reg_0_15_6_7 DPRA1 -pin mem_reg_0_15_6_7__0 DPRA1 -pin rd_ptr[1]_i_1 I1 -pin rd_ptr[2]_i_1 I0 -pin rd_ptr[3]_i_1 I1 -pin rd_ptr[4]_i_1 I3 -pin rd_ptr[4]_i_2 I2 -pin rd_ptr_reg[1] Q -pin wr_ptr_actual[4]_i_4 I4 -pin wr_ptr_speculative[4]_i_2 I4
load net rd_ptr_reg_n_0_[2] -attr @rip(#000000) 2 -pin empty_OBUF_inst_i_2 I4 -pin full_OBUF_inst_i_2 I4 -pin mem_reg_0_15_0_5 ADDRA[2] -pin mem_reg_0_15_0_5 ADDRB[2] -pin mem_reg_0_15_0_5 ADDRC[2] -pin mem_reg_0_15_6_7 DPRA2 -pin mem_reg_0_15_6_7__0 DPRA2 -pin rd_ptr[2]_i_1 I2 -pin rd_ptr[3]_i_1 I2 -pin rd_ptr[4]_i_2 I1 -pin rd_ptr_reg[2] Q
load net rd_ptr_reg_n_0_[3] -attr @rip(#000000) 3 -pin empty_OBUF_inst_i_2 I3 -pin full_OBUF_inst_i_2 I0 -pin mem_reg_0_15_0_5 ADDRA[3] -pin mem_reg_0_15_0_5 ADDRB[3] -pin mem_reg_0_15_0_5 ADDRC[3] -pin mem_reg_0_15_6_7 DPRA3 -pin mem_reg_0_15_6_7__0 DPRA3 -pin rd_ptr[3]_i_1 I3 -pin rd_ptr[4]_i_2 I0 -pin rd_ptr_reg[3] Q
load net rdata[0] -attr @rip(#000000) 0 -port rdata[0] -pin rdata_OBUF[0]_inst O
load net rdata[1] -attr @rip(#000000) 1 -port rdata[1] -pin rdata_OBUF[1]_inst O
load net rdata[2] -attr @rip(#000000) 2 -port rdata[2] -pin rdata_OBUF[2]_inst O
load net rdata[3] -attr @rip(#000000) 3 -port rdata[3] -pin rdata_OBUF[3]_inst O
load net rdata[4] -attr @rip(#000000) 4 -port rdata[4] -pin rdata_OBUF[4]_inst O
load net rdata[5] -attr @rip(#000000) 5 -port rdata[5] -pin rdata_OBUF[5]_inst O
load net rdata[6] -attr @rip(#000000) 6 -port rdata[6] -pin rdata_OBUF[6]_inst O
load net rdata[7] -attr @rip(#000000) 7 -port rdata[7] -pin rdata_OBUF[7]_inst O
load net rdata_OBUF[0] -attr @rip(#000000) DOA[0] -pin mem_reg_0_15_0_5 DOA[0] -pin rdata_OBUF[0]_inst I
load net rdata_OBUF[1] -attr @rip(#000000) DOA[1] -pin mem_reg_0_15_0_5 DOA[1] -pin rdata_OBUF[1]_inst I
load net rdata_OBUF[2] -attr @rip(#000000) DOB[0] -pin mem_reg_0_15_0_5 DOB[0] -pin rdata_OBUF[2]_inst I
load net rdata_OBUF[3] -attr @rip(#000000) DOB[1] -pin mem_reg_0_15_0_5 DOB[1] -pin rdata_OBUF[3]_inst I
load net rdata_OBUF[4] -attr @rip(#000000) DOC[0] -pin mem_reg_0_15_0_5 DOC[0] -pin rdata_OBUF[4]_inst I
load net rdata_OBUF[5] -attr @rip(#000000) DOC[1] -pin mem_reg_0_15_0_5 DOC[1] -pin rdata_OBUF[5]_inst I
load net rdata_OBUF[6] -pin mem_reg_0_15_6_7 DPO -pin rdata_OBUF[6]_inst I
netloc rdata_OBUF[6] 1 18 1 4820 530n
load net rdata_OBUF[7] -pin mem_reg_0_15_6_7__0 DPO -pin rdata_OBUF[7]_inst I
netloc rdata_OBUF[7] 1 18 1 N 1130
load net ren -port ren -pin ren_IBUF_inst I
netloc ren 1 0 3 NJ 980 NJ 980 450J
load net ren_IBUF -pin rd_ptr[4]_i_1 I0 -pin ren_IBUF_inst O
netloc ren_IBUF 1 3 1 670J 720n
load net resetn -port resetn -pin resetn_IBUF_inst I
netloc resetn 1 0 1 NJ 1320
load net resetn_IBUF -pin resetn_IBUF_inst O -pin wr_ptr_actual[4]_i_3 I0
netloc resetn_IBUF 1 1 1 NJ 1320
load net rollback -port rollback -pin rollback_IBUF_inst I
netloc rollback 1 0 1 NJ 1190
load net rollback_IBUF -pin mem_reg_0_15_0_5_i_1 I1 -pin rollback_IBUF_inst O -pin wr_ptr_actual[4]_i_1 I1 -pin wr_ptr_speculative[0]_i_1 I1 -pin wr_ptr_speculative[1]_i_1 I1 -pin wr_ptr_speculative[2]_i_1 I1 -pin wr_ptr_speculative[3]_i_1 I1 -pin wr_ptr_speculative[4]_i_1 I1
netloc rollback_IBUF 1 1 16 210 1280 NJ 1280 NJ 1280 NJ 1280 NJ 1280 1420 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 3000 1000 NJ 1000 NJ 1000 NJ 1000 4020
load net wdata[0] -attr @rip(#000000) wdata[0] -port wdata[0] -pin wdata_IBUF[0]_inst I
load net wdata[1] -attr @rip(#000000) wdata[1] -port wdata[1] -pin wdata_IBUF[1]_inst I
load net wdata[2] -attr @rip(#000000) wdata[2] -port wdata[2] -pin wdata_IBUF[2]_inst I
load net wdata[3] -attr @rip(#000000) wdata[3] -port wdata[3] -pin wdata_IBUF[3]_inst I
load net wdata[4] -attr @rip(#000000) wdata[4] -port wdata[4] -pin wdata_IBUF[4]_inst I
load net wdata[5] -attr @rip(#000000) wdata[5] -port wdata[5] -pin wdata_IBUF[5]_inst I
load net wdata[6] -attr @rip(#000000) wdata[6] -port wdata[6] -pin wdata_IBUF[6]_inst I
load net wdata[7] -attr @rip(#000000) wdata[7] -port wdata[7] -pin wdata_IBUF[7]_inst I
load net wdata_IBUF[0] -attr @rip(#000000) 0 -pin mem_reg_0_15_0_5 DIA[0] -pin wdata_IBUF[0]_inst O
load net wdata_IBUF[1] -attr @rip(#000000) 1 -pin mem_reg_0_15_0_5 DIA[1] -pin wdata_IBUF[1]_inst O
load net wdata_IBUF[2] -attr @rip(#000000) 0 -pin mem_reg_0_15_0_5 DIB[0] -pin wdata_IBUF[2]_inst O
load net wdata_IBUF[3] -attr @rip(#000000) 1 -pin mem_reg_0_15_0_5 DIB[1] -pin wdata_IBUF[3]_inst O
load net wdata_IBUF[4] -attr @rip(#000000) 0 -pin mem_reg_0_15_0_5 DIC[0] -pin wdata_IBUF[4]_inst O
load net wdata_IBUF[5] -attr @rip(#000000) 1 -pin mem_reg_0_15_0_5 DIC[1] -pin wdata_IBUF[5]_inst O
load net wdata_IBUF[6] -pin mem_reg_0_15_6_7 D -pin wdata_IBUF[6]_inst O
netloc wdata_IBUF[6] 1 17 1 4410 510n
load net wdata_IBUF[7] -pin mem_reg_0_15_6_7__0 D -pin wdata_IBUF[7]_inst O
netloc wdata_IBUF[7] 1 17 1 4370 1110n
load net wen -port wen -pin wen_IBUF_inst I
netloc wen 1 0 5 NJ 1230 NJ 1230 NJ 1230 NJ 1230 930J
load net wen_IBUF -pin wen_IBUF_inst O -pin wr_ptr_actual[4]_i_4 I0 -pin wr_ptr_speculative[4]_i_2 I1
netloc wen_IBUF 1 5 5 1120 620 1380J 640 NJ 640 2000J 580 N
load net wr_ptr_actual[0] -pin wr_ptr_actual[0]_i_1 O -pin wr_ptr_actual_reg[0] D
netloc wr_ptr_actual[0] 1 11 1 2720 400n
load net wr_ptr_actual[1] -pin wr_ptr_actual[1]_i_1 O -pin wr_ptr_actual_reg[1] D
netloc wr_ptr_actual[1] 1 2 1 470 920n
load net wr_ptr_actual[2] -pin wr_ptr_actual[2]_i_1 O -pin wr_ptr_actual_reg[2] D
netloc wr_ptr_actual[2] 1 11 1 N 560
load net wr_ptr_actual[3] -pin wr_ptr_actual[3]_i_1 O -pin wr_ptr_actual_reg[3] D
netloc wr_ptr_actual[3] 1 11 1 2660 740n
load net wr_ptr_actual[4] -pin wr_ptr_actual[4]_i_2 O -pin wr_ptr_actual_reg[4] D
netloc wr_ptr_actual[4] 1 15 1 N 840
load net wr_ptr_actual[4]_i_1_n_0 -pin wr_ptr_actual[4]_i_1 O -pin wr_ptr_actual_reg[0] CE -pin wr_ptr_actual_reg[1] CE -pin wr_ptr_actual_reg[2] CE -pin wr_ptr_actual_reg[3] CE -pin wr_ptr_actual_reg[4] CE
netloc wr_ptr_actual[4]_i_1_n_0 1 2 14 450 1020 670J 1160 NJ 1160 NJ 1160 1380J 1180 NJ 1180 NJ 1180 NJ 1180 NJ 1180 2680 660 2980J 760 NJ 760 NJ 760 3800
load net wr_ptr_actual[4]_i_3_n_0 -pin rd_ptr_reg[0] CLR -pin rd_ptr_reg[1] CLR -pin rd_ptr_reg[2] CLR -pin rd_ptr_reg[3] CLR -pin rd_ptr_reg[4] CLR -pin wr_ptr_actual[4]_i_3 O -pin wr_ptr_actual_reg[0] CLR -pin wr_ptr_actual_reg[1] CLR -pin wr_ptr_actual_reg[2] CLR -pin wr_ptr_actual_reg[3] CLR -pin wr_ptr_actual_reg[4] CLR -pin wr_ptr_speculative_reg[0] CLR -pin wr_ptr_speculative_reg[1] CLR -pin wr_ptr_speculative_reg[2] CLR -pin wr_ptr_speculative_reg[3] CLR -pin wr_ptr_speculative_reg[4] CLR
netloc wr_ptr_actual[4]_i_3_n_0 1 2 14 490 1300 NJ 1300 910 1120 NJ 1120 NJ 1120 1700 1080 NJ 1080 NJ 1080 NJ 1080 2700 960 NJ 960 3340 960 NJ 960 3840
load net wr_ptr_actual[4]_i_4_n_0 -pin mem_reg_0_15_0_5_i_1 I0 -pin wr_ptr_actual[0]_i_1 I0 -pin wr_ptr_actual[1]_i_1 I1 -pin wr_ptr_actual[2]_i_1 I0 -pin wr_ptr_actual[3]_i_1 I2 -pin wr_ptr_actual[4]_i_2 I2 -pin wr_ptr_actual[4]_i_4 O -pin wr_ptr_speculative[0]_i_1 I2 -pin wr_ptr_speculative[1]_i_1 I3 -pin wr_ptr_speculative[2]_i_1 I2
netloc wr_ptr_actual[4]_i_4_n_0 1 1 16 210 1000 NJ 1000 NJ 1000 NJ 1000 NJ 1000 1380J 1100 1720J 1120 NJ 1120 NJ 1120 2460 640 NJ 640 3040 940 NJ 940 3600 1040 NJ 1040 NJ
load net wr_ptr_actual_reg_n_0_[0] -pin empty_OBUF_inst_i_1 I3 -pin rd_ptr[4]_i_1 I2 -pin wr_ptr_actual_reg[0] Q -pin wr_ptr_speculative[0]_i_1 I0
netloc wr_ptr_actual_reg_n_0_[0] 1 3 15 710 460 NJ 460 NJ 460 1380J 420 1760J 410 NJ 410 NJ 410 NJ 410 2660J 450 2920 210 NJ 210 NJ 210 NJ 210 4040J 370 4510
load net wr_ptr_actual_reg_n_0_[1] -pin empty_OBUF_inst_i_1 I1 -pin rd_ptr[4]_i_1 I4 -pin wr_ptr_actual_reg[1] Q -pin wr_ptr_speculative[1]_i_1 I0
netloc wr_ptr_actual_reg_n_0_[1] 1 3 15 690 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 2940 190 NJ 190 NJ 190 NJ 190 4020J 290 4490
load net wr_ptr_actual_reg_n_0_[2] -pin empty_OBUF_inst_i_2 I5 -pin wr_ptr_actual_reg[2] Q -pin wr_ptr_speculative[2]_i_1 I0
netloc wr_ptr_actual_reg_n_0_[2] 1 12 5 3020 560 NJ 560 NJ 560 NJ 560 4120
load net wr_ptr_actual_reg_n_0_[3] -pin empty_OBUF_inst_i_2 I2 -pin wr_ptr_actual_reg[3] Q -pin wr_ptr_speculative[3]_i_1 I0
netloc wr_ptr_actual_reg_n_0_[3] 1 12 5 2960 230 NJ 230 NJ 230 NJ 230 4080
load net wr_ptr_actual_reg_n_0_[4] -pin empty_OBUF_inst_i_2 I0 -pin wr_ptr_actual_reg[4] Q -pin wr_ptr_speculative[4]_i_1 I0
netloc wr_ptr_actual_reg_n_0_[4] 1 6 11 1460 920 1740J 1100 NJ 1100 NJ 1100 NJ 1100 NJ 1100 NJ 1100 NJ 1100 NJ 1100 NJ 1100 4100
load net wr_ptr_speculative[4]_i_2_n_0 -pin wr_ptr_speculative[3]_i_1 I2 -pin wr_ptr_speculative[4]_i_1 I4 -pin wr_ptr_speculative[4]_i_2 O
netloc wr_ptr_speculative[4]_i_2_n_0 1 6 7 1400 860 NJ 860 NJ 860 NJ 860 NJ 860 NJ 860 NJ
load net wr_ptr_speculative_reg_n_0_[0] -attr @rip(#000000) 0 -pin full_OBUF_inst_i_1 I4 -pin mem_reg_0_15_0_5 ADDRD[0] -pin mem_reg_0_15_6_7 A0 -pin mem_reg_0_15_6_7__0 A0 -pin wr_ptr_actual[0]_i_1 I1 -pin wr_ptr_actual[1]_i_1 I0 -pin wr_ptr_actual[2]_i_1 I1 -pin wr_ptr_actual[3]_i_1 I1 -pin wr_ptr_actual[4]_i_2 I3 -pin wr_ptr_actual[4]_i_4 I1 -pin wr_ptr_speculative[0]_i_1 I3 -pin wr_ptr_speculative[1]_i_1 I2 -pin wr_ptr_speculative[2]_i_1 I3 -pin wr_ptr_speculative[4]_i_2 I0 -pin wr_ptr_speculative_reg[0] Q
load net wr_ptr_speculative_reg_n_0_[1] -attr @rip(#000000) 1 -pin full_OBUF_inst_i_1 I2 -pin mem_reg_0_15_0_5 ADDRD[1] -pin mem_reg_0_15_6_7 A1 -pin mem_reg_0_15_6_7__0 A1 -pin wr_ptr_actual[1]_i_1 I2 -pin wr_ptr_actual[2]_i_1 I2 -pin wr_ptr_actual[3]_i_1 I0 -pin wr_ptr_actual[4]_i_2 I4 -pin wr_ptr_actual[4]_i_4 I3 -pin wr_ptr_speculative[1]_i_1 I4 -pin wr_ptr_speculative[2]_i_1 I4 -pin wr_ptr_speculative[4]_i_2 I3 -pin wr_ptr_speculative_reg[1] Q
load net wr_ptr_speculative_reg_n_0_[2] -attr @rip(#000000) 2 -pin full_OBUF_inst_i_2 I5 -pin mem_reg_0_15_0_5 ADDRD[2] -pin mem_reg_0_15_6_7 A2 -pin mem_reg_0_15_6_7__0 A2 -pin wr_ptr_actual[2]_i_1 I3 -pin wr_ptr_actual[3]_i_1 I3 -pin wr_ptr_actual[4]_i_2 I1 -pin wr_ptr_speculative[2]_i_1 I5 -pin wr_ptr_speculative[3]_i_1 I3 -pin wr_ptr_speculative[4]_i_1 I3 -pin wr_ptr_speculative_reg[2] Q
load net wr_ptr_speculative_reg_n_0_[3] -attr @rip(#000000) 3 -pin full_OBUF_inst_i_2 I1 -pin mem_reg_0_15_0_5 ADDRD[3] -pin mem_reg_0_15_6_7 A3 -pin mem_reg_0_15_6_7__0 A3 -pin wr_ptr_actual[3]_i_1 I4 -pin wr_ptr_actual[4]_i_2 I0 -pin wr_ptr_speculative[3]_i_1 I4 -pin wr_ptr_speculative[4]_i_1 I2 -pin wr_ptr_speculative_reg[3] Q
load netBundle @wdata 8 wdata[7] wdata[6] wdata[5] wdata[4] wdata[3] wdata[2] wdata[1] wdata[0] -autobundled
netbloc @wdata 1 0 17 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 NJ 1260 4140
load netBundle @rdata 8 rdata[7] rdata[6] rdata[5] rdata[4] rdata[3] rdata[2] rdata[1] rdata[0] -autobundled
netbloc @rdata 1 19 1 5040 610n
load netBundle @rdata_OBUF 2 rdata_OBUF[1] rdata_OBUF[0] -autobundled
netbloc @rdata_OBUF 1 18 1 4800 610n
load netBundle @rdata_OBUF_1 2 rdata_OBUF[3] rdata_OBUF[2] -autobundled
netbloc @rdata_OBUF_1 1 18 1 4840 750n
load netBundle @rdata_OBUF_2 2 rdata_OBUF[5] rdata_OBUF[4] -autobundled
netbloc @rdata_OBUF_2 1 18 1 4800 840n
load netBundle @rd_ptr_reg_n_0_ 4 rd_ptr_reg_n_0_[3] rd_ptr_reg_n_0_[2] rd_ptr_reg_n_0_[1] rd_ptr_reg_n_0_[0] -autobundled
netbloc @rd_ptr_reg_n_0_ 1 3 15 690 500 NJ 500 1100 550 1440 600 NJ 600 2020 600 2260 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 4060 270 4470
load netBundle @wr_ptr_speculative_reg_n_0_ 4 wr_ptr_speculative_reg_n_0_[3] wr_ptr_speculative_reg_n_0_[2] wr_ptr_speculative_reg_n_0_[1] wr_ptr_speculative_reg_n_0_[0] -autobundled
netbloc @wr_ptr_speculative_reg_n_0_ 1 1 17 190 1080 430J 1180 NJ 1180 NJ 1180 1140 950 1440 900 NJ 900 2040 780 2280 720 2480 660 2660J 680 3060 740 NJ 740 3620 940 NJ 940 NJ 940 4530
load netBundle @wdata_IBUF 2 wdata_IBUF[1] wdata_IBUF[0] -autobundled
netbloc @wdata_IBUF 1 17 1 4430 330n
load netBundle @wdata_IBUF_1 2 wdata_IBUF[3] wdata_IBUF[2] -autobundled
netbloc @wdata_IBUF_1 1 17 1 4450 600n
load netBundle @wdata_IBUF_2 2 wdata_IBUF[5] wdata_IBUF[4] -autobundled
netbloc @wdata_IBUF_2 1 17 1 4390 740n
levelinfo -pg 1 0 40 270 550 750 970 1240 1540 1860 2120 2340 2540 2800 3140 3440 3680 3900 4210 4650 4880 5060
pagesize -pg 1 -db -bbox -sgen -120 0 5170 1360
show
fullfit
#
# initialize ictrl to current module transactional_fifo work:transactional_fifo:NOFILE
ictrl init topinfo |
