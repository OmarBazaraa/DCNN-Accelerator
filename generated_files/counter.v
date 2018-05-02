//
// Verilog description for cell counter, 
// Wed May  2 09:48:04 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module counter ( CLK, RST, Dout ) ;

    input CLK ;
    input RST ;
    inout [3:0]Dout ;

    wire NOT__8871, nx12, nx24, nx30, nx156, nx161, nx5, nx168, nx170, nx172;



    xnor2 ix25 (.Y (nx24), .A0 (Dout[2]), .A1 (nx156)) ;
    nand02 ix157 (.Y (nx156), .A0 (Dout[1]), .A1 (Dout[0])) ;
    xnor2 ix31 (.Y (nx30), .A0 (Dout[3]), .A1 (nx161)) ;
    nand03 ix162 (.Y (nx161), .A0 (Dout[2]), .A1 (Dout[1]), .A2 (Dout[0])) ;
    xnor2 ix13 (.Y (nx12), .A0 (Dout[1]), .A1 (NOT__8871)) ;
    latchr lat_Dout_0__u1 (.QB (nx5), .D (NOT__8871), .CLK (CLK), .R (RST)) ;
    inv01 lat_Dout_0__u2 (.Y (Dout[0]), .A (nx5)) ;
    buf02 lat_Dout_0__u3 (.Y (NOT__8871), .A (nx5)) ;
    latchr lat_Dout_1__u1 (.QB (nx168), .D (nx12), .CLK (CLK), .R (RST)) ;
    inv01 lat_Dout_1__u2 (.Y (Dout[1]), .A (nx168)) ;
    latchr lat_Dout_2__u1 (.QB (nx170), .D (nx24), .CLK (CLK), .R (RST)) ;
    inv01 lat_Dout_2__u2 (.Y (Dout[2]), .A (nx170)) ;
    latchr lat_Dout_3__u1 (.QB (nx172), .D (nx30), .CLK (CLK), .R (RST)) ;
    inv01 lat_Dout_3__u2 (.Y (Dout[3]), .A (nx172)) ;
endmodule

