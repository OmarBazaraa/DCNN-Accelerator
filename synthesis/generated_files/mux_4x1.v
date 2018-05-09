//
// Verilog description for cell mux_4x1, 
// Wed May  9 07:35:58 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module mux_4x1 ( A, B, C, D, S, Dout ) ;

    input [31:0]A ;
    input [31:0]B ;
    input [31:0]C ;
    input [31:0]D ;
    input [1:0]S ;
    output [31:0]Dout ;

    wire nx18, nx22, nx241, nx247, nx255, nx259, nx261, nx265, nx267, nx271, 
         nx273, nx277, nx279, nx283, nx285, nx289, nx291, nx295, nx297, nx301, 
         nx303, nx307, nx309, nx313, nx315, nx319, nx321, nx325, nx327, nx331, 
         nx333, nx337, nx339, nx343, nx345, nx349, nx351, nx355, nx357, nx361, 
         nx363, nx367, nx369, nx373, nx375, nx379, nx381, nx385, nx387, nx391, 
         nx393, nx397, nx399, nx403, nx405, nx409, nx411, nx415, nx417, nx421, 
         nx423, nx427, nx429, nx433, nx435, nx439, nx441, nx448, nx451, nx453, 
         nx455, nx457, nx459, nx461, nx463, nx465, nx467, nx469, nx471, nx473, 
         nx475, nx477, nx479, nx481, nx483, nx485, nx487, nx489, nx491, nx493, 
         nx495;



    nand02 ix29 (.Y (Dout[0]), .A0 (nx241), .A1 (nx247)) ;
    aoi22 ix242 (.Y (nx241), .A0 (A[0]), .A1 (nx475), .B0 (D[0]), .B1 (nx487)) ;
    nor02_2x ix19 (.Y (nx18), .A0 (S[1]), .A1 (S[0])) ;
    and02 ix23 (.Y (nx22), .A0 (S[1]), .A1 (S[0])) ;
    aoi22 ix248 (.Y (nx247), .A0 (B[0]), .A1 (nx463), .B0 (C[0]), .B1 (nx451)) ;
    inv01 ix256 (.Y (nx255), .A (S[1])) ;
    nand02 ix43 (.Y (Dout[1]), .A0 (nx259), .A1 (nx261)) ;
    aoi22 ix260 (.Y (nx259), .A0 (A[1]), .A1 (nx475), .B0 (D[1]), .B1 (nx487)) ;
    aoi22 ix262 (.Y (nx261), .A0 (B[1]), .A1 (nx463), .B0 (C[1]), .B1 (nx451)) ;
    nand02 ix57 (.Y (Dout[2]), .A0 (nx265), .A1 (nx267)) ;
    aoi22 ix266 (.Y (nx265), .A0 (A[2]), .A1 (nx475), .B0 (D[2]), .B1 (nx487)) ;
    aoi22 ix268 (.Y (nx267), .A0 (B[2]), .A1 (nx463), .B0 (C[2]), .B1 (nx451)) ;
    nand02 ix71 (.Y (Dout[3]), .A0 (nx271), .A1 (nx273)) ;
    aoi22 ix272 (.Y (nx271), .A0 (A[3]), .A1 (nx475), .B0 (D[3]), .B1 (nx487)) ;
    aoi22 ix274 (.Y (nx273), .A0 (B[3]), .A1 (nx463), .B0 (C[3]), .B1 (nx451)) ;
    nand02 ix85 (.Y (Dout[4]), .A0 (nx277), .A1 (nx279)) ;
    aoi22 ix278 (.Y (nx277), .A0 (A[4]), .A1 (nx475), .B0 (D[4]), .B1 (nx487)) ;
    aoi22 ix280 (.Y (nx279), .A0 (B[4]), .A1 (nx463), .B0 (C[4]), .B1 (nx451)) ;
    nand02 ix99 (.Y (Dout[5]), .A0 (nx283), .A1 (nx285)) ;
    aoi22 ix284 (.Y (nx283), .A0 (A[5]), .A1 (nx475), .B0 (D[5]), .B1 (nx487)) ;
    aoi22 ix286 (.Y (nx285), .A0 (B[5]), .A1 (nx463), .B0 (C[5]), .B1 (nx451)) ;
    nand02 ix113 (.Y (Dout[6]), .A0 (nx289), .A1 (nx291)) ;
    aoi22 ix290 (.Y (nx289), .A0 (A[6]), .A1 (nx475), .B0 (D[6]), .B1 (nx487)) ;
    aoi22 ix292 (.Y (nx291), .A0 (B[6]), .A1 (nx463), .B0 (C[6]), .B1 (nx451)) ;
    nand02 ix127 (.Y (Dout[7]), .A0 (nx295), .A1 (nx297)) ;
    aoi22 ix296 (.Y (nx295), .A0 (A[7]), .A1 (nx477), .B0 (D[7]), .B1 (nx489)) ;
    aoi22 ix298 (.Y (nx297), .A0 (B[7]), .A1 (nx465), .B0 (C[7]), .B1 (nx453)) ;
    nand02 ix141 (.Y (Dout[8]), .A0 (nx301), .A1 (nx303)) ;
    aoi22 ix302 (.Y (nx301), .A0 (A[8]), .A1 (nx477), .B0 (D[8]), .B1 (nx489)) ;
    aoi22 ix304 (.Y (nx303), .A0 (B[8]), .A1 (nx465), .B0 (C[8]), .B1 (nx453)) ;
    nand02 ix155 (.Y (Dout[9]), .A0 (nx307), .A1 (nx309)) ;
    aoi22 ix308 (.Y (nx307), .A0 (A[9]), .A1 (nx477), .B0 (D[9]), .B1 (nx489)) ;
    aoi22 ix310 (.Y (nx309), .A0 (B[9]), .A1 (nx465), .B0 (C[9]), .B1 (nx453)) ;
    nand02 ix169 (.Y (Dout[10]), .A0 (nx313), .A1 (nx315)) ;
    aoi22 ix314 (.Y (nx313), .A0 (A[10]), .A1 (nx477), .B0 (D[10]), .B1 (nx489)
          ) ;
    aoi22 ix316 (.Y (nx315), .A0 (B[10]), .A1 (nx465), .B0 (C[10]), .B1 (nx453)
          ) ;
    nand02 ix183 (.Y (Dout[11]), .A0 (nx319), .A1 (nx321)) ;
    aoi22 ix320 (.Y (nx319), .A0 (A[11]), .A1 (nx477), .B0 (D[11]), .B1 (nx489)
          ) ;
    aoi22 ix322 (.Y (nx321), .A0 (B[11]), .A1 (nx465), .B0 (C[11]), .B1 (nx453)
          ) ;
    nand02 ix197 (.Y (Dout[12]), .A0 (nx325), .A1 (nx327)) ;
    aoi22 ix326 (.Y (nx325), .A0 (A[12]), .A1 (nx477), .B0 (D[12]), .B1 (nx489)
          ) ;
    aoi22 ix328 (.Y (nx327), .A0 (B[12]), .A1 (nx465), .B0 (C[12]), .B1 (nx453)
          ) ;
    nand02 ix211 (.Y (Dout[13]), .A0 (nx331), .A1 (nx333)) ;
    aoi22 ix332 (.Y (nx331), .A0 (A[13]), .A1 (nx477), .B0 (D[13]), .B1 (nx489)
          ) ;
    aoi22 ix334 (.Y (nx333), .A0 (B[13]), .A1 (nx465), .B0 (C[13]), .B1 (nx453)
          ) ;
    nand02 ix225 (.Y (Dout[14]), .A0 (nx337), .A1 (nx339)) ;
    aoi22 ix338 (.Y (nx337), .A0 (A[14]), .A1 (nx479), .B0 (D[14]), .B1 (nx491)
          ) ;
    aoi22 ix340 (.Y (nx339), .A0 (B[14]), .A1 (nx467), .B0 (C[14]), .B1 (nx455)
          ) ;
    nand02 ix239 (.Y (Dout[15]), .A0 (nx343), .A1 (nx345)) ;
    aoi22 ix344 (.Y (nx343), .A0 (A[15]), .A1 (nx479), .B0 (D[15]), .B1 (nx491)
          ) ;
    aoi22 ix346 (.Y (nx345), .A0 (B[15]), .A1 (nx467), .B0 (C[15]), .B1 (nx455)
          ) ;
    nand02 ix253 (.Y (Dout[16]), .A0 (nx349), .A1 (nx351)) ;
    aoi22 ix350 (.Y (nx349), .A0 (A[16]), .A1 (nx479), .B0 (D[16]), .B1 (nx491)
          ) ;
    aoi22 ix352 (.Y (nx351), .A0 (B[16]), .A1 (nx467), .B0 (C[16]), .B1 (nx455)
          ) ;
    nand02 ix267 (.Y (Dout[17]), .A0 (nx355), .A1 (nx357)) ;
    aoi22 ix356 (.Y (nx355), .A0 (A[17]), .A1 (nx479), .B0 (D[17]), .B1 (nx491)
          ) ;
    aoi22 ix358 (.Y (nx357), .A0 (B[17]), .A1 (nx467), .B0 (C[17]), .B1 (nx455)
          ) ;
    nand02 ix281 (.Y (Dout[18]), .A0 (nx361), .A1 (nx363)) ;
    aoi22 ix362 (.Y (nx361), .A0 (A[18]), .A1 (nx479), .B0 (D[18]), .B1 (nx491)
          ) ;
    aoi22 ix364 (.Y (nx363), .A0 (B[18]), .A1 (nx467), .B0 (C[18]), .B1 (nx455)
          ) ;
    nand02 ix295 (.Y (Dout[19]), .A0 (nx367), .A1 (nx369)) ;
    aoi22 ix368 (.Y (nx367), .A0 (A[19]), .A1 (nx479), .B0 (D[19]), .B1 (nx491)
          ) ;
    aoi22 ix370 (.Y (nx369), .A0 (B[19]), .A1 (nx467), .B0 (C[19]), .B1 (nx455)
          ) ;
    nand02 ix309 (.Y (Dout[20]), .A0 (nx373), .A1 (nx375)) ;
    aoi22 ix374 (.Y (nx373), .A0 (A[20]), .A1 (nx479), .B0 (D[20]), .B1 (nx491)
          ) ;
    aoi22 ix376 (.Y (nx375), .A0 (B[20]), .A1 (nx467), .B0 (C[20]), .B1 (nx455)
          ) ;
    nand02 ix323 (.Y (Dout[21]), .A0 (nx379), .A1 (nx381)) ;
    aoi22 ix380 (.Y (nx379), .A0 (A[21]), .A1 (nx481), .B0 (D[21]), .B1 (nx493)
          ) ;
    aoi22 ix382 (.Y (nx381), .A0 (B[21]), .A1 (nx469), .B0 (C[21]), .B1 (nx457)
          ) ;
    nand02 ix337 (.Y (Dout[22]), .A0 (nx385), .A1 (nx387)) ;
    aoi22 ix386 (.Y (nx385), .A0 (A[22]), .A1 (nx481), .B0 (D[22]), .B1 (nx493)
          ) ;
    aoi22 ix388 (.Y (nx387), .A0 (B[22]), .A1 (nx469), .B0 (C[22]), .B1 (nx457)
          ) ;
    nand02 ix351 (.Y (Dout[23]), .A0 (nx391), .A1 (nx393)) ;
    aoi22 ix392 (.Y (nx391), .A0 (A[23]), .A1 (nx481), .B0 (D[23]), .B1 (nx493)
          ) ;
    aoi22 ix394 (.Y (nx393), .A0 (B[23]), .A1 (nx469), .B0 (C[23]), .B1 (nx457)
          ) ;
    nand02 ix365 (.Y (Dout[24]), .A0 (nx397), .A1 (nx399)) ;
    aoi22 ix398 (.Y (nx397), .A0 (A[24]), .A1 (nx481), .B0 (D[24]), .B1 (nx493)
          ) ;
    aoi22 ix400 (.Y (nx399), .A0 (B[24]), .A1 (nx469), .B0 (C[24]), .B1 (nx457)
          ) ;
    nand02 ix379 (.Y (Dout[25]), .A0 (nx403), .A1 (nx405)) ;
    aoi22 ix404 (.Y (nx403), .A0 (A[25]), .A1 (nx481), .B0 (D[25]), .B1 (nx493)
          ) ;
    aoi22 ix406 (.Y (nx405), .A0 (B[25]), .A1 (nx469), .B0 (C[25]), .B1 (nx457)
          ) ;
    nand02 ix393 (.Y (Dout[26]), .A0 (nx409), .A1 (nx411)) ;
    aoi22 ix410 (.Y (nx409), .A0 (A[26]), .A1 (nx481), .B0 (D[26]), .B1 (nx493)
          ) ;
    aoi22 ix412 (.Y (nx411), .A0 (B[26]), .A1 (nx469), .B0 (C[26]), .B1 (nx457)
          ) ;
    nand02 ix407 (.Y (Dout[27]), .A0 (nx415), .A1 (nx417)) ;
    aoi22 ix416 (.Y (nx415), .A0 (A[27]), .A1 (nx481), .B0 (D[27]), .B1 (nx493)
          ) ;
    aoi22 ix418 (.Y (nx417), .A0 (B[27]), .A1 (nx469), .B0 (C[27]), .B1 (nx457)
          ) ;
    nand02 ix421 (.Y (Dout[28]), .A0 (nx421), .A1 (nx423)) ;
    aoi22 ix422 (.Y (nx421), .A0 (A[28]), .A1 (nx483), .B0 (D[28]), .B1 (nx495)
          ) ;
    aoi22 ix424 (.Y (nx423), .A0 (B[28]), .A1 (nx471), .B0 (C[28]), .B1 (nx459)
          ) ;
    nand02 ix435 (.Y (Dout[29]), .A0 (nx427), .A1 (nx429)) ;
    aoi22 ix428 (.Y (nx427), .A0 (A[29]), .A1 (nx483), .B0 (D[29]), .B1 (nx495)
          ) ;
    aoi22 ix430 (.Y (nx429), .A0 (B[29]), .A1 (nx471), .B0 (C[29]), .B1 (nx459)
          ) ;
    nand02 ix449 (.Y (Dout[30]), .A0 (nx433), .A1 (nx435)) ;
    aoi22 ix434 (.Y (nx433), .A0 (A[30]), .A1 (nx483), .B0 (D[30]), .B1 (nx495)
          ) ;
    aoi22 ix436 (.Y (nx435), .A0 (B[30]), .A1 (nx471), .B0 (C[30]), .B1 (nx459)
          ) ;
    nand02 ix463 (.Y (Dout[31]), .A0 (nx439), .A1 (nx441)) ;
    aoi22 ix440 (.Y (nx439), .A0 (A[31]), .A1 (nx483), .B0 (D[31]), .B1 (nx495)
          ) ;
    aoi22 ix442 (.Y (nx441), .A0 (B[31]), .A1 (nx471), .B0 (C[31]), .B1 (nx459)
          ) ;
    inv02 ix450 (.Y (nx451), .A (nx448)) ;
    inv02 ix452 (.Y (nx453), .A (nx448)) ;
    inv02 ix454 (.Y (nx455), .A (nx448)) ;
    inv02 ix456 (.Y (nx457), .A (nx448)) ;
    inv02 ix458 (.Y (nx459), .A (nx448)) ;
    inv02 ix462 (.Y (nx463), .A (nx461)) ;
    inv02 ix464 (.Y (nx465), .A (nx461)) ;
    inv02 ix466 (.Y (nx467), .A (nx461)) ;
    inv02 ix468 (.Y (nx469), .A (nx461)) ;
    inv02 ix470 (.Y (nx471), .A (nx461)) ;
    inv01 ix472 (.Y (nx473), .A (nx18)) ;
    inv02 ix474 (.Y (nx475), .A (nx473)) ;
    inv02 ix476 (.Y (nx477), .A (nx473)) ;
    inv02 ix478 (.Y (nx479), .A (nx473)) ;
    inv02 ix480 (.Y (nx481), .A (nx473)) ;
    inv02 ix482 (.Y (nx483), .A (nx473)) ;
    inv01 ix484 (.Y (nx485), .A (nx22)) ;
    inv02 ix486 (.Y (nx487), .A (nx485)) ;
    inv02 ix488 (.Y (nx489), .A (nx485)) ;
    inv02 ix490 (.Y (nx491), .A (nx485)) ;
    inv02 ix492 (.Y (nx493), .A (nx485)) ;
    inv02 ix494 (.Y (nx495), .A (nx485)) ;
    nand02 ix9 (.Y (nx461), .A0 (nx255), .A1 (S[0])) ;
    or02 ix3 (.Y (nx448), .A0 (nx255), .A1 (S[0])) ;
endmodule

