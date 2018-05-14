//
// Verilog description for cell flip_flop_rising, 
// Sat May 12 15:08:52 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module flip_flop_rising ( CLK, RST, Din, Dout ) ;

    input CLK ;
    input RST ;
    input Din ;
    output Dout ;

    wire [0:0] \$dummy ;




    dffr reg_Dout (.Q (Dout), .QB (\$dummy [0]), .D (Din), .CLK (CLK), .R (RST)
         ) ;
endmodule

