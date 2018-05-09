//
// Verilog description for cell booth_adder, 
// Wed May  9 07:35:57 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module booth_adder ( AdderFirstOperand, AdderSecondOperand, BoothOperand, BoothP, 
                     SelOperand, Operation, AdderResult, AdderBoothResult ) ;

    input [16:0]AdderFirstOperand ;
    input [16:0]AdderSecondOperand ;
    input [16:0]BoothOperand ;
    input [16:0]BoothP ;
    input SelOperand ;
    input Operation ;
    output [16:0]AdderResult ;
    output [16:0]AdderBoothResult ;

    wire FirstOperand_16, FirstOperand_15, FirstOperand_14, FirstOperand_13, 
         FirstOperand_12, FirstOperand_11, FirstOperand_10, FirstOperand_9, 
         FirstOperand_8, FirstOperand_7, FirstOperand_6, FirstOperand_5, 
         FirstOperand_4, FirstOperand_3, FirstOperand_2, FirstOperand_1, 
         FirstOperand_0, SecondOperand_16, SecondOperand_15, SecondOperand_14, 
         SecondOperand_13, SecondOperand_12, SecondOperand_11, SecondOperand_10, 
         SecondOperand_9, SecondOperand_8, SecondOperand_7, SecondOperand_6, 
         SecondOperand_5, SecondOperand_4, SecondOperand_3, SecondOperand_2, 
         SecondOperand_1, SecondOperand_0;
    wire [0:0] \$dummy ;




    adder_17 ADDER (.A ({FirstOperand_16,FirstOperand_15,FirstOperand_14,
             FirstOperand_13,FirstOperand_12,FirstOperand_11,FirstOperand_10,
             FirstOperand_9,FirstOperand_8,FirstOperand_7,FirstOperand_6,
             FirstOperand_5,FirstOperand_4,FirstOperand_3,FirstOperand_2,
             FirstOperand_1,FirstOperand_0}), .B ({SecondOperand_16,
             SecondOperand_15,SecondOperand_14,SecondOperand_13,SecondOperand_12
             ,SecondOperand_11,SecondOperand_10,SecondOperand_9,SecondOperand_8,
             SecondOperand_7,SecondOperand_6,SecondOperand_5,SecondOperand_4,
             SecondOperand_3,SecondOperand_2,SecondOperand_1,SecondOperand_0}), 
             .Cin (AdderBoothResult[16]), .Sum ({AdderResult[16],AdderResult[15]
             ,AdderResult[14],AdderResult[13],AdderResult[12],AdderResult[11],
             AdderResult[10],AdderResult[9],AdderResult[8],AdderResult[7],
             AdderResult[6],AdderResult[5],AdderResult[4],AdderResult[3],
             AdderResult[2],AdderResult[1],AdderResult[0]}), .Cout (\$dummy [0])
             ) ;
    fake_gnd ix153 (.Y (AdderBoothResult[16])) ;
    mux21_ni ix135 (.Y (SecondOperand_0), .A0 (AdderSecondOperand[0]), .A1 (
             BoothP[0]), .S0 (SelOperand)) ;
    mux21_ni ix143 (.Y (SecondOperand_1), .A0 (AdderSecondOperand[1]), .A1 (
             BoothP[1]), .S0 (SelOperand)) ;
    mux21_ni ix154 (.Y (SecondOperand_2), .A0 (AdderSecondOperand[2]), .A1 (
             BoothP[2]), .S0 (SelOperand)) ;
    mux21_ni ix159 (.Y (SecondOperand_3), .A0 (AdderSecondOperand[3]), .A1 (
             BoothP[3]), .S0 (SelOperand)) ;
    mux21_ni ix167 (.Y (SecondOperand_4), .A0 (AdderSecondOperand[4]), .A1 (
             BoothP[4]), .S0 (SelOperand)) ;
    mux21_ni ix175 (.Y (SecondOperand_5), .A0 (AdderSecondOperand[5]), .A1 (
             BoothP[5]), .S0 (SelOperand)) ;
    mux21_ni ix183 (.Y (SecondOperand_6), .A0 (AdderSecondOperand[6]), .A1 (
             BoothP[6]), .S0 (SelOperand)) ;
    mux21_ni ix191 (.Y (SecondOperand_7), .A0 (AdderSecondOperand[7]), .A1 (
             BoothP[7]), .S0 (SelOperand)) ;
    mux21_ni ix199 (.Y (SecondOperand_8), .A0 (AdderSecondOperand[8]), .A1 (
             BoothP[8]), .S0 (SelOperand)) ;
    mux21_ni ix207 (.Y (SecondOperand_9), .A0 (AdderSecondOperand[9]), .A1 (
             BoothP[9]), .S0 (SelOperand)) ;
    mux21_ni ix215 (.Y (SecondOperand_10), .A0 (AdderSecondOperand[10]), .A1 (
             BoothP[10]), .S0 (SelOperand)) ;
    mux21_ni ix223 (.Y (SecondOperand_11), .A0 (AdderSecondOperand[11]), .A1 (
             BoothP[11]), .S0 (SelOperand)) ;
    mux21_ni ix231 (.Y (SecondOperand_12), .A0 (AdderSecondOperand[12]), .A1 (
             BoothP[12]), .S0 (SelOperand)) ;
    mux21_ni ix239 (.Y (SecondOperand_13), .A0 (AdderSecondOperand[13]), .A1 (
             BoothP[13]), .S0 (SelOperand)) ;
    mux21_ni ix247 (.Y (SecondOperand_14), .A0 (AdderSecondOperand[14]), .A1 (
             BoothP[14]), .S0 (SelOperand)) ;
    mux21_ni ix255 (.Y (SecondOperand_15), .A0 (AdderSecondOperand[15]), .A1 (
             BoothP[15]), .S0 (SelOperand)) ;
    mux21_ni ix263 (.Y (SecondOperand_16), .A0 (AdderSecondOperand[16]), .A1 (
             BoothP[16]), .S0 (SelOperand)) ;
    mux21_ni ix271 (.Y (FirstOperand_0), .A0 (AdderFirstOperand[0]), .A1 (
             BoothOperand[0]), .S0 (SelOperand)) ;
    mux21_ni ix279 (.Y (FirstOperand_1), .A0 (AdderFirstOperand[1]), .A1 (
             BoothOperand[1]), .S0 (SelOperand)) ;
    mux21_ni ix287 (.Y (FirstOperand_2), .A0 (AdderFirstOperand[2]), .A1 (
             BoothOperand[2]), .S0 (SelOperand)) ;
    mux21_ni ix295 (.Y (FirstOperand_3), .A0 (AdderFirstOperand[3]), .A1 (
             BoothOperand[3]), .S0 (SelOperand)) ;
    mux21_ni ix303 (.Y (FirstOperand_4), .A0 (AdderFirstOperand[4]), .A1 (
             BoothOperand[4]), .S0 (SelOperand)) ;
    mux21_ni ix311 (.Y (FirstOperand_5), .A0 (AdderFirstOperand[5]), .A1 (
             BoothOperand[5]), .S0 (SelOperand)) ;
    mux21_ni ix319 (.Y (FirstOperand_6), .A0 (AdderFirstOperand[6]), .A1 (
             BoothOperand[6]), .S0 (SelOperand)) ;
    mux21_ni ix327 (.Y (FirstOperand_7), .A0 (AdderFirstOperand[7]), .A1 (
             BoothOperand[7]), .S0 (SelOperand)) ;
    mux21_ni ix335 (.Y (FirstOperand_8), .A0 (AdderFirstOperand[8]), .A1 (
             BoothOperand[8]), .S0 (SelOperand)) ;
    mux21_ni ix343 (.Y (FirstOperand_9), .A0 (AdderFirstOperand[9]), .A1 (
             BoothOperand[9]), .S0 (SelOperand)) ;
    mux21_ni ix351 (.Y (FirstOperand_10), .A0 (AdderFirstOperand[10]), .A1 (
             BoothOperand[10]), .S0 (SelOperand)) ;
    mux21_ni ix359 (.Y (FirstOperand_11), .A0 (AdderFirstOperand[11]), .A1 (
             BoothOperand[11]), .S0 (SelOperand)) ;
    mux21_ni ix367 (.Y (FirstOperand_12), .A0 (AdderFirstOperand[12]), .A1 (
             BoothOperand[12]), .S0 (SelOperand)) ;
    mux21_ni ix375 (.Y (FirstOperand_13), .A0 (AdderFirstOperand[13]), .A1 (
             BoothOperand[13]), .S0 (SelOperand)) ;
    mux21_ni ix383 (.Y (FirstOperand_14), .A0 (AdderFirstOperand[14]), .A1 (
             BoothOperand[14]), .S0 (SelOperand)) ;
    mux21_ni ix391 (.Y (FirstOperand_15), .A0 (AdderFirstOperand[15]), .A1 (
             BoothOperand[15]), .S0 (SelOperand)) ;
    mux21_ni ix399 (.Y (FirstOperand_16), .A0 (AdderFirstOperand[16]), .A1 (
             BoothOperand[16]), .S0 (SelOperand)) ;
    mux21_ni ix7 (.Y (AdderBoothResult[0]), .A0 (BoothP[1]), .A1 (AdderResult[1]
             ), .S0 (Operation)) ;
    mux21_ni ix15 (.Y (AdderBoothResult[1]), .A0 (BoothP[2]), .A1 (
             AdderResult[2]), .S0 (Operation)) ;
    mux21_ni ix23 (.Y (AdderBoothResult[2]), .A0 (BoothP[3]), .A1 (
             AdderResult[3]), .S0 (Operation)) ;
    mux21_ni ix31 (.Y (AdderBoothResult[3]), .A0 (BoothP[4]), .A1 (
             AdderResult[4]), .S0 (Operation)) ;
    mux21_ni ix39 (.Y (AdderBoothResult[4]), .A0 (BoothP[5]), .A1 (
             AdderResult[5]), .S0 (Operation)) ;
    mux21_ni ix47 (.Y (AdderBoothResult[5]), .A0 (BoothP[6]), .A1 (
             AdderResult[6]), .S0 (Operation)) ;
    mux21_ni ix55 (.Y (AdderBoothResult[6]), .A0 (BoothP[7]), .A1 (
             AdderResult[7]), .S0 (Operation)) ;
    mux21_ni ix63 (.Y (AdderBoothResult[7]), .A0 (BoothP[8]), .A1 (
             AdderResult[8]), .S0 (Operation)) ;
    mux21_ni ix71 (.Y (AdderBoothResult[8]), .A0 (BoothP[9]), .A1 (
             AdderResult[9]), .S0 (Operation)) ;
    mux21_ni ix79 (.Y (AdderBoothResult[9]), .A0 (BoothP[10]), .A1 (
             AdderResult[10]), .S0 (Operation)) ;
    mux21_ni ix87 (.Y (AdderBoothResult[10]), .A0 (BoothP[11]), .A1 (
             AdderResult[11]), .S0 (Operation)) ;
    mux21_ni ix95 (.Y (AdderBoothResult[11]), .A0 (BoothP[12]), .A1 (
             AdderResult[12]), .S0 (Operation)) ;
    mux21_ni ix103 (.Y (AdderBoothResult[12]), .A0 (BoothP[13]), .A1 (
             AdderResult[13]), .S0 (Operation)) ;
    mux21_ni ix111 (.Y (AdderBoothResult[13]), .A0 (BoothP[14]), .A1 (
             AdderResult[14]), .S0 (Operation)) ;
    mux21_ni ix119 (.Y (AdderBoothResult[14]), .A0 (BoothP[15]), .A1 (
             AdderResult[15]), .S0 (Operation)) ;
    mux21_ni ix127 (.Y (AdderBoothResult[15]), .A0 (BoothP[16]), .A1 (
             AdderResult[16]), .S0 (Operation)) ;
