//
// Verilog description for cell mini_alu, 
// Wed May  2 09:48:03 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module mini_alu ( CLK, RST, Start, Instr, Size, ResultReady, 
                  LoopingAndResultNotReady, Filter, Window, AdderFirstOperand, 
                  AdderSecondOperand, Result, AdderResultLarge, OperationResult
                   ) ;

    input CLK ;
    input RST ;
    input Start ;
    input Instr ;
    input Size ;
    input ResultReady ;
    input LoopingAndResultNotReady ;
    input [7:0]Filter ;
    input [7:0]Window ;
    input [16:0]AdderFirstOperand ;
    input [16:0]AdderSecondOperand ;
    output [7:0]Result ;
    output [16:0]AdderResultLarge ;
    output [16:0]OperationResult ;

    wire BoothXORCheck, BoothOperand_16, BoothOperand_15, BoothOperand_14, 
         BoothOperand_13, BoothOperand_12, BoothOperand_11, BoothOperand_10, 
         BoothOperand_9, BoothP_16, BoothP_15, BoothP_14, BoothP_13, BoothP_12, 
         BoothP_11, BoothP_10, BoothP_9, BoothP_8, BoothP_7, BoothP_6, BoothP_5, 
         BoothP_4, BoothP_3, BoothP_2, BoothP_1, BoothP_0, SelOperand, 
         AdderBoothResult_15, AdderBoothResult_14, AdderBoothResult_13, 
         AdderBoothResult_12, AdderBoothResult_11, AdderBoothResult_10, 
         AdderBoothResult_9, AdderBoothResult_8, AdderBoothResult_7, 
         AdderBoothResult_6, AdderBoothResult_5, AdderBoothResult_4, 
         AdderBoothResult_3, AdderBoothResult_2, AdderBoothResult_1, 
         AdderBoothResult_0, nx22, nx338, nx340, nx344, nx346, nx349, nx351, 
         nx354;
    wire [34:0] \$dummy ;




    booth_adder_17 BOOTH_ADDER (.AdderFirstOperand ({AdderFirstOperand[16],
                   AdderFirstOperand[15],AdderFirstOperand[14],
                   AdderFirstOperand[13],AdderFirstOperand[12],
                   AdderFirstOperand[11],AdderFirstOperand[10],
                   AdderFirstOperand[9],AdderFirstOperand[8],
                   AdderFirstOperand[7],AdderFirstOperand[6],
                   AdderFirstOperand[5],AdderFirstOperand[4],
                   AdderFirstOperand[3],AdderFirstOperand[2],
                   AdderFirstOperand[1],AdderFirstOperand[0]}), .AdderSecondOperand (
                   {AdderSecondOperand[16],AdderSecondOperand[15],
                   AdderSecondOperand[14],AdderSecondOperand[13],
                   AdderSecondOperand[12],AdderSecondOperand[11],
                   AdderSecondOperand[10],AdderSecondOperand[9],
                   AdderSecondOperand[8],AdderSecondOperand[7],
                   AdderSecondOperand[6],AdderSecondOperand[5],
                   AdderSecondOperand[4],AdderSecondOperand[3],
                   AdderSecondOperand[2],AdderSecondOperand[1],
                   AdderSecondOperand[0]}), .BoothOperand ({BoothOperand_16,
                   BoothOperand_15,BoothOperand_14,BoothOperand_13,
                   BoothOperand_12,BoothOperand_11,BoothOperand_10,
                   BoothOperand_9,OperationResult[16],OperationResult[16],
                   OperationResult[16],OperationResult[16],OperationResult[16],
                   OperationResult[16],OperationResult[16],OperationResult[16],
                   OperationResult[16]}), .BoothP ({BoothP_16,BoothP_15,
                   BoothP_14,BoothP_13,BoothP_12,BoothP_11,BoothP_10,BoothP_9,
                   BoothP_8,BoothP_7,BoothP_6,BoothP_5,BoothP_4,BoothP_3,
                   BoothP_2,BoothP_1,BoothP_0}), .SelOperand (SelOperand), .Operation (
                   BoothXORCheck), .AdderResult ({AdderResultLarge[16],
                   AdderResultLarge[15],AdderResultLarge[14],
                   AdderResultLarge[13],AdderResultLarge[12],
                   AdderResultLarge[11],AdderResultLarge[10],AdderResultLarge[9]
                   ,AdderResultLarge[8],AdderResultLarge[7],AdderResultLarge[6],
                   AdderResultLarge[5],AdderResultLarge[4],AdderResultLarge[3],
                   AdderResultLarge[2],AdderResultLarge[1],AdderResultLarge[0]})
                   , .AdderBoothResult ({\$dummy [0],AdderBoothResult_15,
                   AdderBoothResult_14,AdderBoothResult_13,AdderBoothResult_12,
                   AdderBoothResult_11,AdderBoothResult_10,AdderBoothResult_9,
                   AdderBoothResult_8,AdderBoothResult_7,AdderBoothResult_6,
                   AdderBoothResult_5,AdderBoothResult_4,AdderBoothResult_3,
                   AdderBoothResult_2,AdderBoothResult_1,AdderBoothResult_0})) ;
    booth_unit_17 BOOTH_UNIT (.CLK (CLK), .RST (RST), .Start (Start), .Instr (
                  Instr), .LoopingAndResultNotReady (LoopingAndResultNotReady), 
                  .Filter ({Filter[7],Filter[6],Filter[5],Filter[4],Filter[3],
                  Filter[2],Filter[1],Filter[0]}), .Window ({Window[7],Window[6]
                  ,Window[5],Window[4],Window[3],Window[2],Window[1],Window[0]})
                  , .AdderBoothResult ({OperationResult[16],AdderBoothResult_15,
                  AdderBoothResult_14,AdderBoothResult_13,AdderBoothResult_12,
                  AdderBoothResult_11,AdderBoothResult_10,AdderBoothResult_9,
                  AdderBoothResult_8,AdderBoothResult_7,AdderBoothResult_6,
                  AdderBoothResult_5,AdderBoothResult_4,AdderBoothResult_3,
                  AdderBoothResult_2,AdderBoothResult_1,AdderBoothResult_0}), .BoothXORCheck (
                  BoothXORCheck), .BoothResult ({\$dummy [1],\$dummy [2],
                  \$dummy [3],\$dummy [4],\$dummy [5],\$dummy [6],\$dummy [7],
                  \$dummy [8]}), .BoothAddingOperand ({BoothOperand_16,
                  BoothOperand_15,BoothOperand_14,BoothOperand_13,
                  BoothOperand_12,BoothOperand_11,BoothOperand_10,BoothOperand_9
                  ,\$dummy [9],\$dummy [10],\$dummy [11],\$dummy [12],
                  \$dummy [13],\$dummy [14],\$dummy [15],\$dummy [16],
                  \$dummy [17]}), .BoothP ({BoothP_16,BoothP_15,BoothP_14,
                  BoothP_13,BoothP_12,BoothP_11,BoothP_10,BoothP_9,BoothP_8,
                  BoothP_7,BoothP_6,BoothP_5,BoothP_4,BoothP_3,BoothP_2,BoothP_1
                  ,BoothP_0}), .LargeWindowShifted ({\$dummy [18],\$dummy [19],
                  \$dummy [20],\$dummy [21],\$dummy [22],\$dummy [23],
                  \$dummy [24],\$dummy [25],\$dummy [26],\$dummy [27],
                  \$dummy [28],\$dummy [29],\$dummy [30],\$dummy [31],
                  \$dummy [32],\$dummy [33],\$dummy [34]})) ;
    fake_gnd ix278 (.Y (OperationResult[16])) ;
    nor02_2x ix171 (.Y (SelOperand), .A0 (ResultReady), .A1 (Instr)) ;
    mux21_ni ix109 (.Y (OperationResult[0]), .A0 (BoothP_1), .A1 (Window[0]), .S0 (
             Instr)) ;
    mux21_ni ix117 (.Y (OperationResult[1]), .A0 (BoothP_2), .A1 (Window[1]), .S0 (
             Instr)) ;
    mux21_ni ix125 (.Y (OperationResult[2]), .A0 (BoothP_3), .A1 (Window[2]), .S0 (
             Instr)) ;
    mux21_ni ix133 (.Y (OperationResult[3]), .A0 (BoothP_4), .A1 (Window[3]), .S0 (
             Instr)) ;
    mux21_ni ix141 (.Y (OperationResult[4]), .A0 (BoothP_5), .A1 (Window[4]), .S0 (
             Instr)) ;
    mux21_ni ix149 (.Y (OperationResult[5]), .A0 (BoothP_6), .A1 (Window[5]), .S0 (
             Instr)) ;
    mux21_ni ix157 (.Y (OperationResult[6]), .A0 (BoothP_7), .A1 (Window[6]), .S0 (
             Instr)) ;
    mux21_ni ix165 (.Y (OperationResult[7]), .A0 (BoothP_8), .A1 (Window[7]), .S0 (
             Instr)) ;
    nor02ii ix73 (.Y (OperationResult[8]), .A0 (Instr), .A1 (BoothP_9)) ;
    nor02ii ix77 (.Y (OperationResult[9]), .A0 (Instr), .A1 (BoothP_10)) ;
    nor02ii ix81 (.Y (OperationResult[10]), .A0 (Instr), .A1 (BoothP_11)) ;
    nor02ii ix85 (.Y (OperationResult[11]), .A0 (Instr), .A1 (BoothP_12)) ;
    nor02ii ix89 (.Y (OperationResult[12]), .A0 (Instr), .A1 (BoothP_13)) ;
    nor02ii ix93 (.Y (OperationResult[13]), .A0 (Instr), .A1 (BoothP_14)) ;
    nor02ii ix97 (.Y (OperationResult[14]), .A0 (Instr), .A1 (BoothP_15)) ;
    nor02ii ix101 (.Y (OperationResult[15]), .A0 (Instr), .A1 (BoothP_16)) ;
    oai21 ix29 (.Y (Result[0]), .A0 (nx338), .A1 (Instr), .B0 (nx340)) ;
    inv01 ix339 (.Y (nx338), .A (AdderResultLarge[0])) ;
    aoi32 ix341 (.Y (nx340), .A0 (AdderResultLarge[5]), .A1 (Size), .A2 (Instr)
          , .B0 (AdderResultLarge[3]), .B1 (nx22)) ;
    nor02ii ix23 (.Y (nx22), .A0 (Size), .A1 (Instr)) ;
    oai21 ix41 (.Y (Result[1]), .A0 (nx344), .A1 (Instr), .B0 (nx346)) ;
    inv01 ix345 (.Y (nx344), .A (AdderResultLarge[1])) ;
    aoi32 ix347 (.Y (nx346), .A0 (AdderResultLarge[6]), .A1 (Size), .A2 (Instr)
          , .B0 (AdderResultLarge[4]), .B1 (nx22)) ;
    oai21 ix53 (.Y (Result[2]), .A0 (nx349), .A1 (Instr), .B0 (nx351)) ;
    inv01 ix350 (.Y (nx349), .A (AdderResultLarge[2])) ;
    aoi32 ix352 (.Y (nx351), .A0 (AdderResultLarge[7]), .A1 (Size), .A2 (Instr)
          , .B0 (AdderResultLarge[5]), .B1 (nx22)) ;
    ao22 ix61 (.Y (Result[3]), .A0 (AdderResultLarge[3]), .A1 (nx354), .B0 (
         AdderResultLarge[6]), .B1 (nx22)) ;
    inv01 ix355 (.Y (nx354), .A (Instr)) ;
    ao22 ix69 (.Y (Result[4]), .A0 (AdderResultLarge[4]), .A1 (nx354), .B0 (
         AdderResultLarge[7]), .B1 (nx22)) ;
    nor02ii ix3 (.Y (Result[5]), .A0 (Instr), .A1 (AdderResultLarge[5])) ;
    nor02ii ix7 (.Y (Result[6]), .A0 (Instr), .A1 (AdderResultLarge[6])) ;
    nor02ii ix11 (.Y (Result[7]), .A0 (Instr), .A1 (AdderResultLarge[7])) ;
