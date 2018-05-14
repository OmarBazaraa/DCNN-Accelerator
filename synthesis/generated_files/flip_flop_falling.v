//
// Verilog description for cell flip_flop_falling, 
// Sat May 12 15:08:52 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module flip_flop_falling ( CLK, RST, Din, Dout ) ;

    input CLK ;
    input RST ;
    input Din ;
    output Dout ;

    wire NOT_CLK;
    wire [0:0] \$dummy ;




    dffr reg_Dout (.Q (Dout), .QB (\$dummy [0]), .D (Din), .CLK (NOT_CLK), .R (
         RST)) ;
    inv01 ix59 (.Y (NOT_CLK), .A (CLK)) ;
endmodule

