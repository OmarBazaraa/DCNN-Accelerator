//
// Verilog description for cell adder, 
// Wed May  9 07:35:56 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module adder ( A, B, Cin, Sum, Cout ) ;

    input [15:0]A ;
    input [15:0]B ;
    input Cin ;
    output [15:0]Sum ;
    output Cout ;

    wire nx0, nx14, nx16, nx30, nx32, nx46, nx48, nx62, nx64, nx78, nx80, nx94, 
         nx96, nx110, nx112, nx228, nx231, nx234, nx237, nx240, nx243, nx246, 
         nx249, nx252, nx254, nx257, nx259, nx262, nx264, nx267, nx269, nx272, 
         nx274, nx277, nx279, nx282, nx284, nx287, nx289, nx292, nx296, nx300, 
         nx304, nx308, nx312, nx316, nx320;



    oai21 ix127 (.Y (Cout), .A0 (nx228), .A1 (nx287), .B0 (nx289)) ;
    aoi22 ix229 (.Y (nx228), .A0 (B[14]), .A1 (A[14]), .B0 (nx110), .B1 (nx112)
          ) ;
    oai21 ix111 (.Y (nx110), .A0 (nx231), .A1 (nx282), .B0 (nx284)) ;
    aoi22 ix232 (.Y (nx231), .A0 (B[12]), .A1 (A[12]), .B0 (nx94), .B1 (nx96)) ;
    oai21 ix95 (.Y (nx94), .A0 (nx234), .A1 (nx277), .B0 (nx279)) ;
    aoi22 ix235 (.Y (nx234), .A0 (B[10]), .A1 (A[10]), .B0 (nx78), .B1 (nx80)) ;
    oai21 ix79 (.Y (nx78), .A0 (nx237), .A1 (nx272), .B0 (nx274)) ;
    aoi22 ix238 (.Y (nx237), .A0 (B[8]), .A1 (A[8]), .B0 (nx62), .B1 (nx64)) ;
    oai21 ix63 (.Y (nx62), .A0 (nx240), .A1 (nx267), .B0 (nx269)) ;
    aoi22 ix241 (.Y (nx240), .A0 (B[6]), .A1 (A[6]), .B0 (nx46), .B1 (nx48)) ;
    oai21 ix47 (.Y (nx46), .A0 (nx243), .A1 (nx262), .B0 (nx264)) ;
    aoi22 ix244 (.Y (nx243), .A0 (B[4]), .A1 (A[4]), .B0 (nx30), .B1 (nx32)) ;
    oai21 ix31 (.Y (nx30), .A0 (nx246), .A1 (nx257), .B0 (nx259)) ;
    aoi22 ix247 (.Y (nx246), .A0 (B[2]), .A1 (A[2]), .B0 (nx14), .B1 (nx16)) ;
    oai21 ix15 (.Y (nx14), .A0 (nx249), .A1 (nx252), .B0 (nx254)) ;
    aoi22 ix250 (.Y (nx249), .A0 (B[0]), .A1 (A[0]), .B0 (Cin), .B1 (nx0)) ;
    xnor2 ix253 (.Y (nx252), .A0 (A[1]), .A1 (B[1])) ;
    nand02 ix255 (.Y (nx254), .A0 (B[1]), .A1 (A[1])) ;
    xnor2 ix258 (.Y (nx257), .A0 (A[3]), .A1 (B[3])) ;
    nand02 ix260 (.Y (nx259), .A0 (B[3]), .A1 (A[3])) ;
    xnor2 ix263 (.Y (nx262), .A0 (A[5]), .A1 (B[5])) ;
    nand02 ix265 (.Y (nx264), .A0 (B[5]), .A1 (A[5])) ;
    xnor2 ix268 (.Y (nx267), .A0 (A[7]), .A1 (B[7])) ;
    nand02 ix270 (.Y (nx269), .A0 (B[7]), .A1 (A[7])) ;
    xnor2 ix273 (.Y (nx272), .A0 (A[9]), .A1 (B[9])) ;
    nand02 ix275 (.Y (nx274), .A0 (B[9]), .A1 (A[9])) ;
    xnor2 ix278 (.Y (nx277), .A0 (A[11]), .A1 (B[11])) ;
    nand02 ix280 (.Y (nx279), .A0 (B[11]), .A1 (A[11])) ;
    xnor2 ix283 (.Y (nx282), .A0 (A[13]), .A1 (B[13])) ;
    nand02 ix285 (.Y (nx284), .A0 (B[13]), .A1 (A[13])) ;
    xnor2 ix288 (.Y (nx287), .A0 (A[15]), .A1 (B[15])) ;
    nand02 ix290 (.Y (nx289), .A0 (B[15]), .A1 (A[15])) ;
    xnor2 ix159 (.Y (Sum[0]), .A0 (Cin), .A1 (nx292)) ;
    xnor2 ix293 (.Y (nx292), .A0 (A[0]), .A1 (B[0])) ;
    xor2 ix157 (.Y (Sum[1]), .A0 (nx249), .A1 (nx252)) ;
    xnor2 ix155 (.Y (Sum[2]), .A0 (nx14), .A1 (nx296)) ;
    xnor2 ix297 (.Y (nx296), .A0 (A[2]), .A1 (B[2])) ;
    xor2 ix153 (.Y (Sum[3]), .A0 (nx246), .A1 (nx257)) ;
    xnor2 ix151 (.Y (Sum[4]), .A0 (nx30), .A1 (nx300)) ;
    xnor2 ix301 (.Y (nx300), .A0 (A[4]), .A1 (B[4])) ;
    xor2 ix149 (.Y (Sum[5]), .A0 (nx243), .A1 (nx262)) ;
    xnor2 ix147 (.Y (Sum[6]), .A0 (nx46), .A1 (nx304)) ;
    xnor2 ix305 (.Y (nx304), .A0 (A[6]), .A1 (B[6])) ;
    xor2 ix145 (.Y (Sum[7]), .A0 (nx240), .A1 (nx267)) ;
    xnor2 ix143 (.Y (Sum[8]), .A0 (nx62), .A1 (nx308)) ;
    xnor2 ix309 (.Y (nx308), .A0 (A[8]), .A1 (B[8])) ;
    xor2 ix141 (.Y (Sum[9]), .A0 (nx237), .A1 (nx272)) ;
    xnor2 ix139 (.Y (Sum[10]), .A0 (nx78), .A1 (nx312)) ;
    xnor2 ix313 (.Y (nx312), .A0 (A[10]), .A1 (B[10])) ;
    xor2 ix137 (.Y (Sum[11]), .A0 (nx234), .A1 (nx277)) ;
    xnor2 ix135 (.Y (Sum[12]), .A0 (nx94), .A1 (nx316)) ;
    xnor2 ix317 (.Y (nx316), .A0 (A[12]), .A1 (B[12])) ;
    xor2 ix133 (.Y (Sum[13]), .A0 (nx231), .A1 (nx282)) ;
    xnor2 ix131 (.Y (Sum[14]), .A0 (nx110), .A1 (nx320)) ;
    xnor2 ix321 (.Y (nx320), .A0 (A[14]), .A1 (B[14])) ;
    xor2 ix129 (.Y (Sum[15]), .A0 (nx228), .A1 (nx287)) ;
    inv01 ix113 (.Y (nx112), .A (nx320)) ;
    inv01 ix97 (.Y (nx96), .A (nx316)) ;
    inv01 ix81 (.Y (nx80), .A (nx312)) ;
    inv01 ix65 (.Y (nx64), .A (nx308)) ;
    inv01 ix49 (.Y (nx48), .A (nx304)) ;
    inv01 ix33 (.Y (nx32), .A (nx300)) ;
    inv01 ix17 (.Y (nx16), .A (nx296)) ;
    inv01 ix1 (.Y (nx0), .A (nx292)) ;
endmodule

