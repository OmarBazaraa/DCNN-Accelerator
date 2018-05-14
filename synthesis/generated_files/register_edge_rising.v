//
// Verilog description for cell register_edge_rising, 
// Sat May 12 15:08:50 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module register_edge_rising ( CLK, RST, EN, Din, Dout ) ;

    input CLK ;
    input RST ;
    input EN ;
    input [31:0]Din ;
    output [31:0]Dout ;

    wire nx692, nx702, nx712, nx722, nx732, nx742, nx752, nx762, nx772, nx782, 
         nx792, nx802, nx812, nx822, nx832, nx842, nx852, nx862, nx872, nx882, 
         nx892, nx902, nx912, nx922, nx932, nx942, nx952, nx962, nx972, nx982, 
         nx992, nx1002, nx1016, nx1229, nx1233, nx1235, nx1237, nx1239, nx1241, 
         nx1243, nx1245, nx1247, nx1249, nx1251, nx1253, nx1255, nx1257, nx1259, 
         nx1261, nx1263, nx1265, nx1267, nx1269, nx1271, nx1273, nx1275, nx1277, 
         nx1279, nx1281, nx1283, nx1285, nx1287, nx1289, nx1291, nx1293, nx1295, 
         nx1297, nx1299, nx1301, nx1303, nx1305, nx1307, nx1309, nx1311, nx1313, 
         nx1315, nx1317, nx1319, nx1321, nx1323, nx1325, nx1327, nx1329, nx1331, 
         nx1333, nx1335, nx1337, nx1339, nx1341, nx1343, nx1345, nx1347, nx1349, 
         nx1351, nx1353, nx1355, nx1357, nx1359, nx1361, nx1363, nx1365, nx1367, 
         nx1369, nx1371, nx1373, nx1375, nx1377;
    wire [31:0] \$dummy ;




    dff reg_Dout_0 (.Q (Dout[0]), .QB (\$dummy [0]), .D (nx692), .CLK (CLK)) ;
    nor02_2x ix1017 (.Y (nx1016), .A0 (RST), .A1 (EN)) ;
    dff reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [1]), .D (nx702), .CLK (CLK)) ;
    dff reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [2]), .D (nx712), .CLK (CLK)) ;
    dff reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [3]), .D (nx722), .CLK (CLK)) ;
    dff reg_Dout_4 (.Q (Dout[4]), .QB (\$dummy [4]), .D (nx732), .CLK (CLK)) ;
    dff reg_Dout_5 (.Q (Dout[5]), .QB (\$dummy [5]), .D (nx742), .CLK (CLK)) ;
    dff reg_Dout_6 (.Q (Dout[6]), .QB (\$dummy [6]), .D (nx752), .CLK (CLK)) ;
    dff reg_Dout_7 (.Q (Dout[7]), .QB (\$dummy [7]), .D (nx762), .CLK (CLK)) ;
    dff reg_Dout_8 (.Q (Dout[8]), .QB (\$dummy [8]), .D (nx772), .CLK (CLK)) ;
    dff reg_Dout_9 (.Q (Dout[9]), .QB (\$dummy [9]), .D (nx782), .CLK (CLK)) ;
    dff reg_Dout_10 (.Q (Dout[10]), .QB (\$dummy [10]), .D (nx792), .CLK (CLK)
        ) ;
    dff reg_Dout_11 (.Q (Dout[11]), .QB (\$dummy [11]), .D (nx802), .CLK (CLK)
        ) ;
    dff reg_Dout_12 (.Q (Dout[12]), .QB (\$dummy [12]), .D (nx812), .CLK (CLK)
        ) ;
    dff reg_Dout_13 (.Q (Dout[13]), .QB (\$dummy [13]), .D (nx822), .CLK (CLK)
        ) ;
    dff reg_Dout_14 (.Q (Dout[14]), .QB (\$dummy [14]), .D (nx832), .CLK (CLK)
        ) ;
    dff reg_Dout_15 (.Q (Dout[15]), .QB (\$dummy [15]), .D (nx842), .CLK (CLK)
        ) ;
    dff reg_Dout_16 (.Q (Dout[16]), .QB (\$dummy [16]), .D (nx852), .CLK (CLK)
        ) ;
    dff reg_Dout_17 (.Q (Dout[17]), .QB (\$dummy [17]), .D (nx862), .CLK (CLK)
        ) ;
    dff reg_Dout_18 (.Q (Dout[18]), .QB (\$dummy [18]), .D (nx872), .CLK (CLK)
        ) ;
    dff reg_Dout_19 (.Q (Dout[19]), .QB (\$dummy [19]), .D (nx882), .CLK (CLK)
        ) ;
    dff reg_Dout_20 (.Q (Dout[20]), .QB (\$dummy [20]), .D (nx892), .CLK (CLK)
        ) ;
    dff reg_Dout_21 (.Q (Dout[21]), .QB (\$dummy [21]), .D (nx902), .CLK (CLK)
        ) ;
    dff reg_Dout_22 (.Q (Dout[22]), .QB (\$dummy [22]), .D (nx912), .CLK (CLK)
        ) ;
    dff reg_Dout_23 (.Q (Dout[23]), .QB (\$dummy [23]), .D (nx922), .CLK (CLK)
        ) ;
    dff reg_Dout_24 (.Q (Dout[24]), .QB (\$dummy [24]), .D (nx932), .CLK (CLK)
        ) ;
    dff reg_Dout_25 (.Q (Dout[25]), .QB (\$dummy [25]), .D (nx942), .CLK (CLK)
        ) ;
    dff reg_Dout_26 (.Q (Dout[26]), .QB (\$dummy [26]), .D (nx952), .CLK (CLK)
        ) ;
    dff reg_Dout_27 (.Q (Dout[27]), .QB (\$dummy [27]), .D (nx962), .CLK (CLK)
        ) ;
    dff reg_Dout_28 (.Q (Dout[28]), .QB (\$dummy [28]), .D (nx972), .CLK (CLK)
        ) ;
    dff reg_Dout_29 (.Q (Dout[29]), .QB (\$dummy [29]), .D (nx982), .CLK (CLK)
        ) ;
    dff reg_Dout_30 (.Q (Dout[30]), .QB (\$dummy [30]), .D (nx992), .CLK (CLK)
        ) ;
    dff reg_Dout_31 (.Q (Dout[31]), .QB (\$dummy [31]), .D (nx1002), .CLK (CLK)
        ) ;
    oai32 ix693 (.Y (nx692), .A0 (nx1229), .A1 (RST), .A2 (nx1369), .B0 (nx1233)
          , .B1 (nx1359)) ;
    inv01 ix1228 (.Y (nx1229), .A (Din[0])) ;
    inv01 ix1232 (.Y (nx1233), .A (Dout[0])) ;
    oai32 ix703 (.Y (nx702), .A0 (nx1235), .A1 (RST), .A2 (nx1369), .B0 (nx1237)
          , .B1 (nx1359)) ;
    inv01 ix1234 (.Y (nx1235), .A (Din[1])) ;
    inv01 ix1236 (.Y (nx1237), .A (Dout[1])) ;
    oai32 ix713 (.Y (nx712), .A0 (nx1239), .A1 (RST), .A2 (nx1369), .B0 (nx1241)
          , .B1 (nx1359)) ;
    inv01 ix1238 (.Y (nx1239), .A (Din[2])) ;
    inv01 ix1240 (.Y (nx1241), .A (Dout[2])) ;
    oai32 ix723 (.Y (nx722), .A0 (nx1243), .A1 (RST), .A2 (nx1369), .B0 (nx1245)
          , .B1 (nx1359)) ;
    inv01 ix1242 (.Y (nx1243), .A (Din[3])) ;
    inv01 ix1244 (.Y (nx1245), .A (Dout[3])) ;
    oai32 ix733 (.Y (nx732), .A0 (nx1247), .A1 (RST), .A2 (nx1369), .B0 (nx1249)
          , .B1 (nx1359)) ;
    inv01 ix1246 (.Y (nx1247), .A (Din[4])) ;
    inv01 ix1248 (.Y (nx1249), .A (Dout[4])) ;
    oai32 ix743 (.Y (nx742), .A0 (nx1251), .A1 (RST), .A2 (nx1369), .B0 (nx1253)
          , .B1 (nx1359)) ;
    inv01 ix1250 (.Y (nx1251), .A (Din[5])) ;
    inv01 ix1252 (.Y (nx1253), .A (Dout[5])) ;
    oai32 ix753 (.Y (nx752), .A0 (nx1255), .A1 (RST), .A2 (nx1369), .B0 (nx1257)
          , .B1 (nx1359)) ;
    inv01 ix1254 (.Y (nx1255), .A (Din[6])) ;
    inv01 ix1256 (.Y (nx1257), .A (Dout[6])) ;
    oai32 ix763 (.Y (nx762), .A0 (nx1259), .A1 (RST), .A2 (nx1371), .B0 (nx1261)
          , .B1 (nx1361)) ;
    inv01 ix1258 (.Y (nx1259), .A (Din[7])) ;
    inv01 ix1260 (.Y (nx1261), .A (Dout[7])) ;
    oai32 ix773 (.Y (nx772), .A0 (nx1263), .A1 (RST), .A2 (nx1371), .B0 (nx1265)
          , .B1 (nx1361)) ;
    inv01 ix1262 (.Y (nx1263), .A (Din[8])) ;
    inv01 ix1264 (.Y (nx1265), .A (Dout[8])) ;
    oai32 ix783 (.Y (nx782), .A0 (nx1267), .A1 (RST), .A2 (nx1371), .B0 (nx1269)
          , .B1 (nx1361)) ;
    inv01 ix1266 (.Y (nx1267), .A (Din[9])) ;
    inv01 ix1268 (.Y (nx1269), .A (Dout[9])) ;
    oai32 ix793 (.Y (nx792), .A0 (nx1271), .A1 (RST), .A2 (nx1371), .B0 (nx1273)
          , .B1 (nx1361)) ;
    inv01 ix1270 (.Y (nx1271), .A (Din[10])) ;
    inv01 ix1272 (.Y (nx1273), .A (Dout[10])) ;
    oai32 ix803 (.Y (nx802), .A0 (nx1275), .A1 (RST), .A2 (nx1371), .B0 (nx1277)
          , .B1 (nx1361)) ;
    inv01 ix1274 (.Y (nx1275), .A (Din[11])) ;
    inv01 ix1276 (.Y (nx1277), .A (Dout[11])) ;
    oai32 ix813 (.Y (nx812), .A0 (nx1279), .A1 (RST), .A2 (nx1371), .B0 (nx1281)
          , .B1 (nx1361)) ;
    inv01 ix1278 (.Y (nx1279), .A (Din[12])) ;
    inv01 ix1280 (.Y (nx1281), .A (Dout[12])) ;
    oai32 ix823 (.Y (nx822), .A0 (nx1283), .A1 (RST), .A2 (nx1371), .B0 (nx1285)
          , .B1 (nx1361)) ;
    inv01 ix1282 (.Y (nx1283), .A (Din[13])) ;
    inv01 ix1284 (.Y (nx1285), .A (Dout[13])) ;
    oai32 ix833 (.Y (nx832), .A0 (nx1287), .A1 (RST), .A2 (nx1373), .B0 (nx1289)
          , .B1 (nx1363)) ;
    inv01 ix1286 (.Y (nx1287), .A (Din[14])) ;
    inv01 ix1288 (.Y (nx1289), .A (Dout[14])) ;
    oai32 ix843 (.Y (nx842), .A0 (nx1291), .A1 (RST), .A2 (nx1373), .B0 (nx1293)
          , .B1 (nx1363)) ;
    inv01 ix1290 (.Y (nx1291), .A (Din[15])) ;
    inv01 ix1292 (.Y (nx1293), .A (Dout[15])) ;
    oai32 ix853 (.Y (nx852), .A0 (nx1295), .A1 (RST), .A2 (nx1373), .B0 (nx1297)
          , .B1 (nx1363)) ;
    inv01 ix1294 (.Y (nx1295), .A (Din[16])) ;
    inv01 ix1296 (.Y (nx1297), .A (Dout[16])) ;
    oai32 ix863 (.Y (nx862), .A0 (nx1299), .A1 (RST), .A2 (nx1373), .B0 (nx1301)
          , .B1 (nx1363)) ;
    inv01 ix1298 (.Y (nx1299), .A (Din[17])) ;
    inv01 ix1300 (.Y (nx1301), .A (Dout[17])) ;
    oai32 ix873 (.Y (nx872), .A0 (nx1303), .A1 (RST), .A2 (nx1373), .B0 (nx1305)
          , .B1 (nx1363)) ;
    inv01 ix1302 (.Y (nx1303), .A (Din[18])) ;
    inv01 ix1304 (.Y (nx1305), .A (Dout[18])) ;
    oai32 ix883 (.Y (nx882), .A0 (nx1307), .A1 (RST), .A2 (nx1373), .B0 (nx1309)
          , .B1 (nx1363)) ;
    inv01 ix1306 (.Y (nx1307), .A (Din[19])) ;
    inv01 ix1308 (.Y (nx1309), .A (Dout[19])) ;
    oai32 ix893 (.Y (nx892), .A0 (nx1311), .A1 (RST), .A2 (nx1373), .B0 (nx1313)
          , .B1 (nx1363)) ;
    inv01 ix1310 (.Y (nx1311), .A (Din[20])) ;
    inv01 ix1312 (.Y (nx1313), .A (Dout[20])) ;
    oai32 ix903 (.Y (nx902), .A0 (nx1315), .A1 (RST), .A2 (nx1375), .B0 (nx1317)
          , .B1 (nx1365)) ;
    inv01 ix1314 (.Y (nx1315), .A (Din[21])) ;
    inv01 ix1316 (.Y (nx1317), .A (Dout[21])) ;
    oai32 ix913 (.Y (nx912), .A0 (nx1319), .A1 (RST), .A2 (nx1375), .B0 (nx1321)
          , .B1 (nx1365)) ;
    inv01 ix1318 (.Y (nx1319), .A (Din[22])) ;
    inv01 ix1320 (.Y (nx1321), .A (Dout[22])) ;
    oai32 ix923 (.Y (nx922), .A0 (nx1323), .A1 (RST), .A2 (nx1375), .B0 (nx1325)
          , .B1 (nx1365)) ;
    inv01 ix1322 (.Y (nx1323), .A (Din[23])) ;
    inv01 ix1324 (.Y (nx1325), .A (Dout[23])) ;
    oai32 ix933 (.Y (nx932), .A0 (nx1327), .A1 (RST), .A2 (nx1375), .B0 (nx1329)
          , .B1 (nx1365)) ;
    inv01 ix1326 (.Y (nx1327), .A (Din[24])) ;
    inv01 ix1328 (.Y (nx1329), .A (Dout[24])) ;
    oai32 ix943 (.Y (nx942), .A0 (nx1331), .A1 (RST), .A2 (nx1375), .B0 (nx1333)
          , .B1 (nx1365)) ;
    inv01 ix1330 (.Y (nx1331), .A (Din[25])) ;
    inv01 ix1332 (.Y (nx1333), .A (Dout[25])) ;
    oai32 ix953 (.Y (nx952), .A0 (nx1335), .A1 (RST), .A2 (nx1375), .B0 (nx1337)
          , .B1 (nx1365)) ;
    inv01 ix1334 (.Y (nx1335), .A (Din[26])) ;
    inv01 ix1336 (.Y (nx1337), .A (Dout[26])) ;
    oai32 ix963 (.Y (nx962), .A0 (nx1339), .A1 (RST), .A2 (nx1375), .B0 (nx1341)
          , .B1 (nx1365)) ;
    inv01 ix1338 (.Y (nx1339), .A (Din[27])) ;
    inv01 ix1340 (.Y (nx1341), .A (Dout[27])) ;
    oai32 ix973 (.Y (nx972), .A0 (nx1343), .A1 (RST), .A2 (nx1377), .B0 (nx1345)
          , .B1 (nx1367)) ;
    inv01 ix1342 (.Y (nx1343), .A (Din[28])) ;
    inv01 ix1344 (.Y (nx1345), .A (Dout[28])) ;
    oai32 ix983 (.Y (nx982), .A0 (nx1347), .A1 (RST), .A2 (nx1377), .B0 (nx1349)
          , .B1 (nx1367)) ;
    inv01 ix1346 (.Y (nx1347), .A (Din[29])) ;
    inv01 ix1348 (.Y (nx1349), .A (Dout[29])) ;
    oai32 ix993 (.Y (nx992), .A0 (nx1351), .A1 (RST), .A2 (nx1377), .B0 (nx1353)
          , .B1 (nx1367)) ;
    inv01 ix1350 (.Y (nx1351), .A (Din[30])) ;
    inv01 ix1352 (.Y (nx1353), .A (Dout[30])) ;
    oai32 ix1003 (.Y (nx1002), .A0 (nx1355), .A1 (RST), .A2 (nx1377), .B0 (
          nx1357), .B1 (nx1367)) ;
    inv01 ix1354 (.Y (nx1355), .A (Din[31])) ;
    inv01 ix1356 (.Y (nx1357), .A (Dout[31])) ;
    inv02 ix1358 (.Y (nx1359), .A (nx1016)) ;
    inv02 ix1360 (.Y (nx1361), .A (nx1016)) ;
    inv02 ix1362 (.Y (nx1363), .A (nx1016)) ;
    inv02 ix1364 (.Y (nx1365), .A (nx1016)) ;
    inv02 ix1366 (.Y (nx1367), .A (nx1016)) ;
    inv02 ix1368 (.Y (nx1369), .A (EN)) ;
    inv02 ix1370 (.Y (nx1371), .A (EN)) ;
    inv02 ix1372 (.Y (nx1373), .A (EN)) ;
    inv02 ix1374 (.Y (nx1375), .A (EN)) ;
    inv02 ix1376 (.Y (nx1377), .A (EN)) ;
endmodule

