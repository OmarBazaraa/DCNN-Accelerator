//
// Verilog description for cell booth_unit, 
// Sat May 12 15:09:00 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module booth_unit ( CLK, RST, Start, Instr, CalculatingBooth, FilterCell, 
                    WindowCell, NewBoothP, AddPToBoothOperand, BoothOperand, 
                    BoothP, WindowCellShiftedLeft ) ;

    input CLK ;
    input RST ;
    input Start ;
    input Instr ;
    input CalculatingBooth ;
    input [7:0]FilterCell ;
    input [7:0]WindowCell ;
    input [16:0]NewBoothP ;
    output AddPToBoothOperand ;
    output [16:0]BoothOperand ;
    output [16:0]BoothP ;
    output [16:0]WindowCellShiftedLeft ;

    wire RegisterPEN, RegisterSDin_16, RegisterSDin_15, RegisterSDin_14, 
         RegisterSDin_13, RegisterSDin_12, RegisterSDin_11, RegisterSDin_10, 
         RegisterPDin_16, RegisterPDin_15, RegisterPDin_14, RegisterPDin_13, 
         RegisterPDin_12, RegisterPDin_11, RegisterPDin_10, RegisterPDin_9, 
         RegisterPDin_8, RegisterPDin_7, RegisterPDin_6, RegisterPDin_5, 
         RegisterPDin_4, RegisterPDin_3, RegisterPDin_2, RegisterPDin_1, 
         RegisterPDin_0, RegisterADout_16, RegisterADout_15, RegisterADout_14, 
         RegisterADout_13, RegisterADout_12, RegisterADout_11, RegisterADout_10, 
         RegisterADout_9, RegisterADout_8, RegisterADout_7, RegisterADout_6, 
         RegisterADout_5, RegisterADout_4, RegisterADout_3, RegisterADout_2, 
         RegisterADout_1, RegisterADout_0, RegisterSDout_16, RegisterSDout_15, 
         RegisterSDout_14, RegisterSDout_13, RegisterSDout_12, RegisterSDout_11, 
         RegisterSDout_10, RegisterSDout_9, RegisterSDout_8, RegisterSDout_7, 
         RegisterSDout_6, RegisterSDout_5, RegisterSDout_4, RegisterSDout_3, 
         RegisterSDout_2, RegisterSDout_1, RegisterSDout_0, nx4, nx8, nx12, nx16, 
         nx20, nx24, nx80, nx328, nx384, REGISTER_A_nx392, REGISTER_A_nx402, 
         REGISTER_A_nx412, REGISTER_A_nx422, REGISTER_A_nx432, REGISTER_A_nx442, 
         REGISTER_A_nx452, REGISTER_A_nx462, REGISTER_A_nx472, REGISTER_A_nx482, 
         REGISTER_A_nx492, REGISTER_A_nx502, REGISTER_A_nx512, REGISTER_A_nx522, 
         REGISTER_A_nx532, REGISTER_A_nx542, REGISTER_A_nx552, REGISTER_A_nx564, 
         REGISTER_A_nx566, REGISTER_A_nx624, REGISTER_A_nx626, REGISTER_A_nx628, 
         REGISTER_A_nx644, REGISTER_S_nx392, REGISTER_S_nx402, REGISTER_S_nx412, 
         REGISTER_S_nx422, REGISTER_S_nx432, REGISTER_S_nx442, REGISTER_S_nx452, 
         REGISTER_S_nx462, REGISTER_S_nx472, REGISTER_S_nx482, REGISTER_S_nx492, 
         REGISTER_S_nx502, REGISTER_S_nx512, REGISTER_S_nx522, REGISTER_S_nx532, 
         REGISTER_S_nx542, REGISTER_S_nx552, REGISTER_S_nx566, REGISTER_S_nx624, 
         REGISTER_S_nx626, REGISTER_S_nx628, REGISTER_S_nx644, REGISTER_P_nx392, 
         REGISTER_P_nx402, REGISTER_P_nx412, REGISTER_P_nx422, REGISTER_P_nx432, 
         REGISTER_P_nx442, REGISTER_P_nx452, REGISTER_P_nx462, REGISTER_P_nx472, 
         REGISTER_P_nx482, REGISTER_P_nx492, REGISTER_P_nx502, REGISTER_P_nx512, 
         REGISTER_P_nx522, REGISTER_P_nx532, REGISTER_P_nx542, REGISTER_P_nx552, 
         REGISTER_P_nx566, REGISTER_P_nx624, REGISTER_P_nx626, REGISTER_P_nx628, 
         REGISTER_P_nx644, nx460, nx462, nx464, nx466, nx468, nx470, nx472, 
         nx474, nx476, nx478, nx480, nx482, nx484, nx486, nx488, nx490, nx492, 
         nx494, nx496, nx498, nx500, nx502, nx504, nx506, nx508, nx510, nx512, 
         nx514, nx516, nx518, nx520, nx522, nx524, nx526, nx528, nx530, nx532, 
         nx534, nx536, nx538, nx540, nx542, nx544, nx546, nx548, nx550, nx552, 
         nx554, nx556, nx558, nx560, nx562, nx564, nx566, nx568, nx570, nx572, 
         nx574, nx576, nx578, nx582, nx584, nx586, nx588, nx590, nx592, nx594, 
         nx596, nx598, nx600, nx602, nx604, nx606, nx608, nx610, nx612, nx614, 
         nx616, nx618, nx620, nx622, nx624, nx626, nx628, nx630, nx632, nx634, 
         nx636, nx638, nx640, nx642, nx644, nx646, nx648, nx650, nx652, nx654, 
         nx656, nx658, nx660, nx662, nx664, nx666, nx668, nx670, nx672, nx674, 
         nx676, nx678, nx680, nx682, nx684, nx686, nx688, nx690, nx692, nx694, 
         nx696, nx698, nx700, nx702, nx704, nx706, nx708, nx710, nx712, nx714, 
         nx716, nx718, nx720, nx722, nx724, nx726, nx728, nx730;
    wire [50:0] \$dummy ;




    assign WindowCellShiftedLeft[15] = WindowCellShiftedLeft[16] ;
    assign WindowCellShiftedLeft[14] = WindowCellShiftedLeft[16] ;
    assign WindowCellShiftedLeft[13] = WindowCellShiftedLeft[16] ;
    assign WindowCellShiftedLeft[12] = WindowCellShiftedLeft[16] ;
    assign WindowCellShiftedLeft[11] = WindowCellShiftedLeft[16] ;
    assign WindowCellShiftedLeft[10] = WindowCellShiftedLeft[16] ;
    assign WindowCellShiftedLeft[9] = WindowCellShiftedLeft[16] ;
    assign WindowCellShiftedLeft[8] = WindowCell[7] ;
    assign WindowCellShiftedLeft[7] = WindowCell[6] ;
    assign WindowCellShiftedLeft[6] = WindowCell[5] ;
    assign WindowCellShiftedLeft[5] = WindowCell[4] ;
    assign WindowCellShiftedLeft[4] = WindowCell[3] ;
    assign WindowCellShiftedLeft[3] = WindowCell[2] ;
    assign WindowCellShiftedLeft[2] = WindowCell[1] ;
    assign WindowCellShiftedLeft[1] = WindowCell[0] ;
    assign WindowCellShiftedLeft[0] = WindowCellShiftedLeft[16] ;
    fake_gnd ix216 (.Y (WindowCellShiftedLeft[16])) ;
    nor02ii ix81 (.Y (nx80), .A0 (Instr), .A1 (Start)) ;
    aoi21 ix77 (.Y (RegisterSDin_10), .A0 (FilterCell[1]), .A1 (FilterCell[0]), 
          .B0 (nx4)) ;
    nor02_2x ix5 (.Y (nx4), .A0 (FilterCell[0]), .A1 (FilterCell[1])) ;
    aoi21 ix67 (.Y (RegisterSDin_11), .A0 (nx328), .A1 (FilterCell[2]), .B0 (nx8
          )) ;
    nor03_2x ix9 (.Y (nx8), .A0 (FilterCell[2]), .A1 (FilterCell[0]), .A2 (
             FilterCell[1])) ;
    xnor2 ix59 (.Y (RegisterSDin_12), .A0 (FilterCell[3]), .A1 (nx8)) ;
    xnor2 ix51 (.Y (RegisterSDin_13), .A0 (FilterCell[4]), .A1 (nx12)) ;
    nor04 ix13 (.Y (nx12), .A0 (FilterCell[3]), .A1 (FilterCell[2]), .A2 (
          FilterCell[0]), .A3 (FilterCell[1])) ;
    xnor2 ix43 (.Y (RegisterSDin_14), .A0 (FilterCell[5]), .A1 (nx16)) ;
    nor02ii ix17 (.Y (nx16), .A0 (FilterCell[4]), .A1 (nx12)) ;
    xnor2 ix35 (.Y (RegisterSDin_15), .A0 (FilterCell[6]), .A1 (nx20)) ;
    nor02ii ix21 (.Y (nx20), .A0 (FilterCell[5]), .A1 (nx16)) ;
    xnor2 ix27 (.Y (RegisterSDin_16), .A0 (FilterCell[7]), .A1 (nx24)) ;
    nor02ii ix25 (.Y (nx24), .A0 (FilterCell[6]), .A1 (nx20)) ;
    or02 ix319 (.Y (RegisterPEN), .A0 (Start), .A1 (CalculatingBooth)) ;
    inv01 ix329 (.Y (nx328), .A (nx4)) ;
    inv02 ix383 (.Y (nx384), .A (BoothP[0])) ;
    dff REGISTER_A_reg_Dout_0 (.Q (RegisterADout_0), .QB (\$dummy [0]), .D (
        REGISTER_A_nx392), .CLK (REGISTER_A_nx624)) ;
    inv01 REGISTER_A_ix565 (.Y (REGISTER_A_nx564), .A (RST)) ;
    nor02_2x REGISTER_A_ix567 (.Y (REGISTER_A_nx566), .A0 (RST), .A1 (
             REGISTER_A_nx644)) ;
    dff REGISTER_A_reg_Dout_1 (.Q (RegisterADout_1), .QB (\$dummy [1]), .D (
        REGISTER_A_nx402), .CLK (REGISTER_A_nx624)) ;
    dff REGISTER_A_reg_Dout_2 (.Q (RegisterADout_2), .QB (\$dummy [2]), .D (
        REGISTER_A_nx412), .CLK (REGISTER_A_nx624)) ;
    dff REGISTER_A_reg_Dout_3 (.Q (RegisterADout_3), .QB (\$dummy [3]), .D (
        REGISTER_A_nx422), .CLK (REGISTER_A_nx624)) ;
    dff REGISTER_A_reg_Dout_4 (.Q (RegisterADout_4), .QB (\$dummy [4]), .D (
        REGISTER_A_nx432), .CLK (REGISTER_A_nx624)) ;
    dff REGISTER_A_reg_Dout_5 (.Q (RegisterADout_5), .QB (\$dummy [5]), .D (
        REGISTER_A_nx442), .CLK (REGISTER_A_nx624)) ;
    dff REGISTER_A_reg_Dout_6 (.Q (RegisterADout_6), .QB (\$dummy [6]), .D (
        REGISTER_A_nx452), .CLK (REGISTER_A_nx624)) ;
    dff REGISTER_A_reg_Dout_7 (.Q (RegisterADout_7), .QB (\$dummy [7]), .D (
        REGISTER_A_nx462), .CLK (REGISTER_A_nx626)) ;
    dff REGISTER_A_reg_Dout_8 (.Q (RegisterADout_8), .QB (\$dummy [8]), .D (
        REGISTER_A_nx472), .CLK (REGISTER_A_nx626)) ;
    dff REGISTER_A_reg_Dout_9 (.Q (RegisterADout_9), .QB (\$dummy [9]), .D (
        REGISTER_A_nx482), .CLK (REGISTER_A_nx626)) ;
    dff REGISTER_A_reg_Dout_10 (.Q (RegisterADout_10), .QB (\$dummy [10]), .D (
        REGISTER_A_nx492), .CLK (REGISTER_A_nx626)) ;
    dff REGISTER_A_reg_Dout_11 (.Q (RegisterADout_11), .QB (\$dummy [11]), .D (
        REGISTER_A_nx502), .CLK (REGISTER_A_nx626)) ;
    dff REGISTER_A_reg_Dout_12 (.Q (RegisterADout_12), .QB (\$dummy [12]), .D (
        REGISTER_A_nx512), .CLK (REGISTER_A_nx626)) ;
    dff REGISTER_A_reg_Dout_13 (.Q (RegisterADout_13), .QB (\$dummy [13]), .D (
        REGISTER_A_nx522), .CLK (REGISTER_A_nx626)) ;
    dff REGISTER_A_reg_Dout_14 (.Q (RegisterADout_14), .QB (\$dummy [14]), .D (
        REGISTER_A_nx532), .CLK (REGISTER_A_nx628)) ;
    dff REGISTER_A_reg_Dout_15 (.Q (RegisterADout_15), .QB (\$dummy [15]), .D (
        REGISTER_A_nx542), .CLK (REGISTER_A_nx628)) ;
    dff REGISTER_A_reg_Dout_16 (.Q (RegisterADout_16), .QB (\$dummy [16]), .D (
        REGISTER_A_nx552), .CLK (REGISTER_A_nx628)) ;
    inv02 REGISTER_A_ix623 (.Y (REGISTER_A_nx624), .A (CLK)) ;
    inv02 REGISTER_A_ix625 (.Y (REGISTER_A_nx626), .A (CLK)) ;
    inv02 REGISTER_A_ix627 (.Y (REGISTER_A_nx628), .A (CLK)) ;
    inv02 REGISTER_A_ix643 (.Y (REGISTER_A_nx644), .A (nx708)) ;
    dff REGISTER_S_reg_Dout_0 (.Q (RegisterSDout_0), .QB (\$dummy [17]), .D (
        REGISTER_S_nx392), .CLK (REGISTER_S_nx624)) ;
    nor02_2x REGISTER_S_ix567 (.Y (REGISTER_S_nx566), .A0 (RST), .A1 (
             REGISTER_S_nx644)) ;
    dff REGISTER_S_reg_Dout_1 (.Q (RegisterSDout_1), .QB (\$dummy [18]), .D (
        REGISTER_S_nx402), .CLK (REGISTER_S_nx624)) ;
    dff REGISTER_S_reg_Dout_2 (.Q (RegisterSDout_2), .QB (\$dummy [19]), .D (
        REGISTER_S_nx412), .CLK (REGISTER_S_nx624)) ;
    dff REGISTER_S_reg_Dout_3 (.Q (RegisterSDout_3), .QB (\$dummy [20]), .D (
        REGISTER_S_nx422), .CLK (REGISTER_S_nx624)) ;
    dff REGISTER_S_reg_Dout_4 (.Q (RegisterSDout_4), .QB (\$dummy [21]), .D (
        REGISTER_S_nx432), .CLK (REGISTER_S_nx624)) ;
    dff REGISTER_S_reg_Dout_5 (.Q (RegisterSDout_5), .QB (\$dummy [22]), .D (
        REGISTER_S_nx442), .CLK (REGISTER_S_nx624)) ;
    dff REGISTER_S_reg_Dout_6 (.Q (RegisterSDout_6), .QB (\$dummy [23]), .D (
        REGISTER_S_nx452), .CLK (REGISTER_S_nx624)) ;
    dff REGISTER_S_reg_Dout_7 (.Q (RegisterSDout_7), .QB (\$dummy [24]), .D (
        REGISTER_S_nx462), .CLK (REGISTER_S_nx626)) ;
    dff REGISTER_S_reg_Dout_8 (.Q (RegisterSDout_8), .QB (\$dummy [25]), .D (
        REGISTER_S_nx472), .CLK (REGISTER_S_nx626)) ;
    dff REGISTER_S_reg_Dout_9 (.Q (RegisterSDout_9), .QB (\$dummy [26]), .D (
        REGISTER_S_nx482), .CLK (REGISTER_S_nx626)) ;
    dff REGISTER_S_reg_Dout_10 (.Q (RegisterSDout_10), .QB (\$dummy [27]), .D (
        REGISTER_S_nx492), .CLK (REGISTER_S_nx626)) ;
    dff REGISTER_S_reg_Dout_11 (.Q (RegisterSDout_11), .QB (\$dummy [28]), .D (
        REGISTER_S_nx502), .CLK (REGISTER_S_nx626)) ;
    dff REGISTER_S_reg_Dout_12 (.Q (RegisterSDout_12), .QB (\$dummy [29]), .D (
        REGISTER_S_nx512), .CLK (REGISTER_S_nx626)) ;
    dff REGISTER_S_reg_Dout_13 (.Q (RegisterSDout_13), .QB (\$dummy [30]), .D (
        REGISTER_S_nx522), .CLK (REGISTER_S_nx626)) ;
    dff REGISTER_S_reg_Dout_14 (.Q (RegisterSDout_14), .QB (\$dummy [31]), .D (
        REGISTER_S_nx532), .CLK (REGISTER_S_nx628)) ;
    dff REGISTER_S_reg_Dout_15 (.Q (RegisterSDout_15), .QB (\$dummy [32]), .D (
        REGISTER_S_nx542), .CLK (REGISTER_S_nx628)) ;
    dff REGISTER_S_reg_Dout_16 (.Q (RegisterSDout_16), .QB (\$dummy [33]), .D (
        REGISTER_S_nx552), .CLK (REGISTER_S_nx628)) ;
    inv02 REGISTER_S_ix623 (.Y (REGISTER_S_nx624), .A (CLK)) ;
    inv02 REGISTER_S_ix625 (.Y (REGISTER_S_nx626), .A (CLK)) ;
    inv02 REGISTER_S_ix627 (.Y (REGISTER_S_nx628), .A (CLK)) ;
    inv02 REGISTER_S_ix643 (.Y (REGISTER_S_nx644), .A (nx714)) ;
    dff REGISTER_P_reg_Dout_0 (.Q (BoothP[0]), .QB (\$dummy [34]), .D (
        REGISTER_P_nx392), .CLK (REGISTER_P_nx624)) ;
    nor02_2x REGISTER_P_ix567 (.Y (REGISTER_P_nx566), .A0 (RST), .A1 (
             REGISTER_P_nx644)) ;
    dff REGISTER_P_reg_Dout_1 (.Q (BoothP[1]), .QB (\$dummy [35]), .D (
        REGISTER_P_nx402), .CLK (REGISTER_P_nx624)) ;
    dff REGISTER_P_reg_Dout_2 (.Q (BoothP[2]), .QB (\$dummy [36]), .D (
        REGISTER_P_nx412), .CLK (REGISTER_P_nx624)) ;
    dff REGISTER_P_reg_Dout_3 (.Q (BoothP[3]), .QB (\$dummy [37]), .D (
        REGISTER_P_nx422), .CLK (REGISTER_P_nx624)) ;
    dff REGISTER_P_reg_Dout_4 (.Q (BoothP[4]), .QB (\$dummy [38]), .D (
        REGISTER_P_nx432), .CLK (REGISTER_P_nx624)) ;
    dff REGISTER_P_reg_Dout_5 (.Q (BoothP[5]), .QB (\$dummy [39]), .D (
        REGISTER_P_nx442), .CLK (REGISTER_P_nx624)) ;
    dff REGISTER_P_reg_Dout_6 (.Q (BoothP[6]), .QB (\$dummy [40]), .D (
        REGISTER_P_nx452), .CLK (REGISTER_P_nx624)) ;
    dff REGISTER_P_reg_Dout_7 (.Q (BoothP[7]), .QB (\$dummy [41]), .D (
        REGISTER_P_nx462), .CLK (REGISTER_P_nx626)) ;
    dff REGISTER_P_reg_Dout_8 (.Q (BoothP[8]), .QB (\$dummy [42]), .D (
        REGISTER_P_nx472), .CLK (REGISTER_P_nx626)) ;
    dff REGISTER_P_reg_Dout_9 (.Q (BoothP[9]), .QB (\$dummy [43]), .D (
        REGISTER_P_nx482), .CLK (REGISTER_P_nx626)) ;
    dff REGISTER_P_reg_Dout_10 (.Q (BoothP[10]), .QB (\$dummy [44]), .D (
        REGISTER_P_nx492), .CLK (REGISTER_P_nx626)) ;
    dff REGISTER_P_reg_Dout_11 (.Q (BoothP[11]), .QB (\$dummy [45]), .D (
        REGISTER_P_nx502), .CLK (REGISTER_P_nx626)) ;
    dff REGISTER_P_reg_Dout_12 (.Q (BoothP[12]), .QB (\$dummy [46]), .D (
        REGISTER_P_nx512), .CLK (REGISTER_P_nx626)) ;
    dff REGISTER_P_reg_Dout_13 (.Q (BoothP[13]), .QB (\$dummy [47]), .D (
        REGISTER_P_nx522), .CLK (REGISTER_P_nx626)) ;
    dff REGISTER_P_reg_Dout_14 (.Q (BoothP[14]), .QB (\$dummy [48]), .D (
        REGISTER_P_nx532), .CLK (REGISTER_P_nx628)) ;
    dff REGISTER_P_reg_Dout_15 (.Q (BoothP[15]), .QB (\$dummy [49]), .D (
        REGISTER_P_nx542), .CLK (REGISTER_P_nx628)) ;
    dff REGISTER_P_reg_Dout_16 (.Q (BoothP[16]), .QB (\$dummy [50]), .D (
        REGISTER_P_nx552), .CLK (REGISTER_P_nx628)) ;
    inv02 REGISTER_P_ix623 (.Y (REGISTER_P_nx624), .A (CLK)) ;
    inv02 REGISTER_P_ix625 (.Y (REGISTER_P_nx626), .A (CLK)) ;
    inv02 REGISTER_P_ix627 (.Y (REGISTER_P_nx628), .A (CLK)) ;
    inv02 REGISTER_P_ix643 (.Y (REGISTER_P_nx644), .A (nx720)) ;
    nor02_2x ix85 (.Y (RegisterPDin_0), .A0 (nx702), .A1 (nx460)) ;
    inv01 ix459 (.Y (nx460), .A (NewBoothP[0])) ;
    mux21 ix125 (.Y (RegisterPDin_1), .A0 (nx462), .A1 (nx464), .S0 (nx702)) ;
    inv01 ix461 (.Y (nx462), .A (NewBoothP[1])) ;
    inv01 ix463 (.Y (nx464), .A (WindowCell[0])) ;
    mux21 ix133 (.Y (RegisterPDin_2), .A0 (nx466), .A1 (nx468), .S0 (nx702)) ;
    inv01 ix465 (.Y (nx466), .A (NewBoothP[2])) ;
    inv01 ix467 (.Y (nx468), .A (WindowCell[1])) ;
    mux21 ix141 (.Y (RegisterPDin_3), .A0 (nx470), .A1 (nx472), .S0 (nx702)) ;
    inv01 ix469 (.Y (nx470), .A (NewBoothP[3])) ;
    inv01 ix471 (.Y (nx472), .A (WindowCell[2])) ;
    mux21 ix149 (.Y (RegisterPDin_4), .A0 (nx474), .A1 (nx476), .S0 (nx702)) ;
    inv01 ix473 (.Y (nx474), .A (NewBoothP[4])) ;
    inv01 ix475 (.Y (nx476), .A (WindowCell[3])) ;
    mux21 ix157 (.Y (RegisterPDin_5), .A0 (nx478), .A1 (nx480), .S0 (nx702)) ;
    inv01 ix477 (.Y (nx478), .A (NewBoothP[5])) ;
    inv01 ix479 (.Y (nx480), .A (WindowCell[4])) ;
    mux21 ix165 (.Y (RegisterPDin_6), .A0 (nx482), .A1 (nx484), .S0 (nx702)) ;
    inv01 ix481 (.Y (nx482), .A (NewBoothP[6])) ;
    inv01 ix483 (.Y (nx484), .A (WindowCell[5])) ;
    mux21 ix173 (.Y (RegisterPDin_7), .A0 (nx486), .A1 (nx488), .S0 (nx704)) ;
    inv01 ix485 (.Y (nx486), .A (NewBoothP[7])) ;
    inv01 ix487 (.Y (nx488), .A (WindowCell[6])) ;
    mux21 ix181 (.Y (RegisterPDin_8), .A0 (nx490), .A1 (nx492), .S0 (nx704)) ;
    inv01 ix489 (.Y (nx490), .A (NewBoothP[8])) ;
    inv01 ix491 (.Y (nx492), .A (WindowCell[7])) ;
    nor02_2x ix89 (.Y (RegisterPDin_9), .A0 (nx704), .A1 (nx494)) ;
    inv01 ix493 (.Y (nx494), .A (NewBoothP[9])) ;
    nor02_2x ix93 (.Y (RegisterPDin_10), .A0 (nx704), .A1 (nx496)) ;
    inv01 ix495 (.Y (nx496), .A (NewBoothP[10])) ;
    nor02_2x ix97 (.Y (RegisterPDin_11), .A0 (nx704), .A1 (nx498)) ;
    inv01 ix497 (.Y (nx498), .A (NewBoothP[11])) ;
    nor02_2x ix101 (.Y (RegisterPDin_12), .A0 (nx704), .A1 (nx500)) ;
    inv01 ix499 (.Y (nx500), .A (NewBoothP[12])) ;
    nor02_2x ix105 (.Y (RegisterPDin_13), .A0 (nx704), .A1 (nx502)) ;
    inv01 ix501 (.Y (nx502), .A (NewBoothP[13])) ;
    nor02_2x ix109 (.Y (RegisterPDin_14), .A0 (nx706), .A1 (nx504)) ;
    inv01 ix503 (.Y (nx504), .A (NewBoothP[14])) ;
    nor02_2x ix113 (.Y (RegisterPDin_15), .A0 (nx706), .A1 (nx506)) ;
    inv01 ix505 (.Y (nx506), .A (NewBoothP[15])) ;
    nor02_2x ix117 (.Y (RegisterPDin_16), .A0 (nx706), .A1 (nx508)) ;
    inv01 ix507 (.Y (nx508), .A (NewBoothP[16])) ;
    mux21 ix189 (.Y (BoothOperand[0]), .A0 (nx510), .A1 (nx512), .S0 (nx694)) ;
    inv01 ix509 (.Y (nx510), .A (RegisterSDout_0)) ;
    inv01 ix511 (.Y (nx512), .A (RegisterADout_0)) ;
    mux21 ix197 (.Y (BoothOperand[1]), .A0 (nx514), .A1 (nx516), .S0 (nx694)) ;
    inv01 ix513 (.Y (nx514), .A (RegisterSDout_1)) ;
    inv01 ix515 (.Y (nx516), .A (RegisterADout_1)) ;
    mux21 ix205 (.Y (BoothOperand[2]), .A0 (nx518), .A1 (nx520), .S0 (nx694)) ;
    inv01 ix517 (.Y (nx518), .A (RegisterSDout_2)) ;
    inv01 ix519 (.Y (nx520), .A (RegisterADout_2)) ;
    mux21 ix213 (.Y (BoothOperand[3]), .A0 (nx522), .A1 (nx524), .S0 (nx694)) ;
    inv01 ix521 (.Y (nx522), .A (RegisterSDout_3)) ;
    inv01 ix523 (.Y (nx524), .A (RegisterADout_3)) ;
    mux21 ix221 (.Y (BoothOperand[4]), .A0 (nx526), .A1 (nx528), .S0 (nx694)) ;
    inv01 ix525 (.Y (nx526), .A (RegisterSDout_4)) ;
    inv01 ix527 (.Y (nx528), .A (RegisterADout_4)) ;
    mux21 ix229 (.Y (BoothOperand[5]), .A0 (nx530), .A1 (nx532), .S0 (nx694)) ;
    inv01 ix529 (.Y (nx530), .A (RegisterSDout_5)) ;
    inv01 ix531 (.Y (nx532), .A (RegisterADout_5)) ;
    mux21 ix237 (.Y (BoothOperand[6]), .A0 (nx534), .A1 (nx536), .S0 (nx694)) ;
    inv01 ix533 (.Y (nx534), .A (RegisterSDout_6)) ;
    inv01 ix535 (.Y (nx536), .A (RegisterADout_6)) ;
    mux21 ix245 (.Y (BoothOperand[7]), .A0 (nx538), .A1 (nx540), .S0 (nx696)) ;
    inv01 ix537 (.Y (nx538), .A (RegisterSDout_7)) ;
    inv01 ix539 (.Y (nx540), .A (RegisterADout_7)) ;
    mux21 ix253 (.Y (BoothOperand[8]), .A0 (nx542), .A1 (nx544), .S0 (nx696)) ;
    inv01 ix541 (.Y (nx542), .A (RegisterSDout_8)) ;
    inv01 ix543 (.Y (nx544), .A (RegisterADout_8)) ;
    mux21 ix261 (.Y (BoothOperand[9]), .A0 (nx546), .A1 (nx548), .S0 (nx696)) ;
    inv01 ix545 (.Y (nx546), .A (RegisterSDout_9)) ;
    inv01 ix547 (.Y (nx548), .A (RegisterADout_9)) ;
    mux21 ix269 (.Y (BoothOperand[10]), .A0 (nx550), .A1 (nx552), .S0 (nx696)) ;
    inv01 ix549 (.Y (nx550), .A (RegisterSDout_10)) ;
    inv01 ix551 (.Y (nx552), .A (RegisterADout_10)) ;
    mux21 ix277 (.Y (BoothOperand[11]), .A0 (nx554), .A1 (nx556), .S0 (nx696)) ;
    inv01 ix553 (.Y (nx554), .A (RegisterSDout_11)) ;
    inv01 ix555 (.Y (nx556), .A (RegisterADout_11)) ;
    mux21 ix285 (.Y (BoothOperand[12]), .A0 (nx558), .A1 (nx560), .S0 (nx696)) ;
    inv01 ix557 (.Y (nx558), .A (RegisterSDout_12)) ;
    inv01 ix559 (.Y (nx560), .A (RegisterADout_12)) ;
    mux21 ix293 (.Y (BoothOperand[13]), .A0 (nx562), .A1 (nx564), .S0 (nx696)) ;
    inv01 ix561 (.Y (nx562), .A (RegisterSDout_13)) ;
    inv01 ix563 (.Y (nx564), .A (RegisterADout_13)) ;
    mux21 ix301 (.Y (BoothOperand[14]), .A0 (nx566), .A1 (nx568), .S0 (nx698)) ;
    inv01 ix565 (.Y (nx566), .A (RegisterSDout_14)) ;
    inv01 ix567 (.Y (nx568), .A (RegisterADout_14)) ;
    mux21 ix309 (.Y (BoothOperand[15]), .A0 (nx570), .A1 (nx572), .S0 (nx698)) ;
    inv01 ix569 (.Y (nx570), .A (RegisterSDout_15)) ;
    inv01 ix571 (.Y (nx572), .A (RegisterADout_15)) ;
    mux21 ix317 (.Y (BoothOperand[16]), .A0 (nx574), .A1 (nx576), .S0 (nx698)) ;
    inv01 ix573 (.Y (nx574), .A (RegisterSDout_16)) ;
    inv01 ix575 (.Y (nx576), .A (RegisterADout_16)) ;
    xnor2 ix321 (.Y (AddPToBoothOperand), .A0 (nx698), .A1 (nx578)) ;
    inv01 ix577 (.Y (nx578), .A (BoothP[1])) ;
    oai32 REGISTER_A_ix393 (.Y (REGISTER_A_nx392), .A0 (nx726), .A1 (RST), .A2 (
          nx708), .B0 (nx512), .B1 (nx582)) ;
    oai32 REGISTER_A_ix403 (.Y (REGISTER_A_nx402), .A0 (nx726), .A1 (RST), .A2 (
          nx708), .B0 (nx516), .B1 (nx582)) ;
    oai32 REGISTER_A_ix413 (.Y (REGISTER_A_nx412), .A0 (nx726), .A1 (RST), .A2 (
          nx708), .B0 (nx520), .B1 (nx582)) ;
    oai32 REGISTER_A_ix423 (.Y (REGISTER_A_nx422), .A0 (nx726), .A1 (RST), .A2 (
          nx708), .B0 (nx524), .B1 (nx582)) ;
    oai32 REGISTER_A_ix433 (.Y (REGISTER_A_nx432), .A0 (nx726), .A1 (RST), .A2 (
          nx708), .B0 (nx528), .B1 (nx582)) ;
    oai32 REGISTER_A_ix443 (.Y (REGISTER_A_nx442), .A0 (nx726), .A1 (RST), .A2 (
          nx708), .B0 (nx532), .B1 (nx582)) ;
    oai32 REGISTER_A_ix453 (.Y (REGISTER_A_nx452), .A0 (nx726), .A1 (RST), .A2 (
          nx710), .B0 (nx536), .B1 (nx582)) ;
    oai32 REGISTER_A_ix463 (.Y (REGISTER_A_nx462), .A0 (nx728), .A1 (RST), .A2 (
          nx710), .B0 (nx540), .B1 (nx584)) ;
    oai32 REGISTER_A_ix473 (.Y (REGISTER_A_nx472), .A0 (nx728), .A1 (RST), .A2 (
          nx710), .B0 (nx544), .B1 (nx584)) ;
    oai32 REGISTER_A_ix483 (.Y (REGISTER_A_nx482), .A0 (nx586), .A1 (RST), .A2 (
          nx710), .B0 (nx548), .B1 (nx584)) ;
    inv01 ix585 (.Y (nx586), .A (FilterCell[0])) ;
    oai32 REGISTER_A_ix493 (.Y (REGISTER_A_nx492), .A0 (nx588), .A1 (RST), .A2 (
          nx710), .B0 (nx552), .B1 (nx584)) ;
    inv01 ix587 (.Y (nx588), .A (FilterCell[1])) ;
    oai32 REGISTER_A_ix503 (.Y (REGISTER_A_nx502), .A0 (nx590), .A1 (RST), .A2 (
          nx710), .B0 (nx556), .B1 (nx584)) ;
    inv01 ix589 (.Y (nx590), .A (FilterCell[2])) ;
    oai32 REGISTER_A_ix513 (.Y (REGISTER_A_nx512), .A0 (nx592), .A1 (RST), .A2 (
          nx710), .B0 (nx560), .B1 (nx584)) ;
    inv01 ix591 (.Y (nx592), .A (FilterCell[3])) ;
    oai32 REGISTER_A_ix523 (.Y (REGISTER_A_nx522), .A0 (nx594), .A1 (RST), .A2 (
          nx712), .B0 (nx564), .B1 (nx584)) ;
    inv01 ix593 (.Y (nx594), .A (FilterCell[4])) ;
    oai32 REGISTER_A_ix533 (.Y (REGISTER_A_nx532), .A0 (nx596), .A1 (RST), .A2 (
          nx712), .B0 (nx568), .B1 (nx598)) ;
    inv01 ix595 (.Y (nx596), .A (FilterCell[5])) ;
    inv01 ix597 (.Y (nx598), .A (REGISTER_A_nx566)) ;
    oai32 REGISTER_A_ix543 (.Y (REGISTER_A_nx542), .A0 (nx600), .A1 (RST), .A2 (
          nx712), .B0 (nx572), .B1 (nx598)) ;
    inv01 ix599 (.Y (nx600), .A (FilterCell[6])) ;
    oai32 REGISTER_A_ix553 (.Y (REGISTER_A_nx552), .A0 (nx602), .A1 (RST), .A2 (
          nx712), .B0 (nx576), .B1 (nx598)) ;
    inv01 ix601 (.Y (nx602), .A (FilterCell[7])) ;
    nand02_2x REGISTER_A_ix633 (.Y (nx582), .A0 (REGISTER_A_nx564), .A1 (nx712)
              ) ;
    nand02_2x REGISTER_A_ix635 (.Y (nx584), .A0 (REGISTER_A_nx564), .A1 (nx712)
              ) ;
    oai32 REGISTER_S_ix393 (.Y (REGISTER_S_nx392), .A0 (nx728), .A1 (RST), .A2 (
          nx714), .B0 (nx510), .B1 (nx604)) ;
    oai32 REGISTER_S_ix403 (.Y (REGISTER_S_nx402), .A0 (nx728), .A1 (RST), .A2 (
          nx714), .B0 (nx514), .B1 (nx604)) ;
    oai32 REGISTER_S_ix413 (.Y (REGISTER_S_nx412), .A0 (nx728), .A1 (RST), .A2 (
          nx714), .B0 (nx518), .B1 (nx604)) ;
    oai32 REGISTER_S_ix423 (.Y (REGISTER_S_nx422), .A0 (nx728), .A1 (RST), .A2 (
          nx714), .B0 (nx522), .B1 (nx604)) ;
    oai32 REGISTER_S_ix433 (.Y (REGISTER_S_nx432), .A0 (nx728), .A1 (RST), .A2 (
          nx714), .B0 (nx526), .B1 (nx604)) ;
    oai32 REGISTER_S_ix443 (.Y (REGISTER_S_nx442), .A0 (nx730), .A1 (RST), .A2 (
          nx714), .B0 (nx530), .B1 (nx604)) ;
    oai32 REGISTER_S_ix453 (.Y (REGISTER_S_nx452), .A0 (nx730), .A1 (RST), .A2 (
          nx716), .B0 (nx534), .B1 (nx604)) ;
    oai32 REGISTER_S_ix463 (.Y (REGISTER_S_nx462), .A0 (nx730), .A1 (RST), .A2 (
          nx716), .B0 (nx538), .B1 (nx606)) ;
    oai32 REGISTER_S_ix473 (.Y (REGISTER_S_nx472), .A0 (nx730), .A1 (RST), .A2 (
          nx716), .B0 (nx542), .B1 (nx606)) ;
    oai32 REGISTER_S_ix483 (.Y (REGISTER_S_nx482), .A0 (nx586), .A1 (RST), .A2 (
          nx716), .B0 (nx546), .B1 (nx606)) ;
    oai32 REGISTER_S_ix493 (.Y (REGISTER_S_nx492), .A0 (nx608), .A1 (RST), .A2 (
          nx716), .B0 (nx550), .B1 (nx606)) ;
    inv01 ix607 (.Y (nx608), .A (RegisterSDin_10)) ;
    oai32 REGISTER_S_ix503 (.Y (REGISTER_S_nx502), .A0 (nx610), .A1 (RST), .A2 (
          nx716), .B0 (nx554), .B1 (nx606)) ;
    inv01 ix609 (.Y (nx610), .A (RegisterSDin_11)) ;
    oai32 REGISTER_S_ix513 (.Y (REGISTER_S_nx512), .A0 (nx612), .A1 (RST), .A2 (
          nx716), .B0 (nx558), .B1 (nx606)) ;
    inv01 ix611 (.Y (nx612), .A (RegisterSDin_12)) ;
    oai32 REGISTER_S_ix523 (.Y (REGISTER_S_nx522), .A0 (nx614), .A1 (RST), .A2 (
          nx718), .B0 (nx562), .B1 (nx606)) ;
    inv01 ix613 (.Y (nx614), .A (RegisterSDin_13)) ;
    oai32 REGISTER_S_ix533 (.Y (REGISTER_S_nx532), .A0 (nx616), .A1 (RST), .A2 (
          nx718), .B0 (nx566), .B1 (nx618)) ;
    inv01 ix615 (.Y (nx616), .A (RegisterSDin_14)) ;
    inv01 ix617 (.Y (nx618), .A (REGISTER_S_nx566)) ;
    oai32 REGISTER_S_ix543 (.Y (REGISTER_S_nx542), .A0 (nx620), .A1 (RST), .A2 (
          nx718), .B0 (nx570), .B1 (nx618)) ;
    inv01 ix619 (.Y (nx620), .A (RegisterSDin_15)) ;
    oai32 REGISTER_S_ix553 (.Y (REGISTER_S_nx552), .A0 (nx622), .A1 (RST), .A2 (
          nx718), .B0 (nx574), .B1 (nx618)) ;
    inv01 ix621 (.Y (nx622), .A (RegisterSDin_16)) ;
    nand02_2x REGISTER_S_ix633 (.Y (nx604), .A0 (REGISTER_A_nx564), .A1 (nx718)
              ) ;
    nand02_2x REGISTER_S_ix635 (.Y (nx606), .A0 (REGISTER_A_nx564), .A1 (nx718)
              ) ;
    oai32 REGISTER_P_ix393 (.Y (REGISTER_P_nx392), .A0 (nx624), .A1 (RST), .A2 (
          nx720), .B0 (nx384), .B1 (nx626)) ;
    inv01 ix623 (.Y (nx624), .A (RegisterPDin_0)) ;
    oai32 REGISTER_P_ix403 (.Y (REGISTER_P_nx402), .A0 (nx628), .A1 (RST), .A2 (
          nx720), .B0 (nx578), .B1 (nx626)) ;
    inv01 ix627 (.Y (nx628), .A (RegisterPDin_1)) ;
    oai32 REGISTER_P_ix413 (.Y (REGISTER_P_nx412), .A0 (nx630), .A1 (RST), .A2 (
          nx720), .B0 (nx632), .B1 (nx626)) ;
    inv01 ix629 (.Y (nx630), .A (RegisterPDin_2)) ;
    inv01 ix631 (.Y (nx632), .A (BoothP[2])) ;
    oai32 REGISTER_P_ix423 (.Y (REGISTER_P_nx422), .A0 (nx634), .A1 (RST), .A2 (
          nx720), .B0 (nx636), .B1 (nx626)) ;
    inv01 ix633 (.Y (nx634), .A (RegisterPDin_3)) ;
    inv01 ix635 (.Y (nx636), .A (BoothP[3])) ;
    oai32 REGISTER_P_ix433 (.Y (REGISTER_P_nx432), .A0 (nx638), .A1 (RST), .A2 (
          nx720), .B0 (nx640), .B1 (nx626)) ;
    inv01 ix637 (.Y (nx638), .A (RegisterPDin_4)) ;
    inv01 ix639 (.Y (nx640), .A (BoothP[4])) ;
    oai32 REGISTER_P_ix443 (.Y (REGISTER_P_nx442), .A0 (nx642), .A1 (RST), .A2 (
          nx720), .B0 (nx644), .B1 (nx626)) ;
    inv01 ix641 (.Y (nx642), .A (RegisterPDin_5)) ;
    inv01 ix643 (.Y (nx644), .A (BoothP[5])) ;
    oai32 REGISTER_P_ix453 (.Y (REGISTER_P_nx452), .A0 (nx646), .A1 (RST), .A2 (
          nx722), .B0 (nx648), .B1 (nx626)) ;
    inv01 ix645 (.Y (nx646), .A (RegisterPDin_6)) ;
    inv01 ix647 (.Y (nx648), .A (BoothP[6])) ;
    oai32 REGISTER_P_ix463 (.Y (REGISTER_P_nx462), .A0 (nx650), .A1 (RST), .A2 (
          nx722), .B0 (nx652), .B1 (nx654)) ;
    inv01 ix649 (.Y (nx650), .A (RegisterPDin_7)) ;
    inv01 ix651 (.Y (nx652), .A (BoothP[7])) ;
    oai32 REGISTER_P_ix473 (.Y (REGISTER_P_nx472), .A0 (nx656), .A1 (RST), .A2 (
          nx722), .B0 (nx658), .B1 (nx654)) ;
    inv01 ix655 (.Y (nx656), .A (RegisterPDin_8)) ;
    inv01 ix657 (.Y (nx658), .A (BoothP[8])) ;
    oai32 REGISTER_P_ix483 (.Y (REGISTER_P_nx482), .A0 (nx660), .A1 (RST), .A2 (
          nx722), .B0 (nx662), .B1 (nx654)) ;
    inv01 ix659 (.Y (nx660), .A (RegisterPDin_9)) ;
    inv01 ix661 (.Y (nx662), .A (BoothP[9])) ;
    oai32 REGISTER_P_ix493 (.Y (REGISTER_P_nx492), .A0 (nx664), .A1 (RST), .A2 (
          nx722), .B0 (nx666), .B1 (nx654)) ;
    inv01 ix663 (.Y (nx664), .A (RegisterPDin_10)) ;
    inv01 ix665 (.Y (nx666), .A (BoothP[10])) ;
    oai32 REGISTER_P_ix503 (.Y (REGISTER_P_nx502), .A0 (nx668), .A1 (RST), .A2 (
          nx722), .B0 (nx670), .B1 (nx654)) ;
    inv01 ix667 (.Y (nx668), .A (RegisterPDin_11)) ;
    inv01 ix669 (.Y (nx670), .A (BoothP[11])) ;
    oai32 REGISTER_P_ix513 (.Y (REGISTER_P_nx512), .A0 (nx672), .A1 (RST), .A2 (
          nx722), .B0 (nx674), .B1 (nx654)) ;
    inv01 ix671 (.Y (nx672), .A (RegisterPDin_12)) ;
    inv01 ix673 (.Y (nx674), .A (BoothP[12])) ;
    oai32 REGISTER_P_ix523 (.Y (REGISTER_P_nx522), .A0 (nx676), .A1 (RST), .A2 (
          nx724), .B0 (nx678), .B1 (nx654)) ;
    inv01 ix675 (.Y (nx676), .A (RegisterPDin_13)) ;
    inv01 ix677 (.Y (nx678), .A (BoothP[13])) ;
    oai32 REGISTER_P_ix533 (.Y (REGISTER_P_nx532), .A0 (nx680), .A1 (RST), .A2 (
          nx724), .B0 (nx682), .B1 (nx684)) ;
    inv01 ix679 (.Y (nx680), .A (RegisterPDin_14)) ;
    inv01 ix681 (.Y (nx682), .A (BoothP[14])) ;
    inv01 ix683 (.Y (nx684), .A (REGISTER_P_nx566)) ;
    oai32 REGISTER_P_ix543 (.Y (REGISTER_P_nx542), .A0 (nx686), .A1 (RST), .A2 (
          nx724), .B0 (nx688), .B1 (nx684)) ;
    inv01 ix685 (.Y (nx686), .A (RegisterPDin_15)) ;
    inv01 ix687 (.Y (nx688), .A (BoothP[15])) ;
    oai32 REGISTER_P_ix553 (.Y (REGISTER_P_nx552), .A0 (nx690), .A1 (RST), .A2 (
          nx724), .B0 (nx692), .B1 (nx684)) ;
    inv01 ix689 (.Y (nx690), .A (RegisterPDin_16)) ;
    inv01 ix691 (.Y (nx692), .A (BoothP[16])) ;
    nand02_2x REGISTER_P_ix633 (.Y (nx626), .A0 (REGISTER_A_nx564), .A1 (nx724)
              ) ;
    nand02_2x REGISTER_P_ix635 (.Y (nx654), .A0 (REGISTER_A_nx564), .A1 (nx724)
              ) ;
    inv02 ix693 (.Y (nx694), .A (nx384)) ;
    inv02 ix695 (.Y (nx696), .A (nx384)) ;
    inv02 ix697 (.Y (nx698), .A (nx384)) ;
    inv01 ix699 (.Y (nx700), .A (nx80)) ;
    inv02 ix701 (.Y (nx702), .A (nx700)) ;
    inv02 ix703 (.Y (nx704), .A (nx700)) ;
    inv02 ix705 (.Y (nx706), .A (nx700)) ;
    inv02 ix707 (.Y (nx708), .A (Start)) ;
    inv02 ix709 (.Y (nx710), .A (Start)) ;
    inv02 ix711 (.Y (nx712), .A (Start)) ;
    inv02 ix713 (.Y (nx714), .A (Start)) ;
    inv02 ix715 (.Y (nx716), .A (Start)) ;
    inv02 ix717 (.Y (nx718), .A (Start)) ;
    inv02 ix719 (.Y (nx720), .A (RegisterPEN)) ;
    inv02 ix721 (.Y (nx722), .A (RegisterPEN)) ;
    inv02 ix723 (.Y (nx724), .A (RegisterPEN)) ;
    inv02 ix725 (.Y (nx726), .A (WindowCellShiftedLeft[16])) ;
    inv02 ix727 (.Y (nx728), .A (WindowCellShiftedLeft[16])) ;
    inv02 ix729 (.Y (nx730), .A (WindowCellShiftedLeft[16])) ;
endmodule

