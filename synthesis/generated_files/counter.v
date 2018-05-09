//
// Verilog description for cell counter, 
// Wed May  9 07:36:01 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module counter ( CLK, RST, Dout ) ;

    input CLK ;
    input RST ;
    inout [3:0]Dout ;

    wire NOT__140764, nx12, nx24, nx30, nx77, nx82;
    wire [2:0] \$dummy ;




    dffr reg_Dout_0 (.Q (Dout[0]), .QB (NOT__140764), .D (NOT__140764), .CLK (
         CLK), .R (RST)) ;
    dffr reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [0]), .D (nx12), .CLK (CLK), .R (
         RST)) ;
    dffr reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [1]), .D (nx24), .CLK (CLK), .R (
         RST)) ;
    xnor2 ix25 (.Y (nx24), .A0 (Dout[2]), .A1 (nx77)) ;
    nand02 ix78 (.Y (nx77), .A0 (Dout[1]), .A1 (Dout[0])) ;
    dffr reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [2]), .D (nx30), .CLK (CLK), .R (
         RST)) ;
    xnor2 ix31 (.Y (nx30), .A0 (Dout[3]), .A1 (nx82)) ;
    nand03 ix83 (.Y (nx82), .A0 (Dout[2]), .A1 (Dout[1]), .A2 (Dout[0])) ;
    xnor2 ix13 (.Y (nx12), .A0 (Dout[1]), .A1 (NOT__140764)) ;
endmodule

