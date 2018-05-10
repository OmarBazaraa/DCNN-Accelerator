//
// Verilog description for cell booth_unit, 
// Wed May  9 07:35:59 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module booth_unit ( CLK, RST, Start, Instr, LoopingAndResultNotReady, Filter, 
                    Window, AdderBoothResult, BoothXORCheck, BoothResult, 
                    BoothAddingOperand, BoothP, LargeWindowShifted ) ;

    input CLK ;
    input RST ;
    input Start ;
    input Instr ;
    input LoopingAndResultNotReady ;
    input [7:0]Filter ;
    input [7:0]Window ;
    input [16:0]AdderBoothResult ;
    output BoothXORCheck ;
    output [7:0]BoothResult ;
    output [16:0]BoothAddingOperand ;
    output [16:0]BoothP ;
    output [16:0]LargeWindowShifted ;

    wire RegisterPEN, RegisterPDin_16, RegisterPDin_15, RegisterPDin_14, 
         RegisterPDin_13, RegisterPDin_12, RegisterPDin_11, RegisterPDin_10, 
         RegisterPDin_9, RegisterPDin_8, RegisterPDin_7, RegisterPDin_6, 
         RegisterPDin_5, RegisterPDin_4, RegisterPDin_3, RegisterPDin_2, 
         RegisterPDin_1, RegisterPDin_0, RegisterSDout_10, nx12, nx20, 
         RegisterADout_10, RegisterSDout_11, nx52, nx60, RegisterADout_11, 
         RegisterSDout_12, nx92, nx100, RegisterADout_12, RegisterSDout_13, 
         nx132, nx140, RegisterADout_13, RegisterSDout_14, nx172, nx180, 
         RegisterADout_14, RegisterSDout_15, nx212, nx220, RegisterADout_15, 
         RegisterSDout_16, nx246, RegisterADout_16, nx257, nx267, nx277, nx287, 
         nx297, nx307, nx317, nx327, nx337, nx347, nx357, nx367, nx377, nx387, 
         nx397, nx409, nx411, nx419, nx430, nx441, nx452, nx463, nx474, nx495, 
         nx497, nx499, nx501, nx503;
    wire [14:0] \$dummy ;




    assign BoothAddingOperand[8] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[7] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[6] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[5] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[4] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[3] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[2] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[1] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[0] = LargeWindowShifted[16] ;
    assign BoothP[8] = BoothResult[7] ;
    assign BoothP[7] = BoothResult[6] ;
    assign BoothP[6] = BoothResult[5] ;
    assign BoothP[5] = BoothResult[4] ;
    assign BoothP[4] = BoothResult[3] ;
    assign BoothP[3] = BoothResult[2] ;
    assign BoothP[2] = BoothResult[1] ;
    assign BoothP[1] = BoothResult[0] ;
    assign LargeWindowShifted[15] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[14] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[13] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[12] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[11] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[10] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[9] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[8] = Window[7] ;
    assign LargeWindowShifted[7] = Window[6] ;
    assign LargeWindowShifted[6] = Window[5] ;
    assign LargeWindowShifted[5] = Window[4] ;
    assign LargeWindowShifted[4] = Window[3] ;
    assign LargeWindowShifted[3] = Window[2] ;
    assign LargeWindowShifted[2] = Window[1] ;
    assign LargeWindowShifted[1] = Window[0] ;
    assign LargeWindowShifted[0] = LargeWindowShifted[16] ;
    register_edge_rising_17 REGISTER_P (.CLK (CLK), .RST (RST), .EN (RegisterPEN), .Din (
                     {RegisterPDin_16,RegisterPDin_15,RegisterPDin_14,
                     RegisterPDin_13,RegisterPDin_12,RegisterPDin_11,
                     RegisterPDin_10,RegisterPDin_9,RegisterPDin_8,
                     RegisterPDin_7,RegisterPDin_6,RegisterPDin_5,RegisterPDin_4
                     ,RegisterPDin_3,RegisterPDin_2,RegisterPDin_1,
                     RegisterPDin_0}), .Dout ({BoothP[16],BoothP[15],BoothP[14],
                     BoothP[13],BoothP[12],BoothP[11],BoothP[10],BoothP[9],
                     BoothResult[7],BoothResult[6],BoothResult[5],BoothResult[4]
                     ,BoothResult[3],BoothResult[2],BoothResult[1],
                     BoothResult[0],BoothP[0]})) ;
    mux_4x1_17 P_INPUT_DATA_MUX (.A ({AdderBoothResult[16],AdderBoothResult[15],
               AdderBoothResult[14],AdderBoothResult[13],AdderBoothResult[12],
               AdderBoothResult[11],AdderBoothResult[10],AdderBoothResult[9],
               AdderBoothResult[8],AdderBoothResult[7],AdderBoothResult[6],
               AdderBoothResult[5],AdderBoothResult[4],AdderBoothResult[3],
               AdderBoothResult[2],AdderBoothResult[1],AdderBoothResult[0]}), .B (
               {LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16]}), .C ({LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],Window[7],Window[6],Window[5],Window[4],
               Window[3],Window[2],Window[1],Window[0],LargeWindowShifted[16]})
               , .D ({LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16]}), .S ({Start,Instr}), .Dout ({
               RegisterPDin_16,RegisterPDin_15,RegisterPDin_14,RegisterPDin_13,
               RegisterPDin_12,RegisterPDin_11,RegisterPDin_10,RegisterPDin_9,
               RegisterPDin_8,RegisterPDin_7,RegisterPDin_6,RegisterPDin_5,
               RegisterPDin_4,RegisterPDin_3,RegisterPDin_2,RegisterPDin_1,
               RegisterPDin_0})) ;
    fake_gnd ix231 (.Y (LargeWindowShifted[16])) ;
    dff REGISTER_A_reg_Dout_9 (.Q (BoothAddingOperand[9]), .QB (\$dummy [0]), .D (
        nx397), .CLK (CLK)) ;
    ao32 ix398 (.Y (nx397), .A0 (nx499), .A1 (Filter[0]), .A2 (Start), .B0 (
         BoothAddingOperand[9]), .B1 (nx501)) ;
    inv01 ix410 (.Y (nx409), .A (RST)) ;
    nor02_2x ix412 (.Y (nx411), .A0 (Start), .A1 (RST)) ;
    or02 ix287 (.Y (RegisterPEN), .A0 (Start), .A1 (LoopingAndResultNotReady)) ;
    mux21_ni ix45 (.Y (BoothAddingOperand[10]), .A0 (RegisterSDout_10), .A1 (
             RegisterADout_10), .S0 (nx495)) ;
    dff REGISTER_S_reg_Dout_10 (.Q (RegisterSDout_10), .QB (\$dummy [1]), .D (
        nx257), .CLK (CLK)) ;
    mux21_ni ix258 (.Y (nx257), .A0 (nx20), .A1 (RegisterSDout_10), .S0 (nx501)
             ) ;
    aoi21 ix21 (.Y (nx20), .A0 (Filter[1]), .A1 (Filter[0]), .B0 (nx419)) ;
    or02 ix420 (.Y (nx419), .A0 (RST), .A1 (nx12)) ;
    nor02_2x ix13 (.Y (nx12), .A0 (Filter[0]), .A1 (Filter[1])) ;
    dff REGISTER_A_reg_Dout_10 (.Q (RegisterADout_10), .QB (\$dummy [2]), .D (
        nx267), .CLK (CLK)) ;
    ao32 ix268 (.Y (nx267), .A0 (nx499), .A1 (Filter[1]), .A2 (Start), .B0 (
         RegisterADout_10), .B1 (nx501)) ;
    mux21_ni ix85 (.Y (BoothAddingOperand[11]), .A0 (RegisterSDout_11), .A1 (
             RegisterADout_11), .S0 (nx495)) ;
    dff REGISTER_S_reg_Dout_11 (.Q (RegisterSDout_11), .QB (\$dummy [3]), .D (
        nx277), .CLK (CLK)) ;
    mux21_ni ix278 (.Y (nx277), .A0 (nx60), .A1 (RegisterSDout_11), .S0 (nx501)
             ) ;
    nor03_2x ix61 (.Y (nx60), .A0 (nx430), .A1 (RST), .A2 (nx52)) ;
    nor02ii ix431 (.Y (nx430), .A0 (nx12), .A1 (Filter[2])) ;
    nor03_2x ix53 (.Y (nx52), .A0 (Filter[2]), .A1 (Filter[0]), .A2 (Filter[1])
             ) ;
    dff REGISTER_A_reg_Dout_11 (.Q (RegisterADout_11), .QB (\$dummy [4]), .D (
        nx287), .CLK (CLK)) ;
    ao32 ix288 (.Y (nx287), .A0 (nx499), .A1 (Filter[2]), .A2 (Start), .B0 (
         RegisterADout_11), .B1 (nx501)) ;
    mux21_ni ix125 (.Y (BoothAddingOperand[12]), .A0 (RegisterSDout_12), .A1 (
             RegisterADout_12), .S0 (nx495)) ;
    dff REGISTER_S_reg_Dout_12 (.Q (RegisterSDout_12), .QB (\$dummy [5]), .D (
        nx297), .CLK (CLK)) ;
    mux21_ni ix298 (.Y (nx297), .A0 (nx100), .A1 (RegisterSDout_12), .S0 (nx501)
             ) ;
    nor03_2x ix101 (.Y (nx100), .A0 (nx441), .A1 (RST), .A2 (nx92)) ;
    nor02ii ix442 (.Y (nx441), .A0 (nx52), .A1 (Filter[3])) ;
    nor04 ix93 (.Y (nx92), .A0 (Filter[3]), .A1 (Filter[2]), .A2 (Filter[0]), .A3 (
          Filter[1])) ;
    dff REGISTER_A_reg_Dout_12 (.Q (RegisterADout_12), .QB (\$dummy [6]), .D (
        nx307), .CLK (CLK)) ;
    ao32 ix308 (.Y (nx307), .A0 (nx499), .A1 (Filter[3]), .A2 (Start), .B0 (
         RegisterADout_12), .B1 (nx501)) ;
    mux21_ni ix165 (.Y (BoothAddingOperand[13]), .A0 (RegisterSDout_13), .A1 (
             RegisterADout_13), .S0 (nx495)) ;
    dff REGISTER_S_reg_Dout_13 (.Q (RegisterSDout_13), .QB (\$dummy [7]), .D (
        nx317), .CLK (CLK)) ;
    mux21_ni ix318 (.Y (nx317), .A0 (nx140), .A1 (RegisterSDout_13), .S0 (nx503)
             ) ;
    nor03_2x ix141 (.Y (nx140), .A0 (nx452), .A1 (RST), .A2 (nx132)) ;
    nor02ii ix453 (.Y (nx452), .A0 (nx92), .A1 (Filter[4])) ;
    nor02ii ix133 (.Y (nx132), .A0 (Filter[4]), .A1 (nx92)) ;
    dff REGISTER_A_reg_Dout_13 (.Q (RegisterADout_13), .QB (\$dummy [8]), .D (
        nx327), .CLK (CLK)) ;
    ao32 ix328 (.Y (nx327), .A0 (nx499), .A1 (Filter[4]), .A2 (Start), .B0 (
         RegisterADout_13), .B1 (nx503)) ;
    mux21_ni ix205 (.Y (BoothAddingOperand[14]), .A0 (RegisterSDout_14), .A1 (
             RegisterADout_14), .S0 (nx495)) ;
    dff REGISTER_S_reg_Dout_14 (.Q (RegisterSDout_14), .QB (\$dummy [9]), .D (
        nx337), .CLK (CLK)) ;
    mux21_ni ix338 (.Y (nx337), .A0 (nx180), .A1 (RegisterSDout_14), .S0 (nx503)
             ) ;
    nor03_2x ix181 (.Y (nx180), .A0 (nx463), .A1 (RST), .A2 (nx172)) ;
    nor02ii ix464 (.Y (nx463), .A0 (nx132), .A1 (Filter[5])) ;
    nor02ii ix173 (.Y (nx172), .A0 (Filter[5]), .A1 (nx132)) ;
    dff REGISTER_A_reg_Dout_14 (.Q (RegisterADout_14), .QB (\$dummy [10]), .D (
        nx347), .CLK (CLK)) ;
    ao32 ix348 (.Y (nx347), .A0 (nx499), .A1 (Filter[5]), .A2 (Start), .B0 (
         RegisterADout_14), .B1 (nx503)) ;
    mux21_ni ix245 (.Y (BoothAddingOperand[15]), .A0 (RegisterSDout_15), .A1 (
             RegisterADout_15), .S0 (nx495)) ;
    dff REGISTER_S_reg_Dout_15 (.Q (RegisterSDout_15), .QB (\$dummy [11]), .D (
        nx357), .CLK (CLK)) ;
    mux21_ni ix358 (.Y (nx357), .A0 (nx220), .A1 (RegisterSDout_15), .S0 (nx503)
             ) ;
    nor03_2x ix221 (.Y (nx220), .A0 (nx474), .A1 (RST), .A2 (nx212)) ;
    nor02ii ix475 (.Y (nx474), .A0 (nx172), .A1 (Filter[6])) ;
    nor02ii ix213 (.Y (nx212), .A0 (Filter[6]), .A1 (nx172)) ;
    dff REGISTER_A_reg_Dout_15 (.Q (RegisterADout_15), .QB (\$dummy [12]), .D (
        nx367), .CLK (CLK)) ;
    ao32 ix368 (.Y (nx367), .A0 (nx499), .A1 (Filter[6]), .A2 (Start), .B0 (
         RegisterADout_15), .B1 (nx503)) ;
    mux21_ni ix275 (.Y (BoothAddingOperand[16]), .A0 (RegisterSDout_16), .A1 (
             RegisterADout_16), .S0 (nx495)) ;
    dff REGISTER_S_reg_Dout_16 (.Q (RegisterSDout_16), .QB (\$dummy [13]), .D (
        nx377), .CLK (CLK)) ;
    ao32 ix378 (.Y (nx377), .A0 (nx409), .A1 (nx246), .A2 (Start), .B0 (
         RegisterSDout_16), .B1 (nx503)) ;
    xnor2 ix247 (.Y (nx246), .A0 (Filter[7]), .A1 (nx212)) ;
    dff REGISTER_A_reg_Dout_16 (.Q (RegisterADout_16), .QB (\$dummy [14]), .D (
        nx387), .CLK (CLK)) ;
    ao32 ix388 (.Y (nx387), .A0 (nx409), .A1 (Filter[7]), .A2 (Start), .B0 (
         RegisterADout_16), .B1 (nx411)) ;
    xor2 ix289 (.Y (BoothXORCheck), .A0 (nx497), .A1 (BoothResult[0])) ;
    buf02 ix494 (.Y (nx495), .A (BoothP[0])) ;
    buf02 ix496 (.Y (nx497), .A (BoothP[0])) ;
    inv01 ix498 (.Y (nx499), .A (RST)) ;
    nor02_2x ix500 (.Y (nx501), .A0 (Start), .A1 (RST)) ;
    nor02_2x ix502 (.Y (nx503), .A0 (Start), .A1 (RST)) ;
