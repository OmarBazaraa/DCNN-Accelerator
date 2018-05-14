//
// Verilog description for cell controller, 
// Sat May 12 15:09:27 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module controller ( CLK, RST, Start, FilterSize, Stride, Instr, CalcFinished, 
                    Calc, MemRD, MemWR, MemAddr, CacheFilterWR, CacheWindowWR, 
                    FirstCycle, Done ) ;

    input CLK ;
    input RST ;
    input Start ;
    input FilterSize ;
    input Stride ;
    input Instr ;
    input CalcFinished ;
    output Calc ;
    output MemRD ;
    output MemWR ;
    output [17:0]MemAddr ;
    output CacheFilterWR ;
    output CacheWindowWR ;
    output FirstCycle ;
    output Done ;

    wire NxtState_3, NxtState_2, NxtState_1, NxtState_0, Restart, CntRST, CntEN, 
         NxtRow_7, NxtRow_6, NxtRow_5, NxtRow_4, NxtRow_3, NxtRow_2, NxtRow_1, 
         NxtRow_0, NxtCol_7, NxtCol_6, NxtCol_5, NxtCol_4, NxtCol_3, NxtCol_2, 
         NxtCol_1, NxtCol_0, CurRow_7, CurRow_6, CurRow_5, CurRow_4, CurRow_3, 
         CurRow_2, CurRow_1, CurRow_0, CurCol_7, CurCol_6, CurCol_5, CurCol_4, 
         CurCol_3, CurCol_2, CurCol_1, CurCol_0, NxtState_4, FilterAddr_17, nx8, 
         nx12, nx14, nx58, nx70, nx74, nx78, nx124, nx138, nx142, nx150, nx168, 
         nx210, nx216, nx254, nx260, nx306, nx310, nx320, nx322, nx346, nx374, 
         nx390, nx426, nx444, nx468, nx482, nx492, nx502, nx561, nx563, nx565, 
         nx567, nx571, nx575, nx577, nx581, nx583, nx585, nx593, nx599, nx602, 
         nx606, nx609, nx613, nx616, nx622, nx625, nx632, nx634, nx638, nx640, 
         nx645, nx647, nx650, nx654, nx656, nx662, nx665, nx667, nx671, nx673, 
         nx675, nx677, nx679, nx685, nx691, nx693, nx696, nx699, nx701, nx704, 
         nx709, nx711, nx716, nx718, nx723, nx727, nx729, nx732, nx735, nx738, 
         nx740, nx744, nx749, nx751, nx753, nx756, nx758, nx763, nx765, nx767, 
         nx770, nx773, nx776, nx778, nx781, nx791, nx793, nx795, nx797, nx799, 
         nx801, nx803, nx805, nx807, nx809, nx811, nx813, nx815, nx817, nx823, 
         nx829, STATE_NOT_CLK, STATE_nx152, STATE_nx162, STATE_nx172, 
         STATE_nx182, STATE_nx192, STATE_nx206, ROW_NOT_CLK, ROW_nx212, 
         ROW_nx222, ROW_nx232, ROW_nx242, ROW_nx252, ROW_nx262, ROW_nx272, 
         ROW_nx282, ROW_nx296, ROW_nx327, ROW_nx335, ROW_nx337, COL_NOT_CLK, 
         COL_nx212, COL_nx222, COL_nx232, COL_nx242, COL_nx252, COL_nx262, 
         COL_nx272, COL_nx282, COL_nx296, COL_nx327, COL_nx335, COL_nx337, nx895, 
         nx897, nx899, nx901, nx903, nx905, nx907, nx909, nx911, nx913, nx915, 
         nx917, nx919, nx921, nx923, nx927, nx929, nx931, nx933, nx935, nx937, 
         nx939, nx941, nx943, nx945, nx949, nx951, nx953, nx955, nx957, nx959, 
         nx961, nx963, nx965, nx967, nx969, nx971, nx973, nx975, nx977, nx979, 
         nx981, nx983, nx985, nx987;
    wire [20:0] \$dummy ;




    assign MemAddr[16] = MemWR ;
    fake_vcc ix522 (.Y (FilterAddr_17)) ;
    nor04_2x ix529 (.Y (NxtState_4), .A0 (nx561), .A1 (nx563), .A2 (nx565), .A3 (
             nx567)) ;
    nand04 ix562 (.Y (nx561), .A0 (CurCol_2), .A1 (CurCol_3), .A2 (CurCol_4), .A3 (
           CurCol_5)) ;
    nor02_2x ix564 (.Y (nx563), .A0 (CurCol_1), .A1 (FilterSize)) ;
    inv01 ix566 (.Y (nx565), .A (CurCol_6)) ;
    inv01 ix568 (.Y (nx567), .A (CurCol_7)) ;
    nor02_2x ix207 (.Y (MemAddr[17]), .A0 (nx795), .A1 (nx791)) ;
    xor2 ix121 (.Y (NxtCol_0), .A0 (nx571), .A1 (nx585)) ;
    nand02 ix572 (.Y (nx571), .A0 (CurRow_7), .A1 (nx12)) ;
    inv02 ix576 (.Y (nx575), .A (CurRow_6)) ;
    nand02 ix578 (.Y (nx577), .A0 (CurRow_5), .A1 (nx8)) ;
    inv01 ix582 (.Y (nx581), .A (CurRow_4)) ;
    nand04 ix584 (.Y (nx583), .A0 (CurRow_3), .A1 (CurRow_2), .A2 (nx799), .A3 (
           nx803)) ;
    xnor2 ix586 (.Y (nx585), .A0 (CurCol_0), .A1 (nx58)) ;
    xnor2 ix119 (.Y (NxtCol_1), .A0 (CurCol_1), .A1 (nx593)) ;
    oai21 ix594 (.Y (nx593), .A0 (CurCol_0), .A1 (Stride), .B0 (nx14)) ;
    xor2 ix113 (.Y (NxtCol_2), .A0 (CurCol_2), .A1 (nx70)) ;
    inv01 ix600 (.Y (nx599), .A (CurCol_1)) ;
    xnor2 ix107 (.Y (NxtCol_3), .A0 (CurCol_3), .A1 (nx602)) ;
    nand02 ix603 (.Y (nx602), .A0 (CurCol_2), .A1 (nx70)) ;
    xor2 ix101 (.Y (NxtCol_4), .A0 (CurCol_4), .A1 (nx74)) ;
    inv01 ix607 (.Y (nx606), .A (CurCol_3)) ;
    xnor2 ix95 (.Y (NxtCol_5), .A0 (CurCol_5), .A1 (nx609)) ;
    nand02 ix610 (.Y (nx609), .A0 (CurCol_4), .A1 (nx74)) ;
    xor2 ix89 (.Y (NxtCol_6), .A0 (CurCol_6), .A1 (nx78)) ;
    inv01 ix614 (.Y (nx613), .A (CurCol_5)) ;
    xnor2 ix83 (.Y (NxtCol_7), .A0 (nx616), .A1 (CurCol_7)) ;
    nand02 ix617 (.Y (nx616), .A0 (CurCol_6), .A1 (nx78)) ;
    inv01 ix619 (.Y (NxtRow_0), .A (CurRow_0)) ;
    xnor2 ix51 (.Y (NxtRow_2), .A0 (CurRow_2), .A1 (nx622)) ;
    xnor2 ix45 (.Y (NxtRow_3), .A0 (CurRow_3), .A1 (nx625)) ;
    nand03 ix626 (.Y (nx625), .A0 (CurRow_2), .A1 (nx799), .A2 (nx803)) ;
    aoi21 ix39 (.Y (NxtRow_4), .A0 (nx583), .A1 (nx581), .B0 (nx8)) ;
    xor2 ix33 (.Y (NxtRow_5), .A0 (CurRow_5), .A1 (nx8)) ;
    aoi21 ix27 (.Y (NxtRow_6), .A0 (nx577), .A1 (nx575), .B0 (nx12)) ;
    xor2 ix21 (.Y (NxtRow_7), .A0 (CurRow_7), .A1 (nx12)) ;
    nand04 ix635 (.Y (nx634), .A0 (nx468), .A1 (nx482), .A2 (nx575), .A3 (nx640)
           ) ;
    nor03_2x ix469 (.Y (nx468), .A0 (CurRow_5), .A1 (CurRow_3), .A2 (CurRow_4)
             ) ;
    aoi21 ix483 (.Y (nx482), .A0 (nx638), .A1 (nx799), .B0 (CurRow_2)) ;
    inv01 ix639 (.Y (nx638), .A (FilterSize)) ;
    inv01 ix641 (.Y (nx640), .A (CurRow_7)) ;
    or02 ix505 (.Y (MemRD), .A0 (CacheFilterWR), .A1 (nx795)) ;
    ao21 ix565 (.Y (CntRST), .A0 (CacheFilterWR), .A1 (NxtState_1), .B0 (nx967)
         ) ;
    aoi21 ix561 (.Y (NxtState_1), .A0 (nx645), .A1 (nx647), .B0 (NxtState_4)) ;
    aoi21 ix646 (.Y (nx645), .A0 (CacheFilterWR), .A1 (nx634), .B0 (nx791)) ;
    aoi22 ix648 (.Y (nx647), .A0 (Instr), .A1 (FirstCycle), .B0 (nx795), .B1 (
          nx632)) ;
    nor04 ix541 (.Y (FirstCycle), .A0 (nx650), .A1 (Calc), .A2 (nx791), .A3 (
          MemRD)) ;
    inv01 ix651 (.Y (nx650), .A (Start)) ;
    ao21 ix515 (.Y (Restart), .A0 (Done), .A1 (Start), .B0 (RST)) ;
    nor02_2x ix595 (.Y (NxtState_0), .A0 (NxtState_4), .A1 (nx654)) ;
    aoi22 ix655 (.Y (nx654), .A0 (nx656), .A1 (FirstCycle), .B0 (CacheFilterWR)
          , .B1 (nx492)) ;
    inv01 ix657 (.Y (nx656), .A (Instr)) ;
    nor02_2x ix571 (.Y (NxtState_2), .A0 (NxtState_4), .A1 (nx662)) ;
    nand02 ix663 (.Y (nx662), .A0 (Calc), .A1 (CalcFinished)) ;
    nor02_2x ix583 (.Y (NxtState_3), .A0 (NxtState_4), .A1 (nx665)) ;
    aoi22 ix666 (.Y (nx665), .A0 (Calc), .A1 (nx667), .B0 (nx795), .B1 (nx502)
          ) ;
    inv01 ix668 (.Y (nx667), .A (CalcFinished)) ;
    aoi21 ix503 (.Y (nx502), .A0 (Stride), .A1 (nx803), .B0 (nx492)) ;
    oai221 ix157 (.Y (MemAddr[0]), .A0 (nx671), .A1 (nx807), .B0 (nx679), .B1 (
           nx977), .C0 (nx685)) ;
    xnor2 ix672 (.Y (nx671), .A0 (nx673), .A1 (nx675)) ;
    nand02 ix674 (.Y (nx673), .A0 (nx638), .A1 (CurCol_0)) ;
    xnor2 ix676 (.Y (nx675), .A0 (FilterSize), .A1 (CurCol_1)) ;
    nand02 ix678 (.Y (nx677), .A0 (Stride), .A1 (nx791)) ;
    inv01 ix680 (.Y (nx679), .A (CurCol_0)) ;
    oai21 ix686 (.Y (nx685), .A0 (CurCol_0), .A1 (nx638), .B0 (nx142)) ;
    aoi21 ix143 (.Y (nx142), .A0 (nx638), .A1 (CurCol_0), .B0 (nx979)) ;
    oai222 ix183 (.Y (MemAddr[1]), .A0 (nx691), .A1 (nx807), .B0 (nx599), .B1 (
           nx977), .C0 (nx671), .C1 (nx979)) ;
    xor2 ix692 (.Y (nx691), .A0 (CurCol_2), .A1 (nx693)) ;
    oai21 ix694 (.Y (nx693), .A0 (FilterSize), .A1 (CurCol_0), .B0 (CurCol_1)) ;
    oai222 ix201 (.Y (MemAddr[2]), .A0 (nx691), .A1 (nx979), .B0 (nx696), .B1 (
           nx807), .C0 (nx699), .C1 (nx977)) ;
    oai21 ix697 (.Y (nx696), .A0 (nx168), .A1 (CurCol_3), .B0 (nx701)) ;
    inv01 ix700 (.Y (nx699), .A (CurCol_2)) ;
    nand02 ix702 (.Y (nx701), .A0 (CurCol_3), .A1 (nx168)) ;
    oai221 ix229 (.Y (MemAddr[3]), .A0 (nx696), .A1 (nx979), .B0 (nx606), .B1 (
           nx977), .C0 (nx704)) ;
    aoi22 ix705 (.Y (nx704), .A0 (nx803), .A1 (MemAddr[17]), .B0 (nx216), .B1 (
          nx150)) ;
    xnor2 ix217 (.Y (nx216), .A0 (CurCol_4), .A1 (nx701)) ;
    oai321 ix251 (.Y (MemAddr[4]), .A0 (nx709), .A1 (nx795), .A2 (nx791), .B0 (
           nx711), .B1 (nx807), .C0 (nx718)) ;
    inv02 ix710 (.Y (nx709), .A (CurRow_1)) ;
    oai21 ix712 (.Y (nx711), .A0 (nx210), .A1 (CurCol_5), .B0 (nx716)) ;
    nand02 ix717 (.Y (nx716), .A0 (CurCol_5), .A1 (nx210)) ;
    aoi22 ix719 (.Y (nx718), .A0 (CurCol_4), .A1 (nx823), .B0 (nx216), .B1 (
          nx829)) ;
    nor02ii ix125 (.Y (nx124), .A0 (nx793), .A1 (nx795)) ;
    oai221 ix273 (.Y (MemAddr[5]), .A0 (nx711), .A1 (nx979), .B0 (nx613), .B1 (
           nx977), .C0 (nx723)) ;
    aoi22 ix724 (.Y (nx723), .A0 (CurRow_2), .A1 (MemAddr[17]), .B0 (nx260), .B1 (
          nx150)) ;
    xnor2 ix261 (.Y (nx260), .A0 (CurCol_6), .A1 (nx716)) ;
    oai321 ix289 (.Y (MemAddr[6]), .A0 (nx727), .A1 (nx795), .A2 (nx793), .B0 (
           nx729), .B1 (nx807), .C0 (nx732)) ;
    inv01 ix728 (.Y (nx727), .A (CurRow_3)) ;
    xnor2 ix730 (.Y (nx729), .A0 (nx254), .A1 (CurCol_7)) ;
    aoi22 ix733 (.Y (nx732), .A0 (CurCol_6), .A1 (nx823), .B0 (nx260), .B1 (
          nx829)) ;
    oai21 ix299 (.Y (MemAddr[7]), .A0 (nx729), .A1 (nx979), .B0 (nx735)) ;
    aoi22 ix736 (.Y (nx735), .A0 (CurRow_4), .A1 (MemAddr[17]), .B0 (CurCol_7), 
          .B1 (nx823)) ;
    nand02 ix333 (.Y (MemAddr[8]), .A0 (nx738), .A1 (nx744)) ;
    aoi22 ix739 (.Y (nx738), .A0 (nx740), .A1 (nx829), .B0 (nx322), .B1 (nx150)
          ) ;
    xnor2 ix323 (.Y (nx322), .A0 (nx740), .A1 (nx320)) ;
    aoi22 ix745 (.Y (nx744), .A0 (CurRow_5), .A1 (MemAddr[17]), .B0 (nx306), .B1 (
          nx310)) ;
    oai21 ix307 (.Y (nx306), .A0 (nx638), .A1 (Stride), .B0 (nx793)) ;
    oai321 ix365 (.Y (MemAddr[9]), .A0 (nx575), .A1 (nx797), .A2 (nx793), .B0 (
           nx749), .B1 (nx807), .C0 (nx753)) ;
    xnor2 ix750 (.Y (nx749), .A0 (CurRow_2), .A1 (nx751)) ;
    aoi21 ix752 (.Y (nx751), .A0 (nx805), .A1 (nx638), .B0 (nx799)) ;
    aoi22 ix754 (.Y (nx753), .A0 (nx801), .A1 (nx823), .B0 (nx322), .B1 (nx829)
          ) ;
    oai221 ix387 (.Y (MemAddr[10]), .A0 (nx749), .A1 (nx979), .B0 (nx756), .B1 (
           nx977), .C0 (nx758)) ;
    inv01 ix757 (.Y (nx756), .A (CurRow_2)) ;
    aoi22 ix759 (.Y (nx758), .A0 (CurRow_7), .A1 (MemAddr[17]), .B0 (nx374), .B1 (
          nx150)) ;
    nand02 ix347 (.Y (nx346), .A0 (nx751), .A1 (nx756)) ;
    oai222 ix405 (.Y (MemAddr[11]), .A0 (nx763), .A1 (nx817), .B0 (nx767), .B1 (
           nx807), .C0 (nx727), .C1 (nx977)) ;
    aoi21 ix764 (.Y (nx763), .A0 (CurRow_3), .A1 (nx346), .B0 (nx765)) ;
    nor02_2x ix766 (.Y (nx765), .A0 (nx346), .A1 (CurRow_3)) ;
    xnor2 ix768 (.Y (nx767), .A0 (CurRow_4), .A1 (nx765)) ;
    oai222 ix423 (.Y (MemAddr[12]), .A0 (nx770), .A1 (nx809), .B0 (nx581), .B1 (
           nx813), .C0 (nx767), .C1 (nx817)) ;
    aoi21 ix771 (.Y (nx770), .A0 (CurRow_5), .A1 (nx390), .B0 (nx773)) ;
    nand02 ix391 (.Y (nx390), .A0 (nx765), .A1 (nx581)) ;
    nor02_2x ix774 (.Y (nx773), .A0 (nx390), .A1 (CurRow_5)) ;
    oai222 ix441 (.Y (MemAddr[13]), .A0 (nx770), .A1 (nx817), .B0 (nx776), .B1 (
           nx809), .C0 (nx778), .C1 (nx813)) ;
    xnor2 ix777 (.Y (nx776), .A0 (CurRow_6), .A1 (nx773)) ;
    inv01 ix779 (.Y (nx778), .A (CurRow_5)) ;
    oai222 ix453 (.Y (MemAddr[14]), .A0 (nx781), .A1 (nx809), .B0 (nx575), .B1 (
           nx813), .C0 (nx776), .C1 (nx817)) ;
    nand02 ix427 (.Y (nx426), .A0 (nx773), .A1 (nx575)) ;
    xnor2 ix445 (.Y (nx444), .A0 (CurRow_7), .A1 (nx426)) ;
    inv01 ix633 (.Y (nx632), .A (nx502)) ;
    inv01 ix493 (.Y (nx492), .A (nx634)) ;
    inv01 ix782 (.Y (nx781), .A (nx444)) ;
    inv01 ix375 (.Y (nx374), .A (nx763)) ;
    inv01 ix151 (.Y (nx150), .A (nx677)) ;
    inv01 ix15 (.Y (nx14), .A (nx571)) ;
    buf02 ix790 (.Y (nx791), .A (MemWR)) ;
    buf02 ix792 (.Y (nx793), .A (MemWR)) ;
    buf02 ix794 (.Y (nx795), .A (CacheWindowWR)) ;
    buf02 ix796 (.Y (nx797), .A (CacheWindowWR)) ;
    inv02 ix798 (.Y (nx799), .A (nx709)) ;
    inv02 ix800 (.Y (nx801), .A (nx709)) ;
    inv01 ix802 (.Y (nx803), .A (NxtRow_0)) ;
    inv01 ix804 (.Y (nx805), .A (NxtRow_0)) ;
    inv02 ix806 (.Y (nx807), .A (nx150)) ;
    inv02 ix808 (.Y (nx809), .A (nx150)) ;
    inv02 ix810 (.Y (nx811), .A (nx124)) ;
    inv02 ix812 (.Y (nx813), .A (nx823)) ;
    inv02 ix814 (.Y (nx815), .A (nx138)) ;
    inv02 ix816 (.Y (nx817), .A (nx829)) ;
    inv02 ix822 (.Y (nx823), .A (nx811)) ;
    nor02ii ix13 (.Y (nx12), .A0 (nx577), .A1 (CurRow_6)) ;
    nor02ii ix9 (.Y (nx8), .A0 (nx583), .A1 (CurRow_4)) ;
    nor02ii ix59 (.Y (nx58), .A0 (nx571), .A1 (Stride)) ;
    nor02ii ix71 (.Y (nx70), .A0 (nx593), .A1 (CurCol_1)) ;
    nor02ii ix75 (.Y (nx74), .A0 (nx602), .A1 (CurCol_3)) ;
    nor02ii ix79 (.Y (nx78), .A0 (nx609), .A1 (CurCol_5)) ;
    nor02ii ix689 (.Y (nx138), .A0 (Stride), .A1 (nx791)) ;
    nor02ii ix169 (.Y (nx168), .A0 (nx693), .A1 (CurCol_2)) ;
    nor02ii ix211 (.Y (nx210), .A0 (nx701), .A1 (CurCol_4)) ;
    nor02ii ix255 (.Y (nx254), .A0 (nx716), .A1 (CurCol_6)) ;
    nor02ii ix311 (.Y (nx310), .A0 (MemAddr[17]), .A1 (CurRow_0)) ;
    inv02 ix828 (.Y (nx829), .A (nx815)) ;
    dff STATE_reg_Dout_0 (.Q (CacheFilterWR), .QB (\$dummy [0]), .D (STATE_nx152
        ), .CLK (STATE_NOT_CLK)) ;
    nor02_2x STATE_ix207 (.Y (STATE_nx206), .A0 (nx967), .A1 (FilterAddr_17)) ;
    inv01 STATE_ix209 (.Y (STATE_NOT_CLK), .A (CLK)) ;
    dff STATE_reg_Dout_1 (.Q (CacheWindowWR), .QB (\$dummy [1]), .D (STATE_nx162
        ), .CLK (STATE_NOT_CLK)) ;
    dff STATE_reg_Dout_2 (.Q (MemWR), .QB (\$dummy [2]), .D (STATE_nx172), .CLK (
        STATE_NOT_CLK)) ;
    dff STATE_reg_Dout_3 (.Q (Calc), .QB (\$dummy [3]), .D (STATE_nx182), .CLK (
        STATE_NOT_CLK)) ;
    dff STATE_reg_Dout_4 (.Q (Done), .QB (\$dummy [4]), .D (STATE_nx192), .CLK (
        STATE_NOT_CLK)) ;
    dff ROW_reg_Dout_0 (.Q (CurRow_0), .QB (\$dummy [5]), .D (ROW_nx212), .CLK (
        ROW_nx327)) ;
    nor02_2x ROW_ix297 (.Y (ROW_nx296), .A0 (nx971), .A1 (ROW_nx335)) ;
    inv01 ROW_ix299 (.Y (ROW_NOT_CLK), .A (CLK)) ;
    dff ROW_reg_Dout_1 (.Q (CurRow_1), .QB (\$dummy [6]), .D (ROW_nx222), .CLK (
        ROW_nx327)) ;
    dff ROW_reg_Dout_2 (.Q (CurRow_2), .QB (\$dummy [7]), .D (ROW_nx232), .CLK (
        ROW_nx327)) ;
    dff ROW_reg_Dout_3 (.Q (CurRow_3), .QB (\$dummy [8]), .D (ROW_nx242), .CLK (
        ROW_nx327)) ;
    dff ROW_reg_Dout_4 (.Q (CurRow_4), .QB (\$dummy [9]), .D (ROW_nx252), .CLK (
        ROW_nx327)) ;
    dff ROW_reg_Dout_5 (.Q (CurRow_5), .QB (\$dummy [10]), .D (ROW_nx262), .CLK (
        ROW_NOT_CLK)) ;
    dff ROW_reg_Dout_6 (.Q (CurRow_6), .QB (\$dummy [11]), .D (ROW_nx272), .CLK (
        ROW_NOT_CLK)) ;
    dff ROW_reg_Dout_7 (.Q (CurRow_7), .QB (\$dummy [12]), .D (ROW_nx282), .CLK (
        ROW_NOT_CLK)) ;
    inv01 ROW_ix326 (.Y (ROW_nx327), .A (CLK)) ;
    buf02 ROW_ix334 (.Y (ROW_nx335), .A (CntEN)) ;
    buf02 ROW_ix336 (.Y (ROW_nx337), .A (CntEN)) ;
    dff COL_reg_Dout_0 (.Q (CurCol_0), .QB (\$dummy [13]), .D (COL_nx212), .CLK (
        COL_nx327)) ;
    nor02_2x COL_ix297 (.Y (COL_nx296), .A0 (nx971), .A1 (COL_nx335)) ;
    inv01 COL_ix299 (.Y (COL_NOT_CLK), .A (CLK)) ;
    dff COL_reg_Dout_1 (.Q (CurCol_1), .QB (\$dummy [14]), .D (COL_nx222), .CLK (
        COL_nx327)) ;
    dff COL_reg_Dout_2 (.Q (CurCol_2), .QB (\$dummy [15]), .D (COL_nx232), .CLK (
        COL_nx327)) ;
    dff COL_reg_Dout_3 (.Q (CurCol_3), .QB (\$dummy [16]), .D (COL_nx242), .CLK (
        COL_nx327)) ;
    dff COL_reg_Dout_4 (.Q (CurCol_4), .QB (\$dummy [17]), .D (COL_nx252), .CLK (
        COL_nx327)) ;
    dff COL_reg_Dout_5 (.Q (CurCol_5), .QB (\$dummy [18]), .D (COL_nx262), .CLK (
        COL_NOT_CLK)) ;
    dff COL_reg_Dout_6 (.Q (CurCol_6), .QB (\$dummy [19]), .D (COL_nx272), .CLK (
        COL_NOT_CLK)) ;
    dff COL_reg_Dout_7 (.Q (CurCol_7), .QB (\$dummy [20]), .D (COL_nx282), .CLK (
        COL_NOT_CLK)) ;
    inv01 COL_ix326 (.Y (COL_nx327), .A (CLK)) ;
    buf02 COL_ix334 (.Y (COL_nx335), .A (CntEN)) ;
    buf02 COL_ix336 (.Y (COL_nx337), .A (CntEN)) ;
    oai21 ix511 (.Y (CntEN), .A0 (nx502), .A1 (nx895), .B0 (nx897)) ;
    inv01 ix894 (.Y (nx895), .A (MemRD)) ;
    inv01 ix896 (.Y (nx897), .A (nx791)) ;
    oai22 ix459 (.Y (MemAddr[15]), .A0 (nx640), .A1 (nx811), .B0 (nx781), .B1 (
          nx815)) ;
    xnor2 ix57 (.Y (NxtRow_1), .A0 (CurRow_1), .A1 (NxtRow_0)) ;
    nand02 ix623 (.Y (nx622), .A0 (CurRow_1), .A1 (CurRow_0)) ;
    nor02_2x ix741 (.Y (nx740), .A0 (FilterSize), .A1 (CurRow_0)) ;
    xnor2 ix321 (.Y (nx320), .A0 (FilterSize), .A1 (CurRow_1)) ;
    oai32 STATE_ix153 (.Y (STATE_nx152), .A0 (nx899), .A1 (nx967), .A2 (nx901), 
          .B0 (nx903), .B1 (nx905)) ;
    inv01 ix898 (.Y (nx899), .A (NxtState_0)) ;
    inv02 ix900 (.Y (nx901), .A (FilterAddr_17)) ;
    inv01 ix902 (.Y (nx903), .A (CacheFilterWR)) ;
    inv02 ix904 (.Y (nx905), .A (STATE_nx206)) ;
    oai32 STATE_ix163 (.Y (STATE_nx162), .A0 (nx907), .A1 (nx967), .A2 (nx901), 
          .B0 (nx909), .B1 (nx905)) ;
    inv01 ix906 (.Y (nx907), .A (NxtState_1)) ;
    inv01 ix908 (.Y (nx909), .A (CacheWindowWR)) ;
    oai32 STATE_ix173 (.Y (STATE_nx172), .A0 (nx911), .A1 (nx967), .A2 (nx901), 
          .B0 (nx913), .B1 (nx905)) ;
    inv01 ix910 (.Y (nx911), .A (NxtState_2)) ;
    inv01 ix912 (.Y (nx913), .A (MemWR)) ;
    oai32 STATE_ix183 (.Y (STATE_nx182), .A0 (nx915), .A1 (nx967), .A2 (nx901), 
          .B0 (nx917), .B1 (nx905)) ;
    inv01 ix914 (.Y (nx915), .A (NxtState_3)) ;
    inv01 ix916 (.Y (nx917), .A (Calc)) ;
    oai32 STATE_ix193 (.Y (STATE_nx192), .A0 (nx919), .A1 (nx967), .A2 (nx901), 
          .B0 (nx921), .B1 (nx905)) ;
    inv01 ix918 (.Y (nx919), .A (NxtState_4)) ;
    inv01 ix920 (.Y (nx921), .A (Done)) ;
    oai32 ROW_ix213 (.Y (ROW_nx212), .A0 (CurRow_0), .A1 (nx971), .A2 (nx923), .B0 (
          NxtRow_0), .B1 (nx981)) ;
    inv02 ix922 (.Y (nx923), .A (ROW_nx335)) ;
    oai32 ROW_ix223 (.Y (ROW_nx222), .A0 (nx927), .A1 (nx971), .A2 (nx923), .B0 (
          nx709), .B1 (nx981)) ;
    inv01 ix926 (.Y (nx927), .A (NxtRow_1)) ;
    oai32 ROW_ix233 (.Y (ROW_nx232), .A0 (nx929), .A1 (nx971), .A2 (nx923), .B0 (
          nx756), .B1 (nx981)) ;
    inv01 ix928 (.Y (nx929), .A (NxtRow_2)) ;
    oai32 ROW_ix243 (.Y (ROW_nx242), .A0 (nx931), .A1 (nx971), .A2 (nx923), .B0 (
          nx727), .B1 (nx981)) ;
    inv01 ix930 (.Y (nx931), .A (NxtRow_3)) ;
    oai32 ROW_ix253 (.Y (ROW_nx252), .A0 (nx933), .A1 (nx971), .A2 (nx923), .B0 (
          nx581), .B1 (nx981)) ;
    inv01 ix932 (.Y (nx933), .A (NxtRow_4)) ;
    oai32 ROW_ix263 (.Y (ROW_nx262), .A0 (nx935), .A1 (nx973), .A2 (nx923), .B0 (
          nx778), .B1 (nx981)) ;
    inv01 ix934 (.Y (nx935), .A (NxtRow_5)) ;
    oai32 ROW_ix273 (.Y (ROW_nx272), .A0 (nx937), .A1 (nx973), .A2 (nx939), .B0 (
          nx575), .B1 (nx981)) ;
    inv01 ix936 (.Y (nx937), .A (NxtRow_6)) ;
    inv01 ix938 (.Y (nx939), .A (ROW_nx337)) ;
    oai32 ROW_ix283 (.Y (ROW_nx282), .A0 (nx941), .A1 (nx973), .A2 (nx939), .B0 (
          nx640), .B1 (nx983)) ;
    inv01 ix940 (.Y (nx941), .A (NxtRow_7)) ;
    oai32 COL_ix213 (.Y (COL_nx212), .A0 (nx943), .A1 (nx973), .A2 (nx945), .B0 (
          nx679), .B1 (nx985)) ;
    inv01 ix942 (.Y (nx943), .A (NxtCol_0)) ;
    inv02 ix944 (.Y (nx945), .A (COL_nx335)) ;
    oai32 COL_ix223 (.Y (COL_nx222), .A0 (nx949), .A1 (nx973), .A2 (nx945), .B0 (
          nx599), .B1 (nx985)) ;
    inv01 ix948 (.Y (nx949), .A (NxtCol_1)) ;
    oai32 COL_ix233 (.Y (COL_nx232), .A0 (nx951), .A1 (nx973), .A2 (nx945), .B0 (
          nx699), .B1 (nx985)) ;
    inv01 ix950 (.Y (nx951), .A (NxtCol_2)) ;
    oai32 COL_ix243 (.Y (COL_nx242), .A0 (nx953), .A1 (nx973), .A2 (nx945), .B0 (
          nx606), .B1 (nx985)) ;
    inv01 ix952 (.Y (nx953), .A (NxtCol_3)) ;
    oai32 COL_ix253 (.Y (COL_nx252), .A0 (nx955), .A1 (nx975), .A2 (nx945), .B0 (
          nx957), .B1 (nx985)) ;
    inv01 ix954 (.Y (nx955), .A (NxtCol_4)) ;
    inv01 ix956 (.Y (nx957), .A (CurCol_4)) ;
    oai32 COL_ix263 (.Y (COL_nx262), .A0 (nx959), .A1 (nx975), .A2 (nx945), .B0 (
          nx613), .B1 (nx985)) ;
    inv01 ix958 (.Y (nx959), .A (NxtCol_5)) ;
    oai32 COL_ix273 (.Y (COL_nx272), .A0 (nx961), .A1 (nx975), .A2 (nx963), .B0 (
          nx565), .B1 (nx985)) ;
    inv01 ix960 (.Y (nx961), .A (NxtCol_6)) ;
    inv01 ix962 (.Y (nx963), .A (COL_nx337)) ;
    oai32 COL_ix283 (.Y (COL_nx282), .A0 (nx965), .A1 (nx975), .A2 (nx963), .B0 (
          nx567), .B1 (nx987)) ;
    inv01 ix964 (.Y (nx965), .A (NxtCol_7)) ;
    buf02 ix966 (.Y (nx967), .A (Restart)) ;
    inv01 ix968 (.Y (nx969), .A (CntRST)) ;
    inv02 ix970 (.Y (nx971), .A (nx969)) ;
    inv02 ix972 (.Y (nx973), .A (nx969)) ;
    inv02 ix974 (.Y (nx975), .A (nx969)) ;
    inv02 ix976 (.Y (nx977), .A (nx124)) ;
    inv02 ix978 (.Y (nx979), .A (nx138)) ;
    inv02 ix980 (.Y (nx981), .A (ROW_nx296)) ;
    inv02 ix982 (.Y (nx983), .A (ROW_nx296)) ;
    inv02 ix984 (.Y (nx985), .A (COL_nx296)) ;
    inv02 ix986 (.Y (nx987), .A (COL_nx296)) ;
endmodule