endmodule


module adder_17 ( A, B, Cin, Sum, Cout ) ;

    input [16:0]A ;
    input [16:0]B ;
    input Cin ;
    output [16:0]Sum ;
    output Cout ;

    wire nx2, nx16, nx18, nx32, nx34, nx48, nx50, nx64, nx66, nx80, nx82, nx96, 
         nx98, nx112, nx114, nx122, nx105, nx107, nx111, nx115, nx121, nx123, 
         nx127, nx131, nx137, nx139, nx143, nx147, nx153, nx155, nx159, nx163, 
         nx167, nx169, nx172, nx175, nx179, nx181, nx184, nx187, nx191, nx193, 
         nx196, nx199, nx203, nx205, nx208;



    fake_gnd ix58 (.Y (Cout)) ;
    xor2 ix161 (.Y (Sum[0]), .A0 (B[0]), .A1 (A[0])) ;
    xor2 ix155 (.Y (Sum[1]), .A0 (nx105), .A1 (nx107)) ;
    nand02 ix106 (.Y (nx105), .A0 (B[0]), .A1 (A[0])) ;
    xnor2 ix108 (.Y (nx107), .A0 (A[1]), .A1 (B[1])) ;
    xor2 ix153 (.Y (Sum[2]), .A0 (nx111), .A1 (nx115)) ;
    aoi32 ix112 (.Y (nx111), .A0 (B[0]), .A1 (A[0]), .A2 (nx2), .B0 (B[1]), .B1 (
          A[1])) ;
    xnor2 ix116 (.Y (nx115), .A0 (A[2]), .A1 (B[2])) ;
    xnor2 ix151 (.Y (Sum[3]), .A0 (nx16), .A1 (nx123)) ;
    oai21 ix17 (.Y (nx16), .A0 (nx111), .A1 (nx115), .B0 (nx121)) ;
    nand02 ix122 (.Y (nx121), .A0 (B[2]), .A1 (A[2])) ;
    xnor2 ix124 (.Y (nx123), .A0 (A[3]), .A1 (B[3])) ;
    xor2 ix149 (.Y (Sum[4]), .A0 (nx127), .A1 (nx131)) ;
    aoi22 ix128 (.Y (nx127), .A0 (B[3]), .A1 (A[3]), .B0 (nx16), .B1 (nx18)) ;
    xnor2 ix132 (.Y (nx131), .A0 (A[4]), .A1 (B[4])) ;
    xnor2 ix147 (.Y (Sum[5]), .A0 (nx32), .A1 (nx139)) ;
    oai21 ix33 (.Y (nx32), .A0 (nx127), .A1 (nx131), .B0 (nx137)) ;
    nand02 ix138 (.Y (nx137), .A0 (B[4]), .A1 (A[4])) ;
    xnor2 ix140 (.Y (nx139), .A0 (A[5]), .A1 (B[5])) ;
    xor2 ix145 (.Y (Sum[6]), .A0 (nx143), .A1 (nx147)) ;
    aoi22 ix144 (.Y (nx143), .A0 (B[5]), .A1 (A[5]), .B0 (nx32), .B1 (nx34)) ;
    xnor2 ix148 (.Y (nx147), .A0 (A[6]), .A1 (B[6])) ;
    xnor2 ix143 (.Y (Sum[7]), .A0 (nx48), .A1 (nx155)) ;
    oai21 ix49 (.Y (nx48), .A0 (nx143), .A1 (nx147), .B0 (nx153)) ;
    nand02 ix154 (.Y (nx153), .A0 (B[6]), .A1 (A[6])) ;
    xnor2 ix156 (.Y (nx155), .A0 (A[7]), .A1 (B[7])) ;
    xor2 ix141 (.Y (Sum[8]), .A0 (nx159), .A1 (nx163)) ;
    aoi22 ix160 (.Y (nx159), .A0 (B[7]), .A1 (A[7]), .B0 (nx48), .B1 (nx50)) ;
    xnor2 ix164 (.Y (nx163), .A0 (A[8]), .A1 (B[8])) ;
    xnor2 ix139 (.Y (Sum[9]), .A0 (nx64), .A1 (nx169)) ;
    oai21 ix65 (.Y (nx64), .A0 (nx159), .A1 (nx163), .B0 (nx167)) ;
    nand02 ix168 (.Y (nx167), .A0 (B[8]), .A1 (A[8])) ;
    xnor2 ix170 (.Y (nx169), .A0 (A[9]), .A1 (B[9])) ;
    xor2 ix137 (.Y (Sum[10]), .A0 (nx172), .A1 (nx175)) ;
    aoi22 ix173 (.Y (nx172), .A0 (B[9]), .A1 (A[9]), .B0 (nx64), .B1 (nx66)) ;
    xnor2 ix176 (.Y (nx175), .A0 (A[10]), .A1 (B[10])) ;
    xnor2 ix135 (.Y (Sum[11]), .A0 (nx80), .A1 (nx181)) ;
    oai21 ix81 (.Y (nx80), .A0 (nx172), .A1 (nx175), .B0 (nx179)) ;
    nand02 ix180 (.Y (nx179), .A0 (B[10]), .A1 (A[10])) ;
    xnor2 ix182 (.Y (nx181), .A0 (A[11]), .A1 (B[11])) ;
    xor2 ix133 (.Y (Sum[12]), .A0 (nx184), .A1 (nx187)) ;
    aoi22 ix185 (.Y (nx184), .A0 (B[11]), .A1 (A[11]), .B0 (nx80), .B1 (nx82)) ;
    xnor2 ix188 (.Y (nx187), .A0 (A[12]), .A1 (B[12])) ;
    xnor2 ix131 (.Y (Sum[13]), .A0 (nx96), .A1 (nx193)) ;
    oai21 ix97 (.Y (nx96), .A0 (nx184), .A1 (nx187), .B0 (nx191)) ;
    nand02 ix192 (.Y (nx191), .A0 (B[12]), .A1 (A[12])) ;
    xnor2 ix194 (.Y (nx193), .A0 (A[13]), .A1 (B[13])) ;
    xor2 ix129 (.Y (Sum[14]), .A0 (nx196), .A1 (nx199)) ;
    aoi22 ix197 (.Y (nx196), .A0 (B[13]), .A1 (A[13]), .B0 (nx96), .B1 (nx98)) ;
    xnor2 ix200 (.Y (nx199), .A0 (A[14]), .A1 (B[14])) ;
    xnor2 ix127 (.Y (Sum[15]), .A0 (nx112), .A1 (nx205)) ;
    oai21 ix113 (.Y (nx112), .A0 (nx196), .A1 (nx199), .B0 (nx203)) ;
    nand02 ix204 (.Y (nx203), .A0 (B[14]), .A1 (A[14])) ;
    xnor2 ix206 (.Y (nx205), .A0 (A[15]), .A1 (B[15])) ;
    xnor2 ix125 (.Y (Sum[16]), .A0 (nx208), .A1 (nx122)) ;
    aoi22 ix209 (.Y (nx208), .A0 (B[15]), .A1 (A[15]), .B0 (nx112), .B1 (nx114)
          ) ;
    xor2 ix123 (.Y (nx122), .A0 (A[16]), .A1 (B[16])) ;
    inv01 ix115 (.Y (nx114), .A (nx205)) ;
    inv01 ix99 (.Y (nx98), .A (nx193)) ;
    inv01 ix83 (.Y (nx82), .A (nx181)) ;
    inv01 ix67 (.Y (nx66), .A (nx169)) ;
    inv01 ix51 (.Y (nx50), .A (nx155)) ;
    inv01 ix35 (.Y (nx34), .A (nx139)) ;
    inv01 ix19 (.Y (nx18), .A (nx123)) ;
    inv01 ix3 (.Y (nx2), .A (nx107)) ;
endmodule

