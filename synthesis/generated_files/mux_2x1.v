//
// Verilog description for cell mux_2x1, 
// Wed May  2 09:47:53 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module mux_2x1 ( A, B, S, Dout ) ;

    input [31:0]A ;
    input [31:0]B ;
    input S ;
    output [31:0]Dout ;




    mux21_ni ix7 (.Y (Dout[0]), .A0 (A[0]), .A1 (B[0]), .S0 (S)) ;
    mux21_ni ix15 (.Y (Dout[1]), .A0 (A[1]), .A1 (B[1]), .S0 (S)) ;
    mux21_ni ix23 (.Y (Dout[2]), .A0 (A[2]), .A1 (B[2]), .S0 (S)) ;
    mux21_ni ix31 (.Y (Dout[3]), .A0 (A[3]), .A1 (B[3]), .S0 (S)) ;
    mux21_ni ix39 (.Y (Dout[4]), .A0 (A[4]), .A1 (B[4]), .S0 (S)) ;
    mux21_ni ix47 (.Y (Dout[5]), .A0 (A[5]), .A1 (B[5]), .S0 (S)) ;
    mux21_ni ix55 (.Y (Dout[6]), .A0 (A[6]), .A1 (B[6]), .S0 (S)) ;
    mux21_ni ix63 (.Y (Dout[7]), .A0 (A[7]), .A1 (B[7]), .S0 (S)) ;
    mux21_ni ix71 (.Y (Dout[8]), .A0 (A[8]), .A1 (B[8]), .S0 (S)) ;
    mux21_ni ix79 (.Y (Dout[9]), .A0 (A[9]), .A1 (B[9]), .S0 (S)) ;
    mux21_ni ix87 (.Y (Dout[10]), .A0 (A[10]), .A1 (B[10]), .S0 (S)) ;
    mux21_ni ix95 (.Y (Dout[11]), .A0 (A[11]), .A1 (B[11]), .S0 (S)) ;
    mux21_ni ix103 (.Y (Dout[12]), .A0 (A[12]), .A1 (B[12]), .S0 (S)) ;
    mux21_ni ix111 (.Y (Dout[13]), .A0 (A[13]), .A1 (B[13]), .S0 (S)) ;
    mux21_ni ix119 (.Y (Dout[14]), .A0 (A[14]), .A1 (B[14]), .S0 (S)) ;
    mux21_ni ix127 (.Y (Dout[15]), .A0 (A[15]), .A1 (B[15]), .S0 (S)) ;
    mux21_ni ix135 (.Y (Dout[16]), .A0 (A[16]), .A1 (B[16]), .S0 (S)) ;
    mux21_ni ix143 (.Y (Dout[17]), .A0 (A[17]), .A1 (B[17]), .S0 (S)) ;
    mux21_ni ix151 (.Y (Dout[18]), .A0 (A[18]), .A1 (B[18]), .S0 (S)) ;
    mux21_ni ix159 (.Y (Dout[19]), .A0 (A[19]), .A1 (B[19]), .S0 (S)) ;
    mux21_ni ix167 (.Y (Dout[20]), .A0 (A[20]), .A1 (B[20]), .S0 (S)) ;
    mux21_ni ix175 (.Y (Dout[21]), .A0 (A[21]), .A1 (B[21]), .S0 (S)) ;
    mux21_ni ix183 (.Y (Dout[22]), .A0 (A[22]), .A1 (B[22]), .S0 (S)) ;
    mux21_ni ix191 (.Y (Dout[23]), .A0 (A[23]), .A1 (B[23]), .S0 (S)) ;
    mux21_ni ix199 (.Y (Dout[24]), .A0 (A[24]), .A1 (B[24]), .S0 (S)) ;
    mux21_ni ix207 (.Y (Dout[25]), .A0 (A[25]), .A1 (B[25]), .S0 (S)) ;
    mux21_ni ix215 (.Y (Dout[26]), .A0 (A[26]), .A1 (B[26]), .S0 (S)) ;
    mux21_ni ix223 (.Y (Dout[27]), .A0 (A[27]), .A1 (B[27]), .S0 (S)) ;
    mux21_ni ix231 (.Y (Dout[28]), .A0 (A[28]), .A1 (B[28]), .S0 (S)) ;
    mux21_ni ix239 (.Y (Dout[29]), .A0 (A[29]), .A1 (B[29]), .S0 (S)) ;
    mux21_ni ix247 (.Y (Dout[30]), .A0 (A[30]), .A1 (B[30]), .S0 (S)) ;
    mux21_ni ix255 (.Y (Dout[31]), .A0 (A[31]), .A1 (B[31]), .S0 (S)) ;
endmodule

