//
// Verilog description for cell mini_alu, 
// Sat May 12 15:09:02 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module mini_alu ( CLK, RST, Start, Instr, Size, ResultReady, CalculatingBooth, 
                  FilterCell, WindowCell, AdderFirstOperand, AdderSecondOperand, 
                  AdderResult, OperationResult ) ;

    input CLK ;
    input RST ;
    input Start ;
    input Instr ;
    input Size ;
    input ResultReady ;
    input CalculatingBooth ;
    input [7:0]FilterCell ;
    input [7:0]WindowCell ;
    input [7:0]AdderFirstOperand ;
    input [7:0]AdderSecondOperand ;
    output [7:0]AdderResult ;
    output [7:0]OperationResult ;

    wire AddPToBoothOperand, BoothOperand_16, BoothOperand_15, BoothOperand_14, 
         BoothOperand_13, BoothOperand_12, BoothOperand_11, BoothOperand_10, 
         BoothOperand_9, BoothOperand_8, BoothOperand_7, BoothOperand_6, 
         BoothOperand_5, BoothOperand_4, BoothOperand_3, BoothOperand_2, 
         BoothOperand_1, BoothOperand_0, BoothPBeforeShift_16, 
         BoothPBeforeShift_15, BoothPBeforeShift_14, BoothPBeforeShift_13, 
         BoothPBeforeShift_12, BoothPBeforeShift_11, BoothPBeforeShift_10, 
         BoothPBeforeShift_9, BoothPBeforeShift_8, BoothPBeforeShift_7, 
         BoothPBeforeShift_6, BoothPBeforeShift_5, BoothPBeforeShift_4, 
         BoothPBeforeShift_3, BoothPBeforeShift_2, BoothPBeforeShift_1, 
         BoothP_16, BoothP_15, BoothP_14, BoothP_13, BoothP_12, BoothP_11, 
         BoothP_10, BoothP_9, BoothP_8, BoothP_7, BoothP_6, BoothP_5, BoothP_4, 
         BoothP_3, BoothP_2, BoothP_1, BoothP_0, nx0, nx6, nx12, nx18, nx24, 
         nx30, nx40, nx44, nx48, nx52, nx56, nx62, nx154, nx316, nx336, nx356, 
         nx376, nx396, nx416, nx436, nx454, nx456, nx379, nx381, nx383, nx387, 
         nx389, nx391, nx395, nx399, nx401, nx403, nx405, nx409, nx411, nx413, 
         nx415, nx419, nx421, nx423, nx425, nx429, nx431, nx433, nx435, nx439, 
         nx441, nx443, nx445, nx449, nx451, nx453, nx455, nx461, nx463, nx467, 
         nx469, nx471, nx475, nx477, nx479, nx483, nx485, nx487, nx491, nx493, 
         nx495, nx499, nx501, nx503, nx507, nx509, nx511, nx515, nx517, nx529, 
         nx531, nx534, nx537, nx540, nx544, nx547, nx551, nx554, nx558, nx561, 
         nx565, nx568, WindowCellShiftedLeft_16, BOOTH_UNIT_RegisterPEN, 
         BOOTH_UNIT_RegisterSDin_16, BOOTH_UNIT_RegisterSDin_15, 
         BOOTH_UNIT_RegisterSDin_14, BOOTH_UNIT_RegisterSDin_13, 
         BOOTH_UNIT_RegisterSDin_12, BOOTH_UNIT_RegisterSDin_11, 
         BOOTH_UNIT_RegisterSDin_10, BOOTH_UNIT_RegisterPDin_16, 
         BOOTH_UNIT_RegisterPDin_15, BOOTH_UNIT_RegisterPDin_14, 
         BOOTH_UNIT_RegisterPDin_13, BOOTH_UNIT_RegisterPDin_12, 
         BOOTH_UNIT_RegisterPDin_11, BOOTH_UNIT_RegisterPDin_10, 
         BOOTH_UNIT_RegisterPDin_9, BOOTH_UNIT_RegisterPDin_8, 
         BOOTH_UNIT_RegisterPDin_7, BOOTH_UNIT_RegisterPDin_6, 
         BOOTH_UNIT_RegisterPDin_5, BOOTH_UNIT_RegisterPDin_4, 
         BOOTH_UNIT_RegisterPDin_3, BOOTH_UNIT_RegisterPDin_2, 
         BOOTH_UNIT_RegisterPDin_1, BOOTH_UNIT_RegisterPDin_0, 
         BOOTH_UNIT_RegisterADout_16, BOOTH_UNIT_RegisterADout_15, 
         BOOTH_UNIT_RegisterADout_14, BOOTH_UNIT_RegisterADout_13, 
         BOOTH_UNIT_RegisterADout_12, BOOTH_UNIT_RegisterADout_11, 
         BOOTH_UNIT_RegisterADout_10, BOOTH_UNIT_RegisterADout_9, 
         BOOTH_UNIT_RegisterADout_8, BOOTH_UNIT_RegisterADout_7, 
         BOOTH_UNIT_RegisterADout_6, BOOTH_UNIT_RegisterADout_5, 
         BOOTH_UNIT_RegisterADout_4, BOOTH_UNIT_RegisterADout_3, 
         BOOTH_UNIT_RegisterADout_2, BOOTH_UNIT_RegisterADout_1, 
         BOOTH_UNIT_RegisterADout_0, BOOTH_UNIT_RegisterSDout_16, 
         BOOTH_UNIT_RegisterSDout_15, BOOTH_UNIT_RegisterSDout_14, 
         BOOTH_UNIT_RegisterSDout_13, BOOTH_UNIT_RegisterSDout_12, 
         BOOTH_UNIT_RegisterSDout_11, BOOTH_UNIT_RegisterSDout_10, 
         BOOTH_UNIT_RegisterSDout_9, BOOTH_UNIT_RegisterSDout_8, 
         BOOTH_UNIT_RegisterSDout_7, BOOTH_UNIT_RegisterSDout_6, 
         BOOTH_UNIT_RegisterSDout_5, BOOTH_UNIT_RegisterSDout_4, 
         BOOTH_UNIT_RegisterSDout_3, BOOTH_UNIT_RegisterSDout_2, 
         BOOTH_UNIT_RegisterSDout_1, BOOTH_UNIT_RegisterSDout_0, BOOTH_UNIT_nx4, 
         BOOTH_UNIT_nx8, BOOTH_UNIT_nx12, BOOTH_UNIT_nx16, BOOTH_UNIT_nx20, 
         BOOTH_UNIT_nx24, BOOTH_UNIT_nx80, BOOTH_UNIT_nx328, BOOTH_UNIT_nx384, 
         BOOTH_UNIT_REGISTER_A_nx392, BOOTH_UNIT_REGISTER_A_nx402, 
         BOOTH_UNIT_REGISTER_A_nx412, BOOTH_UNIT_REGISTER_A_nx422, 
         BOOTH_UNIT_REGISTER_A_nx432, BOOTH_UNIT_REGISTER_A_nx442, 
         BOOTH_UNIT_REGISTER_A_nx452, BOOTH_UNIT_REGISTER_A_nx462, 
         BOOTH_UNIT_REGISTER_A_nx472, BOOTH_UNIT_REGISTER_A_nx482, 
         BOOTH_UNIT_REGISTER_A_nx492, BOOTH_UNIT_REGISTER_A_nx502, 
         BOOTH_UNIT_REGISTER_A_nx512, BOOTH_UNIT_REGISTER_A_nx522, 
         BOOTH_UNIT_REGISTER_A_nx532, BOOTH_UNIT_REGISTER_A_nx542, 
         BOOTH_UNIT_REGISTER_A_nx552, BOOTH_UNIT_REGISTER_A_nx564, 
         BOOTH_UNIT_REGISTER_A_nx566, BOOTH_UNIT_REGISTER_A_nx624, 
         BOOTH_UNIT_REGISTER_A_nx626, BOOTH_UNIT_REGISTER_A_nx628, 
         BOOTH_UNIT_REGISTER_A_nx644, BOOTH_UNIT_REGISTER_S_nx392, 
         BOOTH_UNIT_REGISTER_S_nx402, BOOTH_UNIT_REGISTER_S_nx412, 
         BOOTH_UNIT_REGISTER_S_nx422, BOOTH_UNIT_REGISTER_S_nx432, 
         BOOTH_UNIT_REGISTER_S_nx442, BOOTH_UNIT_REGISTER_S_nx452, 
         BOOTH_UNIT_REGISTER_S_nx462, BOOTH_UNIT_REGISTER_S_nx472, 
         BOOTH_UNIT_REGISTER_S_nx482, BOOTH_UNIT_REGISTER_S_nx492, 
         BOOTH_UNIT_REGISTER_S_nx502, BOOTH_UNIT_REGISTER_S_nx512, 
         BOOTH_UNIT_REGISTER_S_nx522, BOOTH_UNIT_REGISTER_S_nx532, 
         BOOTH_UNIT_REGISTER_S_nx542, BOOTH_UNIT_REGISTER_S_nx552, 
         BOOTH_UNIT_REGISTER_S_nx566, BOOTH_UNIT_REGISTER_S_nx624, 
         BOOTH_UNIT_REGISTER_S_nx626, BOOTH_UNIT_REGISTER_S_nx628, 
         BOOTH_UNIT_REGISTER_S_nx644, BOOTH_UNIT_REGISTER_P_nx392, 
         BOOTH_UNIT_REGISTER_P_nx402, BOOTH_UNIT_REGISTER_P_nx412, 
         BOOTH_UNIT_REGISTER_P_nx422, BOOTH_UNIT_REGISTER_P_nx432, 
         BOOTH_UNIT_REGISTER_P_nx442, BOOTH_UNIT_REGISTER_P_nx452, 
         BOOTH_UNIT_REGISTER_P_nx462, BOOTH_UNIT_REGISTER_P_nx472, 
         BOOTH_UNIT_REGISTER_P_nx482, BOOTH_UNIT_REGISTER_P_nx492, 
         BOOTH_UNIT_REGISTER_P_nx502, BOOTH_UNIT_REGISTER_P_nx512, 
         BOOTH_UNIT_REGISTER_P_nx522, BOOTH_UNIT_REGISTER_P_nx532, 
         BOOTH_UNIT_REGISTER_P_nx542, BOOTH_UNIT_REGISTER_P_nx552, 
         BOOTH_UNIT_REGISTER_P_nx566, BOOTH_UNIT_REGISTER_P_nx624, 
         BOOTH_UNIT_REGISTER_P_nx626, BOOTH_UNIT_REGISTER_P_nx628, 
         BOOTH_UNIT_REGISTER_P_nx644, nx712, nx714, nx716, nx718, nx720, nx722, 
         nx724, nx726, nx728, nx730, nx732, nx734, nx736, nx738, nx740, nx742, 
         nx744, nx746, nx748, nx750, nx752, nx754, nx756, nx758, nx760, nx762, 
         nx764, nx766, nx768, nx770, nx772, nx774, nx776, nx778, nx780, nx782, 
         nx784, nx786, nx788, nx790, nx792, nx794, nx796, nx798, nx800, nx802, 
         nx804, nx806, nx808, nx810, nx812, nx814, nx816, nx818, nx820, nx822, 
         nx824, nx826, nx828, nx830, nx832, nx834, nx836, nx838, nx840, nx842, 
         nx844, nx846, nx848, nx850, nx852, nx854, nx856, nx858, nx860, nx862, 
         nx864, nx866, nx868, nx870, nx872, nx874, nx878, nx880, nx882, nx884, 
         nx886, nx888, nx890, nx892, nx894, nx896, nx898, nx900, nx902, nx904, 
         nx906, nx908, nx910, nx912, nx914, nx916, nx918, nx920, nx922, nx924, 
         nx926, nx928, nx930, nx932, nx934, nx936, nx938, nx940, nx942, nx944, 
         nx946, nx948, nx950, nx952, nx954, nx956, nx958, nx960, nx962, nx964, 
         nx966, nx968, nx970, nx972, nx974, nx976, nx978, nx980, nx982, nx984, 
         nx986, nx988, nx990, nx992, nx994, nx996, nx998, nx1000, nx1002, nx1004
         ;
    wire [50:0] \$dummy ;




    xor2 ix83 (.Y (AdderResult[0]), .A0 (AdderSecondOperand[0]), .A1 (
         AdderFirstOperand[0])) ;
    xnor2 ix380 (.Y (nx379), .A0 (nx381), .A1 (nx383)) ;
    nand02 ix382 (.Y (nx381), .A0 (BoothOperand_0), .A1 (nx968)) ;
    xnor2 ix384 (.Y (nx383), .A0 (BoothOperand_1), .A1 (BoothP_1)) ;
    inv01 ix388 (.Y (nx387), .A (BoothP_2)) ;
    xnor2 ix390 (.Y (nx389), .A0 (nx391), .A1 (nx395)) ;
    aoi32 ix392 (.Y (nx391), .A0 (BoothOperand_0), .A1 (nx968), .A2 (nx154), .B0 (
          BoothP_1), .B1 (BoothOperand_1)) ;
    xnor2 ix396 (.Y (nx395), .A0 (BoothOperand_2), .A1 (BoothP_2)) ;
    inv01 ix400 (.Y (nx399), .A (BoothP_3)) ;
    xnor2 ix402 (.Y (nx401), .A0 (nx403), .A1 (nx405)) ;
    xnor2 ix406 (.Y (nx405), .A0 (BoothOperand_3), .A1 (BoothP_3)) ;
    inv01 ix410 (.Y (nx409), .A (BoothP_4)) ;
    xnor2 ix412 (.Y (nx411), .A0 (nx413), .A1 (nx415)) ;
    xnor2 ix416 (.Y (nx415), .A0 (BoothOperand_4), .A1 (BoothP_4)) ;
    inv01 ix420 (.Y (nx419), .A (BoothP_5)) ;
    xnor2 ix422 (.Y (nx421), .A0 (nx423), .A1 (nx425)) ;
    xnor2 ix426 (.Y (nx425), .A0 (BoothOperand_5), .A1 (BoothP_5)) ;
    inv01 ix430 (.Y (nx429), .A (BoothP_6)) ;
    xnor2 ix432 (.Y (nx431), .A0 (nx433), .A1 (nx435)) ;
    xnor2 ix436 (.Y (nx435), .A0 (BoothOperand_6), .A1 (BoothP_6)) ;
    inv01 ix440 (.Y (nx439), .A (BoothP_7)) ;
    xnor2 ix442 (.Y (nx441), .A0 (nx443), .A1 (nx445)) ;
    xnor2 ix446 (.Y (nx445), .A0 (BoothOperand_7), .A1 (BoothP_7)) ;
    inv01 ix450 (.Y (nx449), .A (BoothP_8)) ;
    xnor2 ix452 (.Y (nx451), .A0 (nx453), .A1 (nx455)) ;
    xnor2 ix456 (.Y (nx455), .A0 (BoothOperand_8), .A1 (BoothP_8)) ;
    xor2 ix317 (.Y (nx316), .A0 (nx461), .A1 (nx463)) ;
    xnor2 ix464 (.Y (nx463), .A0 (BoothOperand_9), .A1 (BoothP_9)) ;
    xor2 ix337 (.Y (nx336), .A0 (nx467), .A1 (nx471)) ;
    inv01 ix470 (.Y (nx469), .A (BoothP_9)) ;
    xnor2 ix472 (.Y (nx471), .A0 (BoothOperand_10), .A1 (BoothP_10)) ;
    xor2 ix357 (.Y (nx356), .A0 (nx475), .A1 (nx479)) ;
    inv01 ix478 (.Y (nx477), .A (BoothP_10)) ;
    xnor2 ix480 (.Y (nx479), .A0 (BoothOperand_11), .A1 (BoothP_11)) ;
    xor2 ix377 (.Y (nx376), .A0 (nx483), .A1 (nx487)) ;
    inv01 ix486 (.Y (nx485), .A (BoothP_11)) ;
    xnor2 ix488 (.Y (nx487), .A0 (BoothOperand_12), .A1 (BoothP_12)) ;
    xor2 ix397 (.Y (nx396), .A0 (nx491), .A1 (nx495)) ;
    inv01 ix494 (.Y (nx493), .A (BoothP_12)) ;
    xnor2 ix496 (.Y (nx495), .A0 (BoothOperand_13), .A1 (BoothP_13)) ;
    xor2 ix417 (.Y (nx416), .A0 (nx499), .A1 (nx503)) ;
    inv01 ix502 (.Y (nx501), .A (BoothP_13)) ;
    xnor2 ix504 (.Y (nx503), .A0 (BoothOperand_14), .A1 (BoothP_14)) ;
    xor2 ix437 (.Y (nx436), .A0 (nx507), .A1 (nx511)) ;
    inv01 ix510 (.Y (nx509), .A (BoothP_14)) ;
    xnor2 ix512 (.Y (nx511), .A0 (BoothOperand_15), .A1 (BoothP_15)) ;
    xnor2 ix457 (.Y (nx456), .A0 (nx515), .A1 (nx454)) ;
    inv01 ix518 (.Y (nx517), .A (BoothP_15)) ;
    xor2 ix455 (.Y (nx454), .A0 (BoothOperand_16), .A1 (BoothP_16)) ;
    mux21_ni ix91 (.Y (OperationResult[0]), .A0 (BoothP_1), .A1 (WindowCell[0])
             , .S0 (Instr)) ;
    mux21_ni ix99 (.Y (OperationResult[1]), .A0 (BoothP_2), .A1 (WindowCell[1])
             , .S0 (Instr)) ;
    mux21_ni ix107 (.Y (OperationResult[2]), .A0 (BoothP_3), .A1 (WindowCell[2])
             , .S0 (Instr)) ;
    mux21_ni ix115 (.Y (OperationResult[3]), .A0 (BoothP_4), .A1 (WindowCell[3])
             , .S0 (Instr)) ;
    mux21_ni ix123 (.Y (OperationResult[4]), .A0 (BoothP_5), .A1 (WindowCell[4])
             , .S0 (Instr)) ;
    mux21_ni ix131 (.Y (OperationResult[5]), .A0 (BoothP_6), .A1 (WindowCell[5])
             , .S0 (Instr)) ;
    mux21_ni ix139 (.Y (OperationResult[6]), .A0 (BoothP_7), .A1 (WindowCell[6])
             , .S0 (Instr)) ;
    mux21_ni ix147 (.Y (OperationResult[7]), .A0 (BoothP_8), .A1 (WindowCell[7])
             , .S0 (Instr)) ;
    xor2 ix77 (.Y (AdderResult[1]), .A0 (nx529), .A1 (nx531)) ;
    nand02 ix530 (.Y (nx529), .A0 (AdderSecondOperand[0]), .A1 (
           AdderFirstOperand[0])) ;
    xnor2 ix532 (.Y (nx531), .A0 (AdderSecondOperand[1]), .A1 (
          AdderFirstOperand[1])) ;
    xor2 ix75 (.Y (AdderResult[2]), .A0 (nx534), .A1 (nx537)) ;
    aoi32 ix535 (.Y (nx534), .A0 (AdderSecondOperand[0]), .A1 (
          AdderFirstOperand[0]), .A2 (nx30), .B0 (AdderFirstOperand[1]), .B1 (
          AdderSecondOperand[1])) ;
    xnor2 ix538 (.Y (nx537), .A0 (AdderSecondOperand[2]), .A1 (
          AdderFirstOperand[2])) ;
    xor2 ix73 (.Y (AdderResult[3]), .A0 (nx540), .A1 (nx544)) ;
    aoi22 ix541 (.Y (nx540), .A0 (AdderFirstOperand[2]), .A1 (
          AdderSecondOperand[2]), .B0 (nx40), .B1 (nx24)) ;
    xnor2 ix545 (.Y (nx544), .A0 (AdderSecondOperand[3]), .A1 (
          AdderFirstOperand[3])) ;
    xor2 ix71 (.Y (AdderResult[4]), .A0 (nx547), .A1 (nx551)) ;
    aoi22 ix548 (.Y (nx547), .A0 (AdderFirstOperand[3]), .A1 (
          AdderSecondOperand[3]), .B0 (nx44), .B1 (nx18)) ;
    xnor2 ix552 (.Y (nx551), .A0 (AdderSecondOperand[4]), .A1 (
          AdderFirstOperand[4])) ;
    xor2 ix69 (.Y (AdderResult[5]), .A0 (nx554), .A1 (nx558)) ;
    aoi22 ix555 (.Y (nx554), .A0 (AdderFirstOperand[4]), .A1 (
          AdderSecondOperand[4]), .B0 (nx48), .B1 (nx12)) ;
    xnor2 ix559 (.Y (nx558), .A0 (AdderSecondOperand[5]), .A1 (
          AdderFirstOperand[5])) ;
    xor2 ix67 (.Y (AdderResult[6]), .A0 (nx561), .A1 (nx565)) ;
    aoi22 ix562 (.Y (nx561), .A0 (AdderFirstOperand[5]), .A1 (
          AdderSecondOperand[5]), .B0 (nx52), .B1 (nx6)) ;
    xnor2 ix566 (.Y (nx565), .A0 (AdderSecondOperand[6]), .A1 (
          AdderFirstOperand[6])) ;
    xnor2 ix65 (.Y (AdderResult[7]), .A0 (nx568), .A1 (nx62)) ;
    aoi22 ix569 (.Y (nx568), .A0 (AdderFirstOperand[6]), .A1 (
          AdderSecondOperand[6]), .B0 (nx56), .B1 (nx0)) ;
    xor2 ix63 (.Y (nx62), .A0 (AdderSecondOperand[7]), .A1 (AdderFirstOperand[7]
         )) ;
    inv01 ix155 (.Y (nx154), .A (nx383)) ;
    inv01 ix57 (.Y (nx56), .A (nx561)) ;
    inv01 ix53 (.Y (nx52), .A (nx554)) ;
    inv01 ix49 (.Y (nx48), .A (nx547)) ;
    inv01 ix45 (.Y (nx44), .A (nx540)) ;
    inv01 ix41 (.Y (nx40), .A (nx534)) ;
    inv01 ix31 (.Y (nx30), .A (nx531)) ;
    inv01 ix25 (.Y (nx24), .A (nx537)) ;
    inv01 ix19 (.Y (nx18), .A (nx544)) ;
    inv01 ix13 (.Y (nx12), .A (nx551)) ;
    inv01 ix7 (.Y (nx6), .A (nx558)) ;
    inv01 ix1 (.Y (nx0), .A (nx565)) ;
    fake_gnd BOOTH_UNIT_ix216 (.Y (WindowCellShiftedLeft_16)) ;
    nor02ii BOOTH_UNIT_ix81 (.Y (BOOTH_UNIT_nx80), .A0 (Instr), .A1 (Start)) ;
    aoi21 BOOTH_UNIT_ix77 (.Y (BOOTH_UNIT_RegisterSDin_10), .A0 (FilterCell[1])
          , .A1 (FilterCell[0]), .B0 (BOOTH_UNIT_nx4)) ;
    nor02_2x BOOTH_UNIT_ix5 (.Y (BOOTH_UNIT_nx4), .A0 (FilterCell[0]), .A1 (
             FilterCell[1])) ;
    aoi21 BOOTH_UNIT_ix67 (.Y (BOOTH_UNIT_RegisterSDin_11), .A0 (
          BOOTH_UNIT_nx328), .A1 (FilterCell[2]), .B0 (BOOTH_UNIT_nx8)) ;
    nor03_2x BOOTH_UNIT_ix9 (.Y (BOOTH_UNIT_nx8), .A0 (FilterCell[2]), .A1 (
             FilterCell[0]), .A2 (FilterCell[1])) ;
    xnor2 BOOTH_UNIT_ix59 (.Y (BOOTH_UNIT_RegisterSDin_12), .A0 (FilterCell[3])
          , .A1 (BOOTH_UNIT_nx8)) ;
    xnor2 BOOTH_UNIT_ix51 (.Y (BOOTH_UNIT_RegisterSDin_13), .A0 (FilterCell[4])
          , .A1 (BOOTH_UNIT_nx12)) ;
    nor04 BOOTH_UNIT_ix13 (.Y (BOOTH_UNIT_nx12), .A0 (FilterCell[3]), .A1 (
          FilterCell[2]), .A2 (FilterCell[0]), .A3 (FilterCell[1])) ;
    xnor2 BOOTH_UNIT_ix43 (.Y (BOOTH_UNIT_RegisterSDin_14), .A0 (FilterCell[5])
          , .A1 (BOOTH_UNIT_nx16)) ;
    nor02ii BOOTH_UNIT_ix17 (.Y (BOOTH_UNIT_nx16), .A0 (FilterCell[4]), .A1 (
            BOOTH_UNIT_nx12)) ;
    xnor2 BOOTH_UNIT_ix35 (.Y (BOOTH_UNIT_RegisterSDin_15), .A0 (FilterCell[6])
          , .A1 (BOOTH_UNIT_nx20)) ;
    nor02ii BOOTH_UNIT_ix21 (.Y (BOOTH_UNIT_nx20), .A0 (FilterCell[5]), .A1 (
            BOOTH_UNIT_nx16)) ;
    xnor2 BOOTH_UNIT_ix27 (.Y (BOOTH_UNIT_RegisterSDin_16), .A0 (FilterCell[7])
          , .A1 (BOOTH_UNIT_nx24)) ;
    nor02ii BOOTH_UNIT_ix25 (.Y (BOOTH_UNIT_nx24), .A0 (FilterCell[6]), .A1 (
            BOOTH_UNIT_nx20)) ;
    or02 BOOTH_UNIT_ix319 (.Y (BOOTH_UNIT_RegisterPEN), .A0 (Start), .A1 (
         CalculatingBooth)) ;
    inv01 BOOTH_UNIT_ix329 (.Y (BOOTH_UNIT_nx328), .A (BOOTH_UNIT_nx4)) ;
    inv02 BOOTH_UNIT_ix383 (.Y (BOOTH_UNIT_nx384), .A (BoothP_0)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_0 (.Q (BOOTH_UNIT_RegisterADout_0), .QB (
        \$dummy [0]), .D (BOOTH_UNIT_REGISTER_A_nx392), .CLK (
        BOOTH_UNIT_REGISTER_A_nx624)) ;
    inv01 BOOTH_UNIT_REGISTER_A_ix565 (.Y (BOOTH_UNIT_REGISTER_A_nx564), .A (RST
          )) ;
    nor02_2x BOOTH_UNIT_REGISTER_A_ix567 (.Y (BOOTH_UNIT_REGISTER_A_nx566), .A0 (
             RST), .A1 (BOOTH_UNIT_REGISTER_A_nx644)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_1 (.Q (BOOTH_UNIT_RegisterADout_1), .QB (
        \$dummy [1]), .D (BOOTH_UNIT_REGISTER_A_nx402), .CLK (
        BOOTH_UNIT_REGISTER_A_nx624)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_2 (.Q (BOOTH_UNIT_RegisterADout_2), .QB (
        \$dummy [2]), .D (BOOTH_UNIT_REGISTER_A_nx412), .CLK (
        BOOTH_UNIT_REGISTER_A_nx624)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_3 (.Q (BOOTH_UNIT_RegisterADout_3), .QB (
        \$dummy [3]), .D (BOOTH_UNIT_REGISTER_A_nx422), .CLK (
        BOOTH_UNIT_REGISTER_A_nx624)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_4 (.Q (BOOTH_UNIT_RegisterADout_4), .QB (
        \$dummy [4]), .D (BOOTH_UNIT_REGISTER_A_nx432), .CLK (
        BOOTH_UNIT_REGISTER_A_nx624)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_5 (.Q (BOOTH_UNIT_RegisterADout_5), .QB (
        \$dummy [5]), .D (BOOTH_UNIT_REGISTER_A_nx442), .CLK (
        BOOTH_UNIT_REGISTER_A_nx624)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_6 (.Q (BOOTH_UNIT_RegisterADout_6), .QB (
        \$dummy [6]), .D (BOOTH_UNIT_REGISTER_A_nx452), .CLK (
        BOOTH_UNIT_REGISTER_A_nx624)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_7 (.Q (BOOTH_UNIT_RegisterADout_7), .QB (
        \$dummy [7]), .D (BOOTH_UNIT_REGISTER_A_nx462), .CLK (
        BOOTH_UNIT_REGISTER_A_nx626)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_8 (.Q (BOOTH_UNIT_RegisterADout_8), .QB (
        \$dummy [8]), .D (BOOTH_UNIT_REGISTER_A_nx472), .CLK (
        BOOTH_UNIT_REGISTER_A_nx626)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_9 (.Q (BOOTH_UNIT_RegisterADout_9), .QB (
        \$dummy [9]), .D (BOOTH_UNIT_REGISTER_A_nx482), .CLK (
        BOOTH_UNIT_REGISTER_A_nx626)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_10 (.Q (BOOTH_UNIT_RegisterADout_10), .QB (
        \$dummy [10]), .D (BOOTH_UNIT_REGISTER_A_nx492), .CLK (
        BOOTH_UNIT_REGISTER_A_nx626)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_11 (.Q (BOOTH_UNIT_RegisterADout_11), .QB (
        \$dummy [11]), .D (BOOTH_UNIT_REGISTER_A_nx502), .CLK (
        BOOTH_UNIT_REGISTER_A_nx626)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_12 (.Q (BOOTH_UNIT_RegisterADout_12), .QB (
        \$dummy [12]), .D (BOOTH_UNIT_REGISTER_A_nx512), .CLK (
        BOOTH_UNIT_REGISTER_A_nx626)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_13 (.Q (BOOTH_UNIT_RegisterADout_13), .QB (
        \$dummy [13]), .D (BOOTH_UNIT_REGISTER_A_nx522), .CLK (
        BOOTH_UNIT_REGISTER_A_nx626)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_14 (.Q (BOOTH_UNIT_RegisterADout_14), .QB (
        \$dummy [14]), .D (BOOTH_UNIT_REGISTER_A_nx532), .CLK (
        BOOTH_UNIT_REGISTER_A_nx628)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_15 (.Q (BOOTH_UNIT_RegisterADout_15), .QB (
        \$dummy [15]), .D (BOOTH_UNIT_REGISTER_A_nx542), .CLK (
        BOOTH_UNIT_REGISTER_A_nx628)) ;
    dff BOOTH_UNIT_REGISTER_A_reg_Dout_16 (.Q (BOOTH_UNIT_RegisterADout_16), .QB (
        \$dummy [16]), .D (BOOTH_UNIT_REGISTER_A_nx552), .CLK (
        BOOTH_UNIT_REGISTER_A_nx628)) ;
    inv02 BOOTH_UNIT_REGISTER_A_ix623 (.Y (BOOTH_UNIT_REGISTER_A_nx624), .A (CLK
          )) ;
    inv02 BOOTH_UNIT_REGISTER_A_ix625 (.Y (BOOTH_UNIT_REGISTER_A_nx626), .A (CLK
          )) ;
    inv02 BOOTH_UNIT_REGISTER_A_ix627 (.Y (BOOTH_UNIT_REGISTER_A_nx628), .A (CLK
          )) ;
    inv02 BOOTH_UNIT_REGISTER_A_ix643 (.Y (BOOTH_UNIT_REGISTER_A_nx644), .A (
          nx982)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_0 (.Q (BOOTH_UNIT_RegisterSDout_0), .QB (
        \$dummy [17]), .D (BOOTH_UNIT_REGISTER_S_nx392), .CLK (
        BOOTH_UNIT_REGISTER_S_nx624)) ;
    nor02_2x BOOTH_UNIT_REGISTER_S_ix567 (.Y (BOOTH_UNIT_REGISTER_S_nx566), .A0 (
             RST), .A1 (BOOTH_UNIT_REGISTER_S_nx644)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_1 (.Q (BOOTH_UNIT_RegisterSDout_1), .QB (
        \$dummy [18]), .D (BOOTH_UNIT_REGISTER_S_nx402), .CLK (
        BOOTH_UNIT_REGISTER_S_nx624)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_2 (.Q (BOOTH_UNIT_RegisterSDout_2), .QB (
        \$dummy [19]), .D (BOOTH_UNIT_REGISTER_S_nx412), .CLK (
        BOOTH_UNIT_REGISTER_S_nx624)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_3 (.Q (BOOTH_UNIT_RegisterSDout_3), .QB (
        \$dummy [20]), .D (BOOTH_UNIT_REGISTER_S_nx422), .CLK (
        BOOTH_UNIT_REGISTER_S_nx624)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_4 (.Q (BOOTH_UNIT_RegisterSDout_4), .QB (
        \$dummy [21]), .D (BOOTH_UNIT_REGISTER_S_nx432), .CLK (
        BOOTH_UNIT_REGISTER_S_nx624)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_5 (.Q (BOOTH_UNIT_RegisterSDout_5), .QB (
        \$dummy [22]), .D (BOOTH_UNIT_REGISTER_S_nx442), .CLK (
        BOOTH_UNIT_REGISTER_S_nx624)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_6 (.Q (BOOTH_UNIT_RegisterSDout_6), .QB (
        \$dummy [23]), .D (BOOTH_UNIT_REGISTER_S_nx452), .CLK (
        BOOTH_UNIT_REGISTER_S_nx624)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_7 (.Q (BOOTH_UNIT_RegisterSDout_7), .QB (
        \$dummy [24]), .D (BOOTH_UNIT_REGISTER_S_nx462), .CLK (
        BOOTH_UNIT_REGISTER_S_nx626)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_8 (.Q (BOOTH_UNIT_RegisterSDout_8), .QB (
        \$dummy [25]), .D (BOOTH_UNIT_REGISTER_S_nx472), .CLK (
        BOOTH_UNIT_REGISTER_S_nx626)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_9 (.Q (BOOTH_UNIT_RegisterSDout_9), .QB (
        \$dummy [26]), .D (BOOTH_UNIT_REGISTER_S_nx482), .CLK (
        BOOTH_UNIT_REGISTER_S_nx626)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_10 (.Q (BOOTH_UNIT_RegisterSDout_10), .QB (
        \$dummy [27]), .D (BOOTH_UNIT_REGISTER_S_nx492), .CLK (
        BOOTH_UNIT_REGISTER_S_nx626)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_11 (.Q (BOOTH_UNIT_RegisterSDout_11), .QB (
        \$dummy [28]), .D (BOOTH_UNIT_REGISTER_S_nx502), .CLK (
        BOOTH_UNIT_REGISTER_S_nx626)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_12 (.Q (BOOTH_UNIT_RegisterSDout_12), .QB (
        \$dummy [29]), .D (BOOTH_UNIT_REGISTER_S_nx512), .CLK (
        BOOTH_UNIT_REGISTER_S_nx626)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_13 (.Q (BOOTH_UNIT_RegisterSDout_13), .QB (
        \$dummy [30]), .D (BOOTH_UNIT_REGISTER_S_nx522), .CLK (
        BOOTH_UNIT_REGISTER_S_nx626)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_14 (.Q (BOOTH_UNIT_RegisterSDout_14), .QB (
        \$dummy [31]), .D (BOOTH_UNIT_REGISTER_S_nx532), .CLK (
        BOOTH_UNIT_REGISTER_S_nx628)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_15 (.Q (BOOTH_UNIT_RegisterSDout_15), .QB (
        \$dummy [32]), .D (BOOTH_UNIT_REGISTER_S_nx542), .CLK (
        BOOTH_UNIT_REGISTER_S_nx628)) ;
    dff BOOTH_UNIT_REGISTER_S_reg_Dout_16 (.Q (BOOTH_UNIT_RegisterSDout_16), .QB (
        \$dummy [33]), .D (BOOTH_UNIT_REGISTER_S_nx552), .CLK (
        BOOTH_UNIT_REGISTER_S_nx628)) ;
    inv02 BOOTH_UNIT_REGISTER_S_ix623 (.Y (BOOTH_UNIT_REGISTER_S_nx624), .A (CLK
          )) ;
    inv02 BOOTH_UNIT_REGISTER_S_ix625 (.Y (BOOTH_UNIT_REGISTER_S_nx626), .A (CLK
          )) ;
    inv02 BOOTH_UNIT_REGISTER_S_ix627 (.Y (BOOTH_UNIT_REGISTER_S_nx628), .A (CLK
          )) ;
    inv02 BOOTH_UNIT_REGISTER_S_ix643 (.Y (BOOTH_UNIT_REGISTER_S_nx644), .A (
          nx988)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_0 (.Q (BoothP_0), .QB (\$dummy [34]), .D (
        BOOTH_UNIT_REGISTER_P_nx392), .CLK (BOOTH_UNIT_REGISTER_P_nx624)) ;
    nor02_2x BOOTH_UNIT_REGISTER_P_ix567 (.Y (BOOTH_UNIT_REGISTER_P_nx566), .A0 (
             RST), .A1 (BOOTH_UNIT_REGISTER_P_nx644)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_1 (.Q (BoothP_1), .QB (\$dummy [35]), .D (
        BOOTH_UNIT_REGISTER_P_nx402), .CLK (BOOTH_UNIT_REGISTER_P_nx624)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_2 (.Q (BoothP_2), .QB (\$dummy [36]), .D (
        BOOTH_UNIT_REGISTER_P_nx412), .CLK (BOOTH_UNIT_REGISTER_P_nx624)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_3 (.Q (BoothP_3), .QB (\$dummy [37]), .D (
        BOOTH_UNIT_REGISTER_P_nx422), .CLK (BOOTH_UNIT_REGISTER_P_nx624)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_4 (.Q (BoothP_4), .QB (\$dummy [38]), .D (
        BOOTH_UNIT_REGISTER_P_nx432), .CLK (BOOTH_UNIT_REGISTER_P_nx624)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_5 (.Q (BoothP_5), .QB (\$dummy [39]), .D (
        BOOTH_UNIT_REGISTER_P_nx442), .CLK (BOOTH_UNIT_REGISTER_P_nx624)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_6 (.Q (BoothP_6), .QB (\$dummy [40]), .D (
        BOOTH_UNIT_REGISTER_P_nx452), .CLK (BOOTH_UNIT_REGISTER_P_nx624)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_7 (.Q (BoothP_7), .QB (\$dummy [41]), .D (
        BOOTH_UNIT_REGISTER_P_nx462), .CLK (BOOTH_UNIT_REGISTER_P_nx626)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_8 (.Q (BoothP_8), .QB (\$dummy [42]), .D (
        BOOTH_UNIT_REGISTER_P_nx472), .CLK (BOOTH_UNIT_REGISTER_P_nx626)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_9 (.Q (BoothP_9), .QB (\$dummy [43]), .D (
        BOOTH_UNIT_REGISTER_P_nx482), .CLK (BOOTH_UNIT_REGISTER_P_nx626)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_10 (.Q (BoothP_10), .QB (\$dummy [44]), .D (
        BOOTH_UNIT_REGISTER_P_nx492), .CLK (BOOTH_UNIT_REGISTER_P_nx626)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_11 (.Q (BoothP_11), .QB (\$dummy [45]), .D (
        BOOTH_UNIT_REGISTER_P_nx502), .CLK (BOOTH_UNIT_REGISTER_P_nx626)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_12 (.Q (BoothP_12), .QB (\$dummy [46]), .D (
        BOOTH_UNIT_REGISTER_P_nx512), .CLK (BOOTH_UNIT_REGISTER_P_nx626)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_13 (.Q (BoothP_13), .QB (\$dummy [47]), .D (
        BOOTH_UNIT_REGISTER_P_nx522), .CLK (BOOTH_UNIT_REGISTER_P_nx626)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_14 (.Q (BoothP_14), .QB (\$dummy [48]), .D (
        BOOTH_UNIT_REGISTER_P_nx532), .CLK (BOOTH_UNIT_REGISTER_P_nx628)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_15 (.Q (BoothP_15), .QB (\$dummy [49]), .D (
        BOOTH_UNIT_REGISTER_P_nx542), .CLK (BOOTH_UNIT_REGISTER_P_nx628)) ;
    dff BOOTH_UNIT_REGISTER_P_reg_Dout_16 (.Q (BoothP_16), .QB (\$dummy [50]), .D (
        BOOTH_UNIT_REGISTER_P_nx552), .CLK (BOOTH_UNIT_REGISTER_P_nx628)) ;
    inv02 BOOTH_UNIT_REGISTER_P_ix623 (.Y (BOOTH_UNIT_REGISTER_P_nx624), .A (CLK
          )) ;
    inv02 BOOTH_UNIT_REGISTER_P_ix625 (.Y (BOOTH_UNIT_REGISTER_P_nx626), .A (CLK
          )) ;
    inv02 BOOTH_UNIT_REGISTER_P_ix627 (.Y (BOOTH_UNIT_REGISTER_P_nx628), .A (CLK
          )) ;
    inv02 BOOTH_UNIT_REGISTER_P_ix643 (.Y (BOOTH_UNIT_REGISTER_P_nx644), .A (
          nx994)) ;
    mux21 ix404 (.Y (nx403), .A0 (nx712), .A1 (BoothP_2), .S0 (nx395)) ;
    inv01 ix711 (.Y (nx712), .A (nx391)) ;
    mux21 ix414 (.Y (nx413), .A0 (nx714), .A1 (BoothP_3), .S0 (nx405)) ;
    inv01 ix713 (.Y (nx714), .A (nx403)) ;
    mux21 ix424 (.Y (nx423), .A0 (nx716), .A1 (BoothP_4), .S0 (nx415)) ;
    inv01 ix715 (.Y (nx716), .A (nx413)) ;
    mux21 ix434 (.Y (nx433), .A0 (nx718), .A1 (BoothP_5), .S0 (nx425)) ;
    inv01 ix717 (.Y (nx718), .A (nx423)) ;
    mux21 ix444 (.Y (nx443), .A0 (nx720), .A1 (BoothP_6), .S0 (nx435)) ;
    inv01 ix719 (.Y (nx720), .A (nx433)) ;
    mux21 ix454 (.Y (nx453), .A0 (nx722), .A1 (BoothP_7), .S0 (nx445)) ;
    inv01 ix721 (.Y (nx722), .A (nx443)) ;
    mux21 ix462 (.Y (nx461), .A0 (nx724), .A1 (BoothP_8), .S0 (nx455)) ;
    inv01 ix723 (.Y (nx724), .A (nx453)) ;
    mux21 ix468 (.Y (nx467), .A0 (nx726), .A1 (BoothP_9), .S0 (nx463)) ;
    inv01 ix725 (.Y (nx726), .A (nx461)) ;
    mux21 ix476 (.Y (nx475), .A0 (nx728), .A1 (BoothP_10), .S0 (nx471)) ;
    inv01 ix727 (.Y (nx728), .A (nx467)) ;
    mux21 ix484 (.Y (nx483), .A0 (nx730), .A1 (BoothP_11), .S0 (nx479)) ;
    inv01 ix729 (.Y (nx730), .A (nx475)) ;
    mux21 ix492 (.Y (nx491), .A0 (nx732), .A1 (BoothP_12), .S0 (nx487)) ;
    inv01 ix731 (.Y (nx732), .A (nx483)) ;
    mux21 ix500 (.Y (nx499), .A0 (nx734), .A1 (BoothP_13), .S0 (nx495)) ;
    inv01 ix733 (.Y (nx734), .A (nx491)) ;
    mux21 ix508 (.Y (nx507), .A0 (nx736), .A1 (BoothP_14), .S0 (nx503)) ;
    inv01 ix735 (.Y (nx736), .A (nx499)) ;
    mux21 ix516 (.Y (nx515), .A0 (nx738), .A1 (BoothP_15), .S0 (nx511)) ;
    inv01 ix737 (.Y (nx738), .A (nx507)) ;
    mux21 ix161 (.Y (BoothPBeforeShift_1), .A0 (nx740), .A1 (nx379), .S0 (nx962)
          ) ;
    inv01 ix739 (.Y (nx740), .A (BoothP_1)) ;
    mux21 ix181 (.Y (BoothPBeforeShift_2), .A0 (nx387), .A1 (nx389), .S0 (nx962)
          ) ;
    mux21 ix201 (.Y (BoothPBeforeShift_3), .A0 (nx399), .A1 (nx401), .S0 (nx962)
          ) ;
    mux21 ix221 (.Y (BoothPBeforeShift_4), .A0 (nx409), .A1 (nx411), .S0 (nx962)
          ) ;
    mux21 ix241 (.Y (BoothPBeforeShift_5), .A0 (nx419), .A1 (nx421), .S0 (nx962)
          ) ;
    mux21 ix261 (.Y (BoothPBeforeShift_6), .A0 (nx429), .A1 (nx431), .S0 (nx962)
          ) ;
    mux21 ix281 (.Y (BoothPBeforeShift_7), .A0 (nx439), .A1 (nx441), .S0 (nx962)
          ) ;
    mux21 ix301 (.Y (BoothPBeforeShift_8), .A0 (nx449), .A1 (nx451), .S0 (nx964)
          ) ;
    mux21 ix321 (.Y (BoothPBeforeShift_9), .A0 (nx469), .A1 (nx742), .S0 (nx964)
          ) ;
    inv01 ix741 (.Y (nx742), .A (nx316)) ;
    mux21 ix341 (.Y (BoothPBeforeShift_10), .A0 (nx477), .A1 (nx744), .S0 (nx964
          )) ;
    inv01 ix743 (.Y (nx744), .A (nx336)) ;
    mux21 ix361 (.Y (BoothPBeforeShift_11), .A0 (nx485), .A1 (nx746), .S0 (nx964
          )) ;
    inv01 ix745 (.Y (nx746), .A (nx356)) ;
    mux21 ix381 (.Y (BoothPBeforeShift_12), .A0 (nx493), .A1 (nx748), .S0 (nx964
          )) ;
    inv01 ix747 (.Y (nx748), .A (nx376)) ;
    mux21 ix401 (.Y (BoothPBeforeShift_13), .A0 (nx501), .A1 (nx750), .S0 (nx964
          )) ;
    inv01 ix749 (.Y (nx750), .A (nx396)) ;
    mux21 ix421 (.Y (BoothPBeforeShift_14), .A0 (nx509), .A1 (nx752), .S0 (nx964
          )) ;
    inv01 ix751 (.Y (nx752), .A (nx416)) ;
    mux21 ix441 (.Y (BoothPBeforeShift_15), .A0 (nx517), .A1 (nx754), .S0 (nx966
          )) ;
    inv01 ix753 (.Y (nx754), .A (nx436)) ;
    mux21 ix461 (.Y (BoothPBeforeShift_16), .A0 (nx756), .A1 (nx758), .S0 (nx966
          )) ;
    inv01 ix755 (.Y (nx756), .A (BoothP_16)) ;
    inv01 ix757 (.Y (nx758), .A (nx456)) ;
    nor02_2x BOOTH_UNIT_ix85 (.Y (BOOTH_UNIT_RegisterPDin_0), .A0 (nx976), .A1 (
             nx760)) ;
    inv01 ix759 (.Y (nx760), .A (BoothPBeforeShift_1)) ;
    mux21 BOOTH_UNIT_ix125 (.Y (BOOTH_UNIT_RegisterPDin_1), .A0 (nx762), .A1 (
          nx764), .S0 (nx976)) ;
    inv01 ix761 (.Y (nx762), .A (BoothPBeforeShift_2)) ;
    inv01 ix763 (.Y (nx764), .A (WindowCell[0])) ;
    mux21 BOOTH_UNIT_ix133 (.Y (BOOTH_UNIT_RegisterPDin_2), .A0 (nx766), .A1 (
          nx768), .S0 (nx976)) ;
    inv01 ix765 (.Y (nx766), .A (BoothPBeforeShift_3)) ;
    inv01 ix767 (.Y (nx768), .A (WindowCell[1])) ;
    mux21 BOOTH_UNIT_ix141 (.Y (BOOTH_UNIT_RegisterPDin_3), .A0 (nx770), .A1 (
          nx772), .S0 (nx976)) ;
    inv01 ix769 (.Y (nx770), .A (BoothPBeforeShift_4)) ;
    inv01 ix771 (.Y (nx772), .A (WindowCell[2])) ;
    mux21 BOOTH_UNIT_ix149 (.Y (BOOTH_UNIT_RegisterPDin_4), .A0 (nx774), .A1 (
          nx776), .S0 (nx976)) ;
    inv01 ix773 (.Y (nx774), .A (BoothPBeforeShift_5)) ;
    inv01 ix775 (.Y (nx776), .A (WindowCell[3])) ;
    mux21 BOOTH_UNIT_ix157 (.Y (BOOTH_UNIT_RegisterPDin_5), .A0 (nx778), .A1 (
          nx780), .S0 (nx976)) ;
    inv01 ix777 (.Y (nx778), .A (BoothPBeforeShift_6)) ;
    inv01 ix779 (.Y (nx780), .A (WindowCell[4])) ;
    mux21 BOOTH_UNIT_ix165 (.Y (BOOTH_UNIT_RegisterPDin_6), .A0 (nx782), .A1 (
          nx784), .S0 (nx976)) ;
    inv01 ix781 (.Y (nx782), .A (BoothPBeforeShift_7)) ;
    inv01 ix783 (.Y (nx784), .A (WindowCell[5])) ;
    mux21 BOOTH_UNIT_ix173 (.Y (BOOTH_UNIT_RegisterPDin_7), .A0 (nx786), .A1 (
          nx788), .S0 (nx978)) ;
    inv01 ix785 (.Y (nx786), .A (BoothPBeforeShift_8)) ;
    inv01 ix787 (.Y (nx788), .A (WindowCell[6])) ;
    mux21 BOOTH_UNIT_ix181 (.Y (BOOTH_UNIT_RegisterPDin_8), .A0 (nx790), .A1 (
          nx792), .S0 (nx978)) ;
    inv01 ix789 (.Y (nx790), .A (BoothPBeforeShift_9)) ;
    inv01 ix791 (.Y (nx792), .A (WindowCell[7])) ;
    nor02_2x BOOTH_UNIT_ix89 (.Y (BOOTH_UNIT_RegisterPDin_9), .A0 (nx978), .A1 (
             nx794)) ;
    inv01 ix793 (.Y (nx794), .A (BoothPBeforeShift_10)) ;
    nor02_2x BOOTH_UNIT_ix93 (.Y (BOOTH_UNIT_RegisterPDin_10), .A0 (nx978), .A1 (
             nx796)) ;
    inv01 ix795 (.Y (nx796), .A (BoothPBeforeShift_11)) ;
    nor02_2x BOOTH_UNIT_ix97 (.Y (BOOTH_UNIT_RegisterPDin_11), .A0 (nx978), .A1 (
             nx798)) ;
    inv01 ix797 (.Y (nx798), .A (BoothPBeforeShift_12)) ;
    nor02_2x BOOTH_UNIT_ix101 (.Y (BOOTH_UNIT_RegisterPDin_12), .A0 (nx978), .A1 (
             nx800)) ;
    inv01 ix799 (.Y (nx800), .A (BoothPBeforeShift_13)) ;
    nor02_2x BOOTH_UNIT_ix105 (.Y (BOOTH_UNIT_RegisterPDin_13), .A0 (nx978), .A1 (
             nx802)) ;
    inv01 ix801 (.Y (nx802), .A (BoothPBeforeShift_14)) ;
    nor02_2x BOOTH_UNIT_ix109 (.Y (BOOTH_UNIT_RegisterPDin_14), .A0 (nx980), .A1 (
             nx804)) ;
    inv01 ix803 (.Y (nx804), .A (BoothPBeforeShift_15)) ;
    nor02_2x BOOTH_UNIT_ix113 (.Y (BOOTH_UNIT_RegisterPDin_15), .A0 (nx980), .A1 (
             nx806)) ;
    inv01 ix805 (.Y (nx806), .A (BoothPBeforeShift_16)) ;
    nor02_2x BOOTH_UNIT_ix117 (.Y (BOOTH_UNIT_RegisterPDin_16), .A0 (nx980), .A1 (
             nx806)) ;
    mux21 BOOTH_UNIT_ix189 (.Y (BoothOperand_0), .A0 (nx808), .A1 (nx810), .S0 (
          nx968)) ;
    inv01 ix807 (.Y (nx808), .A (BOOTH_UNIT_RegisterSDout_0)) ;
    inv01 ix809 (.Y (nx810), .A (BOOTH_UNIT_RegisterADout_0)) ;
    mux21 BOOTH_UNIT_ix197 (.Y (BoothOperand_1), .A0 (nx812), .A1 (nx814), .S0 (
          nx968)) ;
    inv01 ix811 (.Y (nx812), .A (BOOTH_UNIT_RegisterSDout_1)) ;
    inv01 ix813 (.Y (nx814), .A (BOOTH_UNIT_RegisterADout_1)) ;
    mux21 BOOTH_UNIT_ix205 (.Y (BoothOperand_2), .A0 (nx816), .A1 (nx818), .S0 (
          nx968)) ;
    inv01 ix815 (.Y (nx816), .A (BOOTH_UNIT_RegisterSDout_2)) ;
    inv01 ix817 (.Y (nx818), .A (BOOTH_UNIT_RegisterADout_2)) ;
    mux21 BOOTH_UNIT_ix213 (.Y (BoothOperand_3), .A0 (nx820), .A1 (nx822), .S0 (
          nx968)) ;
    inv01 ix819 (.Y (nx820), .A (BOOTH_UNIT_RegisterSDout_3)) ;
    inv01 ix821 (.Y (nx822), .A (BOOTH_UNIT_RegisterADout_3)) ;
    mux21 BOOTH_UNIT_ix221 (.Y (BoothOperand_4), .A0 (nx824), .A1 (nx826), .S0 (
          nx968)) ;
    inv01 ix823 (.Y (nx824), .A (BOOTH_UNIT_RegisterSDout_4)) ;
    inv01 ix825 (.Y (nx826), .A (BOOTH_UNIT_RegisterADout_4)) ;
    mux21 BOOTH_UNIT_ix229 (.Y (BoothOperand_5), .A0 (nx828), .A1 (nx830), .S0 (
          nx970)) ;
    inv01 ix827 (.Y (nx828), .A (BOOTH_UNIT_RegisterSDout_5)) ;
    inv01 ix829 (.Y (nx830), .A (BOOTH_UNIT_RegisterADout_5)) ;
    mux21 BOOTH_UNIT_ix237 (.Y (BoothOperand_6), .A0 (nx832), .A1 (nx834), .S0 (
          nx970)) ;
    inv01 ix831 (.Y (nx832), .A (BOOTH_UNIT_RegisterSDout_6)) ;
    inv01 ix833 (.Y (nx834), .A (BOOTH_UNIT_RegisterADout_6)) ;
    mux21 BOOTH_UNIT_ix245 (.Y (BoothOperand_7), .A0 (nx836), .A1 (nx838), .S0 (
          nx970)) ;
    inv01 ix835 (.Y (nx836), .A (BOOTH_UNIT_RegisterSDout_7)) ;
    inv01 ix837 (.Y (nx838), .A (BOOTH_UNIT_RegisterADout_7)) ;
    mux21 BOOTH_UNIT_ix253 (.Y (BoothOperand_8), .A0 (nx840), .A1 (nx842), .S0 (
          nx970)) ;
    inv01 ix839 (.Y (nx840), .A (BOOTH_UNIT_RegisterSDout_8)) ;
    inv01 ix841 (.Y (nx842), .A (BOOTH_UNIT_RegisterADout_8)) ;
    mux21 BOOTH_UNIT_ix261 (.Y (BoothOperand_9), .A0 (nx844), .A1 (nx846), .S0 (
          nx970)) ;
    inv01 ix843 (.Y (nx844), .A (BOOTH_UNIT_RegisterSDout_9)) ;
    inv01 ix845 (.Y (nx846), .A (BOOTH_UNIT_RegisterADout_9)) ;
    mux21 BOOTH_UNIT_ix269 (.Y (BoothOperand_10), .A0 (nx848), .A1 (nx850), .S0 (
          nx970)) ;
    inv01 ix847 (.Y (nx848), .A (BOOTH_UNIT_RegisterSDout_10)) ;
    inv01 ix849 (.Y (nx850), .A (BOOTH_UNIT_RegisterADout_10)) ;
    mux21 BOOTH_UNIT_ix277 (.Y (BoothOperand_11), .A0 (nx852), .A1 (nx854), .S0 (
          nx970)) ;
    inv01 ix851 (.Y (nx852), .A (BOOTH_UNIT_RegisterSDout_11)) ;
    inv01 ix853 (.Y (nx854), .A (BOOTH_UNIT_RegisterADout_11)) ;
    mux21 BOOTH_UNIT_ix285 (.Y (BoothOperand_12), .A0 (nx856), .A1 (nx858), .S0 (
          nx972)) ;
    inv01 ix855 (.Y (nx856), .A (BOOTH_UNIT_RegisterSDout_12)) ;
    inv01 ix857 (.Y (nx858), .A (BOOTH_UNIT_RegisterADout_12)) ;
    mux21 BOOTH_UNIT_ix293 (.Y (BoothOperand_13), .A0 (nx860), .A1 (nx862), .S0 (
          nx972)) ;
    inv01 ix859 (.Y (nx860), .A (BOOTH_UNIT_RegisterSDout_13)) ;
    inv01 ix861 (.Y (nx862), .A (BOOTH_UNIT_RegisterADout_13)) ;
    mux21 BOOTH_UNIT_ix301 (.Y (BoothOperand_14), .A0 (nx864), .A1 (nx866), .S0 (
          nx972)) ;
    inv01 ix863 (.Y (nx864), .A (BOOTH_UNIT_RegisterSDout_14)) ;
    inv01 ix865 (.Y (nx866), .A (BOOTH_UNIT_RegisterADout_14)) ;
    mux21 BOOTH_UNIT_ix309 (.Y (BoothOperand_15), .A0 (nx868), .A1 (nx870), .S0 (
          nx972)) ;
    inv01 ix867 (.Y (nx868), .A (BOOTH_UNIT_RegisterSDout_15)) ;
    inv01 ix869 (.Y (nx870), .A (BOOTH_UNIT_RegisterADout_15)) ;
    mux21 BOOTH_UNIT_ix317 (.Y (BoothOperand_16), .A0 (nx872), .A1 (nx874), .S0 (
          nx972)) ;
    inv01 ix871 (.Y (nx872), .A (BOOTH_UNIT_RegisterSDout_16)) ;
    inv01 ix873 (.Y (nx874), .A (BOOTH_UNIT_RegisterADout_16)) ;
    xnor2 BOOTH_UNIT_ix321 (.Y (AddPToBoothOperand), .A0 (nx972), .A1 (nx740)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix393 (.Y (BOOTH_UNIT_REGISTER_A_nx392), .A0 (
          nx1000), .A1 (RST), .A2 (nx982), .B0 (nx810), .B1 (nx878)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix403 (.Y (BOOTH_UNIT_REGISTER_A_nx402), .A0 (
          nx1000), .A1 (RST), .A2 (nx982), .B0 (nx814), .B1 (nx878)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix413 (.Y (BOOTH_UNIT_REGISTER_A_nx412), .A0 (
          nx1000), .A1 (RST), .A2 (nx982), .B0 (nx818), .B1 (nx878)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix423 (.Y (BOOTH_UNIT_REGISTER_A_nx422), .A0 (
          nx1000), .A1 (RST), .A2 (nx982), .B0 (nx822), .B1 (nx878)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix433 (.Y (BOOTH_UNIT_REGISTER_A_nx432), .A0 (
          nx1000), .A1 (RST), .A2 (nx982), .B0 (nx826), .B1 (nx878)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix443 (.Y (BOOTH_UNIT_REGISTER_A_nx442), .A0 (
          nx1000), .A1 (RST), .A2 (nx982), .B0 (nx830), .B1 (nx878)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix453 (.Y (BOOTH_UNIT_REGISTER_A_nx452), .A0 (
          nx1000), .A1 (RST), .A2 (nx984), .B0 (nx834), .B1 (nx878)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix463 (.Y (BOOTH_UNIT_REGISTER_A_nx462), .A0 (
          nx1002), .A1 (RST), .A2 (nx984), .B0 (nx838), .B1 (nx880)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix473 (.Y (BOOTH_UNIT_REGISTER_A_nx472), .A0 (
          nx1002), .A1 (RST), .A2 (nx984), .B0 (nx842), .B1 (nx880)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix483 (.Y (BOOTH_UNIT_REGISTER_A_nx482), .A0 (
          nx882), .A1 (RST), .A2 (nx984), .B0 (nx846), .B1 (nx880)) ;
    inv01 ix881 (.Y (nx882), .A (FilterCell[0])) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix493 (.Y (BOOTH_UNIT_REGISTER_A_nx492), .A0 (
          nx884), .A1 (RST), .A2 (nx984), .B0 (nx850), .B1 (nx880)) ;
    inv01 ix883 (.Y (nx884), .A (FilterCell[1])) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix503 (.Y (BOOTH_UNIT_REGISTER_A_nx502), .A0 (
          nx886), .A1 (RST), .A2 (nx984), .B0 (nx854), .B1 (nx880)) ;
    inv01 ix885 (.Y (nx886), .A (FilterCell[2])) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix513 (.Y (BOOTH_UNIT_REGISTER_A_nx512), .A0 (
          nx888), .A1 (RST), .A2 (nx984), .B0 (nx858), .B1 (nx880)) ;
    inv01 ix887 (.Y (nx888), .A (FilterCell[3])) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix523 (.Y (BOOTH_UNIT_REGISTER_A_nx522), .A0 (
          nx890), .A1 (RST), .A2 (nx986), .B0 (nx862), .B1 (nx880)) ;
    inv01 ix889 (.Y (nx890), .A (FilterCell[4])) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix533 (.Y (BOOTH_UNIT_REGISTER_A_nx532), .A0 (
          nx892), .A1 (RST), .A2 (nx986), .B0 (nx866), .B1 (nx894)) ;
    inv01 ix891 (.Y (nx892), .A (FilterCell[5])) ;
    inv01 ix893 (.Y (nx894), .A (BOOTH_UNIT_REGISTER_A_nx566)) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix543 (.Y (BOOTH_UNIT_REGISTER_A_nx542), .A0 (
          nx896), .A1 (RST), .A2 (nx986), .B0 (nx870), .B1 (nx894)) ;
    inv01 ix895 (.Y (nx896), .A (FilterCell[6])) ;
    oai32 BOOTH_UNIT_REGISTER_A_ix553 (.Y (BOOTH_UNIT_REGISTER_A_nx552), .A0 (
          nx898), .A1 (RST), .A2 (nx986), .B0 (nx874), .B1 (nx894)) ;
    inv01 ix897 (.Y (nx898), .A (FilterCell[7])) ;
    nand02_2x BOOTH_UNIT_REGISTER_A_ix633 (.Y (nx878), .A0 (
              BOOTH_UNIT_REGISTER_A_nx564), .A1 (nx986)) ;
    nand02_2x BOOTH_UNIT_REGISTER_A_ix635 (.Y (nx880), .A0 (
              BOOTH_UNIT_REGISTER_A_nx564), .A1 (nx986)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix393 (.Y (BOOTH_UNIT_REGISTER_S_nx392), .A0 (
          nx1002), .A1 (RST), .A2 (nx988), .B0 (nx808), .B1 (nx900)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix403 (.Y (BOOTH_UNIT_REGISTER_S_nx402), .A0 (
          nx1002), .A1 (RST), .A2 (nx988), .B0 (nx812), .B1 (nx900)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix413 (.Y (BOOTH_UNIT_REGISTER_S_nx412), .A0 (
          nx1002), .A1 (RST), .A2 (nx988), .B0 (nx816), .B1 (nx900)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix423 (.Y (BOOTH_UNIT_REGISTER_S_nx422), .A0 (
          nx1002), .A1 (RST), .A2 (nx988), .B0 (nx820), .B1 (nx900)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix433 (.Y (BOOTH_UNIT_REGISTER_S_nx432), .A0 (
          nx1002), .A1 (RST), .A2 (nx988), .B0 (nx824), .B1 (nx900)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix443 (.Y (BOOTH_UNIT_REGISTER_S_nx442), .A0 (
          nx1004), .A1 (RST), .A2 (nx988), .B0 (nx828), .B1 (nx900)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix453 (.Y (BOOTH_UNIT_REGISTER_S_nx452), .A0 (
          nx1004), .A1 (RST), .A2 (nx990), .B0 (nx832), .B1 (nx900)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix463 (.Y (BOOTH_UNIT_REGISTER_S_nx462), .A0 (
          nx1004), .A1 (RST), .A2 (nx990), .B0 (nx836), .B1 (nx902)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix473 (.Y (BOOTH_UNIT_REGISTER_S_nx472), .A0 (
          nx1004), .A1 (RST), .A2 (nx990), .B0 (nx840), .B1 (nx902)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix483 (.Y (BOOTH_UNIT_REGISTER_S_nx482), .A0 (
          nx882), .A1 (RST), .A2 (nx990), .B0 (nx844), .B1 (nx902)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix493 (.Y (BOOTH_UNIT_REGISTER_S_nx492), .A0 (
          nx904), .A1 (RST), .A2 (nx990), .B0 (nx848), .B1 (nx902)) ;
    inv01 ix903 (.Y (nx904), .A (BOOTH_UNIT_RegisterSDin_10)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix503 (.Y (BOOTH_UNIT_REGISTER_S_nx502), .A0 (
          nx906), .A1 (RST), .A2 (nx990), .B0 (nx852), .B1 (nx902)) ;
    inv01 ix905 (.Y (nx906), .A (BOOTH_UNIT_RegisterSDin_11)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix513 (.Y (BOOTH_UNIT_REGISTER_S_nx512), .A0 (
          nx908), .A1 (RST), .A2 (nx990), .B0 (nx856), .B1 (nx902)) ;
    inv01 ix907 (.Y (nx908), .A (BOOTH_UNIT_RegisterSDin_12)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix523 (.Y (BOOTH_UNIT_REGISTER_S_nx522), .A0 (
          nx910), .A1 (RST), .A2 (nx992), .B0 (nx860), .B1 (nx902)) ;
    inv01 ix909 (.Y (nx910), .A (BOOTH_UNIT_RegisterSDin_13)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix533 (.Y (BOOTH_UNIT_REGISTER_S_nx532), .A0 (
          nx912), .A1 (RST), .A2 (nx992), .B0 (nx864), .B1 (nx914)) ;
    inv01 ix911 (.Y (nx912), .A (BOOTH_UNIT_RegisterSDin_14)) ;
    inv01 ix913 (.Y (nx914), .A (BOOTH_UNIT_REGISTER_S_nx566)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix543 (.Y (BOOTH_UNIT_REGISTER_S_nx542), .A0 (
          nx916), .A1 (RST), .A2 (nx992), .B0 (nx868), .B1 (nx914)) ;
    inv01 ix915 (.Y (nx916), .A (BOOTH_UNIT_RegisterSDin_15)) ;
    oai32 BOOTH_UNIT_REGISTER_S_ix553 (.Y (BOOTH_UNIT_REGISTER_S_nx552), .A0 (
          nx918), .A1 (RST), .A2 (nx992), .B0 (nx872), .B1 (nx914)) ;
    inv01 ix917 (.Y (nx918), .A (BOOTH_UNIT_RegisterSDin_16)) ;
    nand02_2x BOOTH_UNIT_REGISTER_S_ix633 (.Y (nx900), .A0 (
              BOOTH_UNIT_REGISTER_A_nx564), .A1 (nx992)) ;
    nand02_2x BOOTH_UNIT_REGISTER_S_ix635 (.Y (nx902), .A0 (
              BOOTH_UNIT_REGISTER_A_nx564), .A1 (nx992)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix393 (.Y (BOOTH_UNIT_REGISTER_P_nx392), .A0 (
          nx920), .A1 (RST), .A2 (nx994), .B0 (BOOTH_UNIT_nx384), .B1 (nx922)) ;
    inv01 ix919 (.Y (nx920), .A (BOOTH_UNIT_RegisterPDin_0)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix403 (.Y (BOOTH_UNIT_REGISTER_P_nx402), .A0 (
          nx924), .A1 (RST), .A2 (nx994), .B0 (nx740), .B1 (nx922)) ;
    inv01 ix923 (.Y (nx924), .A (BOOTH_UNIT_RegisterPDin_1)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix413 (.Y (BOOTH_UNIT_REGISTER_P_nx412), .A0 (
          nx926), .A1 (RST), .A2 (nx994), .B0 (nx387), .B1 (nx922)) ;
    inv01 ix925 (.Y (nx926), .A (BOOTH_UNIT_RegisterPDin_2)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix423 (.Y (BOOTH_UNIT_REGISTER_P_nx422), .A0 (
          nx928), .A1 (RST), .A2 (nx994), .B0 (nx399), .B1 (nx922)) ;
    inv01 ix927 (.Y (nx928), .A (BOOTH_UNIT_RegisterPDin_3)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix433 (.Y (BOOTH_UNIT_REGISTER_P_nx432), .A0 (
          nx930), .A1 (RST), .A2 (nx994), .B0 (nx409), .B1 (nx922)) ;
    inv01 ix929 (.Y (nx930), .A (BOOTH_UNIT_RegisterPDin_4)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix443 (.Y (BOOTH_UNIT_REGISTER_P_nx442), .A0 (
          nx932), .A1 (RST), .A2 (nx994), .B0 (nx419), .B1 (nx922)) ;
    inv01 ix931 (.Y (nx932), .A (BOOTH_UNIT_RegisterPDin_5)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix453 (.Y (BOOTH_UNIT_REGISTER_P_nx452), .A0 (
          nx934), .A1 (RST), .A2 (nx996), .B0 (nx429), .B1 (nx922)) ;
    inv01 ix933 (.Y (nx934), .A (BOOTH_UNIT_RegisterPDin_6)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix463 (.Y (BOOTH_UNIT_REGISTER_P_nx462), .A0 (
          nx936), .A1 (RST), .A2 (nx996), .B0 (nx439), .B1 (nx938)) ;
    inv01 ix935 (.Y (nx936), .A (BOOTH_UNIT_RegisterPDin_7)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix473 (.Y (BOOTH_UNIT_REGISTER_P_nx472), .A0 (
          nx940), .A1 (RST), .A2 (nx996), .B0 (nx449), .B1 (nx938)) ;
    inv01 ix939 (.Y (nx940), .A (BOOTH_UNIT_RegisterPDin_8)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix483 (.Y (BOOTH_UNIT_REGISTER_P_nx482), .A0 (
          nx942), .A1 (RST), .A2 (nx996), .B0 (nx469), .B1 (nx938)) ;
    inv01 ix941 (.Y (nx942), .A (BOOTH_UNIT_RegisterPDin_9)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix493 (.Y (BOOTH_UNIT_REGISTER_P_nx492), .A0 (
          nx944), .A1 (RST), .A2 (nx996), .B0 (nx477), .B1 (nx938)) ;
    inv01 ix943 (.Y (nx944), .A (BOOTH_UNIT_RegisterPDin_10)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix503 (.Y (BOOTH_UNIT_REGISTER_P_nx502), .A0 (
          nx946), .A1 (RST), .A2 (nx996), .B0 (nx485), .B1 (nx938)) ;
    inv01 ix945 (.Y (nx946), .A (BOOTH_UNIT_RegisterPDin_11)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix513 (.Y (BOOTH_UNIT_REGISTER_P_nx512), .A0 (
          nx948), .A1 (RST), .A2 (nx996), .B0 (nx493), .B1 (nx938)) ;
    inv01 ix947 (.Y (nx948), .A (BOOTH_UNIT_RegisterPDin_12)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix523 (.Y (BOOTH_UNIT_REGISTER_P_nx522), .A0 (
          nx950), .A1 (RST), .A2 (nx998), .B0 (nx501), .B1 (nx938)) ;
    inv01 ix949 (.Y (nx950), .A (BOOTH_UNIT_RegisterPDin_13)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix533 (.Y (BOOTH_UNIT_REGISTER_P_nx532), .A0 (
          nx952), .A1 (RST), .A2 (nx998), .B0 (nx509), .B1 (nx954)) ;
    inv01 ix951 (.Y (nx952), .A (BOOTH_UNIT_RegisterPDin_14)) ;
    inv01 ix953 (.Y (nx954), .A (BOOTH_UNIT_REGISTER_P_nx566)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix543 (.Y (BOOTH_UNIT_REGISTER_P_nx542), .A0 (
          nx956), .A1 (RST), .A2 (nx998), .B0 (nx517), .B1 (nx954)) ;
    inv01 ix955 (.Y (nx956), .A (BOOTH_UNIT_RegisterPDin_15)) ;
    oai32 BOOTH_UNIT_REGISTER_P_ix553 (.Y (BOOTH_UNIT_REGISTER_P_nx552), .A0 (
          nx958), .A1 (RST), .A2 (nx998), .B0 (nx756), .B1 (nx954)) ;
    inv01 ix957 (.Y (nx958), .A (BOOTH_UNIT_RegisterPDin_16)) ;
    nand02_2x BOOTH_UNIT_REGISTER_P_ix633 (.Y (nx922), .A0 (
              BOOTH_UNIT_REGISTER_A_nx564), .A1 (nx998)) ;
    nand02_2x BOOTH_UNIT_REGISTER_P_ix635 (.Y (nx938), .A0 (
              BOOTH_UNIT_REGISTER_A_nx564), .A1 (nx998)) ;
    inv01 ix959 (.Y (nx960), .A (AddPToBoothOperand)) ;
    inv02 ix961 (.Y (nx962), .A (nx960)) ;
    inv02 ix963 (.Y (nx964), .A (nx960)) ;
    inv02 ix965 (.Y (nx966), .A (nx960)) ;
    inv02 ix967 (.Y (nx968), .A (BOOTH_UNIT_nx384)) ;
    inv02 ix969 (.Y (nx970), .A (BOOTH_UNIT_nx384)) ;
    inv02 ix971 (.Y (nx972), .A (BOOTH_UNIT_nx384)) ;
    inv01 ix973 (.Y (nx974), .A (BOOTH_UNIT_nx80)) ;
    inv02 ix975 (.Y (nx976), .A (nx974)) ;
    inv02 ix977 (.Y (nx978), .A (nx974)) ;
    inv02 ix979 (.Y (nx980), .A (nx974)) ;
    inv02 ix981 (.Y (nx982), .A (Start)) ;
    inv02 ix983 (.Y (nx984), .A (Start)) ;
    inv02 ix985 (.Y (nx986), .A (Start)) ;
    inv02 ix987 (.Y (nx988), .A (Start)) ;
    inv02 ix989 (.Y (nx990), .A (Start)) ;
    inv02 ix991 (.Y (nx992), .A (Start)) ;
    inv02 ix993 (.Y (nx994), .A (BOOTH_UNIT_RegisterPEN)) ;
    inv02 ix995 (.Y (nx996), .A (BOOTH_UNIT_RegisterPEN)) ;
    inv02 ix997 (.Y (nx998), .A (BOOTH_UNIT_RegisterPEN)) ;
    inv02 ix999 (.Y (nx1000), .A (WindowCellShiftedLeft_16)) ;
    inv02 ix1001 (.Y (nx1002), .A (WindowCellShiftedLeft_16)) ;
    inv02 ix1003 (.Y (nx1004), .A (WindowCellShiftedLeft_16)) ;
endmodule