endmodule


module mux_4x1_17 ( A, B, C, D, S, Dout ) ;

    input [16:0]A ;
    input [16:0]B ;
    input [16:0]C ;
    input [16:0]D ;
    input [1:0]S ;
    output [16:0]Dout ;

    wire nx32, nx50, nx135, nx140, nx143, nx146, nx149, nx152, nx155, nx171, 
         nx173, nx175, nx177, nx183, nx185;



    ao22 ix41 (.Y (Dout[0]), .A0 (A[0]), .A1 (nx175), .B0 (C[1]), .B1 (nx171)) ;
    and02 ix33 (.Y (nx32), .A0 (S[0]), .A1 (S[1])) ;
    inv01 ix57 (.Y (Dout[1]), .A (nx135)) ;
    aoi222 ix136 (.Y (nx135), .A0 (A[1]), .A1 (nx175), .B0 (C[1]), .B1 (nx183), 
           .C0 (C[2]), .C1 (nx171)) ;
    inv01 ix69 (.Y (Dout[2]), .A (nx140)) ;
    aoi222 ix141 (.Y (nx140), .A0 (A[2]), .A1 (nx175), .B0 (C[2]), .B1 (nx183), 
           .C0 (C[3]), .C1 (nx171)) ;
    inv01 ix81 (.Y (Dout[3]), .A (nx143)) ;
    aoi222 ix144 (.Y (nx143), .A0 (A[3]), .A1 (nx175), .B0 (C[3]), .B1 (nx183), 
           .C0 (C[4]), .C1 (nx171)) ;
    inv01 ix93 (.Y (Dout[4]), .A (nx146)) ;
    aoi222 ix147 (.Y (nx146), .A0 (A[4]), .A1 (nx175), .B0 (C[4]), .B1 (nx183), 
           .C0 (C[5]), .C1 (nx171)) ;
    inv01 ix105 (.Y (Dout[5]), .A (nx149)) ;
    aoi222 ix150 (.Y (nx149), .A0 (A[5]), .A1 (nx175), .B0 (C[5]), .B1 (nx183), 
           .C0 (C[6]), .C1 (nx171)) ;
    inv01 ix117 (.Y (Dout[6]), .A (nx152)) ;
    aoi222 ix153 (.Y (nx152), .A0 (A[6]), .A1 (nx177), .B0 (C[6]), .B1 (nx183), 
           .C0 (C[7]), .C1 (nx171)) ;
    inv01 ix129 (.Y (Dout[7]), .A (nx155)) ;
    aoi222 ix156 (.Y (nx155), .A0 (A[7]), .A1 (nx177), .B0 (C[7]), .B1 (nx183), 
           .C0 (C[8]), .C1 (nx173)) ;
    ao22 ix137 (.Y (Dout[8]), .A0 (nx177), .A1 (A[8]), .B0 (C[8]), .B1 (nx185)
         ) ;
    nor02ii ix3 (.Y (Dout[9]), .A0 (S[1]), .A1 (A[9])) ;
    nor02ii ix7 (.Y (Dout[10]), .A0 (S[1]), .A1 (A[10])) ;
    nor02ii ix11 (.Y (Dout[11]), .A0 (S[1]), .A1 (A[11])) ;
    nor02ii ix15 (.Y (Dout[12]), .A0 (S[1]), .A1 (A[12])) ;
    nor02ii ix19 (.Y (Dout[13]), .A0 (S[1]), .A1 (A[13])) ;
    nor02ii ix23 (.Y (Dout[14]), .A0 (S[1]), .A1 (A[14])) ;
    nor02ii ix27 (.Y (Dout[15]), .A0 (S[1]), .A1 (A[15])) ;
    nor02ii ix31 (.Y (Dout[16]), .A0 (S[1]), .A1 (A[16])) ;
    buf02 ix170 (.Y (nx171), .A (nx32)) ;
    buf02 ix172 (.Y (nx173), .A (nx32)) ;
    inv02 ix174 (.Y (nx175), .A (S[1])) ;
    inv02 ix176 (.Y (nx177), .A (S[1])) ;
    nor02ii ix51 (.Y (nx50), .A0 (S[0]), .A1 (S[1])) ;
    buf02 ix182 (.Y (nx183), .A (nx50)) ;
    buf02 ix184 (.Y (nx185), .A (nx50)) ;
