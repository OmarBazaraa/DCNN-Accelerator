//
// Verilog description for cell controller, 
// Wed May  2 09:48:20 2018
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

    wire CurCol_5, nx487, CurRow_5, nx488, CurRow_4, CurRow_3, CurRow_2, nx14, 
         nx20, nx34, nx46, nx493, nx72, nx82, nx102, nx110, CurRow_7, CurRow_6, 
         nx118, nx138, nx162, nx164, nx178, nx188, nx196, nx224, nx230, nx246, 
         nx264, nx276, CurCol_4, CurCol_3, CurCol_2, CurCol_1, CurCol_0, nx497, 
         nx296, nx499, nx322, nx332, nx503, nx358, nx368, nx388, nx396, CurCol_7, 
         CurCol_6, nx410, nx422, nx448, nx456, nx462, nx472, nx478, nx500, nx522, 
         nx524, nx540, nx558, nx560, nx576, nx594, nx596, nx612, nx628, nx646, 
         nx662, nx668, nx690, nx696, nx718, nx515, nx525, nx535, nx545, nx555, 
         nx565, nx575, nx585, nx595, nx605, nx615, nx625, nx635, nx645, nx655, 
         nx665, nx683, nx695, nx697, nx703, nx707, nx709, nx711, nx721, nx727, 
         nx729, nx733, nx737, nx739, nx745, nx748, nx754, nx758, nx760, nx764, 
         nx768, nx771, nx775, nx777, nx780, nx784, nx787, nx796, nx800, nx802, 
         nx805, nx809, nx812, nx815, nx818, nx823, nx826, nx829, nx832, nx836, 
         nx838, nx842, nx844, nx850, nx852, nx856, nx858, nx861, nx865, nx867, 
         nx870, nx873, nx875, nx879, nx883, nx894, nx898, nx907, nx910, nx917, 
         nx920, nx923, nx925, nx928, nx932, nx935, nx938, nx942, nx946, nx949, 
         nx952, nx956, nx962, nx964, nx971, nx975, nx977, nx983, nx985, nx988, 
         nx998, nx1000, nx1002, nx1004, nx1006, nx1008, nx1010, nx1012, nx1014, 
         nx1016, nx1018, nx1020, nx1022, nx1028, nx1030, nx1032, nx1034, nx1036, 
         nx1042, nx1044, nx1046, nx1048, nx1050, nx1052, nx1054, nx1056, nx1058, 
         nx1060, nx1062;
    wire [5:0] \$dummy ;




    assign MemAddr[16] = MemWR ;
    and03 ix277 (.Y (nx276), .A0 (nx683), .A1 (CalcFinished), .A2 (Calc)) ;
    aoi21 ix684 (.Y (nx683), .A0 (Start), .A1 (nx487), .B0 (RST)) ;
    nor03_2x ix397 (.Y (nx396), .A0 (nx695), .A1 (nx1022), .A2 (nx388)) ;
    nand02 ix698 (.Y (nx697), .A0 (CurCol_4), .A1 (nx503)) ;
    oai21 ix636 (.Y (nx635), .A0 (nx703), .A1 (nx1010), .B0 (nx898)) ;
    dff COL_reg_Dout_4 (.Q (CurCol_4), .QB (nx703), .D (nx635), .CLK (CLK)) ;
    aoi21 ix708 (.Y (nx707), .A0 (nx709), .A1 (MemRD), .B0 (nx1022)) ;
    oai21 ix710 (.Y (nx709), .A0 (nx711), .A1 (nx894), .B0 (nx748)) ;
    dff ROW_reg_Dout_0 (.Q (\$dummy [0]), .QB (nx711), .D (nx515), .CLK (CLK)) ;
    oai21 ix15 (.Y (nx14), .A0 (nx721), .A1 (nx745), .B0 (nx683)) ;
    aoi22 ix728 (.Y (nx727), .A0 (nx729), .A1 (FirstCycle), .B0 (CacheFilterWR)
          , .B1 (nx188)) ;
    inv01 ix730 (.Y (nx729), .A (Instr)) ;
    nor04 ix213 (.Y (FirstCycle), .A0 (nx733), .A1 (Calc), .A2 (nx998), .A3 (
          MemRD)) ;
    inv01 ix734 (.Y (nx733), .A (Start)) ;
    dff STATE_reg_Dout_3 (.Q (Calc), .QB (\$dummy [1]), .D (nx264), .CLK (CLK)
        ) ;
    aoi22 ix738 (.Y (nx737), .A0 (nx739), .A1 (Calc), .B0 (CacheWindowWR), .B1 (
          nx224)) ;
    inv01 ix740 (.Y (nx739), .A (CalcFinished)) ;
    dff STATE_reg_Dout_1 (.Q (CacheWindowWR), .QB (\$dummy [2]), .D (nx246), .CLK (
        CLK)) ;
    aoi221 ix746 (.Y (nx745), .A0 (CacheFilterWR), .A1 (nx748), .B0 (nx998), .B1 (
           nx796), .C0 (nx230)) ;
    dff STATE_reg_Dout_0 (.Q (CacheFilterWR), .QB (nx721), .D (nx196), .CLK (CLK
        )) ;
    nand04 ix749 (.Y (nx748), .A0 (nx162), .A1 (nx178), .A2 (nx758), .A3 (nx764)
           ) ;
    nor03_2x ix111 (.Y (nx110), .A0 (nx754), .A1 (nx102), .A2 (nx1020)) ;
    aoi21 ix755 (.Y (nx754), .A0 (CurRow_4), .A1 (nx493), .B0 (CurRow_5)) ;
    oai21 ix556 (.Y (nx555), .A0 (nx758), .A1 (nx1008), .B0 (nx760)) ;
    dff ROW_reg_Dout_4 (.Q (CurRow_4), .QB (nx758), .D (nx555), .CLK (CLK)) ;
    nand04 ix761 (.Y (nx760), .A0 (nx82), .A1 (nx844), .A2 (nx1030), .A3 (nx1010
           )) ;
    or02 ix83 (.Y (nx82), .A0 (nx493), .A1 (CurRow_4)) ;
    nor03_2x ix73 (.Y (nx72), .A0 (nx768), .A1 (nx493), .A2 (nx1020)) ;
    dff ROW_reg_Dout_3 (.Q (CurRow_3), .QB (nx764), .D (nx545), .CLK (CLK)) ;
    oai21 ix536 (.Y (nx535), .A0 (nx775), .A1 (nx1008), .B0 (nx777)) ;
    dff ROW_reg_Dout_2 (.Q (CurRow_2), .QB (nx775), .D (nx535), .CLK (CLK)) ;
    nand04 ix778 (.Y (nx777), .A0 (nx46), .A1 (nx771), .A2 (nx1030), .A3 (nx1010
           )) ;
    nand02 ix47 (.Y (nx46), .A0 (nx780), .A1 (nx775)) ;
    oai21 ix785 (.Y (nx784), .A0 (nx1016), .A1 (nx1012), .B0 (nx34)) ;
    aoi21 ix35 (.Y (nx34), .A0 (nx1012), .A1 (nx1016), .B0 (nx1020)) ;
    dff ROW_reg_Dout_1 (.Q (\$dummy [3]), .QB (nx787), .D (nx525), .CLK (CLK)) ;
    nand04 ix797 (.Y (nx796), .A0 (CurCol_5), .A1 (CurCol_7), .A2 (CurCol_6), .A3 (
           nx456)) ;
    oai21 ix666 (.Y (nx665), .A0 (nx800), .A1 (nx1008), .B0 (nx802)) ;
    dff COL_reg_Dout_7 (.Q (CurCol_7), .QB (nx800), .D (nx665), .CLK (CLK)) ;
    nand03 ix803 (.Y (nx802), .A0 (nx1030), .A1 (nx422), .A2 (nx1008)) ;
    nand02 ix806 (.Y (nx805), .A0 (CurCol_6), .A1 (nx388)) ;
    oai21 ix810 (.Y (nx809), .A0 (nx388), .A1 (CurCol_6), .B0 (nx410)) ;
    dff COL_reg_Dout_5 (.Q (CurCol_5), .QB (nx812), .D (nx645), .CLK (CLK)) ;
    aoi21 ix411 (.Y (nx410), .A0 (CurCol_6), .A1 (nx388), .B0 (nx1020)) ;
    dff COL_reg_Dout_6 (.Q (CurCol_6), .QB (nx815), .D (nx655), .CLK (CLK)) ;
    nor03_2x ix457 (.Y (nx456), .A0 (nx818), .A1 (nx703), .A2 (nx875)) ;
    aoi32 ix819 (.Y (nx818), .A0 (CurCol_0), .A1 (FilterSize), .A2 (CurCol_1), .B0 (
          CurCol_2), .B1 (nx448)) ;
    dff COL_reg_Dout_0 (.Q (CurCol_0), .QB (nx852), .D (nx595), .CLK (CLK)) ;
    xnor2 ix824 (.Y (nx823), .A0 (nx138), .A1 (nx497)) ;
    oai21 ix586 (.Y (nx585), .A0 (nx826), .A1 (nx1008), .B0 (nx829)) ;
    nand02 ix833 (.Y (nx832), .A0 (CurRow_6), .A1 (nx102)) ;
    oai21 ix576 (.Y (nx575), .A0 (nx836), .A1 (nx1008), .B0 (nx838)) ;
    dff ROW_reg_Dout_6 (.Q (CurRow_6), .QB (nx836), .D (nx575), .CLK (CLK)) ;
    nand04 ix839 (.Y (nx838), .A0 (nx118), .A1 (nx832), .A2 (nx1030), .A3 (
           nx1008)) ;
    or02 ix119 (.Y (nx118), .A0 (nx102), .A1 (CurRow_6)) ;
    dff ROW_reg_Dout_5 (.Q (CurRow_5), .QB (nx842), .D (nx565), .CLK (CLK)) ;
    nand02 ix845 (.Y (nx844), .A0 (CurRow_4), .A1 (nx493)) ;
    dff ROW_reg_Dout_7 (.Q (CurRow_7), .QB (nx826), .D (nx585), .CLK (CLK)) ;
    nand02 ix851 (.Y (nx850), .A0 (Stride), .A1 (nx138)) ;
    nor03_2x ix323 (.Y (nx322), .A0 (nx856), .A1 (nx1020), .A2 (nx499)) ;
    oai21 ix859 (.Y (nx858), .A0 (CurCol_0), .A1 (Stride), .B0 (nx138)) ;
    dff COL_reg_Dout_1 (.Q (CurCol_1), .QB (nx861), .D (nx605), .CLK (CLK)) ;
    oai21 ix616 (.Y (nx615), .A0 (nx865), .A1 (nx1010), .B0 (nx867)) ;
    dff COL_reg_Dout_2 (.Q (CurCol_2), .QB (nx865), .D (nx615), .CLK (CLK)) ;
    nand04 ix868 (.Y (nx867), .A0 (nx332), .A1 (nx1030), .A2 (nx870), .A3 (
           nx1010)) ;
    or02 ix333 (.Y (nx332), .A0 (nx499), .A1 (CurCol_2)) ;
    nand02 ix871 (.Y (nx870), .A0 (CurCol_2), .A1 (nx499)) ;
    inv01 ix874 (.Y (nx873), .A (FilterSize)) ;
    nor03_2x ix359 (.Y (nx358), .A0 (nx879), .A1 (nx1020), .A2 (nx503)) ;
    dff COL_reg_Dout_3 (.Q (CurCol_3), .QB (nx875), .D (nx625), .CLK (CLK)) ;
    aoi22 ix884 (.Y (nx883), .A0 (Instr), .A1 (FirstCycle), .B0 (CacheWindowWR)
          , .B1 (nx709)) ;
    aoi21 ix179 (.Y (nx178), .A0 (nx873), .A1 (nx1012), .B0 (CurRow_2)) ;
    or02 ix205 (.Y (MemRD), .A0 (CacheFilterWR), .A1 (CacheWindowWR)) ;
    inv01 ix895 (.Y (nx894), .A (Stride)) ;
    dff STATE_reg_Dout_2 (.Q (MemWR), .QB (\$dummy [4]), .D (nx276), .CLK (CLK)
        ) ;
    nand04 ix899 (.Y (nx898), .A0 (nx368), .A1 (nx1030), .A2 (nx697), .A3 (
           nx1010)) ;
    or02 ix369 (.Y (nx368), .A0 (nx503), .A1 (CurCol_4)) ;
    dff STATE_reg_Dout_4 (.Q (Done), .QB (\$dummy [5]), .D (nx462), .CLK (CLK)
        ) ;
    nor03_2x ix463 (.Y (nx462), .A0 (nx796), .A1 (Start), .A2 (RST)) ;
    oai21 ix497 (.Y (MemAddr[0]), .A0 (nx852), .A1 (nx1034), .B0 (nx907)) ;
    aoi32 ix908 (.Y (nx907), .A0 (nx478), .A1 (nx998), .A2 (nx910), .B0 (nx1016)
          , .B1 (nx1004)) ;
    nand02 ix479 (.Y (nx478), .A0 (nx852), .A1 (FilterSize)) ;
    xor2 ix501 (.Y (nx500), .A0 (nx910), .A1 (nx917)) ;
    oai21 ix537 (.Y (MemAddr[2]), .A0 (nx865), .A1 (nx1034), .B0 (nx920)) ;
    aoi32 ix921 (.Y (nx920), .A0 (nx522), .A1 (nx1000), .A2 (nx925), .B0 (
          CurRow_2), .B1 (nx1004)) ;
    nand02 ix523 (.Y (nx522), .A0 (nx923), .A1 (nx865)) ;
    oai21 ix924 (.Y (nx923), .A0 (FilterSize), .A1 (CurCol_0), .B0 (CurCol_1)) ;
    oai21 ix555 (.Y (MemAddr[3]), .A0 (nx875), .A1 (nx1034), .B0 (nx928)) ;
    aoi32 ix929 (.Y (nx928), .A0 (nx540), .A1 (nx1000), .A2 (nx932), .B0 (
          CurRow_3), .B1 (nx1004)) ;
    or02 ix541 (.Y (nx540), .A0 (nx524), .A1 (CurCol_3)) ;
    nand02 ix933 (.Y (nx932), .A0 (CurCol_3), .A1 (nx524)) ;
    oai21 ix573 (.Y (MemAddr[4]), .A0 (nx703), .A1 (nx1034), .B0 (nx935)) ;
    aoi32 ix936 (.Y (nx935), .A0 (nx558), .A1 (nx1000), .A2 (nx938), .B0 (
          CurRow_4), .B1 (nx1004)) ;
    nand02 ix559 (.Y (nx558), .A0 (nx932), .A1 (nx703)) ;
    oai21 ix591 (.Y (MemAddr[5]), .A0 (nx812), .A1 (nx1034), .B0 (nx942)) ;
    aoi32 ix943 (.Y (nx942), .A0 (nx576), .A1 (nx1000), .A2 (nx946), .B0 (
          CurRow_5), .B1 (nx1004)) ;
    or02 ix577 (.Y (nx576), .A0 (nx560), .A1 (CurCol_5)) ;
    nand02 ix947 (.Y (nx946), .A0 (CurCol_5), .A1 (nx560)) ;
    oai21 ix609 (.Y (MemAddr[6]), .A0 (nx815), .A1 (nx1034), .B0 (nx949)) ;
    aoi32 ix950 (.Y (nx949), .A0 (nx594), .A1 (nx1000), .A2 (nx952), .B0 (
          CurRow_6), .B1 (nx1006)) ;
    nand02 ix595 (.Y (nx594), .A0 (nx946), .A1 (nx815)) ;
    oai21 ix625 (.Y (MemAddr[7]), .A0 (nx800), .A1 (nx1034), .B0 (nx956)) ;
    aoi32 ix957 (.Y (nx956), .A0 (nx612), .A1 (nx894), .A2 (nx1000), .B0 (
          CurRow_7), .B1 (nx1006)) ;
    ao32 ix643 (.Y (MemAddr[8]), .A0 (nx628), .A1 (nx1018), .A2 (nx962), .B0 (
         nx1002), .B1 (nx964)) ;
    xnor2 ix647 (.Y (nx646), .A0 (nx964), .A1 (nx164)) ;
    oai21 ix669 (.Y (nx668), .A0 (nx775), .A1 (nx971), .B0 (nx662)) ;
    aoi21 ix972 (.Y (nx971), .A0 (nx1018), .A1 (nx873), .B0 (nx1014)) ;
    nand02 ix663 (.Y (nx662), .A0 (nx971), .A1 (nx775)) ;
    oai22 ix689 (.Y (MemAddr[11]), .A0 (nx1058), .A1 (nx975), .B0 (nx764), .B1 (
          nx1036)) ;
    aoi21 ix976 (.Y (nx975), .A0 (CurRow_3), .A1 (nx662), .B0 (nx977)) ;
    oai21 ix697 (.Y (nx696), .A0 (nx758), .A1 (nx977), .B0 (nx690)) ;
    nand02 ix691 (.Y (nx690), .A0 (nx977), .A1 (nx758)) ;
    oai22 ix717 (.Y (MemAddr[13]), .A0 (nx1058), .A1 (nx983), .B0 (nx842), .B1 (
          nx1036)) ;
    aoi21 ix984 (.Y (nx983), .A0 (CurRow_5), .A1 (nx690), .B0 (nx985)) ;
    oai22 ix731 (.Y (MemAddr[14]), .A0 (nx1058), .A1 (nx988), .B0 (nx836), .B1 (
          nx1036)) ;
    nand02 ix719 (.Y (nx718), .A0 (nx985), .A1 (nx836)) ;
    inv01 ix953 (.Y (nx952), .A (nx596)) ;
    inv01 ix939 (.Y (nx938), .A (nx560)) ;
    inv01 ix926 (.Y (nx925), .A (nx524)) ;
    inv01 ix231 (.Y (nx230), .A (nx883)) ;
    inv01 ix225 (.Y (nx224), .A (nx709)) ;
    inv01 ix189 (.Y (nx188), .A (nx748)) ;
    inv01 ix459 (.Y (nx487), .A (nx796)) ;
    inv01 ix963 (.Y (nx962), .A (MemAddr[17])) ;
    inv02 ix997 (.Y (nx998), .A (nx1058)) ;
    inv02 ix999 (.Y (nx1000), .A (nx1058)) ;
    inv02 ix1001 (.Y (nx1002), .A (nx1058)) ;
    inv01 ix1003 (.Y (nx1004), .A (nx962)) ;
    inv01 ix1005 (.Y (nx1006), .A (nx962)) ;
    inv02 ix1007 (.Y (nx1008), .A (nx1028)) ;
    inv02 ix1009 (.Y (nx1010), .A (nx1028)) ;
    inv02 ix1011 (.Y (nx1012), .A (nx787)) ;
    inv02 ix1013 (.Y (nx1014), .A (nx787)) ;
    inv02 ix1015 (.Y (nx1016), .A (nx711)) ;
    inv02 ix1017 (.Y (nx1018), .A (nx711)) ;
    inv02 ix1019 (.Y (nx1020), .A (nx1032)) ;
    inv02 ix1021 (.Y (nx1022), .A (nx1032)) ;
    inv02 ix1027 (.Y (nx1028), .A (nx488)) ;
    inv02 ix1029 (.Y (nx1030), .A (nx14)) ;
    inv02 ix1031 (.Y (nx1032), .A (nx14)) ;
    inv02 ix1033 (.Y (nx1034), .A (nx472)) ;
    inv02 ix1035 (.Y (nx1036), .A (nx472)) ;
    nor02ii ix491 (.Y (MemAddr[17]), .A0 (CacheWindowWR), .A1 (nx1058)) ;
    mux21_ni ix646 (.Y (nx645), .A0 (CurCol_5), .A1 (nx396), .S0 (nx1054)) ;
    and02 ix696 (.Y (nx695), .A0 (nx812), .A1 (nx697)) ;
    mux21_ni ix516 (.Y (nx515), .A0 (nx1016), .A1 (nx20), .S0 (nx1054)) ;
    and02 ix21 (.Y (nx20), .A0 (nx711), .A1 (nx1032)) ;
    nor02ii ix197 (.Y (nx196), .A0 (nx727), .A1 (nx683)) ;
    nor02ii ix265 (.Y (nx264), .A0 (nx737), .A1 (nx683)) ;
    nor02ii ix247 (.Y (nx246), .A0 (nx745), .A1 (nx683)) ;
    and03 ix163 (.Y (nx162), .A0 (nx842), .A1 (nx826), .A2 (nx836)) ;
    mux21_ni ix566 (.Y (nx565), .A0 (CurRow_5), .A1 (nx110), .S0 (nx1054)) ;
    nor02ii ix81 (.Y (nx493), .A0 (nx771), .A1 (CurRow_3)) ;
    mux21_ni ix546 (.Y (nx545), .A0 (CurRow_3), .A1 (nx72), .S0 (nx1054)) ;
    and02 ix769 (.Y (nx768), .A0 (nx764), .A1 (nx771)) ;
    or03 ix772 (.Y (nx771), .A0 (nx775), .A1 (nx787), .A2 (nx711)) ;
    or02 ix781 (.Y (nx780), .A0 (nx787), .A1 (nx711)) ;
    mux21 ix526 (.Y (nx525), .A0 (nx787), .A1 (nx784), .S0 (nx1054)) ;
    nand02 ix790 (.Y (nx488), .A0 (nx1060), .A1 (nx707)) ;
    xor2 ix423 (.Y (nx422), .A0 (nx800), .A1 (nx805)) ;
    mux21 ix656 (.Y (nx655), .A0 (nx815), .A1 (nx809), .S0 (nx1054)) ;
    nor02ii ix389 (.Y (nx388), .A0 (nx697), .A1 (CurCol_5)) ;
    mux21_ni ix596 (.Y (nx595), .A0 (CurCol_0), .A1 (nx296), .S0 (nx1054)) ;
    nor02ii ix297 (.Y (nx296), .A0 (nx823), .A1 (nx1032)) ;
    nor02ii ix139 (.Y (nx138), .A0 (nx832), .A1 (CurRow_7)) ;
    or04 ix830 (.Y (nx829), .A0 (nx1042), .A1 (nx14), .A2 (nx138), .A3 (nx1028)
         ) ;
    nor02ii ix137 (.Y (nx1042), .A0 (CurRow_7), .A1 (nx832)) ;
    nor02ii ix103 (.Y (nx102), .A0 (nx844), .A1 (CurRow_5)) ;
    xor2 ix307 (.Y (nx497), .A0 (nx852), .A1 (nx850)) ;
    mux21_ni ix606 (.Y (nx605), .A0 (CurCol_1), .A1 (nx322), .S0 (nx1056)) ;
    and02 ix857 (.Y (nx856), .A0 (nx861), .A1 (nx858)) ;
    nor02ii ix331 (.Y (nx499), .A0 (nx858), .A1 (CurCol_1)) ;
    or03 ix449 (.Y (nx448), .A0 (CurCol_1), .A1 (FilterSize), .A2 (CurCol_0)) ;
    mux21_ni ix626 (.Y (nx625), .A0 (CurCol_3), .A1 (nx358), .S0 (nx1056)) ;
    and02 ix880 (.Y (nx879), .A0 (nx875), .A1 (nx870)) ;
    nor02ii ix367 (.Y (nx503), .A0 (nx870), .A1 (CurCol_3)) ;
    or02 ix911 (.Y (nx910), .A0 (FilterSize), .A1 (nx852)) ;
    oai222 ix914 (.Y (MemAddr[1]), .A0 (nx1060), .A1 (nx1044), .B0 (nx861), .B1 (
           nx1036), .C0 (nx787), .C1 (nx962)) ;
    inv01 ix1043 (.Y (nx1044), .A (nx500)) ;
    and02 ix473 (.Y (nx472), .A0 (nx1060), .A1 (CacheWindowWR)) ;
    xor2 ix918 (.Y (nx917), .A0 (FilterSize), .A1 (nx861)) ;
    nor02ii ix525 (.Y (nx524), .A0 (nx923), .A1 (CurCol_2)) ;
    nor02ii ix561 (.Y (nx560), .A0 (nx932), .A1 (CurCol_4)) ;
    xor2 ix613 (.Y (nx612), .A0 (nx596), .A1 (CurCol_7)) ;
    nor02ii ix597 (.Y (nx596), .A0 (nx946), .A1 (CurCol_6)) ;
    or02 ix629 (.Y (nx628), .A0 (nx1060), .A1 (FilterSize)) ;
    nor02ii ix965 (.Y (nx964), .A0 (FilterSize), .A1 (nx711)) ;
    oai22 ix651 (.Y (MemAddr[9]), .A0 (nx1060), .A1 (nx1046), .B0 (nx787), .B1 (
          nx1036)) ;
    inv01 ix1045 (.Y (nx1046), .A (nx646)) ;
    xor2 ix165 (.Y (nx164), .A0 (FilterSize), .A1 (nx787)) ;
    oai22 ix675 (.Y (MemAddr[10]), .A0 (nx1060), .A1 (nx1048), .B0 (nx775), .B1 (
          nx1036)) ;
    inv01 ix1047 (.Y (nx1048), .A (nx668)) ;
    nor02ii ix978 (.Y (nx977), .A0 (nx662), .A1 (nx764)) ;
    oai22 ix703 (.Y (MemAddr[12]), .A0 (nx1060), .A1 (nx1050), .B0 (nx758), .B1 (
          nx1036)) ;
    inv01 ix1049 (.Y (nx1050), .A (nx696)) ;
    nor02ii ix986 (.Y (nx985), .A0 (nx690), .A1 (nx842)) ;
    xor2 ix989 (.Y (nx988), .A0 (nx836), .A1 (nx985)) ;
    oai32 ix743 (.Y (MemAddr[15]), .A0 (nx1052), .A1 (Stride), .A2 (nx1062), .B0 (
          nx826), .B1 (nx1036)) ;
    xnor2 ix733 (.Y (nx1052), .A0 (nx826), .A1 (nx718)) ;
    inv02 ix1053 (.Y (nx1054), .A (nx1028)) ;
    inv02 ix1055 (.Y (nx1056), .A (nx1028)) ;
    inv02 ix1057 (.Y (nx1058), .A (MemWR)) ;
    inv02 ix1059 (.Y (nx1060), .A (MemWR)) ;
    inv02 ix1061 (.Y (nx1062), .A (MemWR)) ;
endmodule