endmodule


module booth_unit_17 ( CLK, RST, Start, Instr, LoopingAndResultNotReady, Filter, 
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
         RegisterSDout_16, nx246, RegisterADout_16, nx69, nx79, nx89, nx99, 
         nx109, nx119, nx129, nx139, nx149, nx159, nx169, nx179, nx189, nx199, 
         nx209, nx224, nx226, nx235, nx249, nx261, nx273, nx286, nx299, nx320, 
         nx322, nx324, nx326, nx328;
    wire [14:0] \$dummy ;




    assign BoothResult[7] = LargeWindowShifted[16] ;
    assign BoothResult[6] = LargeWindowShifted[16] ;
    assign BoothResult[5] = LargeWindowShifted[16] ;
    assign BoothResult[4] = LargeWindowShifted[16] ;
    assign BoothResult[3] = LargeWindowShifted[16] ;
    assign BoothResult[2] = LargeWindowShifted[16] ;
    assign BoothResult[1] = LargeWindowShifted[16] ;
    assign BoothResult[0] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[8] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[7] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[6] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[5] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[4] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[3] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[2] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[1] = LargeWindowShifted[16] ;
    assign BoothAddingOperand[0] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[15] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[14] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[13] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[12] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[11] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[10] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[9] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[8] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[7] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[6] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[5] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[4] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[3] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[2] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[1] = LargeWindowShifted[16] ;
    assign LargeWindowShifted[0] = LargeWindowShifted[16] ;
    register_edge_17 REGISTER_P (.CLK (CLK), .RST (RST), .EN (RegisterPEN), .Din (
                     {RegisterPDin_16,RegisterPDin_15,RegisterPDin_14,
                     RegisterPDin_13,RegisterPDin_12,RegisterPDin_11,
                     RegisterPDin_10,RegisterPDin_9,RegisterPDin_8,
                     RegisterPDin_7,RegisterPDin_6,RegisterPDin_5,RegisterPDin_4
                     ,RegisterPDin_3,RegisterPDin_2,RegisterPDin_1,
                     RegisterPDin_0}), .Dout ({BoothP[16],BoothP[15],BoothP[14],
                     BoothP[13],BoothP[12],BoothP[11],BoothP[10],BoothP[9],
                     BoothP[8],BoothP[7],BoothP[6],BoothP[5],BoothP[4],BoothP[3]
                     ,BoothP[2],BoothP[1],BoothP[0]})) ;
    mux_4x1_17 P_INPUT_DATA_MUX (.A ({LargeWindowShifted[16],
               AdderBoothResult[15],AdderBoothResult[14],AdderBoothResult[13],
               AdderBoothResult[12],AdderBoothResult[11],AdderBoothResult[10],
               AdderBoothResult[9],AdderBoothResult[8],AdderBoothResult[7],
               AdderBoothResult[6],AdderBoothResult[5],AdderBoothResult[4],
               AdderBoothResult[3],AdderBoothResult[2],AdderBoothResult[1],
               AdderBoothResult[0]}), .B ({LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16]}), .C ({
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],Window[7],Window[6]
               ,Window[5],Window[4],Window[3],Window[2],Window[1],Window[0],
               LargeWindowShifted[16]}), .D ({LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16],
               LargeWindowShifted[16],LargeWindowShifted[16]}), .S ({Start,Instr
               }), .Dout ({RegisterPDin_16,RegisterPDin_15,RegisterPDin_14,
               RegisterPDin_13,RegisterPDin_12,RegisterPDin_11,RegisterPDin_10,
               RegisterPDin_9,RegisterPDin_8,RegisterPDin_7,RegisterPDin_6,
               RegisterPDin_5,RegisterPDin_4,RegisterPDin_3,RegisterPDin_2,
               RegisterPDin_1,RegisterPDin_0})) ;
    fake_gnd ix43 (.Y (LargeWindowShifted[16])) ;
    dff REGISTER_A_reg_Dout_9 (.Q (BoothAddingOperand[9]), .QB (\$dummy [0]), .D (
        nx209), .CLK (CLK)) ;
    ao32 ix210 (.Y (nx209), .A0 (nx324), .A1 (Filter[0]), .A2 (Start), .B0 (
         BoothAddingOperand[9]), .B1 (nx326)) ;
    inv01 ix225 (.Y (nx224), .A (RST)) ;
    nor02_2x ix227 (.Y (nx226), .A0 (Start), .A1 (RST)) ;
    or02 ix287 (.Y (RegisterPEN), .A0 (Start), .A1 (LoopingAndResultNotReady)) ;
    mux21_ni ix46 (.Y (BoothAddingOperand[10]), .A0 (RegisterSDout_10), .A1 (
             RegisterADout_10), .S0 (nx320)) ;
    dff REGISTER_S_reg_Dout_10 (.Q (RegisterSDout_10), .QB (\$dummy [1]), .D (
        nx69), .CLK (CLK)) ;
    mux21_ni ix70 (.Y (nx69), .A0 (nx20), .A1 (RegisterSDout_10), .S0 (nx326)) ;
    aoi21 ix21 (.Y (nx20), .A0 (Filter[1]), .A1 (Filter[0]), .B0 (nx235)) ;
    or02 ix236 (.Y (nx235), .A0 (RST), .A1 (nx12)) ;
    nor02_2x ix13 (.Y (nx12), .A0 (Filter[0]), .A1 (Filter[1])) ;
    dff REGISTER_A_reg_Dout_10 (.Q (RegisterADout_10), .QB (\$dummy [2]), .D (
        nx79), .CLK (CLK)) ;
    ao32 ix80 (.Y (nx79), .A0 (nx324), .A1 (Filter[1]), .A2 (Start), .B0 (
         RegisterADout_10), .B1 (nx326)) ;
    mux21_ni ix85 (.Y (BoothAddingOperand[11]), .A0 (RegisterSDout_11), .A1 (
             RegisterADout_11), .S0 (nx320)) ;
    dff REGISTER_S_reg_Dout_11 (.Q (RegisterSDout_11), .QB (\$dummy [3]), .D (
        nx89), .CLK (CLK)) ;
    mux21_ni ix90 (.Y (nx89), .A0 (nx60), .A1 (RegisterSDout_11), .S0 (nx326)) ;
    nor03_2x ix61 (.Y (nx60), .A0 (nx249), .A1 (RST), .A2 (nx52)) ;
    nor02ii ix250 (.Y (nx249), .A0 (nx12), .A1 (Filter[2])) ;
    nor03_2x ix53 (.Y (nx52), .A0 (Filter[2]), .A1 (Filter[0]), .A2 (Filter[1])
             ) ;
    dff REGISTER_A_reg_Dout_11 (.Q (RegisterADout_11), .QB (\$dummy [4]), .D (
        nx99), .CLK (CLK)) ;
    ao32 ix100 (.Y (nx99), .A0 (nx324), .A1 (Filter[2]), .A2 (Start), .B0 (
         RegisterADout_11), .B1 (nx326)) ;
    mux21_ni ix125 (.Y (BoothAddingOperand[12]), .A0 (RegisterSDout_12), .A1 (
             RegisterADout_12), .S0 (nx320)) ;
    dff REGISTER_S_reg_Dout_12 (.Q (RegisterSDout_12), .QB (\$dummy [5]), .D (
        nx109), .CLK (CLK)) ;
    mux21_ni ix110 (.Y (nx109), .A0 (nx100), .A1 (RegisterSDout_12), .S0 (nx326)
             ) ;
    nor03_2x ix101 (.Y (nx100), .A0 (nx261), .A1 (RST), .A2 (nx92)) ;
    nor02ii ix262 (.Y (nx261), .A0 (nx52), .A1 (Filter[3])) ;
    nor04 ix93 (.Y (nx92), .A0 (Filter[3]), .A1 (Filter[2]), .A2 (Filter[0]), .A3 (
          Filter[1])) ;
    dff REGISTER_A_reg_Dout_12 (.Q (RegisterADout_12), .QB (\$dummy [6]), .D (
        nx119), .CLK (CLK)) ;
    ao32 ix120 (.Y (nx119), .A0 (nx324), .A1 (Filter[3]), .A2 (Start), .B0 (
         RegisterADout_12), .B1 (nx326)) ;
    mux21_ni ix165 (.Y (BoothAddingOperand[13]), .A0 (RegisterSDout_13), .A1 (
             RegisterADout_13), .S0 (nx320)) ;
    dff REGISTER_S_reg_Dout_13 (.Q (RegisterSDout_13), .QB (\$dummy [7]), .D (
        nx129), .CLK (CLK)) ;
    mux21_ni ix130 (.Y (nx129), .A0 (nx140), .A1 (RegisterSDout_13), .S0 (nx328)
             ) ;
    nor03_2x ix141 (.Y (nx140), .A0 (nx273), .A1 (RST), .A2 (nx132)) ;
    nor02ii ix274 (.Y (nx273), .A0 (nx92), .A1 (Filter[4])) ;
    nor02ii ix133 (.Y (nx132), .A0 (Filter[4]), .A1 (nx92)) ;
    dff REGISTER_A_reg_Dout_13 (.Q (RegisterADout_13), .QB (\$dummy [8]), .D (
        nx139), .CLK (CLK)) ;
    ao32 ix140 (.Y (nx139), .A0 (nx324), .A1 (Filter[4]), .A2 (Start), .B0 (
         RegisterADout_13), .B1 (nx328)) ;
    mux21_ni ix205 (.Y (BoothAddingOperand[14]), .A0 (RegisterSDout_14), .A1 (
             RegisterADout_14), .S0 (nx320)) ;
    dff REGISTER_S_reg_Dout_14 (.Q (RegisterSDout_14), .QB (\$dummy [9]), .D (
        nx149), .CLK (CLK)) ;
    mux21_ni ix150 (.Y (nx149), .A0 (nx180), .A1 (RegisterSDout_14), .S0 (nx328)
             ) ;
    nor03_2x ix181 (.Y (nx180), .A0 (nx286), .A1 (RST), .A2 (nx172)) ;
    nor02ii ix288 (.Y (nx286), .A0 (nx132), .A1 (Filter[5])) ;
    nor02ii ix173 (.Y (nx172), .A0 (Filter[5]), .A1 (nx132)) ;
    dff REGISTER_A_reg_Dout_14 (.Q (RegisterADout_14), .QB (\$dummy [10]), .D (
        nx159), .CLK (CLK)) ;
    ao32 ix160 (.Y (nx159), .A0 (nx324), .A1 (Filter[5]), .A2 (Start), .B0 (
         RegisterADout_14), .B1 (nx328)) ;
    mux21_ni ix245 (.Y (BoothAddingOperand[15]), .A0 (RegisterSDout_15), .A1 (
             RegisterADout_15), .S0 (nx320)) ;
    dff REGISTER_S_reg_Dout_15 (.Q (RegisterSDout_15), .QB (\$dummy [11]), .D (
        nx169), .CLK (CLK)) ;
    mux21_ni ix170 (.Y (nx169), .A0 (nx220), .A1 (RegisterSDout_15), .S0 (nx328)
             ) ;
    nor03_2x ix221 (.Y (nx220), .A0 (nx299), .A1 (RST), .A2 (nx212)) ;
    nor02ii ix300 (.Y (nx299), .A0 (nx172), .A1 (Filter[6])) ;
    nor02ii ix213 (.Y (nx212), .A0 (Filter[6]), .A1 (nx172)) ;
    dff REGISTER_A_reg_Dout_15 (.Q (RegisterADout_15), .QB (\$dummy [12]), .D (
        nx179), .CLK (CLK)) ;
    ao32 ix180 (.Y (nx179), .A0 (nx324), .A1 (Filter[6]), .A2 (Start), .B0 (
         RegisterADout_15), .B1 (nx328)) ;
    mux21_ni ix275 (.Y (BoothAddingOperand[16]), .A0 (RegisterSDout_16), .A1 (
             RegisterADout_16), .S0 (nx320)) ;
    dff REGISTER_S_reg_Dout_16 (.Q (RegisterSDout_16), .QB (\$dummy [13]), .D (
        nx189), .CLK (CLK)) ;
    ao32 ix190 (.Y (nx189), .A0 (nx224), .A1 (nx246), .A2 (Start), .B0 (
         RegisterSDout_16), .B1 (nx328)) ;
    xnor2 ix247 (.Y (nx246), .A0 (Filter[7]), .A1 (nx212)) ;
    dff REGISTER_A_reg_Dout_16 (.Q (RegisterADout_16), .QB (\$dummy [14]), .D (
        nx199), .CLK (CLK)) ;
    ao32 ix200 (.Y (nx199), .A0 (nx224), .A1 (Filter[7]), .A2 (Start), .B0 (
         RegisterADout_16), .B1 (nx226)) ;
    xor2 ix289 (.Y (BoothXORCheck), .A0 (BoothP[1]), .A1 (nx322)) ;
    buf02 ix319 (.Y (nx320), .A (BoothP[0])) ;
    buf02 ix321 (.Y (nx322), .A (BoothP[0])) ;
    inv01 ix323 (.Y (nx324), .A (RST)) ;
    nor02_2x ix325 (.Y (nx326), .A0 (Start), .A1 (RST)) ;
    nor02_2x ix327 (.Y (nx328), .A0 (Start), .A1 (RST)) ;