endmodule


module register_edge_rising_17 ( CLK, RST, EN, Din, Dout ) ;

    input CLK ;
    input RST ;
    input EN ;
    input [16:0]Din ;
    output [16:0]Dout ;

    wire nx402, nx412, nx422, nx432, nx442, nx452, nx462, nx472, nx482, nx492, 
         nx502, nx512, nx522, nx532, nx542, nx552, nx562, nx574, nx576, nx632, 
         nx634, nx636, nx638, nx644, nx646, nx648, nx650;
    wire [16:0] \$dummy ;




    dff reg_Dout_0 (.Q (Dout[0]), .QB (\$dummy [0]), .D (nx402), .CLK (CLK)) ;
    ao32 ix403 (.Y (nx402), .A0 (Din[0]), .A1 (nx632), .A2 (nx646), .B0 (Dout[0]
         ), .B1 (nx636)) ;
    inv01 ix575 (.Y (nx574), .A (RST)) ;
    nor02_2x ix577 (.Y (nx576), .A0 (RST), .A1 (nx646)) ;
    dff reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [1]), .D (nx412), .CLK (CLK)) ;
    ao32 ix413 (.Y (nx412), .A0 (Din[1]), .A1 (nx632), .A2 (nx646), .B0 (Dout[1]
         ), .B1 (nx636)) ;
    dff reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [2]), .D (nx422), .CLK (CLK)) ;
    ao32 ix423 (.Y (nx422), .A0 (Din[2]), .A1 (nx632), .A2 (nx646), .B0 (Dout[2]
         ), .B1 (nx636)) ;
    dff reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [3]), .D (nx432), .CLK (CLK)) ;
    ao32 ix433 (.Y (nx432), .A0 (Din[3]), .A1 (nx632), .A2 (nx646), .B0 (Dout[3]
         ), .B1 (nx636)) ;
    dff reg_Dout_4 (.Q (Dout[4]), .QB (\$dummy [4]), .D (nx442), .CLK (CLK)) ;
    ao32 ix443 (.Y (nx442), .A0 (Din[4]), .A1 (nx632), .A2 (nx646), .B0 (Dout[4]
         ), .B1 (nx636)) ;
    dff reg_Dout_5 (.Q (Dout[5]), .QB (\$dummy [5]), .D (nx452), .CLK (CLK)) ;
    ao32 ix453 (.Y (nx452), .A0 (Din[5]), .A1 (nx632), .A2 (nx646), .B0 (Dout[5]
         ), .B1 (nx636)) ;
    dff reg_Dout_6 (.Q (Dout[6]), .QB (\$dummy [6]), .D (nx462), .CLK (CLK)) ;
    ao32 ix463 (.Y (nx462), .A0 (Din[6]), .A1 (nx634), .A2 (nx648), .B0 (Dout[6]
         ), .B1 (nx636)) ;
    dff reg_Dout_7 (.Q (Dout[7]), .QB (\$dummy [7]), .D (nx472), .CLK (CLK)) ;
    ao32 ix473 (.Y (nx472), .A0 (Din[7]), .A1 (nx634), .A2 (nx648), .B0 (Dout[7]
         ), .B1 (nx638)) ;
    dff reg_Dout_8 (.Q (Dout[8]), .QB (\$dummy [8]), .D (nx482), .CLK (CLK)) ;
    ao32 ix483 (.Y (nx482), .A0 (Din[8]), .A1 (nx634), .A2 (nx648), .B0 (Dout[8]
         ), .B1 (nx638)) ;
    dff reg_Dout_9 (.Q (Dout[9]), .QB (\$dummy [9]), .D (nx492), .CLK (CLK)) ;
    ao32 ix493 (.Y (nx492), .A0 (Din[9]), .A1 (nx634), .A2 (nx648), .B0 (Dout[9]
         ), .B1 (nx638)) ;
    dff reg_Dout_10 (.Q (Dout[10]), .QB (\$dummy [10]), .D (nx502), .CLK (CLK)
        ) ;
    ao32 ix503 (.Y (nx502), .A0 (Din[10]), .A1 (nx634), .A2 (nx648), .B0 (
         Dout[10]), .B1 (nx638)) ;
    dff reg_Dout_11 (.Q (Dout[11]), .QB (\$dummy [11]), .D (nx512), .CLK (CLK)
        ) ;
    ao32 ix513 (.Y (nx512), .A0 (Din[11]), .A1 (nx634), .A2 (nx648), .B0 (
         Dout[11]), .B1 (nx638)) ;
    dff reg_Dout_12 (.Q (Dout[12]), .QB (\$dummy [12]), .D (nx522), .CLK (CLK)
        ) ;
    ao32 ix523 (.Y (nx522), .A0 (Din[12]), .A1 (nx574), .A2 (nx648), .B0 (
         Dout[12]), .B1 (nx638)) ;
    dff reg_Dout_13 (.Q (Dout[13]), .QB (\$dummy [13]), .D (nx532), .CLK (CLK)
        ) ;
    ao32 ix533 (.Y (nx532), .A0 (Din[13]), .A1 (nx574), .A2 (nx650), .B0 (
         Dout[13]), .B1 (nx638)) ;
    dff reg_Dout_14 (.Q (Dout[14]), .QB (\$dummy [14]), .D (nx542), .CLK (CLK)
        ) ;
    ao32 ix543 (.Y (nx542), .A0 (Din[14]), .A1 (nx574), .A2 (nx650), .B0 (
         Dout[14]), .B1 (nx576)) ;
    dff reg_Dout_15 (.Q (Dout[15]), .QB (\$dummy [15]), .D (nx552), .CLK (CLK)
        ) ;
    ao32 ix553 (.Y (nx552), .A0 (Din[15]), .A1 (nx574), .A2 (nx650), .B0 (
         Dout[15]), .B1 (nx576)) ;
    dff reg_Dout_16 (.Q (Dout[16]), .QB (\$dummy [16]), .D (nx562), .CLK (CLK)
        ) ;
    ao32 ix563 (.Y (nx562), .A0 (Din[16]), .A1 (nx574), .A2 (nx650), .B0 (
         Dout[16]), .B1 (nx576)) ;
    inv01 ix631 (.Y (nx632), .A (RST)) ;
    inv01 ix633 (.Y (nx634), .A (RST)) ;
    nor02_2x ix635 (.Y (nx636), .A0 (RST), .A1 (nx650)) ;
    nor02_2x ix637 (.Y (nx638), .A0 (RST), .A1 (nx650)) ;
    inv01 ix643 (.Y (nx644), .A (EN)) ;
    inv02 ix645 (.Y (nx646), .A (nx644)) ;
    inv02 ix647 (.Y (nx648), .A (nx644)) ;
    inv02 ix649 (.Y (nx650), .A (nx644)) ;
endmodule

