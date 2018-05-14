//
// Verilog description for cell counter, 
// Sat May 12 15:08:53 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module counter ( CLK, RST, EN, Dout ) ;

    input CLK ;
    input RST ;
    input EN ;
    inout [3:0]Dout ;

    wire nx6, nx12, nx18, nx81, nx91, nx101, nx111, nx133, nx139;
    wire [3:0] \$dummy ;




    dffr reg_Dout_0 (.Q (Dout[0]), .QB (\$dummy [0]), .D (nx81), .CLK (CLK), .R (
         RST)) ;
    dffr reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [1]), .D (nx91), .CLK (CLK), .R (
         RST)) ;
    mux21_ni ix92 (.Y (nx91), .A0 (Dout[1]), .A1 (nx6), .S0 (EN)) ;
    xor2 ix7 (.Y (nx6), .A0 (Dout[1]), .A1 (Dout[0])) ;
    dffr reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [2]), .D (nx101), .CLK (CLK), .R (
         RST)) ;
    mux21_ni ix102 (.Y (nx101), .A0 (Dout[2]), .A1 (nx12), .S0 (EN)) ;
    xnor2 ix13 (.Y (nx12), .A0 (Dout[2]), .A1 (nx133)) ;
    nand02 ix134 (.Y (nx133), .A0 (Dout[1]), .A1 (Dout[0])) ;
    dffr reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [3]), .D (nx111), .CLK (CLK), .R (
         RST)) ;
    mux21_ni ix112 (.Y (nx111), .A0 (Dout[3]), .A1 (nx18), .S0 (EN)) ;
    xnor2 ix19 (.Y (nx18), .A0 (Dout[3]), .A1 (nx139)) ;
    nand03 ix140 (.Y (nx139), .A0 (Dout[2]), .A1 (Dout[1]), .A2 (Dout[0])) ;
    xor2 ix82 (.Y (nx81), .A0 (Dout[0]), .A1 (EN)) ;
endmodule