endmodule


module mux_4x1_17 ( A, B, C, D, S, Dout ) ;

    input [16:0]A ;
    input [16:0]B ;
    input [16:0]C ;
    input [16:0]D ;
    input [1:0]S ;
    output [16:0]Dout ;

    wire nx28, nx46, nx131, nx136, nx139, nx142, nx145, nx148, nx151, nx166, 
         nx168, nx170, nx172, nx178, nx180;



    fake_gnd ix87 (.Y (Dout[16])) ;
    ao22 ix37 (.Y (Dout[0]), .A0 (A[0]), .A1 (nx170), .B0 (C[1]), .B1 (nx166)) ;
    and02 ix29 (.Y (nx28), .A0 (S[0]), .A1 (S[1])) ;
    inv01 ix53 (.Y (Dout[1]), .A (nx131)) ;
    aoi222 ix132 (.Y (nx131), .A0 (A[1]), .A1 (nx170), .B0 (C[1]), .B1 (nx178), 
           .C0 (C[2]), .C1 (nx166)) ;
    inv01 ix65 (.Y (Dout[2]), .A (nx136)) ;
    aoi222 ix137 (.Y (nx136), .A0 (A[2]), .A1 (nx170), .B0 (C[2]), .B1 (nx178), 
           .C0 (C[3]), .C1 (nx166)) ;
    inv01 ix77 (.Y (Dout[3]), .A (nx139)) ;
    aoi222 ix140 (.Y (nx139), .A0 (A[3]), .A1 (nx170), .B0 (C[3]), .B1 (nx178), 
           .C0 (C[4]), .C1 (nx166)) ;
    inv01 ix90 (.Y (Dout[4]), .A (nx142)) ;
    aoi222 ix143 (.Y (nx142), .A0 (A[4]), .A1 (nx170), .B0 (C[4]), .B1 (nx178), 
           .C0 (C[5]), .C1 (nx166)) ;
    inv01 ix101 (.Y (Dout[5]), .A (nx145)) ;
    aoi222 ix146 (.Y (nx145), .A0 (A[5]), .A1 (nx170), .B0 (C[5]), .B1 (nx178), 
           .C0 (C[6]), .C1 (nx166)) ;
    inv01 ix113 (.Y (Dout[6]), .A (nx148)) ;
    aoi222 ix149 (.Y (nx148), .A0 (A[6]), .A1 (nx172), .B0 (C[6]), .B1 (nx178), 
           .C0 (C[7]), .C1 (nx166)) ;
    inv01 ix125 (.Y (Dout[7]), .A (nx151)) ;
    aoi222 ix152 (.Y (nx151), .A0 (A[7]), .A1 (nx172), .B0 (C[7]), .B1 (nx178), 
           .C0 (C[8]), .C1 (nx168)) ;
    ao22 ix133 (.Y (Dout[8]), .A0 (nx172), .A1 (A[8]), .B0 (C[8]), .B1 (nx180)
         ) ;
    nor02ii ix3 (.Y (Dout[9]), .A0 (S[1]), .A1 (A[9])) ;
    nor02ii ix7 (.Y (Dout[10]), .A0 (S[1]), .A1 (A[10])) ;
    nor02ii ix11 (.Y (Dout[11]), .A0 (S[1]), .A1 (A[11])) ;
    nor02ii ix15 (.Y (Dout[12]), .A0 (S[1]), .A1 (A[12])) ;
    nor02ii ix19 (.Y (Dout[13]), .A0 (S[1]), .A1 (A[13])) ;
    nor02ii ix23 (.Y (Dout[14]), .A0 (S[1]), .A1 (A[14])) ;
    nor02ii ix27 (.Y (Dout[15]), .A0 (S[1]), .A1 (A[15])) ;
    buf02 ix165 (.Y (nx166), .A (nx28)) ;
    buf02 ix167 (.Y (nx168), .A (nx28)) ;
    inv02 ix169 (.Y (nx170), .A (S[1])) ;
    inv02 ix171 (.Y (nx172), .A (S[1])) ;
    nor02ii ix47 (.Y (nx46), .A0 (S[0]), .A1 (S[1])) ;
    buf02 ix177 (.Y (nx178), .A (nx46)) ;
    buf02 ix179 (.Y (nx180), .A (nx46)) ;
