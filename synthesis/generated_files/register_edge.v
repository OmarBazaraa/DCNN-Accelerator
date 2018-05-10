//
// Verilog description for cell register_edge_rising, 
// Wed May  9 07:35:57 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module register_edge_rising ( CLK, RST, EN, Din, Dout ) ;

    input CLK ;
    input RST ;
    input EN ;
    input [31:0]Din ;
    output [31:0]Dout ;

    wire nx702, nx712, nx722, nx732, nx742, nx752, nx762, nx772, nx782, nx792, 
         nx802, nx812, nx822, nx832, nx842, nx852, nx862, nx872, nx882, nx892, 
         nx902, nx912, nx922, nx932, nx942, nx952, nx962, nx972, nx982, nx992, 
         nx1002, nx1012, nx1026, nx1127, nx1129, nx1131, nx1133, nx1135, nx1137, 
         nx1139, nx1141, nx1143, nx1145, nx1147;
    wire [31:0] \$dummy ;




    dff reg_Dout_0 (.Q (Dout[0]), .QB (\$dummy [0]), .D (nx702), .CLK (CLK)) ;
    ao32 ix703 (.Y (nx702), .A0 (Din[0]), .A1 (nx1127), .A2 (EN), .B0 (Dout[0])
         , .B1 (nx1139)) ;
    nor02_2x ix1027 (.Y (nx1026), .A0 (RST), .A1 (EN)) ;
    dff reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [1]), .D (nx712), .CLK (CLK)) ;
    ao32 ix713 (.Y (nx712), .A0 (Din[1]), .A1 (nx1127), .A2 (EN), .B0 (Dout[1])
         , .B1 (nx1139)) ;
    dff reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [2]), .D (nx722), .CLK (CLK)) ;
    ao32 ix723 (.Y (nx722), .A0 (Din[2]), .A1 (nx1127), .A2 (EN), .B0 (Dout[2])
         , .B1 (nx1139)) ;
    dff reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [3]), .D (nx732), .CLK (CLK)) ;
    ao32 ix733 (.Y (nx732), .A0 (Din[3]), .A1 (nx1127), .A2 (EN), .B0 (Dout[3])
         , .B1 (nx1139)) ;
    dff reg_Dout_4 (.Q (Dout[4]), .QB (\$dummy [4]), .D (nx742), .CLK (CLK)) ;
    ao32 ix743 (.Y (nx742), .A0 (Din[4]), .A1 (nx1127), .A2 (EN), .B0 (Dout[4])
         , .B1 (nx1139)) ;
    dff reg_Dout_5 (.Q (Dout[5]), .QB (\$dummy [5]), .D (nx752), .CLK (CLK)) ;
    ao32 ix753 (.Y (nx752), .A0 (Din[5]), .A1 (nx1127), .A2 (EN), .B0 (Dout[5])
         , .B1 (nx1139)) ;
    dff reg_Dout_6 (.Q (Dout[6]), .QB (\$dummy [6]), .D (nx762), .CLK (CLK)) ;
    ao32 ix763 (.Y (nx762), .A0 (Din[6]), .A1 (nx1127), .A2 (EN), .B0 (Dout[6])
         , .B1 (nx1139)) ;
    dff reg_Dout_7 (.Q (Dout[7]), .QB (\$dummy [7]), .D (nx772), .CLK (CLK)) ;
    ao32 ix773 (.Y (nx772), .A0 (Din[7]), .A1 (nx1129), .A2 (EN), .B0 (Dout[7])
         , .B1 (nx1141)) ;
    dff reg_Dout_8 (.Q (Dout[8]), .QB (\$dummy [8]), .D (nx782), .CLK (CLK)) ;
    ao32 ix783 (.Y (nx782), .A0 (Din[8]), .A1 (nx1129), .A2 (EN), .B0 (Dout[8])
         , .B1 (nx1141)) ;
    dff reg_Dout_9 (.Q (Dout[9]), .QB (\$dummy [9]), .D (nx792), .CLK (CLK)) ;
    ao32 ix793 (.Y (nx792), .A0 (Din[9]), .A1 (nx1129), .A2 (EN), .B0 (Dout[9])
         , .B1 (nx1141)) ;
    dff reg_Dout_10 (.Q (Dout[10]), .QB (\$dummy [10]), .D (nx802), .CLK (CLK)
        ) ;
    ao32 ix803 (.Y (nx802), .A0 (Din[10]), .A1 (nx1129), .A2 (EN), .B0 (Dout[10]
         ), .B1 (nx1141)) ;
    dff reg_Dout_11 (.Q (Dout[11]), .QB (\$dummy [11]), .D (nx812), .CLK (CLK)
        ) ;
    ao32 ix813 (.Y (nx812), .A0 (Din[11]), .A1 (nx1129), .A2 (EN), .B0 (Dout[11]
         ), .B1 (nx1141)) ;
    dff reg_Dout_12 (.Q (Dout[12]), .QB (\$dummy [12]), .D (nx822), .CLK (CLK)
        ) ;
    ao32 ix823 (.Y (nx822), .A0 (Din[12]), .A1 (nx1129), .A2 (EN), .B0 (Dout[12]
         ), .B1 (nx1141)) ;
    dff reg_Dout_13 (.Q (Dout[13]), .QB (\$dummy [13]), .D (nx832), .CLK (CLK)
        ) ;
    ao32 ix833 (.Y (nx832), .A0 (Din[13]), .A1 (nx1129), .A2 (EN), .B0 (Dout[13]
         ), .B1 (nx1141)) ;
    dff reg_Dout_14 (.Q (Dout[14]), .QB (\$dummy [14]), .D (nx842), .CLK (CLK)
        ) ;
    ao32 ix843 (.Y (nx842), .A0 (Din[14]), .A1 (nx1131), .A2 (EN), .B0 (Dout[14]
         ), .B1 (nx1143)) ;
    dff reg_Dout_15 (.Q (Dout[15]), .QB (\$dummy [15]), .D (nx852), .CLK (CLK)
        ) ;
    ao32 ix853 (.Y (nx852), .A0 (Din[15]), .A1 (nx1131), .A2 (EN), .B0 (Dout[15]
         ), .B1 (nx1143)) ;
    dff reg_Dout_16 (.Q (Dout[16]), .QB (\$dummy [16]), .D (nx862), .CLK (CLK)
        ) ;
    ao32 ix863 (.Y (nx862), .A0 (Din[16]), .A1 (nx1131), .A2 (EN), .B0 (Dout[16]
         ), .B1 (nx1143)) ;
    dff reg_Dout_17 (.Q (Dout[17]), .QB (\$dummy [17]), .D (nx872), .CLK (CLK)
        ) ;
    ao32 ix873 (.Y (nx872), .A0 (Din[17]), .A1 (nx1131), .A2 (EN), .B0 (Dout[17]
         ), .B1 (nx1143)) ;
    dff reg_Dout_18 (.Q (Dout[18]), .QB (\$dummy [18]), .D (nx882), .CLK (CLK)
        ) ;
    ao32 ix883 (.Y (nx882), .A0 (Din[18]), .A1 (nx1131), .A2 (EN), .B0 (Dout[18]
         ), .B1 (nx1143)) ;
    dff reg_Dout_19 (.Q (Dout[19]), .QB (\$dummy [19]), .D (nx892), .CLK (CLK)
        ) ;
    ao32 ix893 (.Y (nx892), .A0 (Din[19]), .A1 (nx1131), .A2 (EN), .B0 (Dout[19]
         ), .B1 (nx1143)) ;
    dff reg_Dout_20 (.Q (Dout[20]), .QB (\$dummy [20]), .D (nx902), .CLK (CLK)
        ) ;
    ao32 ix903 (.Y (nx902), .A0 (Din[20]), .A1 (nx1131), .A2 (EN), .B0 (Dout[20]
         ), .B1 (nx1143)) ;
    dff reg_Dout_21 (.Q (Dout[21]), .QB (\$dummy [21]), .D (nx912), .CLK (CLK)
        ) ;
    ao32 ix913 (.Y (nx912), .A0 (Din[21]), .A1 (nx1133), .A2 (EN), .B0 (Dout[21]
         ), .B1 (nx1145)) ;
    dff reg_Dout_22 (.Q (Dout[22]), .QB (\$dummy [22]), .D (nx922), .CLK (CLK)
        ) ;
    ao32 ix923 (.Y (nx922), .A0 (Din[22]), .A1 (nx1133), .A2 (EN), .B0 (Dout[22]
         ), .B1 (nx1145)) ;
    dff reg_Dout_23 (.Q (Dout[23]), .QB (\$dummy [23]), .D (nx932), .CLK (CLK)
        ) ;
    ao32 ix933 (.Y (nx932), .A0 (Din[23]), .A1 (nx1133), .A2 (EN), .B0 (Dout[23]
         ), .B1 (nx1145)) ;
    dff reg_Dout_24 (.Q (Dout[24]), .QB (\$dummy [24]), .D (nx942), .CLK (CLK)
        ) ;
    ao32 ix943 (.Y (nx942), .A0 (Din[24]), .A1 (nx1133), .A2 (EN), .B0 (Dout[24]
         ), .B1 (nx1145)) ;
    dff reg_Dout_25 (.Q (Dout[25]), .QB (\$dummy [25]), .D (nx952), .CLK (CLK)
        ) ;
    ao32 ix953 (.Y (nx952), .A0 (Din[25]), .A1 (nx1133), .A2 (EN), .B0 (Dout[25]
         ), .B1 (nx1145)) ;
    dff reg_Dout_26 (.Q (Dout[26]), .QB (\$dummy [26]), .D (nx962), .CLK (CLK)
        ) ;
    ao32 ix963 (.Y (nx962), .A0 (Din[26]), .A1 (nx1133), .A2 (EN), .B0 (Dout[26]
         ), .B1 (nx1145)) ;
    dff reg_Dout_27 (.Q (Dout[27]), .QB (\$dummy [27]), .D (nx972), .CLK (CLK)
        ) ;
    ao32 ix973 (.Y (nx972), .A0 (Din[27]), .A1 (nx1133), .A2 (EN), .B0 (Dout[27]
         ), .B1 (nx1145)) ;
    dff reg_Dout_28 (.Q (Dout[28]), .QB (\$dummy [28]), .D (nx982), .CLK (CLK)
        ) ;
    ao32 ix983 (.Y (nx982), .A0 (Din[28]), .A1 (nx1135), .A2 (EN), .B0 (Dout[28]
         ), .B1 (nx1147)) ;
    dff reg_Dout_29 (.Q (Dout[29]), .QB (\$dummy [29]), .D (nx992), .CLK (CLK)
        ) ;
    ao32 ix993 (.Y (nx992), .A0 (Din[29]), .A1 (nx1135), .A2 (EN), .B0 (Dout[29]
         ), .B1 (nx1147)) ;
    dff reg_Dout_30 (.Q (Dout[30]), .QB (\$dummy [30]), .D (nx1002), .CLK (CLK)
        ) ;
    ao32 ix1003 (.Y (nx1002), .A0 (Din[30]), .A1 (nx1135), .A2 (EN), .B0 (
         Dout[30]), .B1 (nx1147)) ;
    dff reg_Dout_31 (.Q (Dout[31]), .QB (\$dummy [31]), .D (nx1012), .CLK (CLK)
        ) ;
    ao32 ix1013 (.Y (nx1012), .A0 (Din[31]), .A1 (nx1135), .A2 (EN), .B0 (
         Dout[31]), .B1 (nx1147)) ;
    inv02 ix1126 (.Y (nx1127), .A (RST)) ;
    inv02 ix1128 (.Y (nx1129), .A (RST)) ;
    inv02 ix1130 (.Y (nx1131), .A (RST)) ;
    inv02 ix1132 (.Y (nx1133), .A (RST)) ;
    inv02 ix1134 (.Y (nx1135), .A (RST)) ;
    inv01 ix1136 (.Y (nx1137), .A (nx1026)) ;
    inv02 ix1138 (.Y (nx1139), .A (nx1137)) ;
    inv02 ix1140 (.Y (nx1141), .A (nx1137)) ;
    inv02 ix1142 (.Y (nx1143), .A (nx1137)) ;
    inv02 ix1144 (.Y (nx1145), .A (nx1137)) ;
    inv02 ix1146 (.Y (nx1147), .A (nx1137)) ;
endmodule

