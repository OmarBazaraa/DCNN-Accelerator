//
// Verilog description for cell controller, 
// Wed May  9 07:36:09 2018
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

    wire CurCol_5, nx483, CurRow_5, CurRow_4, CurRow_3, CurRow_2, CurRow_0, nx14, 
         nx34, nx46, nx491, nx82, nx102, CurRow_7, CurRow_6, nx118, nx138, nx162, 
         nx164, nx178, nx188, nx196, nx226, nx232, nx248, nx266, nx278, CurCol_4, 
         CurCol_3, CurCol_2, CurCol_1, CurCol_0, nx495, nx300, nx497, nx336, 
         nx501, nx362, nx372, nx392, nx400, CurCol_7, CurCol_6, nx414, nx426, 
         nx452, nx460, nx466, nx476, nx482, nx498, nx520, nx522, nx538, nx556, 
         nx558, nx574, nx592, nx594, nx610, nx626, nx644, nx660, nx666, nx688, 
         nx694, nx716, nx513, nx523, nx533, nx543, nx553, nx563, nx573, nx583, 
         nx593, nx603, nx613, nx623, nx633, nx643, nx653, nx663, nx681, nx693, 
         nx695, nx701, nx705, nx713, nx715, nx725, nx727, nx733, nx735, nx743, 
         nx745, nx748, nx752, nx754, nx758, nx761, nx764, nx768, nx770, nx773, 
         nx777, nx779, nx783, nx785, nx792, nx796, nx798, nx801, nx805, nx807, 
         nx810, nx814, nx817, nx822, nx825, nx828, nx831, nx835, nx837, nx845, 
         nx847, nx850, nx852, nx855, nx861, nx863, nx867, nx870, nx872, nx877, 
         nx880, nx882, nx884, nx900, nx904, nx913, nx916, nx923, nx926, nx929, 
         nx931, nx934, nx938, nx941, nx944, nx948, nx952, nx955, nx958, nx962, 
         nx968, nx975, nx979, nx981, nx987, nx989, nx992, nx1002, nx1004, nx1008, 
         nx1010, nx1012, nx1014, nx1016, nx1018, nx1020, nx1022, nx1024, nx1026, 
         nx1030, nx1032, nx1034, nx1036, nx1042, nx1044, nx1046, nx1048, nx1050, 
         nx1052, nx1054, nx1056, nx1058, nx1060, nx1062, nx1064, nx1066, nx1068, 
         nx1070, nx1072;
    wire [4:0] \$dummy ;




    assign MemAddr[16] = MemWR ;
    fake_gnd ix469 (.Y (MemRD)) ;
    and03 ix279 (.Y (nx278), .A0 (nx681), .A1 (CalcFinished), .A2 (Calc)) ;
    aoi21 ix682 (.Y (nx681), .A0 (Start), .A1 (nx483), .B0 (RST)) ;
    nor03_2x ix401 (.Y (nx400), .A0 (nx693), .A1 (nx1026), .A2 (nx392)) ;
    nand02 ix696 (.Y (nx695), .A0 (CurCol_4), .A1 (nx501)) ;
    oai21 ix634 (.Y (nx633), .A0 (nx701), .A1 (nx1020), .B0 (nx904)) ;
    dff COL_reg_Dout_4 (.Q (CurCol_4), .QB (nx701), .D (nx633), .CLK (CLK)) ;
    oai21 ix706 (.Y (nx705), .A0 (CacheFilterWR), .A1 (CacheWindowWR), .B0 (
          nx882)) ;
    aoi22 ix714 (.Y (nx713), .A0 (nx715), .A1 (FirstCycle), .B0 (CacheFilterWR)
          , .B1 (nx188)) ;
    inv01 ix716 (.Y (nx715), .A (Instr)) ;
    dff STATE_reg_Dout_3 (.Q (Calc), .QB (\$dummy [0]), .D (nx266), .CLK (CLK)
        ) ;
    aoi22 ix726 (.Y (nx725), .A0 (nx727), .A1 (Calc), .B0 (CacheWindowWR), .B1 (
          nx226)) ;
    inv01 ix728 (.Y (nx727), .A (CalcFinished)) ;
    dff STATE_reg_Dout_1 (.Q (CacheWindowWR), .QB (\$dummy [1]), .D (nx248), .CLK (
        CLK)) ;
    aoi221 ix734 (.Y (nx733), .A0 (CacheFilterWR), .A1 (nx735), .B0 (nx1002), .B1 (
           nx792), .C0 (nx232)) ;
    nand04 ix736 (.Y (nx735), .A0 (nx162), .A1 (nx178), .A2 (nx752), .A3 (nx758)
           ) ;
    oai21 ix564 (.Y (nx563), .A0 (nx743), .A1 (nx1014), .B0 (nx745)) ;
    dff ROW_reg_Dout_5 (.Q (CurRow_5), .QB (nx743), .D (nx563), .CLK (CLK)) ;
    nand02 ix749 (.Y (nx748), .A0 (CurRow_4), .A1 (nx491)) ;
    oai21 ix554 (.Y (nx553), .A0 (nx752), .A1 (nx1014), .B0 (nx754)) ;
    dff ROW_reg_Dout_4 (.Q (CurRow_4), .QB (nx752), .D (nx553), .CLK (CLK)) ;
    nand04 ix755 (.Y (nx754), .A0 (nx82), .A1 (nx748), .A2 (nx1032), .A3 (nx1020
           )) ;
    or02 ix83 (.Y (nx82), .A0 (nx491), .A1 (CurRow_4)) ;
    oai21 ix544 (.Y (nx543), .A0 (nx758), .A1 (nx1014), .B0 (nx761)) ;
    oai21 ix534 (.Y (nx533), .A0 (nx768), .A1 (nx1014), .B0 (nx770)) ;
    dff ROW_reg_Dout_2 (.Q (CurRow_2), .QB (nx768), .D (nx533), .CLK (CLK)) ;
    nand04 ix771 (.Y (nx770), .A0 (nx46), .A1 (nx764), .A2 (nx1030), .A3 (nx1018
           )) ;
    nand02 ix47 (.Y (nx46), .A0 (nx773), .A1 (nx768)) ;
    dff ROW_reg_Dout_1 (.Q (\$dummy [2]), .QB (nx777), .D (nx523), .CLK (CLK)) ;
    oai21 ix780 (.Y (nx779), .A0 (CurRow_0), .A1 (nx1022), .B0 (nx34)) ;
    oai21 ix514 (.Y (nx513), .A0 (nx783), .A1 (nx1014), .B0 (nx785)) ;
    dff ROW_reg_Dout_0 (.Q (CurRow_0), .QB (nx783), .D (nx513), .CLK (CLK)) ;
    nand04 ix793 (.Y (nx792), .A0 (CurCol_5), .A1 (CurCol_7), .A2 (CurCol_6), .A3 (
           nx460)) ;
    oai21 ix664 (.Y (nx663), .A0 (nx796), .A1 (nx1014), .B0 (nx798)) ;
    dff COL_reg_Dout_7 (.Q (CurCol_7), .QB (nx796), .D (nx663), .CLK (CLK)) ;
    nand03 ix799 (.Y (nx798), .A0 (nx1030), .A1 (nx426), .A2 (nx1016)) ;
    nand02 ix802 (.Y (nx801), .A0 (CurCol_6), .A1 (nx392)) ;
    dff COL_reg_Dout_6 (.Q (CurCol_6), .QB (nx805), .D (nx653), .CLK (CLK)) ;
    oai21 ix808 (.Y (nx807), .A0 (nx392), .A1 (CurCol_6), .B0 (nx414)) ;
    dff COL_reg_Dout_5 (.Q (CurCol_5), .QB (nx810), .D (nx643), .CLK (CLK)) ;
    aoi21 ix415 (.Y (nx414), .A0 (CurCol_6), .A1 (nx392), .B0 (nx1026)) ;
    oai21 ix15 (.Y (nx14), .A0 (nx814), .A1 (nx733), .B0 (nx681)) ;
    dff STATE_reg_Dout_0 (.Q (CacheFilterWR), .QB (nx814), .D (nx196), .CLK (CLK
        )) ;
    nor03_2x ix461 (.Y (nx460), .A0 (nx817), .A1 (nx701), .A2 (nx872)) ;
    aoi32 ix818 (.Y (nx817), .A0 (CurCol_0), .A1 (FilterSize), .A2 (CurCol_1), .B0 (
          CurCol_2), .B1 (nx452)) ;
    dff COL_reg_Dout_0 (.Q (CurCol_0), .QB (nx847), .D (nx593), .CLK (CLK)) ;
    xnor2 ix823 (.Y (nx822), .A0 (nx138), .A1 (nx495)) ;
    oai21 ix584 (.Y (nx583), .A0 (nx825), .A1 (nx1016), .B0 (nx828)) ;
    nand02 ix832 (.Y (nx831), .A0 (CurRow_6), .A1 (nx102)) ;
    oai21 ix574 (.Y (nx573), .A0 (nx835), .A1 (nx1016), .B0 (nx837)) ;
    dff ROW_reg_Dout_6 (.Q (CurRow_6), .QB (nx835), .D (nx573), .CLK (CLK)) ;
    nand04 ix838 (.Y (nx837), .A0 (nx118), .A1 (nx831), .A2 (nx1030), .A3 (
           nx1016)) ;
    or02 ix119 (.Y (nx118), .A0 (nx102), .A1 (CurRow_6)) ;
    dff ROW_reg_Dout_7 (.Q (CurRow_7), .QB (nx825), .D (nx583), .CLK (CLK)) ;
    nand02 ix846 (.Y (nx845), .A0 (Stride), .A1 (nx138)) ;
    oai21 ix604 (.Y (nx603), .A0 (nx850), .A1 (nx1016), .B0 (nx852)) ;
    dff COL_reg_Dout_1 (.Q (CurCol_1), .QB (nx850), .D (nx603), .CLK (CLK)) ;
    oai21 ix856 (.Y (nx855), .A0 (CurCol_0), .A1 (Stride), .B0 (nx138)) ;
    oai21 ix614 (.Y (nx613), .A0 (nx861), .A1 (nx1018), .B0 (nx863)) ;
    dff COL_reg_Dout_2 (.Q (CurCol_2), .QB (nx861), .D (nx613), .CLK (CLK)) ;
    nand04 ix864 (.Y (nx863), .A0 (nx336), .A1 (nx1030), .A2 (nx867), .A3 (
           nx1018)) ;
    or02 ix337 (.Y (nx336), .A0 (nx497), .A1 (CurCol_2)) ;
    nand02 ix868 (.Y (nx867), .A0 (CurCol_2), .A1 (nx497)) ;
    inv01 ix871 (.Y (nx870), .A (FilterSize)) ;
    dff COL_reg_Dout_3 (.Q (CurCol_3), .QB (nx872), .D (nx623), .CLK (CLK)) ;
    nor03_2x ix363 (.Y (nx362), .A0 (nx877), .A1 (nx1026), .A2 (nx501)) ;
    aoi22 ix881 (.Y (nx880), .A0 (Instr), .A1 (FirstCycle), .B0 (CacheWindowWR)
          , .B1 (nx882)) ;
    oai21 ix883 (.Y (nx882), .A0 (nx783), .A1 (nx884), .B0 (nx735)) ;
    inv01 ix885 (.Y (nx884), .A (Stride)) ;
    aoi21 ix35 (.Y (nx34), .A0 (nx1022), .A1 (CurRow_0), .B0 (nx1026)) ;
    dff ROW_reg_Dout_3 (.Q (CurRow_3), .QB (nx758), .D (nx543), .CLK (CLK)) ;
    aoi21 ix179 (.Y (nx178), .A0 (nx870), .A1 (nx1022), .B0 (CurRow_2)) ;
    dff STATE_reg_Dout_2 (.Q (MemWR), .QB (\$dummy [3]), .D (nx278), .CLK (CLK)
        ) ;
    nand04 ix905 (.Y (nx904), .A0 (nx372), .A1 (nx1032), .A2 (nx695), .A3 (
           nx1020)) ;
    or02 ix373 (.Y (nx372), .A0 (nx501), .A1 (CurCol_4)) ;
    dff STATE_reg_Dout_4 (.Q (Done), .QB (\$dummy [4]), .D (nx466), .CLK (CLK)
        ) ;
    nor03_2x ix470 (.Y (nx466), .A0 (nx792), .A1 (Start), .A2 (RST)) ;
    oai21 ix495 (.Y (MemAddr[0]), .A0 (nx847), .A1 (nx1034), .B0 (nx913)) ;
    aoi32 ix914 (.Y (nx913), .A0 (nx482), .A1 (nx1002), .A2 (nx916), .B0 (
          CurRow_0), .B1 (nx1008)) ;
    nand02 ix483 (.Y (nx482), .A0 (nx847), .A1 (FilterSize)) ;
    xor2 ix499 (.Y (nx498), .A0 (nx916), .A1 (nx923)) ;
    oai21 ix535 (.Y (MemAddr[2]), .A0 (nx861), .A1 (nx1034), .B0 (nx926)) ;
    aoi32 ix927 (.Y (nx926), .A0 (nx520), .A1 (nx1002), .A2 (nx931), .B0 (
          CurRow_2), .B1 (nx1008)) ;
    nand02 ix521 (.Y (nx520), .A0 (nx929), .A1 (nx861)) ;
    oai21 ix930 (.Y (nx929), .A0 (FilterSize), .A1 (CurCol_0), .B0 (CurCol_1)) ;
    oai21 ix553 (.Y (MemAddr[3]), .A0 (nx872), .A1 (nx1034), .B0 (nx934)) ;
    aoi32 ix935 (.Y (nx934), .A0 (nx538), .A1 (nx1002), .A2 (nx938), .B0 (
          CurRow_3), .B1 (nx1008)) ;
    or02 ix539 (.Y (nx538), .A0 (nx522), .A1 (CurCol_3)) ;
    nand02 ix939 (.Y (nx938), .A0 (CurCol_3), .A1 (nx522)) ;
    oai21 ix571 (.Y (MemAddr[4]), .A0 (nx701), .A1 (nx1034), .B0 (nx941)) ;
    aoi32 ix942 (.Y (nx941), .A0 (nx556), .A1 (nx1004), .A2 (nx944), .B0 (
          CurRow_4), .B1 (nx1008)) ;
    nand02 ix557 (.Y (nx556), .A0 (nx938), .A1 (nx701)) ;
    oai21 ix589 (.Y (MemAddr[5]), .A0 (nx810), .A1 (nx1034), .B0 (nx948)) ;
    aoi32 ix949 (.Y (nx948), .A0 (nx574), .A1 (nx1004), .A2 (nx952), .B0 (
          CurRow_5), .B1 (nx1008)) ;
    or02 ix575 (.Y (nx574), .A0 (nx558), .A1 (CurCol_5)) ;
    nand02 ix953 (.Y (nx952), .A0 (CurCol_5), .A1 (nx558)) ;
    oai21 ix607 (.Y (MemAddr[6]), .A0 (nx805), .A1 (nx1034), .B0 (nx955)) ;
    aoi32 ix956 (.Y (nx955), .A0 (nx592), .A1 (nx1004), .A2 (nx958), .B0 (
          CurRow_6), .B1 (nx1010)) ;
    nand02 ix593 (.Y (nx592), .A0 (nx952), .A1 (nx805)) ;
    oai21 ix623 (.Y (MemAddr[7]), .A0 (nx796), .A1 (nx1034), .B0 (nx962)) ;
    aoi32 ix963 (.Y (nx962), .A0 (nx610), .A1 (nx884), .A2 (nx1004), .B0 (
          CurRow_7), .B1 (nx1010)) ;
    ao32 ix641 (.Y (MemAddr[8]), .A0 (nx626), .A1 (CurRow_0), .A2 (nx900), .B0 (
         nx1004), .B1 (nx968)) ;
    xnor2 ix645 (.Y (nx644), .A0 (nx968), .A1 (nx164)) ;
    oai21 ix667 (.Y (nx666), .A0 (nx768), .A1 (nx975), .B0 (nx660)) ;
    aoi21 ix976 (.Y (nx975), .A0 (CurRow_0), .A1 (nx870), .B0 (nx1024)) ;
    nand02 ix661 (.Y (nx660), .A0 (nx975), .A1 (nx768)) ;
    oai22 ix687 (.Y (MemAddr[11]), .A0 (nx1066), .A1 (nx979), .B0 (nx758), .B1 (
          nx1036)) ;
    aoi21 ix980 (.Y (nx979), .A0 (CurRow_3), .A1 (nx660), .B0 (nx981)) ;
    oai21 ix695 (.Y (nx694), .A0 (nx752), .A1 (nx981), .B0 (nx688)) ;
    nand02 ix689 (.Y (nx688), .A0 (nx981), .A1 (nx752)) ;
    oai22 ix715 (.Y (MemAddr[13]), .A0 (nx1066), .A1 (nx987), .B0 (nx743), .B1 (
          nx1036)) ;
    aoi21 ix988 (.Y (nx987), .A0 (CurRow_5), .A1 (nx688), .B0 (nx989)) ;
    oai22 ix729 (.Y (MemAddr[14]), .A0 (nx1066), .A1 (nx992), .B0 (nx835), .B1 (
          nx1036)) ;
    nand02 ix717 (.Y (nx716), .A0 (nx989), .A1 (nx835)) ;
    inv01 ix959 (.Y (nx958), .A (nx594)) ;
    inv01 ix945 (.Y (nx944), .A (nx558)) ;
    inv01 ix932 (.Y (nx931), .A (nx522)) ;
    inv01 ix233 (.Y (nx232), .A (nx880)) ;
    inv01 ix227 (.Y (nx226), .A (nx882)) ;
    inv01 ix189 (.Y (nx188), .A (nx735)) ;
    inv01 ix463 (.Y (nx483), .A (nx792)) ;
    inv01 ix901 (.Y (nx900), .A (MemAddr[17])) ;
    inv02 ix1001 (.Y (nx1002), .A (nx1066)) ;
    inv02 ix1003 (.Y (nx1004), .A (nx1066)) ;
    inv01 ix1007 (.Y (nx1008), .A (nx900)) ;
    inv01 ix1009 (.Y (nx1010), .A (nx900)) ;
    inv02 ix1013 (.Y (nx1014), .A (nx1012)) ;
    inv02 ix1015 (.Y (nx1016), .A (nx1070)) ;
    inv02 ix1017 (.Y (nx1018), .A (nx1070)) ;
    inv02 ix1019 (.Y (nx1020), .A (nx1070)) ;
    inv02 ix1021 (.Y (nx1022), .A (nx777)) ;
    inv02 ix1023 (.Y (nx1024), .A (nx777)) ;
    inv02 ix1025 (.Y (nx1026), .A (nx1032)) ;
    inv02 ix1029 (.Y (nx1030), .A (nx14)) ;
    inv02 ix1031 (.Y (nx1032), .A (nx1064)) ;
    inv02 ix1033 (.Y (nx1034), .A (nx476)) ;
    inv02 ix1035 (.Y (nx1036), .A (nx476)) ;
    nor02ii ix209 (.Y (MemAddr[17]), .A0 (CacheWindowWR), .A1 (nx1066)) ;
    mux21_ni ix644 (.Y (nx643), .A0 (nx400), .A1 (CurCol_5), .S0 (nx1070)) ;
    and02 ix694 (.Y (nx693), .A0 (nx810), .A1 (nx695)) ;
    nor03_2x ix295 (.Y (nx1012), .A0 (nx1042), .A1 (nx1064), .A2 (MemWR)) ;
    inv01 ix1041 (.Y (nx1042), .A (nx705)) ;
    nor02ii ix197 (.Y (nx196), .A0 (nx713), .A1 (nx681)) ;
    and04 ix215 (.Y (FirstCycle), .A0 (Start), .A1 (nx1044), .A2 (nx814), .A3 (
          MemAddr[17])) ;
    inv01 ix1043 (.Y (nx1044), .A (Calc)) ;
    nor02ii ix267 (.Y (nx266), .A0 (nx725), .A1 (nx681)) ;
    nor02ii ix249 (.Y (nx248), .A0 (nx733), .A1 (nx681)) ;
    and03 ix163 (.Y (nx162), .A0 (nx743), .A1 (nx825), .A2 (nx835)) ;
    or04 ix746 (.Y (nx745), .A0 (nx1046), .A1 (nx102), .A2 (nx1064), .A3 (nx1070
         )) ;
    nor02ii ix101 (.Y (nx1046), .A0 (CurRow_5), .A1 (nx748)) ;
    nor02ii ix81 (.Y (nx491), .A0 (nx764), .A1 (CurRow_3)) ;
    or04 ix762 (.Y (nx761), .A0 (nx1048), .A1 (nx491), .A2 (nx1064), .A3 (nx1070
         )) ;
    nor02ii ix65 (.Y (nx1048), .A0 (CurRow_3), .A1 (nx764)) ;
    or03 ix765 (.Y (nx764), .A0 (nx768), .A1 (nx777), .A2 (nx783)) ;
    or02 ix774 (.Y (nx773), .A0 (nx777), .A1 (nx783)) ;
    mux21 ix524 (.Y (nx523), .A0 (nx779), .A1 (nx777), .S0 (nx1070)) ;
    or03 ix786 (.Y (nx785), .A0 (CurRow_0), .A1 (nx1064), .A2 (nx1072)) ;
    xor2 ix427 (.Y (nx426), .A0 (nx796), .A1 (nx801)) ;
    mux21 ix654 (.Y (nx653), .A0 (nx807), .A1 (nx805), .S0 (nx1072)) ;
    nor02ii ix393 (.Y (nx392), .A0 (nx695), .A1 (CurCol_5)) ;
    mux21_ni ix594 (.Y (nx593), .A0 (nx300), .A1 (CurCol_0), .S0 (nx1072)) ;
    nor02ii ix301 (.Y (nx300), .A0 (nx822), .A1 (nx1032)) ;
    nor02ii ix139 (.Y (nx138), .A0 (nx831), .A1 (CurRow_7)) ;
    or04 ix829 (.Y (nx828), .A0 (nx1050), .A1 (nx1064), .A2 (nx138), .A3 (nx1072
         )) ;
    nor02ii ix137 (.Y (nx1050), .A0 (CurRow_7), .A1 (nx831)) ;
    nor02ii ix103 (.Y (nx102), .A0 (nx748), .A1 (CurRow_5)) ;
    xor2 ix311 (.Y (nx495), .A0 (nx847), .A1 (nx845)) ;
    or04 ix853 (.Y (nx852), .A0 (nx1052), .A1 (nx1064), .A2 (nx497), .A3 (nx1072
         )) ;
    nor02ii ix319 (.Y (nx1052), .A0 (CurCol_1), .A1 (nx855)) ;
    nor02ii ix335 (.Y (nx497), .A0 (nx855), .A1 (CurCol_1)) ;
    or03 ix453 (.Y (nx452), .A0 (CurCol_1), .A1 (FilterSize), .A2 (CurCol_0)) ;
    mux21_ni ix624 (.Y (nx623), .A0 (nx362), .A1 (CurCol_3), .S0 (nx1072)) ;
    and02 ix878 (.Y (nx877), .A0 (nx872), .A1 (nx867)) ;
    nor02ii ix371 (.Y (nx501), .A0 (nx867), .A1 (CurCol_3)) ;
    or02 ix917 (.Y (nx916), .A0 (FilterSize), .A1 (nx847)) ;
    oai222 ix920 (.Y (MemAddr[1]), .A0 (nx1066), .A1 (nx1054), .B0 (nx850), .B1 (
           nx1036), .C0 (nx777), .C1 (nx900)) ;
    inv01 ix1053 (.Y (nx1054), .A (nx498)) ;
    and02 ix477 (.Y (nx476), .A0 (nx1068), .A1 (CacheWindowWR)) ;
    xor2 ix924 (.Y (nx923), .A0 (FilterSize), .A1 (nx850)) ;
    nor02ii ix523 (.Y (nx522), .A0 (nx929), .A1 (CurCol_2)) ;
    nor02ii ix559 (.Y (nx558), .A0 (nx938), .A1 (CurCol_4)) ;
    xor2 ix611 (.Y (nx610), .A0 (nx594), .A1 (CurCol_7)) ;
    nor02ii ix595 (.Y (nx594), .A0 (nx952), .A1 (CurCol_6)) ;
    or02 ix627 (.Y (nx626), .A0 (nx1068), .A1 (FilterSize)) ;
    nor02ii ix969 (.Y (nx968), .A0 (FilterSize), .A1 (nx783)) ;
    oai22 ix649 (.Y (MemAddr[9]), .A0 (nx1068), .A1 (nx1056), .B0 (nx777), .B1 (
          nx1036)) ;
    inv01 ix1055 (.Y (nx1056), .A (nx644)) ;
    xor2 ix165 (.Y (nx164), .A0 (FilterSize), .A1 (nx777)) ;
    oai22 ix673 (.Y (MemAddr[10]), .A0 (nx1068), .A1 (nx1058), .B0 (nx768), .B1 (
          nx1036)) ;
    inv01 ix1057 (.Y (nx1058), .A (nx666)) ;
    nor02ii ix982 (.Y (nx981), .A0 (nx660), .A1 (nx758)) ;
    oai22 ix701 (.Y (MemAddr[12]), .A0 (nx1068), .A1 (nx1060), .B0 (nx752), .B1 (
          nx1036)) ;
    inv01 ix1059 (.Y (nx1060), .A (nx694)) ;
    nor02ii ix990 (.Y (nx989), .A0 (nx688), .A1 (nx743)) ;
    xor2 ix993 (.Y (nx992), .A0 (nx835), .A1 (nx989)) ;
    oai32 ix741 (.Y (MemAddr[15]), .A0 (nx1062), .A1 (Stride), .A2 (nx1068), .B0 (
          nx825), .B1 (nx1036)) ;
    xnor2 ix731 (.Y (nx1062), .A0 (nx825), .A1 (nx716)) ;
    inv02 ix1063 (.Y (nx1064), .A (nx1030)) ;
    inv02 ix1065 (.Y (nx1066), .A (MemWR)) ;
    inv02 ix1067 (.Y (nx1068), .A (MemWR)) ;
    inv02 ix1069 (.Y (nx1070), .A (nx1014)) ;
    inv02 ix1071 (.Y (nx1072), .A (nx1014)) ;
endmodule