endmodule


module register_edge_17 ( CLK, RST, EN, Din, Dout ) ;

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


module booth_adder_17 ( AdderFirstOperand, AdderSecondOperand, BoothOperand, 
                        BoothP, SelOperand, Operation, AdderResult, 
                        AdderBoothResult ) ;

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
         SecondOperand_1, SecondOperand_0, nx222, nx225, nx227, nx229, nx231, 
         nx233, nx235, nx237, nx239, nx241;
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
    fake_gnd ix47 (.Y (AdderBoothResult[16])) ;
    mux21_ni ix135 (.Y (SecondOperand_0), .A0 (AdderSecondOperand[0]), .A1 (
             BoothP[0]), .S0 (nx233)) ;
    mux21_ni ix143 (.Y (SecondOperand_1), .A0 (AdderSecondOperand[1]), .A1 (
             BoothP[1]), .S0 (nx233)) ;
    mux21_ni ix151 (.Y (SecondOperand_2), .A0 (AdderSecondOperand[2]), .A1 (
             BoothP[2]), .S0 (nx233)) ;
    mux21_ni ix159 (.Y (SecondOperand_3), .A0 (AdderSecondOperand[3]), .A1 (
             BoothP[3]), .S0 (nx233)) ;
    mux21_ni ix167 (.Y (SecondOperand_4), .A0 (AdderSecondOperand[4]), .A1 (
             BoothP[4]), .S0 (nx233)) ;
    mux21_ni ix175 (.Y (SecondOperand_5), .A0 (AdderSecondOperand[5]), .A1 (
             BoothP[5]), .S0 (nx233)) ;
    mux21_ni ix183 (.Y (SecondOperand_6), .A0 (AdderSecondOperand[6]), .A1 (
             BoothP[6]), .S0 (nx233)) ;
    mux21_ni ix191 (.Y (SecondOperand_7), .A0 (AdderSecondOperand[7]), .A1 (
             BoothP[7]), .S0 (nx235)) ;
    mux21_ni ix199 (.Y (SecondOperand_8), .A0 (AdderSecondOperand[8]), .A1 (
             BoothP[8]), .S0 (nx235)) ;
    mux21_ni ix207 (.Y (SecondOperand_9), .A0 (AdderSecondOperand[9]), .A1 (
             BoothP[9]), .S0 (nx235)) ;
    mux21_ni ix215 (.Y (SecondOperand_10), .A0 (AdderSecondOperand[10]), .A1 (
             BoothP[10]), .S0 (nx235)) ;
    mux21_ni ix223 (.Y (SecondOperand_11), .A0 (AdderSecondOperand[11]), .A1 (
             BoothP[11]), .S0 (nx235)) ;
    mux21_ni ix231 (.Y (SecondOperand_12), .A0 (AdderSecondOperand[12]), .A1 (
             BoothP[12]), .S0 (nx235)) ;
    mux21_ni ix239 (.Y (SecondOperand_13), .A0 (AdderSecondOperand[13]), .A1 (
             BoothP[13]), .S0 (nx235)) ;
    mux21_ni ix247 (.Y (SecondOperand_14), .A0 (AdderSecondOperand[14]), .A1 (
             BoothP[14]), .S0 (nx237)) ;
    mux21_ni ix255 (.Y (SecondOperand_15), .A0 (AdderSecondOperand[15]), .A1 (
             BoothP[15]), .S0 (nx237)) ;
    mux21_ni ix263 (.Y (SecondOperand_16), .A0 (AdderSecondOperand[16]), .A1 (
             BoothP[16]), .S0 (nx237)) ;
    nor02ii ix267 (.Y (FirstOperand_0), .A0 (nx237), .A1 (AdderFirstOperand[0])
            ) ;
    nor02ii ix271 (.Y (FirstOperand_1), .A0 (nx237), .A1 (AdderFirstOperand[1])
            ) ;
    nor02ii ix275 (.Y (FirstOperand_2), .A0 (nx237), .A1 (AdderFirstOperand[2])
            ) ;
    nor02ii ix279 (.Y (FirstOperand_3), .A0 (nx237), .A1 (AdderFirstOperand[3])
            ) ;
    nor02ii ix283 (.Y (FirstOperand_4), .A0 (nx239), .A1 (AdderFirstOperand[4])
            ) ;
    nor02ii ix287 (.Y (FirstOperand_5), .A0 (nx239), .A1 (AdderFirstOperand[5])
            ) ;
    nor02ii ix291 (.Y (FirstOperand_6), .A0 (nx239), .A1 (AdderFirstOperand[6])
            ) ;
    nor02ii ix295 (.Y (FirstOperand_7), .A0 (nx239), .A1 (AdderFirstOperand[7])
            ) ;
    nor02ii ix299 (.Y (FirstOperand_8), .A0 (nx239), .A1 (AdderFirstOperand[8])
            ) ;
    mux21_ni ix307 (.Y (FirstOperand_9), .A0 (AdderFirstOperand[9]), .A1 (
             BoothOperand[9]), .S0 (nx239)) ;
    mux21_ni ix315 (.Y (FirstOperand_10), .A0 (AdderFirstOperand[10]), .A1 (
             BoothOperand[10]), .S0 (nx239)) ;
    mux21_ni ix323 (.Y (FirstOperand_11), .A0 (AdderFirstOperand[11]), .A1 (
             BoothOperand[11]), .S0 (nx241)) ;
    mux21_ni ix331 (.Y (FirstOperand_12), .A0 (AdderFirstOperand[12]), .A1 (
             BoothOperand[12]), .S0 (nx241)) ;
    mux21_ni ix339 (.Y (FirstOperand_13), .A0 (AdderFirstOperand[13]), .A1 (
             BoothOperand[13]), .S0 (nx241)) ;
    mux21_ni ix347 (.Y (FirstOperand_14), .A0 (AdderFirstOperand[14]), .A1 (
             BoothOperand[14]), .S0 (nx241)) ;
    mux21_ni ix355 (.Y (FirstOperand_15), .A0 (AdderFirstOperand[15]), .A1 (
             BoothOperand[15]), .S0 (nx241)) ;
    mux21_ni ix363 (.Y (FirstOperand_16), .A0 (AdderFirstOperand[16]), .A1 (
             BoothOperand[16]), .S0 (nx241)) ;
    mux21_ni ix7 (.Y (AdderBoothResult[0]), .A0 (BoothP[1]), .A1 (AdderResult[1]
             ), .S0 (nx225)) ;
    mux21_ni ix15 (.Y (AdderBoothResult[1]), .A0 (BoothP[2]), .A1 (
             AdderResult[2]), .S0 (nx225)) ;
    mux21_ni ix23 (.Y (AdderBoothResult[2]), .A0 (BoothP[3]), .A1 (
             AdderResult[3]), .S0 (nx225)) ;
    mux21_ni ix31 (.Y (AdderBoothResult[3]), .A0 (BoothP[4]), .A1 (
             AdderResult[4]), .S0 (nx225)) ;
    mux21_ni ix39 (.Y (AdderBoothResult[4]), .A0 (BoothP[5]), .A1 (
             AdderResult[5]), .S0 (nx225)) ;
    mux21_ni ix49 (.Y (AdderBoothResult[5]), .A0 (BoothP[6]), .A1 (
             AdderResult[6]), .S0 (nx225)) ;
    mux21_ni ix55 (.Y (AdderBoothResult[6]), .A0 (BoothP[7]), .A1 (
             AdderResult[7]), .S0 (nx225)) ;
    mux21_ni ix63 (.Y (AdderBoothResult[7]), .A0 (BoothP[8]), .A1 (
             AdderResult[8]), .S0 (nx227)) ;
    mux21_ni ix71 (.Y (AdderBoothResult[8]), .A0 (BoothP[9]), .A1 (
             AdderResult[9]), .S0 (nx227)) ;
    mux21_ni ix79 (.Y (AdderBoothResult[9]), .A0 (BoothP[10]), .A1 (
             AdderResult[10]), .S0 (nx227)) ;
    mux21_ni ix87 (.Y (AdderBoothResult[10]), .A0 (BoothP[11]), .A1 (
             AdderResult[11]), .S0 (nx227)) ;
    mux21_ni ix95 (.Y (AdderBoothResult[11]), .A0 (BoothP[12]), .A1 (
             AdderResult[12]), .S0 (nx227)) ;
    mux21_ni ix103 (.Y (AdderBoothResult[12]), .A0 (BoothP[13]), .A1 (
             AdderResult[13]), .S0 (nx227)) ;
    mux21_ni ix111 (.Y (AdderBoothResult[13]), .A0 (BoothP[14]), .A1 (
             AdderResult[14]), .S0 (nx227)) ;
    mux21_ni ix119 (.Y (AdderBoothResult[14]), .A0 (BoothP[15]), .A1 (
             AdderResult[15]), .S0 (nx229)) ;
    mux21_ni ix127 (.Y (AdderBoothResult[15]), .A0 (BoothP[16]), .A1 (
             AdderResult[16]), .S0 (nx229)) ;
    inv01 ix221 (.Y (nx222), .A (Operation)) ;
    inv02 ix224 (.Y (nx225), .A (nx222)) ;
    inv02 ix226 (.Y (nx227), .A (nx222)) ;
    inv02 ix228 (.Y (nx229), .A (nx222)) ;
    inv01 ix230 (.Y (nx231), .A (SelOperand)) ;
    inv02 ix232 (.Y (nx233), .A (nx231)) ;
    inv02 ix234 (.Y (nx235), .A (nx231)) ;
    inv02 ix236 (.Y (nx237), .A (nx231)) ;
    inv02 ix238 (.Y (nx239), .A (nx231)) ;
    inv02 ix240 (.Y (nx241), .A (nx231)) ;
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

