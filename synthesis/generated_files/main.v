//
// Verilog description for cell main, 
// Sat May 12 05:58:07 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module main ( CLK, RST, Start, FilterSize, Stride, Instr, Done ) ;

    input CLK ;
    input RST ;
    input Start ;
    input FilterSize ;
    input Stride ;
    input Instr ;
    output Done ;

    wire FirstCycle, MemWR, MemAddr_17, MemAddr_15, MemAddr_14, MemAddr_13, 
         MemAddr_12, MemAddr_11, MemAddr_10, MemAddr_9, MemAddr_8, MemAddr_7, 
         MemAddr_6, MemAddr_5, MemAddr_4, MemAddr_3, MemAddr_2, MemAddr_1, 
         MemAddr_0, MemDin_7, MemDin_6, MemDin_5, MemDin_4, MemDin_3, MemDin_2, 
         MemDin_1, MemDin_0, MemDout_39, MemDout_38, MemDout_37, MemDout_36, 
         MemDout_35, MemDout_34, MemDout_33, MemDout_32, MemDout_31, MemDout_30, 
         MemDout_29, MemDout_28, MemDout_27, MemDout_26, MemDout_25, MemDout_24, 
         MemDout_23, MemDout_22, MemDout_21, MemDout_20, MemDout_19, MemDout_18, 
         MemDout_17, MemDout_16, MemDout_15, MemDout_14, MemDout_13, MemDout_12, 
         MemDout_11, MemDout_10, MemDout_9, MemDout_8, MemDout_7, MemDout_6, 
         MemDout_5, MemDout_4, MemDout_3, MemDout_2, MemDout_1, MemDout_0, 
         CacheRST, CacheFilterWR, CacheWindowWR, CacheFilter_0__0__7, 
         CacheFilter_0__0__6, CacheFilter_0__0__5, CacheFilter_0__0__4, 
         CacheFilter_0__0__3, CacheFilter_0__0__2, CacheFilter_0__0__1, 
         CacheFilter_0__0__0, CacheFilter_0__1__7, CacheFilter_0__1__6, 
         CacheFilter_0__1__5, CacheFilter_0__1__4, CacheFilter_0__1__3, 
         CacheFilter_0__1__2, CacheFilter_0__1__1, CacheFilter_0__1__0, 
         CacheFilter_0__2__7, CacheFilter_0__2__6, CacheFilter_0__2__5, 
         CacheFilter_0__2__4, CacheFilter_0__2__3, CacheFilter_0__2__2, 
         CacheFilter_0__2__1, CacheFilter_0__2__0, CacheFilter_0__3__7, 
         CacheFilter_0__3__6, CacheFilter_0__3__5, CacheFilter_0__3__4, 
         CacheFilter_0__3__3, CacheFilter_0__3__2, CacheFilter_0__3__1, 
         CacheFilter_0__3__0, CacheFilter_0__4__7, CacheFilter_0__4__6, 
         CacheFilter_0__4__5, CacheFilter_0__4__4, CacheFilter_0__4__3, 
         CacheFilter_0__4__2, CacheFilter_0__4__1, CacheFilter_0__4__0, 
         CacheFilter_1__0__7, CacheFilter_1__0__6, CacheFilter_1__0__5, 
         CacheFilter_1__0__4, CacheFilter_1__0__3, CacheFilter_1__0__2, 
         CacheFilter_1__0__1, CacheFilter_1__0__0, CacheFilter_1__1__7, 
         CacheFilter_1__1__6, CacheFilter_1__1__5, CacheFilter_1__1__4, 
         CacheFilter_1__1__3, CacheFilter_1__1__2, CacheFilter_1__1__1, 
         CacheFilter_1__1__0, CacheFilter_1__2__7, CacheFilter_1__2__6, 
         CacheFilter_1__2__5, CacheFilter_1__2__4, CacheFilter_1__2__3, 
         CacheFilter_1__2__2, CacheFilter_1__2__1, CacheFilter_1__2__0, 
         CacheFilter_1__3__7, CacheFilter_1__3__6, CacheFilter_1__3__5, 
         CacheFilter_1__3__4, CacheFilter_1__3__3, CacheFilter_1__3__2, 
         CacheFilter_1__3__1, CacheFilter_1__3__0, CacheFilter_1__4__7, 
         CacheFilter_1__4__6, CacheFilter_1__4__5, CacheFilter_1__4__4, 
         CacheFilter_1__4__3, CacheFilter_1__4__2, CacheFilter_1__4__1, 
         CacheFilter_1__4__0, CacheFilter_2__0__7, CacheFilter_2__0__6, 
         CacheFilter_2__0__5, CacheFilter_2__0__4, CacheFilter_2__0__3, 
         CacheFilter_2__0__2, CacheFilter_2__0__1, CacheFilter_2__0__0, 
         CacheFilter_2__1__7, CacheFilter_2__1__6, CacheFilter_2__1__5, 
         CacheFilter_2__1__4, CacheFilter_2__1__3, CacheFilter_2__1__2, 
         CacheFilter_2__1__1, CacheFilter_2__1__0, CacheFilter_2__2__7, 
         CacheFilter_2__2__6, CacheFilter_2__2__5, CacheFilter_2__2__4, 
         CacheFilter_2__2__3, CacheFilter_2__2__2, CacheFilter_2__2__1, 
         CacheFilter_2__2__0, CacheFilter_2__3__7, CacheFilter_2__3__6, 
         CacheFilter_2__3__5, CacheFilter_2__3__4, CacheFilter_2__3__3, 
         CacheFilter_2__3__2, CacheFilter_2__3__1, CacheFilter_2__3__0, 
         CacheFilter_2__4__7, CacheFilter_2__4__6, CacheFilter_2__4__5, 
         CacheFilter_2__4__4, CacheFilter_2__4__3, CacheFilter_2__4__2, 
         CacheFilter_2__4__1, CacheFilter_2__4__0, CacheFilter_3__0__7, 
         CacheFilter_3__0__6, CacheFilter_3__0__5, CacheFilter_3__0__4, 
         CacheFilter_3__0__3, CacheFilter_3__0__2, CacheFilter_3__0__1, 
         CacheFilter_3__0__0, CacheFilter_3__1__7, CacheFilter_3__1__6, 
         CacheFilter_3__1__5, CacheFilter_3__1__4, CacheFilter_3__1__3, 
         CacheFilter_3__1__2, CacheFilter_3__1__1, CacheFilter_3__1__0, 
         CacheFilter_3__2__7, CacheFilter_3__2__6, CacheFilter_3__2__5, 
         CacheFilter_3__2__4, CacheFilter_3__2__3, CacheFilter_3__2__2, 
         CacheFilter_3__2__1, CacheFilter_3__2__0, CacheFilter_3__3__7, 
         CacheFilter_3__3__6, CacheFilter_3__3__5, CacheFilter_3__3__4, 
         CacheFilter_3__3__3, CacheFilter_3__3__2, CacheFilter_3__3__1, 
         CacheFilter_3__3__0, CacheFilter_3__4__7, CacheFilter_3__4__6, 
         CacheFilter_3__4__5, CacheFilter_3__4__4, CacheFilter_3__4__3, 
         CacheFilter_3__4__2, CacheFilter_3__4__1, CacheFilter_3__4__0, 
         CacheFilter_4__0__7, CacheFilter_4__0__6, CacheFilter_4__0__5, 
         CacheFilter_4__0__4, CacheFilter_4__0__3, CacheFilter_4__0__2, 
         CacheFilter_4__0__1, CacheFilter_4__0__0, CacheFilter_4__1__7, 
         CacheFilter_4__1__6, CacheFilter_4__1__5, CacheFilter_4__1__4, 
         CacheFilter_4__1__3, CacheFilter_4__1__2, CacheFilter_4__1__1, 
         CacheFilter_4__1__0, CacheFilter_4__2__7, CacheFilter_4__2__6, 
         CacheFilter_4__2__5, CacheFilter_4__2__4, CacheFilter_4__2__3, 
         CacheFilter_4__2__2, CacheFilter_4__2__1, CacheFilter_4__2__0, 
         CacheFilter_4__3__7, CacheFilter_4__3__6, CacheFilter_4__3__5, 
         CacheFilter_4__3__4, CacheFilter_4__3__3, CacheFilter_4__3__2, 
         CacheFilter_4__3__1, CacheFilter_4__3__0, CacheFilter_4__4__7, 
         CacheFilter_4__4__6, CacheFilter_4__4__5, CacheFilter_4__4__4, 
         CacheFilter_4__4__3, CacheFilter_4__4__2, CacheFilter_4__4__1, 
         CacheFilter_4__4__0, CacheWindow_0__0__7, CacheWindow_0__0__6, 
         CacheWindow_0__0__5, CacheWindow_0__0__4, CacheWindow_0__0__3, 
         CacheWindow_0__0__2, CacheWindow_0__0__1, CacheWindow_0__0__0, 
         CacheWindow_0__1__7, CacheWindow_0__1__6, CacheWindow_0__1__5, 
         CacheWindow_0__1__4, CacheWindow_0__1__3, CacheWindow_0__1__2, 
         CacheWindow_0__1__1, CacheWindow_0__1__0, CacheWindow_0__2__7, 
         CacheWindow_0__2__6, CacheWindow_0__2__5, CacheWindow_0__2__4, 
         CacheWindow_0__2__3, CacheWindow_0__2__2, CacheWindow_0__2__1, 
         CacheWindow_0__2__0, CacheWindow_0__3__7, CacheWindow_0__3__6, 
         CacheWindow_0__3__5, CacheWindow_0__3__4, CacheWindow_0__3__3, 
         CacheWindow_0__3__2, CacheWindow_0__3__1, CacheWindow_0__3__0, 
         CacheWindow_0__4__7, CacheWindow_0__4__6, CacheWindow_0__4__5, 
         CacheWindow_0__4__4, CacheWindow_0__4__3, CacheWindow_0__4__2, 
         CacheWindow_0__4__1, CacheWindow_0__4__0, CacheWindow_1__0__7, 
         CacheWindow_1__0__6, CacheWindow_1__0__5, CacheWindow_1__0__4, 
         CacheWindow_1__0__3, CacheWindow_1__0__2, CacheWindow_1__0__1, 
         CacheWindow_1__0__0, CacheWindow_1__1__7, CacheWindow_1__1__6, 
         CacheWindow_1__1__5, CacheWindow_1__1__4, CacheWindow_1__1__3, 
         CacheWindow_1__1__2, CacheWindow_1__1__1, CacheWindow_1__1__0, 
         CacheWindow_1__2__7, CacheWindow_1__2__6, CacheWindow_1__2__5, 
         CacheWindow_1__2__4, CacheWindow_1__2__3, CacheWindow_1__2__2, 
         CacheWindow_1__2__1, CacheWindow_1__2__0, CacheWindow_1__3__7, 
         CacheWindow_1__3__6, CacheWindow_1__3__5, CacheWindow_1__3__4, 
         CacheWindow_1__3__3, CacheWindow_1__3__2, CacheWindow_1__3__1, 
         CacheWindow_1__3__0, CacheWindow_1__4__7, CacheWindow_1__4__6, 
         CacheWindow_1__4__5, CacheWindow_1__4__4, CacheWindow_1__4__3, 
         CacheWindow_1__4__2, CacheWindow_1__4__1, CacheWindow_1__4__0, 
         CacheWindow_2__0__7, CacheWindow_2__0__6, CacheWindow_2__0__5, 
         CacheWindow_2__0__4, CacheWindow_2__0__3, CacheWindow_2__0__2, 
         CacheWindow_2__0__1, CacheWindow_2__0__0, CacheWindow_2__1__7, 
         CacheWindow_2__1__6, CacheWindow_2__1__5, CacheWindow_2__1__4, 
         CacheWindow_2__1__3, CacheWindow_2__1__2, CacheWindow_2__1__1, 
         CacheWindow_2__1__0, CacheWindow_2__2__7, CacheWindow_2__2__6, 
         CacheWindow_2__2__5, CacheWindow_2__2__4, CacheWindow_2__2__3, 
         CacheWindow_2__2__2, CacheWindow_2__2__1, CacheWindow_2__2__0, 
         CacheWindow_2__3__7, CacheWindow_2__3__6, CacheWindow_2__3__5, 
         CacheWindow_2__3__4, CacheWindow_2__3__3, CacheWindow_2__3__2, 
         CacheWindow_2__3__1, CacheWindow_2__3__0, CacheWindow_2__4__7, 
         CacheWindow_2__4__6, CacheWindow_2__4__5, CacheWindow_2__4__4, 
         CacheWindow_2__4__3, CacheWindow_2__4__2, CacheWindow_2__4__1, 
         CacheWindow_2__4__0, CacheWindow_3__0__7, CacheWindow_3__0__6, 
         CacheWindow_3__0__5, CacheWindow_3__0__4, CacheWindow_3__0__3, 
         CacheWindow_3__0__2, CacheWindow_3__0__1, CacheWindow_3__0__0, 
         CacheWindow_3__1__7, CacheWindow_3__1__6, CacheWindow_3__1__5, 
         CacheWindow_3__1__4, CacheWindow_3__1__3, CacheWindow_3__1__2, 
         CacheWindow_3__1__1, CacheWindow_3__1__0, CacheWindow_3__2__7, 
         CacheWindow_3__2__6, CacheWindow_3__2__5, CacheWindow_3__2__4, 
         CacheWindow_3__2__3, CacheWindow_3__2__2, CacheWindow_3__2__1, 
         CacheWindow_3__2__0, CacheWindow_3__3__7, CacheWindow_3__3__6, 
         CacheWindow_3__3__5, CacheWindow_3__3__4, CacheWindow_3__3__3, 
         CacheWindow_3__3__2, CacheWindow_3__3__1, CacheWindow_3__3__0, 
         CacheWindow_3__4__7, CacheWindow_3__4__6, CacheWindow_3__4__5, 
         CacheWindow_3__4__4, CacheWindow_3__4__3, CacheWindow_3__4__2, 
         CacheWindow_3__4__1, CacheWindow_3__4__0, CacheWindow_4__0__7, 
         CacheWindow_4__0__6, CacheWindow_4__0__5, CacheWindow_4__0__4, 
         CacheWindow_4__0__3, CacheWindow_4__0__2, CacheWindow_4__0__1, 
         CacheWindow_4__0__0, CacheWindow_4__1__7, CacheWindow_4__1__6, 
         CacheWindow_4__1__5, CacheWindow_4__1__4, CacheWindow_4__1__3, 
         CacheWindow_4__1__2, CacheWindow_4__1__1, CacheWindow_4__1__0, 
         CacheWindow_4__2__7, CacheWindow_4__2__6, CacheWindow_4__2__5, 
         CacheWindow_4__2__4, CacheWindow_4__2__3, CacheWindow_4__2__2, 
         CacheWindow_4__2__1, CacheWindow_4__2__0, CacheWindow_4__3__7, 
         CacheWindow_4__3__6, CacheWindow_4__3__5, CacheWindow_4__3__4, 
         CacheWindow_4__3__3, CacheWindow_4__3__2, CacheWindow_4__3__1, 
         CacheWindow_4__3__0, CacheWindow_4__4__7, CacheWindow_4__4__6, 
         CacheWindow_4__4__5, CacheWindow_4__4__4, CacheWindow_4__4__3, 
         CacheWindow_4__4__2, CacheWindow_4__4__1, CacheWindow_4__4__0, 
         Calculating, CalcStarted, CalcStartRST, AccStartCalc, AccFinishCalc, 
         PWR, nx559, nx615, nx617, nx619;
    wire [1:0] \$dummy ;




    controller CONTROLLER (.CLK (CLK), .RST (RST), .Start (Start), .FilterSize (
               FilterSize), .Stride (Stride), .Instr (Instr), .CalcFinished (
               AccFinishCalc), .Calc (Calculating), .MemRD (\$dummy [0]), .MemWR (
               MemWR), .MemAddr ({MemAddr_17,\$dummy [1],MemAddr_15,MemAddr_14,
               MemAddr_13,MemAddr_12,MemAddr_11,MemAddr_10,MemAddr_9,MemAddr_8,
               MemAddr_7,MemAddr_6,MemAddr_5,MemAddr_4,MemAddr_3,MemAddr_2,
               MemAddr_1,MemAddr_0}), .CacheFilterWR (CacheFilterWR), .CacheWindowWR (
               CacheWindowWR), .FirstCycle (FirstCycle), .Done (Done)) ;
    flip_flop_rising CALC_FLIP_FLOP_1 (.CLK (Calculating), .RST (CalcStartRST), 
                     .Din (PWR), .Dout (AccStartCalc)) ;
    flip_flop_falling CALC_FLIP_FLOP_2 (.CLK (CLK), .RST (RST), .Din (
                      AccStartCalc), .Dout (CalcStarted)) ;
    accelerator ACCELERATOR (.CLK (CLK), .RST (RST), .Start (AccStartCalc), .FilterSize (
                FilterSize), .Instr (Instr), .FilterDin_0__0__7 (
                CacheFilter_0__0__7), .FilterDin_0__0__6 (CacheFilter_0__0__6), 
                .FilterDin_0__0__5 (CacheFilter_0__0__5), .FilterDin_0__0__4 (
                CacheFilter_0__0__4), .FilterDin_0__0__3 (CacheFilter_0__0__3), 
                .FilterDin_0__0__2 (CacheFilter_0__0__2), .FilterDin_0__0__1 (
                CacheFilter_0__0__1), .FilterDin_0__0__0 (CacheFilter_0__0__0), 
                .FilterDin_0__1__7 (CacheFilter_0__1__7), .FilterDin_0__1__6 (
                CacheFilter_0__1__6), .FilterDin_0__1__5 (CacheFilter_0__1__5), 
                .FilterDin_0__1__4 (CacheFilter_0__1__4), .FilterDin_0__1__3 (
                CacheFilter_0__1__3), .FilterDin_0__1__2 (CacheFilter_0__1__2), 
                .FilterDin_0__1__1 (CacheFilter_0__1__1), .FilterDin_0__1__0 (
                CacheFilter_0__1__0), .FilterDin_0__2__7 (CacheFilter_0__2__7), 
                .FilterDin_0__2__6 (CacheFilter_0__2__6), .FilterDin_0__2__5 (
                CacheFilter_0__2__5), .FilterDin_0__2__4 (CacheFilter_0__2__4), 
                .FilterDin_0__2__3 (CacheFilter_0__2__3), .FilterDin_0__2__2 (
                CacheFilter_0__2__2), .FilterDin_0__2__1 (CacheFilter_0__2__1), 
                .FilterDin_0__2__0 (CacheFilter_0__2__0), .FilterDin_0__3__7 (
                CacheFilter_0__3__7), .FilterDin_0__3__6 (CacheFilter_0__3__6), 
                .FilterDin_0__3__5 (CacheFilter_0__3__5), .FilterDin_0__3__4 (
                CacheFilter_0__3__4), .FilterDin_0__3__3 (CacheFilter_0__3__3), 
                .FilterDin_0__3__2 (CacheFilter_0__3__2), .FilterDin_0__3__1 (
                CacheFilter_0__3__1), .FilterDin_0__3__0 (CacheFilter_0__3__0), 
                .FilterDin_0__4__7 (CacheFilter_0__4__7), .FilterDin_0__4__6 (
                CacheFilter_0__4__6), .FilterDin_0__4__5 (CacheFilter_0__4__5), 
                .FilterDin_0__4__4 (CacheFilter_0__4__4), .FilterDin_0__4__3 (
                CacheFilter_0__4__3), .FilterDin_0__4__2 (CacheFilter_0__4__2), 
                .FilterDin_0__4__1 (CacheFilter_0__4__1), .FilterDin_0__4__0 (
                CacheFilter_0__4__0), .FilterDin_1__0__7 (CacheFilter_1__0__7), 
                .FilterDin_1__0__6 (CacheFilter_1__0__6), .FilterDin_1__0__5 (
                CacheFilter_1__0__5), .FilterDin_1__0__4 (CacheFilter_1__0__4), 
                .FilterDin_1__0__3 (CacheFilter_1__0__3), .FilterDin_1__0__2 (
                CacheFilter_1__0__2), .FilterDin_1__0__1 (CacheFilter_1__0__1), 
                .FilterDin_1__0__0 (CacheFilter_1__0__0), .FilterDin_1__1__7 (
                CacheFilter_1__1__7), .FilterDin_1__1__6 (CacheFilter_1__1__6), 
                .FilterDin_1__1__5 (CacheFilter_1__1__5), .FilterDin_1__1__4 (
                CacheFilter_1__1__4), .FilterDin_1__1__3 (CacheFilter_1__1__3), 
                .FilterDin_1__1__2 (CacheFilter_1__1__2), .FilterDin_1__1__1 (
                CacheFilter_1__1__1), .FilterDin_1__1__0 (CacheFilter_1__1__0), 
                .FilterDin_1__2__7 (CacheFilter_1__2__7), .FilterDin_1__2__6 (
                CacheFilter_1__2__6), .FilterDin_1__2__5 (CacheFilter_1__2__5), 
                .FilterDin_1__2__4 (CacheFilter_1__2__4), .FilterDin_1__2__3 (
                CacheFilter_1__2__3), .FilterDin_1__2__2 (CacheFilter_1__2__2), 
                .FilterDin_1__2__1 (CacheFilter_1__2__1), .FilterDin_1__2__0 (
                CacheFilter_1__2__0), .FilterDin_1__3__7 (CacheFilter_1__3__7), 
                .FilterDin_1__3__6 (CacheFilter_1__3__6), .FilterDin_1__3__5 (
                CacheFilter_1__3__5), .FilterDin_1__3__4 (CacheFilter_1__3__4), 
                .FilterDin_1__3__3 (CacheFilter_1__3__3), .FilterDin_1__3__2 (
                CacheFilter_1__3__2), .FilterDin_1__3__1 (CacheFilter_1__3__1), 
                .FilterDin_1__3__0 (CacheFilter_1__3__0), .FilterDin_1__4__7 (
                CacheFilter_1__4__7), .FilterDin_1__4__6 (CacheFilter_1__4__6), 
                .FilterDin_1__4__5 (CacheFilter_1__4__5), .FilterDin_1__4__4 (
                CacheFilter_1__4__4), .FilterDin_1__4__3 (CacheFilter_1__4__3), 
                .FilterDin_1__4__2 (CacheFilter_1__4__2), .FilterDin_1__4__1 (
                CacheFilter_1__4__1), .FilterDin_1__4__0 (CacheFilter_1__4__0), 
                .FilterDin_2__0__7 (CacheFilter_2__0__7), .FilterDin_2__0__6 (
                CacheFilter_2__0__6), .FilterDin_2__0__5 (CacheFilter_2__0__5), 
                .FilterDin_2__0__4 (CacheFilter_2__0__4), .FilterDin_2__0__3 (
                CacheFilter_2__0__3), .FilterDin_2__0__2 (CacheFilter_2__0__2), 
                .FilterDin_2__0__1 (CacheFilter_2__0__1), .FilterDin_2__0__0 (
                CacheFilter_2__0__0), .FilterDin_2__1__7 (CacheFilter_2__1__7), 
                .FilterDin_2__1__6 (CacheFilter_2__1__6), .FilterDin_2__1__5 (
                CacheFilter_2__1__5), .FilterDin_2__1__4 (CacheFilter_2__1__4), 
                .FilterDin_2__1__3 (CacheFilter_2__1__3), .FilterDin_2__1__2 (
                CacheFilter_2__1__2), .FilterDin_2__1__1 (CacheFilter_2__1__1), 
                .FilterDin_2__1__0 (CacheFilter_2__1__0), .FilterDin_2__2__7 (
                CacheFilter_2__2__7), .FilterDin_2__2__6 (CacheFilter_2__2__6), 
                .FilterDin_2__2__5 (CacheFilter_2__2__5), .FilterDin_2__2__4 (
                CacheFilter_2__2__4), .FilterDin_2__2__3 (CacheFilter_2__2__3), 
                .FilterDin_2__2__2 (CacheFilter_2__2__2), .FilterDin_2__2__1 (
                CacheFilter_2__2__1), .FilterDin_2__2__0 (CacheFilter_2__2__0), 
                .FilterDin_2__3__7 (CacheFilter_2__3__7), .FilterDin_2__3__6 (
                CacheFilter_2__3__6), .FilterDin_2__3__5 (CacheFilter_2__3__5), 
                .FilterDin_2__3__4 (CacheFilter_2__3__4), .FilterDin_2__3__3 (
                CacheFilter_2__3__3), .FilterDin_2__3__2 (CacheFilter_2__3__2), 
                .FilterDin_2__3__1 (CacheFilter_2__3__1), .FilterDin_2__3__0 (
                CacheFilter_2__3__0), .FilterDin_2__4__7 (CacheFilter_2__4__7), 
                .FilterDin_2__4__6 (CacheFilter_2__4__6), .FilterDin_2__4__5 (
                CacheFilter_2__4__5), .FilterDin_2__4__4 (CacheFilter_2__4__4), 
                .FilterDin_2__4__3 (CacheFilter_2__4__3), .FilterDin_2__4__2 (
                CacheFilter_2__4__2), .FilterDin_2__4__1 (CacheFilter_2__4__1), 
                .FilterDin_2__4__0 (CacheFilter_2__4__0), .FilterDin_3__0__7 (
                CacheFilter_3__0__7), .FilterDin_3__0__6 (CacheFilter_3__0__6), 
                .FilterDin_3__0__5 (CacheFilter_3__0__5), .FilterDin_3__0__4 (
                CacheFilter_3__0__4), .FilterDin_3__0__3 (CacheFilter_3__0__3), 
                .FilterDin_3__0__2 (CacheFilter_3__0__2), .FilterDin_3__0__1 (
                CacheFilter_3__0__1), .FilterDin_3__0__0 (CacheFilter_3__0__0), 
                .FilterDin_3__1__7 (CacheFilter_3__1__7), .FilterDin_3__1__6 (
                CacheFilter_3__1__6), .FilterDin_3__1__5 (CacheFilter_3__1__5), 
                .FilterDin_3__1__4 (CacheFilter_3__1__4), .FilterDin_3__1__3 (
                CacheFilter_3__1__3), .FilterDin_3__1__2 (CacheFilter_3__1__2), 
                .FilterDin_3__1__1 (CacheFilter_3__1__1), .FilterDin_3__1__0 (
                CacheFilter_3__1__0), .FilterDin_3__2__7 (CacheFilter_3__2__7), 
                .FilterDin_3__2__6 (CacheFilter_3__2__6), .FilterDin_3__2__5 (
                CacheFilter_3__2__5), .FilterDin_3__2__4 (CacheFilter_3__2__4), 
                .FilterDin_3__2__3 (CacheFilter_3__2__3), .FilterDin_3__2__2 (
                CacheFilter_3__2__2), .FilterDin_3__2__1 (CacheFilter_3__2__1), 
                .FilterDin_3__2__0 (CacheFilter_3__2__0), .FilterDin_3__3__7 (
                CacheFilter_3__3__7), .FilterDin_3__3__6 (CacheFilter_3__3__6), 
                .FilterDin_3__3__5 (CacheFilter_3__3__5), .FilterDin_3__3__4 (
                CacheFilter_3__3__4), .FilterDin_3__3__3 (CacheFilter_3__3__3), 
                .FilterDin_3__3__2 (CacheFilter_3__3__2), .FilterDin_3__3__1 (
                CacheFilter_3__3__1), .FilterDin_3__3__0 (CacheFilter_3__3__0), 
                .FilterDin_3__4__7 (CacheFilter_3__4__7), .FilterDin_3__4__6 (
                CacheFilter_3__4__6), .FilterDin_3__4__5 (CacheFilter_3__4__5), 
                .FilterDin_3__4__4 (CacheFilter_3__4__4), .FilterDin_3__4__3 (
                CacheFilter_3__4__3), .FilterDin_3__4__2 (CacheFilter_3__4__2), 
                .FilterDin_3__4__1 (CacheFilter_3__4__1), .FilterDin_3__4__0 (
                CacheFilter_3__4__0), .FilterDin_4__0__7 (CacheFilter_4__0__7), 
                .FilterDin_4__0__6 (CacheFilter_4__0__6), .FilterDin_4__0__5 (
                CacheFilter_4__0__5), .FilterDin_4__0__4 (CacheFilter_4__0__4), 
                .FilterDin_4__0__3 (CacheFilter_4__0__3), .FilterDin_4__0__2 (
                CacheFilter_4__0__2), .FilterDin_4__0__1 (CacheFilter_4__0__1), 
                .FilterDin_4__0__0 (CacheFilter_4__0__0), .FilterDin_4__1__7 (
                CacheFilter_4__1__7), .FilterDin_4__1__6 (CacheFilter_4__1__6), 
                .FilterDin_4__1__5 (CacheFilter_4__1__5), .FilterDin_4__1__4 (
                CacheFilter_4__1__4), .FilterDin_4__1__3 (CacheFilter_4__1__3), 
                .FilterDin_4__1__2 (CacheFilter_4__1__2), .FilterDin_4__1__1 (
                CacheFilter_4__1__1), .FilterDin_4__1__0 (CacheFilter_4__1__0), 
                .FilterDin_4__2__7 (CacheFilter_4__2__7), .FilterDin_4__2__6 (
                CacheFilter_4__2__6), .FilterDin_4__2__5 (CacheFilter_4__2__5), 
                .FilterDin_4__2__4 (CacheFilter_4__2__4), .FilterDin_4__2__3 (
                CacheFilter_4__2__3), .FilterDin_4__2__2 (CacheFilter_4__2__2), 
                .FilterDin_4__2__1 (CacheFilter_4__2__1), .FilterDin_4__2__0 (
                CacheFilter_4__2__0), .FilterDin_4__3__7 (CacheFilter_4__3__7), 
                .FilterDin_4__3__6 (CacheFilter_4__3__6), .FilterDin_4__3__5 (
                CacheFilter_4__3__5), .FilterDin_4__3__4 (CacheFilter_4__3__4), 
                .FilterDin_4__3__3 (CacheFilter_4__3__3), .FilterDin_4__3__2 (
                CacheFilter_4__3__2), .FilterDin_4__3__1 (CacheFilter_4__3__1), 
                .FilterDin_4__3__0 (CacheFilter_4__3__0), .FilterDin_4__4__7 (
                CacheFilter_4__4__7), .FilterDin_4__4__6 (CacheFilter_4__4__6), 
                .FilterDin_4__4__5 (CacheFilter_4__4__5), .FilterDin_4__4__4 (
                CacheFilter_4__4__4), .FilterDin_4__4__3 (CacheFilter_4__4__3), 
                .FilterDin_4__4__2 (CacheFilter_4__4__2), .FilterDin_4__4__1 (
                CacheFilter_4__4__1), .FilterDin_4__4__0 (CacheFilter_4__4__0), 
                .WindowDin_0__0__7 (CacheWindow_0__0__7), .WindowDin_0__0__6 (
                CacheWindow_0__0__6), .WindowDin_0__0__5 (CacheWindow_0__0__5), 
                .WindowDin_0__0__4 (CacheWindow_0__0__4), .WindowDin_0__0__3 (
                CacheWindow_0__0__3), .WindowDin_0__0__2 (CacheWindow_0__0__2), 
                .WindowDin_0__0__1 (CacheWindow_0__0__1), .WindowDin_0__0__0 (
                CacheWindow_0__0__0), .WindowDin_0__1__7 (CacheWindow_0__1__7), 
                .WindowDin_0__1__6 (CacheWindow_0__1__6), .WindowDin_0__1__5 (
                CacheWindow_0__1__5), .WindowDin_0__1__4 (CacheWindow_0__1__4), 
                .WindowDin_0__1__3 (CacheWindow_0__1__3), .WindowDin_0__1__2 (
                CacheWindow_0__1__2), .WindowDin_0__1__1 (CacheWindow_0__1__1), 
                .WindowDin_0__1__0 (CacheWindow_0__1__0), .WindowDin_0__2__7 (
                CacheWindow_0__2__7), .WindowDin_0__2__6 (CacheWindow_0__2__6), 
                .WindowDin_0__2__5 (CacheWindow_0__2__5), .WindowDin_0__2__4 (
                CacheWindow_0__2__4), .WindowDin_0__2__3 (CacheWindow_0__2__3), 
                .WindowDin_0__2__2 (CacheWindow_0__2__2), .WindowDin_0__2__1 (
                CacheWindow_0__2__1), .WindowDin_0__2__0 (CacheWindow_0__2__0), 
                .WindowDin_0__3__7 (CacheWindow_0__3__7), .WindowDin_0__3__6 (
                CacheWindow_0__3__6), .WindowDin_0__3__5 (CacheWindow_0__3__5), 
                .WindowDin_0__3__4 (CacheWindow_0__3__4), .WindowDin_0__3__3 (
                CacheWindow_0__3__3), .WindowDin_0__3__2 (CacheWindow_0__3__2), 
                .WindowDin_0__3__1 (CacheWindow_0__3__1), .WindowDin_0__3__0 (
                CacheWindow_0__3__0), .WindowDin_0__4__7 (CacheWindow_0__4__7), 
                .WindowDin_0__4__6 (CacheWindow_0__4__6), .WindowDin_0__4__5 (
                CacheWindow_0__4__5), .WindowDin_0__4__4 (CacheWindow_0__4__4), 
                .WindowDin_0__4__3 (CacheWindow_0__4__3), .WindowDin_0__4__2 (
                CacheWindow_0__4__2), .WindowDin_0__4__1 (CacheWindow_0__4__1), 
                .WindowDin_0__4__0 (CacheWindow_0__4__0), .WindowDin_1__0__7 (
                CacheWindow_1__0__7), .WindowDin_1__0__6 (CacheWindow_1__0__6), 
                .WindowDin_1__0__5 (CacheWindow_1__0__5), .WindowDin_1__0__4 (
                CacheWindow_1__0__4), .WindowDin_1__0__3 (CacheWindow_1__0__3), 
                .WindowDin_1__0__2 (CacheWindow_1__0__2), .WindowDin_1__0__1 (
                CacheWindow_1__0__1), .WindowDin_1__0__0 (CacheWindow_1__0__0), 
                .WindowDin_1__1__7 (CacheWindow_1__1__7), .WindowDin_1__1__6 (
                CacheWindow_1__1__6), .WindowDin_1__1__5 (CacheWindow_1__1__5), 
                .WindowDin_1__1__4 (CacheWindow_1__1__4), .WindowDin_1__1__3 (
                CacheWindow_1__1__3), .WindowDin_1__1__2 (CacheWindow_1__1__2), 
                .WindowDin_1__1__1 (CacheWindow_1__1__1), .WindowDin_1__1__0 (
                CacheWindow_1__1__0), .WindowDin_1__2__7 (CacheWindow_1__2__7), 
                .WindowDin_1__2__6 (CacheWindow_1__2__6), .WindowDin_1__2__5 (
                CacheWindow_1__2__5), .WindowDin_1__2__4 (CacheWindow_1__2__4), 
                .WindowDin_1__2__3 (CacheWindow_1__2__3), .WindowDin_1__2__2 (
                CacheWindow_1__2__2), .WindowDin_1__2__1 (CacheWindow_1__2__1), 
                .WindowDin_1__2__0 (CacheWindow_1__2__0), .WindowDin_1__3__7 (
                CacheWindow_1__3__7), .WindowDin_1__3__6 (CacheWindow_1__3__6), 
                .WindowDin_1__3__5 (CacheWindow_1__3__5), .WindowDin_1__3__4 (
                CacheWindow_1__3__4), .WindowDin_1__3__3 (CacheWindow_1__3__3), 
                .WindowDin_1__3__2 (CacheWindow_1__3__2), .WindowDin_1__3__1 (
                CacheWindow_1__3__1), .WindowDin_1__3__0 (CacheWindow_1__3__0), 
                .WindowDin_1__4__7 (CacheWindow_1__4__7), .WindowDin_1__4__6 (
                CacheWindow_1__4__6), .WindowDin_1__4__5 (CacheWindow_1__4__5), 
                .WindowDin_1__4__4 (CacheWindow_1__4__4), .WindowDin_1__4__3 (
                CacheWindow_1__4__3), .WindowDin_1__4__2 (CacheWindow_1__4__2), 
                .WindowDin_1__4__1 (CacheWindow_1__4__1), .WindowDin_1__4__0 (
                CacheWindow_1__4__0), .WindowDin_2__0__7 (CacheWindow_2__0__7), 
                .WindowDin_2__0__6 (CacheWindow_2__0__6), .WindowDin_2__0__5 (
                CacheWindow_2__0__5), .WindowDin_2__0__4 (CacheWindow_2__0__4), 
                .WindowDin_2__0__3 (CacheWindow_2__0__3), .WindowDin_2__0__2 (
                CacheWindow_2__0__2), .WindowDin_2__0__1 (CacheWindow_2__0__1), 
                .WindowDin_2__0__0 (CacheWindow_2__0__0), .WindowDin_2__1__7 (
                CacheWindow_2__1__7), .WindowDin_2__1__6 (CacheWindow_2__1__6), 
                .WindowDin_2__1__5 (CacheWindow_2__1__5), .WindowDin_2__1__4 (
                CacheWindow_2__1__4), .WindowDin_2__1__3 (CacheWindow_2__1__3), 
                .WindowDin_2__1__2 (CacheWindow_2__1__2), .WindowDin_2__1__1 (
                CacheWindow_2__1__1), .WindowDin_2__1__0 (CacheWindow_2__1__0), 
                .WindowDin_2__2__7 (CacheWindow_2__2__7), .WindowDin_2__2__6 (
                CacheWindow_2__2__6), .WindowDin_2__2__5 (CacheWindow_2__2__5), 
                .WindowDin_2__2__4 (CacheWindow_2__2__4), .WindowDin_2__2__3 (
                CacheWindow_2__2__3), .WindowDin_2__2__2 (CacheWindow_2__2__2), 
                .WindowDin_2__2__1 (CacheWindow_2__2__1), .WindowDin_2__2__0 (
                CacheWindow_2__2__0), .WindowDin_2__3__7 (CacheWindow_2__3__7), 
                .WindowDin_2__3__6 (CacheWindow_2__3__6), .WindowDin_2__3__5 (
                CacheWindow_2__3__5), .WindowDin_2__3__4 (CacheWindow_2__3__4), 
                .WindowDin_2__3__3 (CacheWindow_2__3__3), .WindowDin_2__3__2 (
                CacheWindow_2__3__2), .WindowDin_2__3__1 (CacheWindow_2__3__1), 
                .WindowDin_2__3__0 (CacheWindow_2__3__0), .WindowDin_2__4__7 (
                CacheWindow_2__4__7), .WindowDin_2__4__6 (CacheWindow_2__4__6), 
                .WindowDin_2__4__5 (CacheWindow_2__4__5), .WindowDin_2__4__4 (
                CacheWindow_2__4__4), .WindowDin_2__4__3 (CacheWindow_2__4__3), 
                .WindowDin_2__4__2 (CacheWindow_2__4__2), .WindowDin_2__4__1 (
                CacheWindow_2__4__1), .WindowDin_2__4__0 (CacheWindow_2__4__0), 
                .WindowDin_3__0__7 (CacheWindow_3__0__7), .WindowDin_3__0__6 (
                CacheWindow_3__0__6), .WindowDin_3__0__5 (CacheWindow_3__0__5), 
                .WindowDin_3__0__4 (CacheWindow_3__0__4), .WindowDin_3__0__3 (
                CacheWindow_3__0__3), .WindowDin_3__0__2 (CacheWindow_3__0__2), 
                .WindowDin_3__0__1 (CacheWindow_3__0__1), .WindowDin_3__0__0 (
                CacheWindow_3__0__0), .WindowDin_3__1__7 (CacheWindow_3__1__7), 
                .WindowDin_3__1__6 (CacheWindow_3__1__6), .WindowDin_3__1__5 (
                CacheWindow_3__1__5), .WindowDin_3__1__4 (CacheWindow_3__1__4), 
                .WindowDin_3__1__3 (CacheWindow_3__1__3), .WindowDin_3__1__2 (
                CacheWindow_3__1__2), .WindowDin_3__1__1 (CacheWindow_3__1__1), 
                .WindowDin_3__1__0 (CacheWindow_3__1__0), .WindowDin_3__2__7 (
                CacheWindow_3__2__7), .WindowDin_3__2__6 (CacheWindow_3__2__6), 
                .WindowDin_3__2__5 (CacheWindow_3__2__5), .WindowDin_3__2__4 (
                CacheWindow_3__2__4), .WindowDin_3__2__3 (CacheWindow_3__2__3), 
                .WindowDin_3__2__2 (CacheWindow_3__2__2), .WindowDin_3__2__1 (
                CacheWindow_3__2__1), .WindowDin_3__2__0 (CacheWindow_3__2__0), 
                .WindowDin_3__3__7 (CacheWindow_3__3__7), .WindowDin_3__3__6 (
                CacheWindow_3__3__6), .WindowDin_3__3__5 (CacheWindow_3__3__5), 
                .WindowDin_3__3__4 (CacheWindow_3__3__4), .WindowDin_3__3__3 (
                CacheWindow_3__3__3), .WindowDin_3__3__2 (CacheWindow_3__3__2), 
                .WindowDin_3__3__1 (CacheWindow_3__3__1), .WindowDin_3__3__0 (
                CacheWindow_3__3__0), .WindowDin_3__4__7 (CacheWindow_3__4__7), 
                .WindowDin_3__4__6 (CacheWindow_3__4__6), .WindowDin_3__4__5 (
                CacheWindow_3__4__5), .WindowDin_3__4__4 (CacheWindow_3__4__4), 
                .WindowDin_3__4__3 (CacheWindow_3__4__3), .WindowDin_3__4__2 (
                CacheWindow_3__4__2), .WindowDin_3__4__1 (CacheWindow_3__4__1), 
                .WindowDin_3__4__0 (CacheWindow_3__4__0), .WindowDin_4__0__7 (
                CacheWindow_4__0__7), .WindowDin_4__0__6 (CacheWindow_4__0__6), 
                .WindowDin_4__0__5 (CacheWindow_4__0__5), .WindowDin_4__0__4 (
                CacheWindow_4__0__4), .WindowDin_4__0__3 (CacheWindow_4__0__3), 
                .WindowDin_4__0__2 (CacheWindow_4__0__2), .WindowDin_4__0__1 (
                CacheWindow_4__0__1), .WindowDin_4__0__0 (CacheWindow_4__0__0), 
                .WindowDin_4__1__7 (CacheWindow_4__1__7), .WindowDin_4__1__6 (
                CacheWindow_4__1__6), .WindowDin_4__1__5 (CacheWindow_4__1__5), 
                .WindowDin_4__1__4 (CacheWindow_4__1__4), .WindowDin_4__1__3 (
                CacheWindow_4__1__3), .WindowDin_4__1__2 (CacheWindow_4__1__2), 
                .WindowDin_4__1__1 (CacheWindow_4__1__1), .WindowDin_4__1__0 (
                CacheWindow_4__1__0), .WindowDin_4__2__7 (CacheWindow_4__2__7), 
                .WindowDin_4__2__6 (CacheWindow_4__2__6), .WindowDin_4__2__5 (
                CacheWindow_4__2__5), .WindowDin_4__2__4 (CacheWindow_4__2__4), 
                .WindowDin_4__2__3 (CacheWindow_4__2__3), .WindowDin_4__2__2 (
                CacheWindow_4__2__2), .WindowDin_4__2__1 (CacheWindow_4__2__1), 
                .WindowDin_4__2__0 (CacheWindow_4__2__0), .WindowDin_4__3__7 (
                CacheWindow_4__3__7), .WindowDin_4__3__6 (CacheWindow_4__3__6), 
                .WindowDin_4__3__5 (CacheWindow_4__3__5), .WindowDin_4__3__4 (
                CacheWindow_4__3__4), .WindowDin_4__3__3 (CacheWindow_4__3__3), 
                .WindowDin_4__3__2 (CacheWindow_4__3__2), .WindowDin_4__3__1 (
                CacheWindow_4__3__1), .WindowDin_4__3__0 (CacheWindow_4__3__0), 
                .WindowDin_4__4__7 (CacheWindow_4__4__7), .WindowDin_4__4__6 (
                CacheWindow_4__4__6), .WindowDin_4__4__5 (CacheWindow_4__4__5), 
                .WindowDin_4__4__4 (CacheWindow_4__4__4), .WindowDin_4__4__3 (
                CacheWindow_4__4__3), .WindowDin_4__4__2 (CacheWindow_4__4__2), 
                .WindowDin_4__4__1 (CacheWindow_4__4__1), .WindowDin_4__4__0 (
                CacheWindow_4__4__0), .Done (AccFinishCalc), .Result ({MemDin_7,
                MemDin_6,MemDin_5,MemDin_4,MemDin_3,MemDin_2,MemDin_1,MemDin_0})
                ) ;
    RAM_8_18 RAM (.CLK (CLK), .WR (MemWR), .Address ({MemAddr_17,MemWR,
             MemAddr_15,MemAddr_14,MemAddr_13,MemAddr_12,MemAddr_11,nx559,
             MemAddr_9,MemAddr_8,MemAddr_7,MemAddr_6,MemAddr_5,MemAddr_4,
             MemAddr_3,MemAddr_2,MemAddr_1,MemAddr_0}), .Din ({nx615,nx617,nx619
             ,MemDin_4,MemDin_3,MemDin_2,MemDin_1,MemDin_0}), .Dout ({MemDout_39
             ,MemDout_38,MemDout_37,MemDout_36,MemDout_35,MemDout_34,MemDout_33,
             MemDout_32,MemDout_31,MemDout_30,MemDout_29,MemDout_28,MemDout_27,
             MemDout_26,MemDout_25,MemDout_24,MemDout_23,MemDout_22,MemDout_21,
             MemDout_20,MemDout_19,MemDout_18,MemDout_17,MemDout_16,MemDout_15,
             MemDout_14,MemDout_13,MemDout_12,MemDout_11,MemDout_10,MemDout_9,
             MemDout_8,MemDout_7,MemDout_6,MemDout_5,MemDout_4,MemDout_3,
             MemDout_2,MemDout_1,MemDout_0})) ;
    cache CACHE (.CLK (CLK), .RST (CacheRST), .FilterSize (FilterSize), .FilterWR (
          CacheFilterWR), .WindowWR (CacheWindowWR), .Din ({MemDout_39,
          MemDout_38,MemDout_37,MemDout_36,MemDout_35,MemDout_34,MemDout_33,
          MemDout_32,MemDout_31,MemDout_30,MemDout_29,MemDout_28,MemDout_27,
          MemDout_26,MemDout_25,MemDout_24,MemDout_23,MemDout_22,MemDout_21,
          MemDout_20,MemDout_19,MemDout_18,MemDout_17,MemDout_16,MemDout_15,
          MemDout_14,MemDout_13,MemDout_12,MemDout_11,MemDout_10,MemDout_9,
          MemDout_8,MemDout_7,MemDout_6,MemDout_5,MemDout_4,MemDout_3,MemDout_2,
          MemDout_1,MemDout_0}), .FilterDout_0__0__7 (CacheFilter_0__0__7), .FilterDout_0__0__6 (
          CacheFilter_0__0__6), .FilterDout_0__0__5 (CacheFilter_0__0__5), .FilterDout_0__0__4 (
          CacheFilter_0__0__4), .FilterDout_0__0__3 (CacheFilter_0__0__3), .FilterDout_0__0__2 (
          CacheFilter_0__0__2), .FilterDout_0__0__1 (CacheFilter_0__0__1), .FilterDout_0__0__0 (
          CacheFilter_0__0__0), .FilterDout_0__1__7 (CacheFilter_0__1__7), .FilterDout_0__1__6 (
          CacheFilter_0__1__6), .FilterDout_0__1__5 (CacheFilter_0__1__5), .FilterDout_0__1__4 (
          CacheFilter_0__1__4), .FilterDout_0__1__3 (CacheFilter_0__1__3), .FilterDout_0__1__2 (
          CacheFilter_0__1__2), .FilterDout_0__1__1 (CacheFilter_0__1__1), .FilterDout_0__1__0 (
          CacheFilter_0__1__0), .FilterDout_0__2__7 (CacheFilter_0__2__7), .FilterDout_0__2__6 (
          CacheFilter_0__2__6), .FilterDout_0__2__5 (CacheFilter_0__2__5), .FilterDout_0__2__4 (
          CacheFilter_0__2__4), .FilterDout_0__2__3 (CacheFilter_0__2__3), .FilterDout_0__2__2 (
          CacheFilter_0__2__2), .FilterDout_0__2__1 (CacheFilter_0__2__1), .FilterDout_0__2__0 (
          CacheFilter_0__2__0), .FilterDout_0__3__7 (CacheFilter_0__3__7), .FilterDout_0__3__6 (
          CacheFilter_0__3__6), .FilterDout_0__3__5 (CacheFilter_0__3__5), .FilterDout_0__3__4 (
          CacheFilter_0__3__4), .FilterDout_0__3__3 (CacheFilter_0__3__3), .FilterDout_0__3__2 (
          CacheFilter_0__3__2), .FilterDout_0__3__1 (CacheFilter_0__3__1), .FilterDout_0__3__0 (
          CacheFilter_0__3__0), .FilterDout_0__4__7 (CacheFilter_0__4__7), .FilterDout_0__4__6 (
          CacheFilter_0__4__6), .FilterDout_0__4__5 (CacheFilter_0__4__5), .FilterDout_0__4__4 (
          CacheFilter_0__4__4), .FilterDout_0__4__3 (CacheFilter_0__4__3), .FilterDout_0__4__2 (
          CacheFilter_0__4__2), .FilterDout_0__4__1 (CacheFilter_0__4__1), .FilterDout_0__4__0 (
          CacheFilter_0__4__0), .FilterDout_1__0__7 (CacheFilter_1__0__7), .FilterDout_1__0__6 (
          CacheFilter_1__0__6), .FilterDout_1__0__5 (CacheFilter_1__0__5), .FilterDout_1__0__4 (
          CacheFilter_1__0__4), .FilterDout_1__0__3 (CacheFilter_1__0__3), .FilterDout_1__0__2 (
          CacheFilter_1__0__2), .FilterDout_1__0__1 (CacheFilter_1__0__1), .FilterDout_1__0__0 (
          CacheFilter_1__0__0), .FilterDout_1__1__7 (CacheFilter_1__1__7), .FilterDout_1__1__6 (
          CacheFilter_1__1__6), .FilterDout_1__1__5 (CacheFilter_1__1__5), .FilterDout_1__1__4 (
          CacheFilter_1__1__4), .FilterDout_1__1__3 (CacheFilter_1__1__3), .FilterDout_1__1__2 (
          CacheFilter_1__1__2), .FilterDout_1__1__1 (CacheFilter_1__1__1), .FilterDout_1__1__0 (
          CacheFilter_1__1__0), .FilterDout_1__2__7 (CacheFilter_1__2__7), .FilterDout_1__2__6 (
          CacheFilter_1__2__6), .FilterDout_1__2__5 (CacheFilter_1__2__5), .FilterDout_1__2__4 (
          CacheFilter_1__2__4), .FilterDout_1__2__3 (CacheFilter_1__2__3), .FilterDout_1__2__2 (
          CacheFilter_1__2__2), .FilterDout_1__2__1 (CacheFilter_1__2__1), .FilterDout_1__2__0 (
          CacheFilter_1__2__0), .FilterDout_1__3__7 (CacheFilter_1__3__7), .FilterDout_1__3__6 (
          CacheFilter_1__3__6), .FilterDout_1__3__5 (CacheFilter_1__3__5), .FilterDout_1__3__4 (
          CacheFilter_1__3__4), .FilterDout_1__3__3 (CacheFilter_1__3__3), .FilterDout_1__3__2 (
          CacheFilter_1__3__2), .FilterDout_1__3__1 (CacheFilter_1__3__1), .FilterDout_1__3__0 (
          CacheFilter_1__3__0), .FilterDout_1__4__7 (CacheFilter_1__4__7), .FilterDout_1__4__6 (
          CacheFilter_1__4__6), .FilterDout_1__4__5 (CacheFilter_1__4__5), .FilterDout_1__4__4 (
          CacheFilter_1__4__4), .FilterDout_1__4__3 (CacheFilter_1__4__3), .FilterDout_1__4__2 (
          CacheFilter_1__4__2), .FilterDout_1__4__1 (CacheFilter_1__4__1), .FilterDout_1__4__0 (
          CacheFilter_1__4__0), .FilterDout_2__0__7 (CacheFilter_2__0__7), .FilterDout_2__0__6 (
          CacheFilter_2__0__6), .FilterDout_2__0__5 (CacheFilter_2__0__5), .FilterDout_2__0__4 (
          CacheFilter_2__0__4), .FilterDout_2__0__3 (CacheFilter_2__0__3), .FilterDout_2__0__2 (
          CacheFilter_2__0__2), .FilterDout_2__0__1 (CacheFilter_2__0__1), .FilterDout_2__0__0 (
          CacheFilter_2__0__0), .FilterDout_2__1__7 (CacheFilter_2__1__7), .FilterDout_2__1__6 (
          CacheFilter_2__1__6), .FilterDout_2__1__5 (CacheFilter_2__1__5), .FilterDout_2__1__4 (
          CacheFilter_2__1__4), .FilterDout_2__1__3 (CacheFilter_2__1__3), .FilterDout_2__1__2 (
          CacheFilter_2__1__2), .FilterDout_2__1__1 (CacheFilter_2__1__1), .FilterDout_2__1__0 (
          CacheFilter_2__1__0), .FilterDout_2__2__7 (CacheFilter_2__2__7), .FilterDout_2__2__6 (
          CacheFilter_2__2__6), .FilterDout_2__2__5 (CacheFilter_2__2__5), .FilterDout_2__2__4 (
          CacheFilter_2__2__4), .FilterDout_2__2__3 (CacheFilter_2__2__3), .FilterDout_2__2__2 (
          CacheFilter_2__2__2), .FilterDout_2__2__1 (CacheFilter_2__2__1), .FilterDout_2__2__0 (
          CacheFilter_2__2__0), .FilterDout_2__3__7 (CacheFilter_2__3__7), .FilterDout_2__3__6 (
          CacheFilter_2__3__6), .FilterDout_2__3__5 (CacheFilter_2__3__5), .FilterDout_2__3__4 (
          CacheFilter_2__3__4), .FilterDout_2__3__3 (CacheFilter_2__3__3), .FilterDout_2__3__2 (
          CacheFilter_2__3__2), .FilterDout_2__3__1 (CacheFilter_2__3__1), .FilterDout_2__3__0 (
          CacheFilter_2__3__0), .FilterDout_2__4__7 (CacheFilter_2__4__7), .FilterDout_2__4__6 (
          CacheFilter_2__4__6), .FilterDout_2__4__5 (CacheFilter_2__4__5), .FilterDout_2__4__4 (
          CacheFilter_2__4__4), .FilterDout_2__4__3 (CacheFilter_2__4__3), .FilterDout_2__4__2 (
          CacheFilter_2__4__2), .FilterDout_2__4__1 (CacheFilter_2__4__1), .FilterDout_2__4__0 (
          CacheFilter_2__4__0), .FilterDout_3__0__7 (CacheFilter_3__0__7), .FilterDout_3__0__6 (
          CacheFilter_3__0__6), .FilterDout_3__0__5 (CacheFilter_3__0__5), .FilterDout_3__0__4 (
          CacheFilter_3__0__4), .FilterDout_3__0__3 (CacheFilter_3__0__3), .FilterDout_3__0__2 (
          CacheFilter_3__0__2), .FilterDout_3__0__1 (CacheFilter_3__0__1), .FilterDout_3__0__0 (
          CacheFilter_3__0__0), .FilterDout_3__1__7 (CacheFilter_3__1__7), .FilterDout_3__1__6 (
          CacheFilter_3__1__6), .FilterDout_3__1__5 (CacheFilter_3__1__5), .FilterDout_3__1__4 (
          CacheFilter_3__1__4), .FilterDout_3__1__3 (CacheFilter_3__1__3), .FilterDout_3__1__2 (
          CacheFilter_3__1__2), .FilterDout_3__1__1 (CacheFilter_3__1__1), .FilterDout_3__1__0 (
          CacheFilter_3__1__0), .FilterDout_3__2__7 (CacheFilter_3__2__7), .FilterDout_3__2__6 (
          CacheFilter_3__2__6), .FilterDout_3__2__5 (CacheFilter_3__2__5), .FilterDout_3__2__4 (
          CacheFilter_3__2__4), .FilterDout_3__2__3 (CacheFilter_3__2__3), .FilterDout_3__2__2 (
          CacheFilter_3__2__2), .FilterDout_3__2__1 (CacheFilter_3__2__1), .FilterDout_3__2__0 (
          CacheFilter_3__2__0), .FilterDout_3__3__7 (CacheFilter_3__3__7), .FilterDout_3__3__6 (
          CacheFilter_3__3__6), .FilterDout_3__3__5 (CacheFilter_3__3__5), .FilterDout_3__3__4 (
          CacheFilter_3__3__4), .FilterDout_3__3__3 (CacheFilter_3__3__3), .FilterDout_3__3__2 (
          CacheFilter_3__3__2), .FilterDout_3__3__1 (CacheFilter_3__3__1), .FilterDout_3__3__0 (
          CacheFilter_3__3__0), .FilterDout_3__4__7 (CacheFilter_3__4__7), .FilterDout_3__4__6 (
          CacheFilter_3__4__6), .FilterDout_3__4__5 (CacheFilter_3__4__5), .FilterDout_3__4__4 (
          CacheFilter_3__4__4), .FilterDout_3__4__3 (CacheFilter_3__4__3), .FilterDout_3__4__2 (
          CacheFilter_3__4__2), .FilterDout_3__4__1 (CacheFilter_3__4__1), .FilterDout_3__4__0 (
          CacheFilter_3__4__0), .FilterDout_4__0__7 (CacheFilter_4__0__7), .FilterDout_4__0__6 (
          CacheFilter_4__0__6), .FilterDout_4__0__5 (CacheFilter_4__0__5), .FilterDout_4__0__4 (
          CacheFilter_4__0__4), .FilterDout_4__0__3 (CacheFilter_4__0__3), .FilterDout_4__0__2 (
          CacheFilter_4__0__2), .FilterDout_4__0__1 (CacheFilter_4__0__1), .FilterDout_4__0__0 (
          CacheFilter_4__0__0), .FilterDout_4__1__7 (CacheFilter_4__1__7), .FilterDout_4__1__6 (
          CacheFilter_4__1__6), .FilterDout_4__1__5 (CacheFilter_4__1__5), .FilterDout_4__1__4 (
          CacheFilter_4__1__4), .FilterDout_4__1__3 (CacheFilter_4__1__3), .FilterDout_4__1__2 (
          CacheFilter_4__1__2), .FilterDout_4__1__1 (CacheFilter_4__1__1), .FilterDout_4__1__0 (
          CacheFilter_4__1__0), .FilterDout_4__2__7 (CacheFilter_4__2__7), .FilterDout_4__2__6 (
          CacheFilter_4__2__6), .FilterDout_4__2__5 (CacheFilter_4__2__5), .FilterDout_4__2__4 (
          CacheFilter_4__2__4), .FilterDout_4__2__3 (CacheFilter_4__2__3), .FilterDout_4__2__2 (
          CacheFilter_4__2__2), .FilterDout_4__2__1 (CacheFilter_4__2__1), .FilterDout_4__2__0 (
          CacheFilter_4__2__0), .FilterDout_4__3__7 (CacheFilter_4__3__7), .FilterDout_4__3__6 (
          CacheFilter_4__3__6), .FilterDout_4__3__5 (CacheFilter_4__3__5), .FilterDout_4__3__4 (
          CacheFilter_4__3__4), .FilterDout_4__3__3 (CacheFilter_4__3__3), .FilterDout_4__3__2 (
          CacheFilter_4__3__2), .FilterDout_4__3__1 (CacheFilter_4__3__1), .FilterDout_4__3__0 (
          CacheFilter_4__3__0), .FilterDout_4__4__7 (CacheFilter_4__4__7), .FilterDout_4__4__6 (
          CacheFilter_4__4__6), .FilterDout_4__4__5 (CacheFilter_4__4__5), .FilterDout_4__4__4 (
          CacheFilter_4__4__4), .FilterDout_4__4__3 (CacheFilter_4__4__3), .FilterDout_4__4__2 (
          CacheFilter_4__4__2), .FilterDout_4__4__1 (CacheFilter_4__4__1), .FilterDout_4__4__0 (
          CacheFilter_4__4__0), .WindowDout_0__0__7 (CacheWindow_0__0__7), .WindowDout_0__0__6 (
          CacheWindow_0__0__6), .WindowDout_0__0__5 (CacheWindow_0__0__5), .WindowDout_0__0__4 (
          CacheWindow_0__0__4), .WindowDout_0__0__3 (CacheWindow_0__0__3), .WindowDout_0__0__2 (
          CacheWindow_0__0__2), .WindowDout_0__0__1 (CacheWindow_0__0__1), .WindowDout_0__0__0 (
          CacheWindow_0__0__0), .WindowDout_0__1__7 (CacheWindow_0__1__7), .WindowDout_0__1__6 (
          CacheWindow_0__1__6), .WindowDout_0__1__5 (CacheWindow_0__1__5), .WindowDout_0__1__4 (
          CacheWindow_0__1__4), .WindowDout_0__1__3 (CacheWindow_0__1__3), .WindowDout_0__1__2 (
          CacheWindow_0__1__2), .WindowDout_0__1__1 (CacheWindow_0__1__1), .WindowDout_0__1__0 (
          CacheWindow_0__1__0), .WindowDout_0__2__7 (CacheWindow_0__2__7), .WindowDout_0__2__6 (
          CacheWindow_0__2__6), .WindowDout_0__2__5 (CacheWindow_0__2__5), .WindowDout_0__2__4 (
          CacheWindow_0__2__4), .WindowDout_0__2__3 (CacheWindow_0__2__3), .WindowDout_0__2__2 (
          CacheWindow_0__2__2), .WindowDout_0__2__1 (CacheWindow_0__2__1), .WindowDout_0__2__0 (
          CacheWindow_0__2__0), .WindowDout_0__3__7 (CacheWindow_0__3__7), .WindowDout_0__3__6 (
          CacheWindow_0__3__6), .WindowDout_0__3__5 (CacheWindow_0__3__5), .WindowDout_0__3__4 (
          CacheWindow_0__3__4), .WindowDout_0__3__3 (CacheWindow_0__3__3), .WindowDout_0__3__2 (
          CacheWindow_0__3__2), .WindowDout_0__3__1 (CacheWindow_0__3__1), .WindowDout_0__3__0 (
          CacheWindow_0__3__0), .WindowDout_0__4__7 (CacheWindow_0__4__7), .WindowDout_0__4__6 (
          CacheWindow_0__4__6), .WindowDout_0__4__5 (CacheWindow_0__4__5), .WindowDout_0__4__4 (
          CacheWindow_0__4__4), .WindowDout_0__4__3 (CacheWindow_0__4__3), .WindowDout_0__4__2 (
          CacheWindow_0__4__2), .WindowDout_0__4__1 (CacheWindow_0__4__1), .WindowDout_0__4__0 (
          CacheWindow_0__4__0), .WindowDout_1__0__7 (CacheWindow_1__0__7), .WindowDout_1__0__6 (
          CacheWindow_1__0__6), .WindowDout_1__0__5 (CacheWindow_1__0__5), .WindowDout_1__0__4 (
          CacheWindow_1__0__4), .WindowDout_1__0__3 (CacheWindow_1__0__3), .WindowDout_1__0__2 (
          CacheWindow_1__0__2), .WindowDout_1__0__1 (CacheWindow_1__0__1), .WindowDout_1__0__0 (
          CacheWindow_1__0__0), .WindowDout_1__1__7 (CacheWindow_1__1__7), .WindowDout_1__1__6 (
          CacheWindow_1__1__6), .WindowDout_1__1__5 (CacheWindow_1__1__5), .WindowDout_1__1__4 (
          CacheWindow_1__1__4), .WindowDout_1__1__3 (CacheWindow_1__1__3), .WindowDout_1__1__2 (
          CacheWindow_1__1__2), .WindowDout_1__1__1 (CacheWindow_1__1__1), .WindowDout_1__1__0 (
          CacheWindow_1__1__0), .WindowDout_1__2__7 (CacheWindow_1__2__7), .WindowDout_1__2__6 (
          CacheWindow_1__2__6), .WindowDout_1__2__5 (CacheWindow_1__2__5), .WindowDout_1__2__4 (
          CacheWindow_1__2__4), .WindowDout_1__2__3 (CacheWindow_1__2__3), .WindowDout_1__2__2 (
          CacheWindow_1__2__2), .WindowDout_1__2__1 (CacheWindow_1__2__1), .WindowDout_1__2__0 (
          CacheWindow_1__2__0), .WindowDout_1__3__7 (CacheWindow_1__3__7), .WindowDout_1__3__6 (
          CacheWindow_1__3__6), .WindowDout_1__3__5 (CacheWindow_1__3__5), .WindowDout_1__3__4 (
          CacheWindow_1__3__4), .WindowDout_1__3__3 (CacheWindow_1__3__3), .WindowDout_1__3__2 (
          CacheWindow_1__3__2), .WindowDout_1__3__1 (CacheWindow_1__3__1), .WindowDout_1__3__0 (
          CacheWindow_1__3__0), .WindowDout_1__4__7 (CacheWindow_1__4__7), .WindowDout_1__4__6 (
          CacheWindow_1__4__6), .WindowDout_1__4__5 (CacheWindow_1__4__5), .WindowDout_1__4__4 (
          CacheWindow_1__4__4), .WindowDout_1__4__3 (CacheWindow_1__4__3), .WindowDout_1__4__2 (
          CacheWindow_1__4__2), .WindowDout_1__4__1 (CacheWindow_1__4__1), .WindowDout_1__4__0 (
          CacheWindow_1__4__0), .WindowDout_2__0__7 (CacheWindow_2__0__7), .WindowDout_2__0__6 (
          CacheWindow_2__0__6), .WindowDout_2__0__5 (CacheWindow_2__0__5), .WindowDout_2__0__4 (
          CacheWindow_2__0__4), .WindowDout_2__0__3 (CacheWindow_2__0__3), .WindowDout_2__0__2 (
          CacheWindow_2__0__2), .WindowDout_2__0__1 (CacheWindow_2__0__1), .WindowDout_2__0__0 (
          CacheWindow_2__0__0), .WindowDout_2__1__7 (CacheWindow_2__1__7), .WindowDout_2__1__6 (
          CacheWindow_2__1__6), .WindowDout_2__1__5 (CacheWindow_2__1__5), .WindowDout_2__1__4 (
          CacheWindow_2__1__4), .WindowDout_2__1__3 (CacheWindow_2__1__3), .WindowDout_2__1__2 (
          CacheWindow_2__1__2), .WindowDout_2__1__1 (CacheWindow_2__1__1), .WindowDout_2__1__0 (
          CacheWindow_2__1__0), .WindowDout_2__2__7 (CacheWindow_2__2__7), .WindowDout_2__2__6 (
          CacheWindow_2__2__6), .WindowDout_2__2__5 (CacheWindow_2__2__5), .WindowDout_2__2__4 (
          CacheWindow_2__2__4), .WindowDout_2__2__3 (CacheWindow_2__2__3), .WindowDout_2__2__2 (
          CacheWindow_2__2__2), .WindowDout_2__2__1 (CacheWindow_2__2__1), .WindowDout_2__2__0 (
          CacheWindow_2__2__0), .WindowDout_2__3__7 (CacheWindow_2__3__7), .WindowDout_2__3__6 (
          CacheWindow_2__3__6), .WindowDout_2__3__5 (CacheWindow_2__3__5), .WindowDout_2__3__4 (
          CacheWindow_2__3__4), .WindowDout_2__3__3 (CacheWindow_2__3__3), .WindowDout_2__3__2 (
          CacheWindow_2__3__2), .WindowDout_2__3__1 (CacheWindow_2__3__1), .WindowDout_2__3__0 (
          CacheWindow_2__3__0), .WindowDout_2__4__7 (CacheWindow_2__4__7), .WindowDout_2__4__6 (
          CacheWindow_2__4__6), .WindowDout_2__4__5 (CacheWindow_2__4__5), .WindowDout_2__4__4 (
          CacheWindow_2__4__4), .WindowDout_2__4__3 (CacheWindow_2__4__3), .WindowDout_2__4__2 (
          CacheWindow_2__4__2), .WindowDout_2__4__1 (CacheWindow_2__4__1), .WindowDout_2__4__0 (
          CacheWindow_2__4__0), .WindowDout_3__0__7 (CacheWindow_3__0__7), .WindowDout_3__0__6 (
          CacheWindow_3__0__6), .WindowDout_3__0__5 (CacheWindow_3__0__5), .WindowDout_3__0__4 (
          CacheWindow_3__0__4), .WindowDout_3__0__3 (CacheWindow_3__0__3), .WindowDout_3__0__2 (
          CacheWindow_3__0__2), .WindowDout_3__0__1 (CacheWindow_3__0__1), .WindowDout_3__0__0 (
          CacheWindow_3__0__0), .WindowDout_3__1__7 (CacheWindow_3__1__7), .WindowDout_3__1__6 (
          CacheWindow_3__1__6), .WindowDout_3__1__5 (CacheWindow_3__1__5), .WindowDout_3__1__4 (
          CacheWindow_3__1__4), .WindowDout_3__1__3 (CacheWindow_3__1__3), .WindowDout_3__1__2 (
          CacheWindow_3__1__2), .WindowDout_3__1__1 (CacheWindow_3__1__1), .WindowDout_3__1__0 (
          CacheWindow_3__1__0), .WindowDout_3__2__7 (CacheWindow_3__2__7), .WindowDout_3__2__6 (
          CacheWindow_3__2__6), .WindowDout_3__2__5 (CacheWindow_3__2__5), .WindowDout_3__2__4 (
          CacheWindow_3__2__4), .WindowDout_3__2__3 (CacheWindow_3__2__3), .WindowDout_3__2__2 (
          CacheWindow_3__2__2), .WindowDout_3__2__1 (CacheWindow_3__2__1), .WindowDout_3__2__0 (
          CacheWindow_3__2__0), .WindowDout_3__3__7 (CacheWindow_3__3__7), .WindowDout_3__3__6 (
          CacheWindow_3__3__6), .WindowDout_3__3__5 (CacheWindow_3__3__5), .WindowDout_3__3__4 (
          CacheWindow_3__3__4), .WindowDout_3__3__3 (CacheWindow_3__3__3), .WindowDout_3__3__2 (
          CacheWindow_3__3__2), .WindowDout_3__3__1 (CacheWindow_3__3__1), .WindowDout_3__3__0 (
          CacheWindow_3__3__0), .WindowDout_3__4__7 (CacheWindow_3__4__7), .WindowDout_3__4__6 (
          CacheWindow_3__4__6), .WindowDout_3__4__5 (CacheWindow_3__4__5), .WindowDout_3__4__4 (
          CacheWindow_3__4__4), .WindowDout_3__4__3 (CacheWindow_3__4__3), .WindowDout_3__4__2 (
          CacheWindow_3__4__2), .WindowDout_3__4__1 (CacheWindow_3__4__1), .WindowDout_3__4__0 (
          CacheWindow_3__4__0), .WindowDout_4__0__7 (CacheWindow_4__0__7), .WindowDout_4__0__6 (
          CacheWindow_4__0__6), .WindowDout_4__0__5 (CacheWindow_4__0__5), .WindowDout_4__0__4 (
          CacheWindow_4__0__4), .WindowDout_4__0__3 (CacheWindow_4__0__3), .WindowDout_4__0__2 (
          CacheWindow_4__0__2), .WindowDout_4__0__1 (CacheWindow_4__0__1), .WindowDout_4__0__0 (
          CacheWindow_4__0__0), .WindowDout_4__1__7 (CacheWindow_4__1__7), .WindowDout_4__1__6 (
          CacheWindow_4__1__6), .WindowDout_4__1__5 (CacheWindow_4__1__5), .WindowDout_4__1__4 (
          CacheWindow_4__1__4), .WindowDout_4__1__3 (CacheWindow_4__1__3), .WindowDout_4__1__2 (
          CacheWindow_4__1__2), .WindowDout_4__1__1 (CacheWindow_4__1__1), .WindowDout_4__1__0 (
          CacheWindow_4__1__0), .WindowDout_4__2__7 (CacheWindow_4__2__7), .WindowDout_4__2__6 (
          CacheWindow_4__2__6), .WindowDout_4__2__5 (CacheWindow_4__2__5), .WindowDout_4__2__4 (
          CacheWindow_4__2__4), .WindowDout_4__2__3 (CacheWindow_4__2__3), .WindowDout_4__2__2 (
          CacheWindow_4__2__2), .WindowDout_4__2__1 (CacheWindow_4__2__1), .WindowDout_4__2__0 (
          CacheWindow_4__2__0), .WindowDout_4__3__7 (CacheWindow_4__3__7), .WindowDout_4__3__6 (
          CacheWindow_4__3__6), .WindowDout_4__3__5 (CacheWindow_4__3__5), .WindowDout_4__3__4 (
          CacheWindow_4__3__4), .WindowDout_4__3__3 (CacheWindow_4__3__3), .WindowDout_4__3__2 (
          CacheWindow_4__3__2), .WindowDout_4__3__1 (CacheWindow_4__3__1), .WindowDout_4__3__0 (
          CacheWindow_4__3__0), .WindowDout_4__4__7 (CacheWindow_4__4__7), .WindowDout_4__4__6 (
          CacheWindow_4__4__6), .WindowDout_4__4__5 (CacheWindow_4__4__5), .WindowDout_4__4__4 (
          CacheWindow_4__4__4), .WindowDout_4__4__3 (CacheWindow_4__4__3), .WindowDout_4__4__2 (
          CacheWindow_4__4__2), .WindowDout_4__4__1 (CacheWindow_4__4__1), .WindowDout_4__4__0 (
          CacheWindow_4__4__0)) ;
    fake_vcc ix542 (.Y (PWR)) ;
    or02 ix3 (.Y (CalcStartRST), .A0 (RST), .A1 (CalcStarted)) ;
    or02 ix1 (.Y (CacheRST), .A0 (RST), .A1 (FirstCycle)) ;
    buf02 ix558 (.Y (nx559), .A (MemAddr_10)) ;
    buf02 ix614 (.Y (nx615), .A (MemDin_7)) ;
    buf02 ix616 (.Y (nx617), .A (MemDin_6)) ;
    buf02 ix618 (.Y (nx619), .A (MemDin_5)) ;
endmodule


module cache ( CLK, RST, FilterSize, FilterWR, WindowWR, Din, FilterDout_0__0__7, 
               FilterDout_0__0__6, FilterDout_0__0__5, FilterDout_0__0__4, 
               FilterDout_0__0__3, FilterDout_0__0__2, FilterDout_0__0__1, 
               FilterDout_0__0__0, FilterDout_0__1__7, FilterDout_0__1__6, 
               FilterDout_0__1__5, FilterDout_0__1__4, FilterDout_0__1__3, 
               FilterDout_0__1__2, FilterDout_0__1__1, FilterDout_0__1__0, 
               FilterDout_0__2__7, FilterDout_0__2__6, FilterDout_0__2__5, 
               FilterDout_0__2__4, FilterDout_0__2__3, FilterDout_0__2__2, 
               FilterDout_0__2__1, FilterDout_0__2__0, FilterDout_0__3__7, 
               FilterDout_0__3__6, FilterDout_0__3__5, FilterDout_0__3__4, 
               FilterDout_0__3__3, FilterDout_0__3__2, FilterDout_0__3__1, 
               FilterDout_0__3__0, FilterDout_0__4__7, FilterDout_0__4__6, 
               FilterDout_0__4__5, FilterDout_0__4__4, FilterDout_0__4__3, 
               FilterDout_0__4__2, FilterDout_0__4__1, FilterDout_0__4__0, 
               FilterDout_1__0__7, FilterDout_1__0__6, FilterDout_1__0__5, 
               FilterDout_1__0__4, FilterDout_1__0__3, FilterDout_1__0__2, 
               FilterDout_1__0__1, FilterDout_1__0__0, FilterDout_1__1__7, 
               FilterDout_1__1__6, FilterDout_1__1__5, FilterDout_1__1__4, 
               FilterDout_1__1__3, FilterDout_1__1__2, FilterDout_1__1__1, 
               FilterDout_1__1__0, FilterDout_1__2__7, FilterDout_1__2__6, 
               FilterDout_1__2__5, FilterDout_1__2__4, FilterDout_1__2__3, 
               FilterDout_1__2__2, FilterDout_1__2__1, FilterDout_1__2__0, 
               FilterDout_1__3__7, FilterDout_1__3__6, FilterDout_1__3__5, 
               FilterDout_1__3__4, FilterDout_1__3__3, FilterDout_1__3__2, 
               FilterDout_1__3__1, FilterDout_1__3__0, FilterDout_1__4__7, 
               FilterDout_1__4__6, FilterDout_1__4__5, FilterDout_1__4__4, 
               FilterDout_1__4__3, FilterDout_1__4__2, FilterDout_1__4__1, 
               FilterDout_1__4__0, FilterDout_2__0__7, FilterDout_2__0__6, 
               FilterDout_2__0__5, FilterDout_2__0__4, FilterDout_2__0__3, 
               FilterDout_2__0__2, FilterDout_2__0__1, FilterDout_2__0__0, 
               FilterDout_2__1__7, FilterDout_2__1__6, FilterDout_2__1__5, 
               FilterDout_2__1__4, FilterDout_2__1__3, FilterDout_2__1__2, 
               FilterDout_2__1__1, FilterDout_2__1__0, FilterDout_2__2__7, 
               FilterDout_2__2__6, FilterDout_2__2__5, FilterDout_2__2__4, 
               FilterDout_2__2__3, FilterDout_2__2__2, FilterDout_2__2__1, 
               FilterDout_2__2__0, FilterDout_2__3__7, FilterDout_2__3__6, 
               FilterDout_2__3__5, FilterDout_2__3__4, FilterDout_2__3__3, 
               FilterDout_2__3__2, FilterDout_2__3__1, FilterDout_2__3__0, 
               FilterDout_2__4__7, FilterDout_2__4__6, FilterDout_2__4__5, 
               FilterDout_2__4__4, FilterDout_2__4__3, FilterDout_2__4__2, 
               FilterDout_2__4__1, FilterDout_2__4__0, FilterDout_3__0__7, 
               FilterDout_3__0__6, FilterDout_3__0__5, FilterDout_3__0__4, 
               FilterDout_3__0__3, FilterDout_3__0__2, FilterDout_3__0__1, 
               FilterDout_3__0__0, FilterDout_3__1__7, FilterDout_3__1__6, 
               FilterDout_3__1__5, FilterDout_3__1__4, FilterDout_3__1__3, 
               FilterDout_3__1__2, FilterDout_3__1__1, FilterDout_3__1__0, 
               FilterDout_3__2__7, FilterDout_3__2__6, FilterDout_3__2__5, 
               FilterDout_3__2__4, FilterDout_3__2__3, FilterDout_3__2__2, 
               FilterDout_3__2__1, FilterDout_3__2__0, FilterDout_3__3__7, 
               FilterDout_3__3__6, FilterDout_3__3__5, FilterDout_3__3__4, 
               FilterDout_3__3__3, FilterDout_3__3__2, FilterDout_3__3__1, 
               FilterDout_3__3__0, FilterDout_3__4__7, FilterDout_3__4__6, 
               FilterDout_3__4__5, FilterDout_3__4__4, FilterDout_3__4__3, 
               FilterDout_3__4__2, FilterDout_3__4__1, FilterDout_3__4__0, 
               FilterDout_4__0__7, FilterDout_4__0__6, FilterDout_4__0__5, 
               FilterDout_4__0__4, FilterDout_4__0__3, FilterDout_4__0__2, 
               FilterDout_4__0__1, FilterDout_4__0__0, FilterDout_4__1__7, 
               FilterDout_4__1__6, FilterDout_4__1__5, FilterDout_4__1__4, 
               FilterDout_4__1__3, FilterDout_4__1__2, FilterDout_4__1__1, 
               FilterDout_4__1__0, FilterDout_4__2__7, FilterDout_4__2__6, 
               FilterDout_4__2__5, FilterDout_4__2__4, FilterDout_4__2__3, 
               FilterDout_4__2__2, FilterDout_4__2__1, FilterDout_4__2__0, 
               FilterDout_4__3__7, FilterDout_4__3__6, FilterDout_4__3__5, 
               FilterDout_4__3__4, FilterDout_4__3__3, FilterDout_4__3__2, 
               FilterDout_4__3__1, FilterDout_4__3__0, FilterDout_4__4__7, 
               FilterDout_4__4__6, FilterDout_4__4__5, FilterDout_4__4__4, 
               FilterDout_4__4__3, FilterDout_4__4__2, FilterDout_4__4__1, 
               FilterDout_4__4__0, WindowDout_0__0__7, WindowDout_0__0__6, 
               WindowDout_0__0__5, WindowDout_0__0__4, WindowDout_0__0__3, 
               WindowDout_0__0__2, WindowDout_0__0__1, WindowDout_0__0__0, 
               WindowDout_0__1__7, WindowDout_0__1__6, WindowDout_0__1__5, 
               WindowDout_0__1__4, WindowDout_0__1__3, WindowDout_0__1__2, 
               WindowDout_0__1__1, WindowDout_0__1__0, WindowDout_0__2__7, 
               WindowDout_0__2__6, WindowDout_0__2__5, WindowDout_0__2__4, 
               WindowDout_0__2__3, WindowDout_0__2__2, WindowDout_0__2__1, 
               WindowDout_0__2__0, WindowDout_0__3__7, WindowDout_0__3__6, 
               WindowDout_0__3__5, WindowDout_0__3__4, WindowDout_0__3__3, 
               WindowDout_0__3__2, WindowDout_0__3__1, WindowDout_0__3__0, 
               WindowDout_0__4__7, WindowDout_0__4__6, WindowDout_0__4__5, 
               WindowDout_0__4__4, WindowDout_0__4__3, WindowDout_0__4__2, 
               WindowDout_0__4__1, WindowDout_0__4__0, WindowDout_1__0__7, 
               WindowDout_1__0__6, WindowDout_1__0__5, WindowDout_1__0__4, 
               WindowDout_1__0__3, WindowDout_1__0__2, WindowDout_1__0__1, 
               WindowDout_1__0__0, WindowDout_1__1__7, WindowDout_1__1__6, 
               WindowDout_1__1__5, WindowDout_1__1__4, WindowDout_1__1__3, 
               WindowDout_1__1__2, WindowDout_1__1__1, WindowDout_1__1__0, 
               WindowDout_1__2__7, WindowDout_1__2__6, WindowDout_1__2__5, 
               WindowDout_1__2__4, WindowDout_1__2__3, WindowDout_1__2__2, 
               WindowDout_1__2__1, WindowDout_1__2__0, WindowDout_1__3__7, 
               WindowDout_1__3__6, WindowDout_1__3__5, WindowDout_1__3__4, 
               WindowDout_1__3__3, WindowDout_1__3__2, WindowDout_1__3__1, 
               WindowDout_1__3__0, WindowDout_1__4__7, WindowDout_1__4__6, 
               WindowDout_1__4__5, WindowDout_1__4__4, WindowDout_1__4__3, 
               WindowDout_1__4__2, WindowDout_1__4__1, WindowDout_1__4__0, 
               WindowDout_2__0__7, WindowDout_2__0__6, WindowDout_2__0__5, 
               WindowDout_2__0__4, WindowDout_2__0__3, WindowDout_2__0__2, 
               WindowDout_2__0__1, WindowDout_2__0__0, WindowDout_2__1__7, 
               WindowDout_2__1__6, WindowDout_2__1__5, WindowDout_2__1__4, 
               WindowDout_2__1__3, WindowDout_2__1__2, WindowDout_2__1__1, 
               WindowDout_2__1__0, WindowDout_2__2__7, WindowDout_2__2__6, 
               WindowDout_2__2__5, WindowDout_2__2__4, WindowDout_2__2__3, 
               WindowDout_2__2__2, WindowDout_2__2__1, WindowDout_2__2__0, 
               WindowDout_2__3__7, WindowDout_2__3__6, WindowDout_2__3__5, 
               WindowDout_2__3__4, WindowDout_2__3__3, WindowDout_2__3__2, 
               WindowDout_2__3__1, WindowDout_2__3__0, WindowDout_2__4__7, 
               WindowDout_2__4__6, WindowDout_2__4__5, WindowDout_2__4__4, 
               WindowDout_2__4__3, WindowDout_2__4__2, WindowDout_2__4__1, 
               WindowDout_2__4__0, WindowDout_3__0__7, WindowDout_3__0__6, 
               WindowDout_3__0__5, WindowDout_3__0__4, WindowDout_3__0__3, 
               WindowDout_3__0__2, WindowDout_3__0__1, WindowDout_3__0__0, 
               WindowDout_3__1__7, WindowDout_3__1__6, WindowDout_3__1__5, 
               WindowDout_3__1__4, WindowDout_3__1__3, WindowDout_3__1__2, 
               WindowDout_3__1__1, WindowDout_3__1__0, WindowDout_3__2__7, 
               WindowDout_3__2__6, WindowDout_3__2__5, WindowDout_3__2__4, 
               WindowDout_3__2__3, WindowDout_3__2__2, WindowDout_3__2__1, 
               WindowDout_3__2__0, WindowDout_3__3__7, WindowDout_3__3__6, 
               WindowDout_3__3__5, WindowDout_3__3__4, WindowDout_3__3__3, 
               WindowDout_3__3__2, WindowDout_3__3__1, WindowDout_3__3__0, 
               WindowDout_3__4__7, WindowDout_3__4__6, WindowDout_3__4__5, 
               WindowDout_3__4__4, WindowDout_3__4__3, WindowDout_3__4__2, 
               WindowDout_3__4__1, WindowDout_3__4__0, WindowDout_4__0__7, 
               WindowDout_4__0__6, WindowDout_4__0__5, WindowDout_4__0__4, 
               WindowDout_4__0__3, WindowDout_4__0__2, WindowDout_4__0__1, 
               WindowDout_4__0__0, WindowDout_4__1__7, WindowDout_4__1__6, 
               WindowDout_4__1__5, WindowDout_4__1__4, WindowDout_4__1__3, 
               WindowDout_4__1__2, WindowDout_4__1__1, WindowDout_4__1__0, 
               WindowDout_4__2__7, WindowDout_4__2__6, WindowDout_4__2__5, 
               WindowDout_4__2__4, WindowDout_4__2__3, WindowDout_4__2__2, 
               WindowDout_4__2__1, WindowDout_4__2__0, WindowDout_4__3__7, 
               WindowDout_4__3__6, WindowDout_4__3__5, WindowDout_4__3__4, 
               WindowDout_4__3__3, WindowDout_4__3__2, WindowDout_4__3__1, 
               WindowDout_4__3__0, WindowDout_4__4__7, WindowDout_4__4__6, 
               WindowDout_4__4__5, WindowDout_4__4__4, WindowDout_4__4__3, 
               WindowDout_4__4__2, WindowDout_4__4__1, WindowDout_4__4__0 ) ;

    input CLK ;
    input RST ;
    input FilterSize ;
    input FilterWR ;
    input WindowWR ;
    input [39:0]Din ;
    output FilterDout_0__0__7 ;
    output FilterDout_0__0__6 ;
    output FilterDout_0__0__5 ;
    output FilterDout_0__0__4 ;
    output FilterDout_0__0__3 ;
    output FilterDout_0__0__2 ;
    output FilterDout_0__0__1 ;
    output FilterDout_0__0__0 ;
    output FilterDout_0__1__7 ;
    output FilterDout_0__1__6 ;
    output FilterDout_0__1__5 ;
    output FilterDout_0__1__4 ;
    output FilterDout_0__1__3 ;
    output FilterDout_0__1__2 ;
    output FilterDout_0__1__1 ;
    output FilterDout_0__1__0 ;
    output FilterDout_0__2__7 ;
    output FilterDout_0__2__6 ;
    output FilterDout_0__2__5 ;
    output FilterDout_0__2__4 ;
    output FilterDout_0__2__3 ;
    output FilterDout_0__2__2 ;
    output FilterDout_0__2__1 ;
    output FilterDout_0__2__0 ;
    output FilterDout_0__3__7 ;
    output FilterDout_0__3__6 ;
    output FilterDout_0__3__5 ;
    output FilterDout_0__3__4 ;
    output FilterDout_0__3__3 ;
    output FilterDout_0__3__2 ;
    output FilterDout_0__3__1 ;
    output FilterDout_0__3__0 ;
    output FilterDout_0__4__7 ;
    output FilterDout_0__4__6 ;
    output FilterDout_0__4__5 ;
    output FilterDout_0__4__4 ;
    output FilterDout_0__4__3 ;
    output FilterDout_0__4__2 ;
    output FilterDout_0__4__1 ;
    output FilterDout_0__4__0 ;
    output FilterDout_1__0__7 ;
    output FilterDout_1__0__6 ;
    output FilterDout_1__0__5 ;
    output FilterDout_1__0__4 ;
    output FilterDout_1__0__3 ;
    output FilterDout_1__0__2 ;
    output FilterDout_1__0__1 ;
    output FilterDout_1__0__0 ;
    output FilterDout_1__1__7 ;
    output FilterDout_1__1__6 ;
    output FilterDout_1__1__5 ;
    output FilterDout_1__1__4 ;
    output FilterDout_1__1__3 ;
    output FilterDout_1__1__2 ;
    output FilterDout_1__1__1 ;
    output FilterDout_1__1__0 ;
    output FilterDout_1__2__7 ;
    output FilterDout_1__2__6 ;
    output FilterDout_1__2__5 ;
    output FilterDout_1__2__4 ;
    output FilterDout_1__2__3 ;
    output FilterDout_1__2__2 ;
    output FilterDout_1__2__1 ;
    output FilterDout_1__2__0 ;
    output FilterDout_1__3__7 ;
    output FilterDout_1__3__6 ;
    output FilterDout_1__3__5 ;
    output FilterDout_1__3__4 ;
    output FilterDout_1__3__3 ;
    output FilterDout_1__3__2 ;
    output FilterDout_1__3__1 ;
    output FilterDout_1__3__0 ;
    output FilterDout_1__4__7 ;
    output FilterDout_1__4__6 ;
    output FilterDout_1__4__5 ;
    output FilterDout_1__4__4 ;
    output FilterDout_1__4__3 ;
    output FilterDout_1__4__2 ;
    output FilterDout_1__4__1 ;
    output FilterDout_1__4__0 ;
    output FilterDout_2__0__7 ;
    output FilterDout_2__0__6 ;
    output FilterDout_2__0__5 ;
    output FilterDout_2__0__4 ;
    output FilterDout_2__0__3 ;
    output FilterDout_2__0__2 ;
    output FilterDout_2__0__1 ;
    output FilterDout_2__0__0 ;
    output FilterDout_2__1__7 ;
    output FilterDout_2__1__6 ;
    output FilterDout_2__1__5 ;
    output FilterDout_2__1__4 ;
    output FilterDout_2__1__3 ;
    output FilterDout_2__1__2 ;
    output FilterDout_2__1__1 ;
    output FilterDout_2__1__0 ;
    output FilterDout_2__2__7 ;
    output FilterDout_2__2__6 ;
    output FilterDout_2__2__5 ;
    output FilterDout_2__2__4 ;
    output FilterDout_2__2__3 ;
    output FilterDout_2__2__2 ;
    output FilterDout_2__2__1 ;
    output FilterDout_2__2__0 ;
    output FilterDout_2__3__7 ;
    output FilterDout_2__3__6 ;
    output FilterDout_2__3__5 ;
    output FilterDout_2__3__4 ;
    output FilterDout_2__3__3 ;
    output FilterDout_2__3__2 ;
    output FilterDout_2__3__1 ;
    output FilterDout_2__3__0 ;
    output FilterDout_2__4__7 ;
    output FilterDout_2__4__6 ;
    output FilterDout_2__4__5 ;
    output FilterDout_2__4__4 ;
    output FilterDout_2__4__3 ;
    output FilterDout_2__4__2 ;
    output FilterDout_2__4__1 ;
    output FilterDout_2__4__0 ;
    output FilterDout_3__0__7 ;
    output FilterDout_3__0__6 ;
    output FilterDout_3__0__5 ;
    output FilterDout_3__0__4 ;
    output FilterDout_3__0__3 ;
    output FilterDout_3__0__2 ;
    output FilterDout_3__0__1 ;
    output FilterDout_3__0__0 ;
    output FilterDout_3__1__7 ;
    output FilterDout_3__1__6 ;
    output FilterDout_3__1__5 ;
    output FilterDout_3__1__4 ;
    output FilterDout_3__1__3 ;
    output FilterDout_3__1__2 ;
    output FilterDout_3__1__1 ;
    output FilterDout_3__1__0 ;
    output FilterDout_3__2__7 ;
    output FilterDout_3__2__6 ;
    output FilterDout_3__2__5 ;
    output FilterDout_3__2__4 ;
    output FilterDout_3__2__3 ;
    output FilterDout_3__2__2 ;
    output FilterDout_3__2__1 ;
    output FilterDout_3__2__0 ;
    output FilterDout_3__3__7 ;
    output FilterDout_3__3__6 ;
    output FilterDout_3__3__5 ;
    output FilterDout_3__3__4 ;
    output FilterDout_3__3__3 ;
    output FilterDout_3__3__2 ;
    output FilterDout_3__3__1 ;
    output FilterDout_3__3__0 ;
    output FilterDout_3__4__7 ;
    output FilterDout_3__4__6 ;
    output FilterDout_3__4__5 ;
    output FilterDout_3__4__4 ;
    output FilterDout_3__4__3 ;
    output FilterDout_3__4__2 ;
    output FilterDout_3__4__1 ;
    output FilterDout_3__4__0 ;
    output FilterDout_4__0__7 ;
    output FilterDout_4__0__6 ;
    output FilterDout_4__0__5 ;
    output FilterDout_4__0__4 ;
    output FilterDout_4__0__3 ;
    output FilterDout_4__0__2 ;
    output FilterDout_4__0__1 ;
    output FilterDout_4__0__0 ;
    output FilterDout_4__1__7 ;
    output FilterDout_4__1__6 ;
    output FilterDout_4__1__5 ;
    output FilterDout_4__1__4 ;
    output FilterDout_4__1__3 ;
    output FilterDout_4__1__2 ;
    output FilterDout_4__1__1 ;
    output FilterDout_4__1__0 ;
    output FilterDout_4__2__7 ;
    output FilterDout_4__2__6 ;
    output FilterDout_4__2__5 ;
    output FilterDout_4__2__4 ;
    output FilterDout_4__2__3 ;
    output FilterDout_4__2__2 ;
    output FilterDout_4__2__1 ;
    output FilterDout_4__2__0 ;
    output FilterDout_4__3__7 ;
    output FilterDout_4__3__6 ;
    output FilterDout_4__3__5 ;
    output FilterDout_4__3__4 ;
    output FilterDout_4__3__3 ;
    output FilterDout_4__3__2 ;
    output FilterDout_4__3__1 ;
    output FilterDout_4__3__0 ;
    output FilterDout_4__4__7 ;
    output FilterDout_4__4__6 ;
    output FilterDout_4__4__5 ;
    output FilterDout_4__4__4 ;
    output FilterDout_4__4__3 ;
    output FilterDout_4__4__2 ;
    output FilterDout_4__4__1 ;
    output FilterDout_4__4__0 ;
    output WindowDout_0__0__7 ;
    output WindowDout_0__0__6 ;
    output WindowDout_0__0__5 ;
    output WindowDout_0__0__4 ;
    output WindowDout_0__0__3 ;
    output WindowDout_0__0__2 ;
    output WindowDout_0__0__1 ;
    output WindowDout_0__0__0 ;
    output WindowDout_0__1__7 ;
    output WindowDout_0__1__6 ;
    output WindowDout_0__1__5 ;
    output WindowDout_0__1__4 ;
    output WindowDout_0__1__3 ;
    output WindowDout_0__1__2 ;
    output WindowDout_0__1__1 ;
    output WindowDout_0__1__0 ;
    output WindowDout_0__2__7 ;
    output WindowDout_0__2__6 ;
    output WindowDout_0__2__5 ;
    output WindowDout_0__2__4 ;
    output WindowDout_0__2__3 ;
    output WindowDout_0__2__2 ;
    output WindowDout_0__2__1 ;
    output WindowDout_0__2__0 ;
    output WindowDout_0__3__7 ;
    output WindowDout_0__3__6 ;
    output WindowDout_0__3__5 ;
    output WindowDout_0__3__4 ;
    output WindowDout_0__3__3 ;
    output WindowDout_0__3__2 ;
    output WindowDout_0__3__1 ;
    output WindowDout_0__3__0 ;
    output WindowDout_0__4__7 ;
    output WindowDout_0__4__6 ;
    output WindowDout_0__4__5 ;
    output WindowDout_0__4__4 ;
    output WindowDout_0__4__3 ;
    output WindowDout_0__4__2 ;
    output WindowDout_0__4__1 ;
    output WindowDout_0__4__0 ;
    output WindowDout_1__0__7 ;
    output WindowDout_1__0__6 ;
    output WindowDout_1__0__5 ;
    output WindowDout_1__0__4 ;
    output WindowDout_1__0__3 ;
    output WindowDout_1__0__2 ;
    output WindowDout_1__0__1 ;
    output WindowDout_1__0__0 ;
    output WindowDout_1__1__7 ;
    output WindowDout_1__1__6 ;
    output WindowDout_1__1__5 ;
    output WindowDout_1__1__4 ;
    output WindowDout_1__1__3 ;
    output WindowDout_1__1__2 ;
    output WindowDout_1__1__1 ;
    output WindowDout_1__1__0 ;
    output WindowDout_1__2__7 ;
    output WindowDout_1__2__6 ;
    output WindowDout_1__2__5 ;
    output WindowDout_1__2__4 ;
    output WindowDout_1__2__3 ;
    output WindowDout_1__2__2 ;
    output WindowDout_1__2__1 ;
    output WindowDout_1__2__0 ;
    output WindowDout_1__3__7 ;
    output WindowDout_1__3__6 ;
    output WindowDout_1__3__5 ;
    output WindowDout_1__3__4 ;
    output WindowDout_1__3__3 ;
    output WindowDout_1__3__2 ;
    output WindowDout_1__3__1 ;
    output WindowDout_1__3__0 ;
    output WindowDout_1__4__7 ;
    output WindowDout_1__4__6 ;
    output WindowDout_1__4__5 ;
    output WindowDout_1__4__4 ;
    output WindowDout_1__4__3 ;
    output WindowDout_1__4__2 ;
    output WindowDout_1__4__1 ;
    output WindowDout_1__4__0 ;
    output WindowDout_2__0__7 ;
    output WindowDout_2__0__6 ;
    output WindowDout_2__0__5 ;
    output WindowDout_2__0__4 ;
    output WindowDout_2__0__3 ;
    output WindowDout_2__0__2 ;
    output WindowDout_2__0__1 ;
    output WindowDout_2__0__0 ;
    output WindowDout_2__1__7 ;
    output WindowDout_2__1__6 ;
    output WindowDout_2__1__5 ;
    output WindowDout_2__1__4 ;
    output WindowDout_2__1__3 ;
    output WindowDout_2__1__2 ;
    output WindowDout_2__1__1 ;
    output WindowDout_2__1__0 ;
    output WindowDout_2__2__7 ;
    output WindowDout_2__2__6 ;
    output WindowDout_2__2__5 ;
    output WindowDout_2__2__4 ;
    output WindowDout_2__2__3 ;
    output WindowDout_2__2__2 ;
    output WindowDout_2__2__1 ;
    output WindowDout_2__2__0 ;
    output WindowDout_2__3__7 ;
    output WindowDout_2__3__6 ;
    output WindowDout_2__3__5 ;
    output WindowDout_2__3__4 ;
    output WindowDout_2__3__3 ;
    output WindowDout_2__3__2 ;
    output WindowDout_2__3__1 ;
    output WindowDout_2__3__0 ;
    output WindowDout_2__4__7 ;
    output WindowDout_2__4__6 ;
    output WindowDout_2__4__5 ;
    output WindowDout_2__4__4 ;
    output WindowDout_2__4__3 ;
    output WindowDout_2__4__2 ;
    output WindowDout_2__4__1 ;
    output WindowDout_2__4__0 ;
    output WindowDout_3__0__7 ;
    output WindowDout_3__0__6 ;
    output WindowDout_3__0__5 ;
    output WindowDout_3__0__4 ;
    output WindowDout_3__0__3 ;
    output WindowDout_3__0__2 ;
    output WindowDout_3__0__1 ;
    output WindowDout_3__0__0 ;
    output WindowDout_3__1__7 ;
    output WindowDout_3__1__6 ;
    output WindowDout_3__1__5 ;
    output WindowDout_3__1__4 ;
    output WindowDout_3__1__3 ;
    output WindowDout_3__1__2 ;
    output WindowDout_3__1__1 ;
    output WindowDout_3__1__0 ;
    output WindowDout_3__2__7 ;
    output WindowDout_3__2__6 ;
    output WindowDout_3__2__5 ;
    output WindowDout_3__2__4 ;
    output WindowDout_3__2__3 ;
    output WindowDout_3__2__2 ;
    output WindowDout_3__2__1 ;
    output WindowDout_3__2__0 ;
    output WindowDout_3__3__7 ;
    output WindowDout_3__3__6 ;
    output WindowDout_3__3__5 ;
    output WindowDout_3__3__4 ;
    output WindowDout_3__3__3 ;
    output WindowDout_3__3__2 ;
    output WindowDout_3__3__1 ;
    output WindowDout_3__3__0 ;
    output WindowDout_3__4__7 ;
    output WindowDout_3__4__6 ;
    output WindowDout_3__4__5 ;
    output WindowDout_3__4__4 ;
    output WindowDout_3__4__3 ;
    output WindowDout_3__4__2 ;
    output WindowDout_3__4__1 ;
    output WindowDout_3__4__0 ;
    output WindowDout_4__0__7 ;
    output WindowDout_4__0__6 ;
    output WindowDout_4__0__5 ;
    output WindowDout_4__0__4 ;
    output WindowDout_4__0__3 ;
    output WindowDout_4__0__2 ;
    output WindowDout_4__0__1 ;
    output WindowDout_4__0__0 ;
    output WindowDout_4__1__7 ;
    output WindowDout_4__1__6 ;
    output WindowDout_4__1__5 ;
    output WindowDout_4__1__4 ;
    output WindowDout_4__1__3 ;
    output WindowDout_4__1__2 ;
    output WindowDout_4__1__1 ;
    output WindowDout_4__1__0 ;
    output WindowDout_4__2__7 ;
    output WindowDout_4__2__6 ;
    output WindowDout_4__2__5 ;
    output WindowDout_4__2__4 ;
    output WindowDout_4__2__3 ;
    output WindowDout_4__2__2 ;
    output WindowDout_4__2__1 ;
    output WindowDout_4__2__0 ;
    output WindowDout_4__3__7 ;
    output WindowDout_4__3__6 ;
    output WindowDout_4__3__5 ;
    output WindowDout_4__3__4 ;
    output WindowDout_4__3__3 ;
    output WindowDout_4__3__2 ;
    output WindowDout_4__3__1 ;
    output WindowDout_4__3__0 ;
    output WindowDout_4__4__7 ;
    output WindowDout_4__4__6 ;
    output WindowDout_4__4__5 ;
    output WindowDout_4__4__4 ;
    output WindowDout_4__4__3 ;
    output WindowDout_4__4__2 ;
    output WindowDout_4__4__1 ;
    output WindowDout_4__4__0 ;

    wire nx941, nx943, nx945, nx947, nx949, nx951, nx953, nx955, nx957, nx959, 
         nx961, nx963, nx965, nx967, nx975, nx977, nx979, nx981, nx983, nx985, 
         nx987, nx989, nx991, nx993, nx995, nx997, nx999, nx1001, nx1003, nx1005, 
         nx1007, nx1009, nx1011, nx1013, nx1015, nx1017, nx1019, nx1021, nx1023, 
         nx1025, nx1027, nx1029, nx1031, nx1033, nx1035, nx1037, nx1039, nx1041, 
         nx1043, nx1045, nx1047;



    register_edge_rising_8 L0_0_L1_0_Fij (.CLK (CLK), .RST (nx975), .EN (nx953)
                           , .Din ({FilterDout_1__0__7,FilterDout_1__0__6,
                           FilterDout_1__0__5,FilterDout_1__0__4,
                           FilterDout_1__0__3,FilterDout_1__0__2,
                           FilterDout_1__0__1,FilterDout_1__0__0}), .Dout ({
                           FilterDout_0__0__7,FilterDout_0__0__6,
                           FilterDout_0__0__5,FilterDout_0__0__4,
                           FilterDout_0__0__3,FilterDout_0__0__2,
                           FilterDout_0__0__1,FilterDout_0__0__0})) ;
    register_edge_rising_8 L0_0_L1_0_Wij (.CLK (CLK), .RST (nx975), .EN (nx967)
                           , .Din ({WindowDout_1__0__7,WindowDout_1__0__6,
                           WindowDout_1__0__5,WindowDout_1__0__4,
                           WindowDout_1__0__3,WindowDout_1__0__2,
                           WindowDout_1__0__1,WindowDout_1__0__0}), .Dout ({
                           WindowDout_0__0__7,WindowDout_0__0__6,
                           WindowDout_0__0__5,WindowDout_0__0__4,
                           WindowDout_0__0__3,WindowDout_0__0__2,
                           WindowDout_0__0__1,WindowDout_0__0__0})) ;
    register_edge_rising_8 L0_0_L1_1_Fij (.CLK (CLK), .RST (nx977), .EN (nx951)
                           , .Din ({FilterDout_1__1__7,FilterDout_1__1__6,
                           FilterDout_1__1__5,FilterDout_1__1__4,
                           FilterDout_1__1__3,FilterDout_1__1__2,
                           FilterDout_1__1__1,FilterDout_1__1__0}), .Dout ({
                           FilterDout_0__1__7,FilterDout_0__1__6,
                           FilterDout_0__1__5,FilterDout_0__1__4,
                           FilterDout_0__1__3,FilterDout_0__1__2,
                           FilterDout_0__1__1,FilterDout_0__1__0})) ;
    register_edge_rising_8 L0_0_L1_1_Wij (.CLK (CLK), .RST (nx977), .EN (nx965)
                           , .Din ({WindowDout_1__1__7,WindowDout_1__1__6,
                           WindowDout_1__1__5,WindowDout_1__1__4,
                           WindowDout_1__1__3,WindowDout_1__1__2,
                           WindowDout_1__1__1,WindowDout_1__1__0}), .Dout ({
                           WindowDout_0__1__7,WindowDout_0__1__6,
                           WindowDout_0__1__5,WindowDout_0__1__4,
                           WindowDout_0__1__3,WindowDout_0__1__2,
                           WindowDout_0__1__1,WindowDout_0__1__0})) ;
    register_edge_rising_8 L0_0_L1_2_Fij (.CLK (CLK), .RST (nx979), .EN (nx951)
                           , .Din ({FilterDout_1__2__7,FilterDout_1__2__6,
                           FilterDout_1__2__5,FilterDout_1__2__4,
                           FilterDout_1__2__3,FilterDout_1__2__2,
                           FilterDout_1__2__1,FilterDout_1__2__0}), .Dout ({
                           FilterDout_0__2__7,FilterDout_0__2__6,
                           FilterDout_0__2__5,FilterDout_0__2__4,
                           FilterDout_0__2__3,FilterDout_0__2__2,
                           FilterDout_0__2__1,FilterDout_0__2__0})) ;
    register_edge_rising_8 L0_0_L1_2_Wij (.CLK (CLK), .RST (nx979), .EN (nx965)
                           , .Din ({WindowDout_1__2__7,WindowDout_1__2__6,
                           WindowDout_1__2__5,WindowDout_1__2__4,
                           WindowDout_1__2__3,WindowDout_1__2__2,
                           WindowDout_1__2__1,WindowDout_1__2__0}), .Dout ({
                           WindowDout_0__2__7,WindowDout_0__2__6,
                           WindowDout_0__2__5,WindowDout_0__2__4,
                           WindowDout_0__2__3,WindowDout_0__2__2,
                           WindowDout_0__2__1,WindowDout_0__2__0})) ;
    register_edge_rising_8 L0_0_L1_3_Fij (.CLK (CLK), .RST (nx981), .EN (nx951)
                           , .Din ({FilterDout_1__3__7,FilterDout_1__3__6,
                           FilterDout_1__3__5,FilterDout_1__3__4,
                           FilterDout_1__3__3,FilterDout_1__3__2,
                           FilterDout_1__3__1,FilterDout_1__3__0}), .Dout ({
                           FilterDout_0__3__7,FilterDout_0__3__6,
                           FilterDout_0__3__5,FilterDout_0__3__4,
                           FilterDout_0__3__3,FilterDout_0__3__2,
                           FilterDout_0__3__1,FilterDout_0__3__0})) ;
    register_edge_rising_8 L0_0_L1_3_Wij (.CLK (CLK), .RST (nx981), .EN (nx965)
                           , .Din ({WindowDout_1__3__7,WindowDout_1__3__6,
                           WindowDout_1__3__5,WindowDout_1__3__4,
                           WindowDout_1__3__3,WindowDout_1__3__2,
                           WindowDout_1__3__1,WindowDout_1__3__0}), .Dout ({
                           WindowDout_0__3__7,WindowDout_0__3__6,
                           WindowDout_0__3__5,WindowDout_0__3__4,
                           WindowDout_0__3__3,WindowDout_0__3__2,
                           WindowDout_0__3__1,WindowDout_0__3__0})) ;
    register_edge_rising_8 L0_0_L1_4_Fij (.CLK (CLK), .RST (nx983), .EN (nx949)
                           , .Din ({FilterDout_1__4__7,FilterDout_1__4__6,
                           FilterDout_1__4__5,FilterDout_1__4__4,
                           FilterDout_1__4__3,FilterDout_1__4__2,
                           FilterDout_1__4__1,FilterDout_1__4__0}), .Dout ({
                           FilterDout_0__4__7,FilterDout_0__4__6,
                           FilterDout_0__4__5,FilterDout_0__4__4,
                           FilterDout_0__4__3,FilterDout_0__4__2,
                           FilterDout_0__4__1,FilterDout_0__4__0})) ;
    register_edge_rising_8 L0_0_L1_4_Wij (.CLK (CLK), .RST (nx983), .EN (nx963)
                           , .Din ({WindowDout_1__4__7,WindowDout_1__4__6,
                           WindowDout_1__4__5,WindowDout_1__4__4,
                           WindowDout_1__4__3,WindowDout_1__4__2,
                           WindowDout_1__4__1,WindowDout_1__4__0}), .Dout ({
                           WindowDout_0__4__7,WindowDout_0__4__6,
                           WindowDout_0__4__5,WindowDout_0__4__4,
                           WindowDout_0__4__3,WindowDout_0__4__2,
                           WindowDout_0__4__1,WindowDout_0__4__0})) ;
    register_edge_rising_8 L0_1_L1_0_Fij (.CLK (CLK), .RST (nx985), .EN (nx949)
                           , .Din ({FilterDout_2__0__7,FilterDout_2__0__6,
                           FilterDout_2__0__5,FilterDout_2__0__4,
                           FilterDout_2__0__3,FilterDout_2__0__2,
                           FilterDout_2__0__1,FilterDout_2__0__0}), .Dout ({
                           FilterDout_1__0__7,FilterDout_1__0__6,
                           FilterDout_1__0__5,FilterDout_1__0__4,
                           FilterDout_1__0__3,FilterDout_1__0__2,
                           FilterDout_1__0__1,FilterDout_1__0__0})) ;
    register_edge_rising_8 L0_1_L1_0_Wij (.CLK (CLK), .RST (nx985), .EN (nx963)
                           , .Din ({WindowDout_2__0__7,WindowDout_2__0__6,
                           WindowDout_2__0__5,WindowDout_2__0__4,
                           WindowDout_2__0__3,WindowDout_2__0__2,
                           WindowDout_2__0__1,WindowDout_2__0__0}), .Dout ({
                           WindowDout_1__0__7,WindowDout_1__0__6,
                           WindowDout_1__0__5,WindowDout_1__0__4,
                           WindowDout_1__0__3,WindowDout_1__0__2,
                           WindowDout_1__0__1,WindowDout_1__0__0})) ;
    register_edge_rising_8 L0_1_L1_1_Fij (.CLK (CLK), .RST (nx987), .EN (nx949)
                           , .Din ({FilterDout_2__1__7,FilterDout_2__1__6,
                           FilterDout_2__1__5,FilterDout_2__1__4,
                           FilterDout_2__1__3,FilterDout_2__1__2,
                           FilterDout_2__1__1,FilterDout_2__1__0}), .Dout ({
                           FilterDout_1__1__7,FilterDout_1__1__6,
                           FilterDout_1__1__5,FilterDout_1__1__4,
                           FilterDout_1__1__3,FilterDout_1__1__2,
                           FilterDout_1__1__1,FilterDout_1__1__0})) ;
    register_edge_rising_8 L0_1_L1_1_Wij (.CLK (CLK), .RST (nx987), .EN (nx963)
                           , .Din ({WindowDout_2__1__7,WindowDout_2__1__6,
                           WindowDout_2__1__5,WindowDout_2__1__4,
                           WindowDout_2__1__3,WindowDout_2__1__2,
                           WindowDout_2__1__1,WindowDout_2__1__0}), .Dout ({
                           WindowDout_1__1__7,WindowDout_1__1__6,
                           WindowDout_1__1__5,WindowDout_1__1__4,
                           WindowDout_1__1__3,WindowDout_1__1__2,
                           WindowDout_1__1__1,WindowDout_1__1__0})) ;
    register_edge_rising_8 L0_1_L1_2_Fij (.CLK (CLK), .RST (nx989), .EN (nx947)
                           , .Din ({FilterDout_2__2__7,FilterDout_2__2__6,
                           FilterDout_2__2__5,FilterDout_2__2__4,
                           FilterDout_2__2__3,FilterDout_2__2__2,
                           FilterDout_2__2__1,FilterDout_2__2__0}), .Dout ({
                           FilterDout_1__2__7,FilterDout_1__2__6,
                           FilterDout_1__2__5,FilterDout_1__2__4,
                           FilterDout_1__2__3,FilterDout_1__2__2,
                           FilterDout_1__2__1,FilterDout_1__2__0})) ;
    register_edge_rising_8 L0_1_L1_2_Wij (.CLK (CLK), .RST (nx989), .EN (nx961)
                           , .Din ({WindowDout_2__2__7,WindowDout_2__2__6,
                           WindowDout_2__2__5,WindowDout_2__2__4,
                           WindowDout_2__2__3,WindowDout_2__2__2,
                           WindowDout_2__2__1,WindowDout_2__2__0}), .Dout ({
                           WindowDout_1__2__7,WindowDout_1__2__6,
                           WindowDout_1__2__5,WindowDout_1__2__4,
                           WindowDout_1__2__3,WindowDout_1__2__2,
                           WindowDout_1__2__1,WindowDout_1__2__0})) ;
    register_edge_rising_8 L0_1_L1_3_Fij (.CLK (CLK), .RST (nx991), .EN (nx947)
                           , .Din ({FilterDout_2__3__7,FilterDout_2__3__6,
                           FilterDout_2__3__5,FilterDout_2__3__4,
                           FilterDout_2__3__3,FilterDout_2__3__2,
                           FilterDout_2__3__1,FilterDout_2__3__0}), .Dout ({
                           FilterDout_1__3__7,FilterDout_1__3__6,
                           FilterDout_1__3__5,FilterDout_1__3__4,
                           FilterDout_1__3__3,FilterDout_1__3__2,
                           FilterDout_1__3__1,FilterDout_1__3__0})) ;
    register_edge_rising_8 L0_1_L1_3_Wij (.CLK (CLK), .RST (nx991), .EN (nx961)
                           , .Din ({WindowDout_2__3__7,WindowDout_2__3__6,
                           WindowDout_2__3__5,WindowDout_2__3__4,
                           WindowDout_2__3__3,WindowDout_2__3__2,
                           WindowDout_2__3__1,WindowDout_2__3__0}), .Dout ({
                           WindowDout_1__3__7,WindowDout_1__3__6,
                           WindowDout_1__3__5,WindowDout_1__3__4,
                           WindowDout_1__3__3,WindowDout_1__3__2,
                           WindowDout_1__3__1,WindowDout_1__3__0})) ;
    register_edge_rising_8 L0_1_L1_4_Fij (.CLK (CLK), .RST (nx993), .EN (nx947)
                           , .Din ({FilterDout_2__4__7,FilterDout_2__4__6,
                           FilterDout_2__4__5,FilterDout_2__4__4,
                           FilterDout_2__4__3,FilterDout_2__4__2,
                           FilterDout_2__4__1,FilterDout_2__4__0}), .Dout ({
                           FilterDout_1__4__7,FilterDout_1__4__6,
                           FilterDout_1__4__5,FilterDout_1__4__4,
                           FilterDout_1__4__3,FilterDout_1__4__2,
                           FilterDout_1__4__1,FilterDout_1__4__0})) ;
    register_edge_rising_8 L0_1_L1_4_Wij (.CLK (CLK), .RST (nx993), .EN (nx961)
                           , .Din ({WindowDout_2__4__7,WindowDout_2__4__6,
                           WindowDout_2__4__5,WindowDout_2__4__4,
                           WindowDout_2__4__3,WindowDout_2__4__2,
                           WindowDout_2__4__1,WindowDout_2__4__0}), .Dout ({
                           WindowDout_1__4__7,WindowDout_1__4__6,
                           WindowDout_1__4__5,WindowDout_1__4__4,
                           WindowDout_1__4__3,WindowDout_1__4__2,
                           WindowDout_1__4__1,WindowDout_1__4__0})) ;
    register_edge_rising_8 L0_2_L1_0_Fij (.CLK (CLK), .RST (nx995), .EN (nx1027)
                           , .Din ({FilterDout_3__0__7,FilterDout_3__0__6,
                           FilterDout_3__0__5,FilterDout_3__0__4,
                           FilterDout_3__0__3,FilterDout_3__0__2,
                           FilterDout_3__0__1,FilterDout_3__0__0}), .Dout ({
                           FilterDout_2__0__7,FilterDout_2__0__6,
                           FilterDout_2__0__5,FilterDout_2__0__4,
                           FilterDout_2__0__3,FilterDout_2__0__2,
                           FilterDout_2__0__1,FilterDout_2__0__0})) ;
    register_edge_rising_8 L0_2_L1_0_Wij (.CLK (CLK), .RST (nx995), .EN (nx1035)
                           , .Din ({WindowDout_3__0__7,WindowDout_3__0__6,
                           WindowDout_3__0__5,WindowDout_3__0__4,
                           WindowDout_3__0__3,WindowDout_3__0__2,
                           WindowDout_3__0__1,WindowDout_3__0__0}), .Dout ({
                           WindowDout_2__0__7,WindowDout_2__0__6,
                           WindowDout_2__0__5,WindowDout_2__0__4,
                           WindowDout_2__0__3,WindowDout_2__0__2,
                           WindowDout_2__0__1,WindowDout_2__0__0})) ;
    register_edge_rising_8 L0_2_L1_1_Fij (.CLK (CLK), .RST (nx997), .EN (nx1027)
                           , .Din ({FilterDout_3__1__7,FilterDout_3__1__6,
                           FilterDout_3__1__5,FilterDout_3__1__4,
                           FilterDout_3__1__3,FilterDout_3__1__2,
                           FilterDout_3__1__1,FilterDout_3__1__0}), .Dout ({
                           FilterDout_2__1__7,FilterDout_2__1__6,
                           FilterDout_2__1__5,FilterDout_2__1__4,
                           FilterDout_2__1__3,FilterDout_2__1__2,
                           FilterDout_2__1__1,FilterDout_2__1__0})) ;
    register_edge_rising_8 L0_2_L1_1_Wij (.CLK (CLK), .RST (nx997), .EN (nx1035)
                           , .Din ({WindowDout_3__1__7,WindowDout_3__1__6,
                           WindowDout_3__1__5,WindowDout_3__1__4,
                           WindowDout_3__1__3,WindowDout_3__1__2,
                           WindowDout_3__1__1,WindowDout_3__1__0}), .Dout ({
                           WindowDout_2__1__7,WindowDout_2__1__6,
                           WindowDout_2__1__5,WindowDout_2__1__4,
                           WindowDout_2__1__3,WindowDout_2__1__2,
                           WindowDout_2__1__1,WindowDout_2__1__0})) ;
    register_edge_rising_8 L0_2_L1_2_Fij (.CLK (CLK), .RST (nx999), .EN (nx1027)
                           , .Din ({FilterDout_3__2__7,FilterDout_3__2__6,
                           FilterDout_3__2__5,FilterDout_3__2__4,
                           FilterDout_3__2__3,FilterDout_3__2__2,
                           FilterDout_3__2__1,FilterDout_3__2__0}), .Dout ({
                           FilterDout_2__2__7,FilterDout_2__2__6,
                           FilterDout_2__2__5,FilterDout_2__2__4,
                           FilterDout_2__2__3,FilterDout_2__2__2,
                           FilterDout_2__2__1,FilterDout_2__2__0})) ;
    register_edge_rising_8 L0_2_L1_2_Wij (.CLK (CLK), .RST (nx999), .EN (nx1035)
                           , .Din ({WindowDout_3__2__7,WindowDout_3__2__6,
                           WindowDout_3__2__5,WindowDout_3__2__4,
                           WindowDout_3__2__3,WindowDout_3__2__2,
                           WindowDout_3__2__1,WindowDout_3__2__0}), .Dout ({
                           WindowDout_2__2__7,WindowDout_2__2__6,
                           WindowDout_2__2__5,WindowDout_2__2__4,
                           WindowDout_2__2__3,WindowDout_2__2__2,
                           WindowDout_2__2__1,WindowDout_2__2__0})) ;
    register_edge_rising_8 L0_2_L1_3_Fij (.CLK (CLK), .RST (nx1001), .EN (nx945)
                           , .Din ({FilterDout_3__3__7,FilterDout_3__3__6,
                           FilterDout_3__3__5,FilterDout_3__3__4,
                           FilterDout_3__3__3,FilterDout_3__3__2,
                           FilterDout_3__3__1,FilterDout_3__3__0}), .Dout ({
                           FilterDout_2__3__7,FilterDout_2__3__6,
                           FilterDout_2__3__5,FilterDout_2__3__4,
                           FilterDout_2__3__3,FilterDout_2__3__2,
                           FilterDout_2__3__1,FilterDout_2__3__0})) ;
    register_edge_rising_8 L0_2_L1_3_Wij (.CLK (CLK), .RST (nx1001), .EN (nx959)
                           , .Din ({WindowDout_3__3__7,WindowDout_3__3__6,
                           WindowDout_3__3__5,WindowDout_3__3__4,
                           WindowDout_3__3__3,WindowDout_3__3__2,
                           WindowDout_3__3__1,WindowDout_3__3__0}), .Dout ({
                           WindowDout_2__3__7,WindowDout_2__3__6,
                           WindowDout_2__3__5,WindowDout_2__3__4,
                           WindowDout_2__3__3,WindowDout_2__3__2,
                           WindowDout_2__3__1,WindowDout_2__3__0})) ;
    register_edge_rising_8 L0_2_L1_4_Fij (.CLK (CLK), .RST (nx1003), .EN (nx945)
                           , .Din ({FilterDout_3__4__7,FilterDout_3__4__6,
                           FilterDout_3__4__5,FilterDout_3__4__4,
                           FilterDout_3__4__3,FilterDout_3__4__2,
                           FilterDout_3__4__1,FilterDout_3__4__0}), .Dout ({
                           FilterDout_2__4__7,FilterDout_2__4__6,
                           FilterDout_2__4__5,FilterDout_2__4__4,
                           FilterDout_2__4__3,FilterDout_2__4__2,
                           FilterDout_2__4__1,FilterDout_2__4__0})) ;
    register_edge_rising_8 L0_2_L1_4_Wij (.CLK (CLK), .RST (nx1003), .EN (nx959)
                           , .Din ({WindowDout_3__4__7,WindowDout_3__4__6,
                           WindowDout_3__4__5,WindowDout_3__4__4,
                           WindowDout_3__4__3,WindowDout_3__4__2,
                           WindowDout_3__4__1,WindowDout_3__4__0}), .Dout ({
                           WindowDout_2__4__7,WindowDout_2__4__6,
                           WindowDout_2__4__5,WindowDout_2__4__4,
                           WindowDout_2__4__3,WindowDout_2__4__2,
                           WindowDout_2__4__1,WindowDout_2__4__0})) ;
    register_edge_rising_8 L0_3_L1_0_Fij (.CLK (CLK), .RST (nx1005), .EN (nx1029
                           ), .Din ({FilterDout_4__0__7,FilterDout_4__0__6,
                           FilterDout_4__0__5,FilterDout_4__0__4,
                           FilterDout_4__0__3,FilterDout_4__0__2,
                           FilterDout_4__0__1,FilterDout_4__0__0}), .Dout ({
                           FilterDout_3__0__7,FilterDout_3__0__6,
                           FilterDout_3__0__5,FilterDout_3__0__4,
                           FilterDout_3__0__3,FilterDout_3__0__2,
                           FilterDout_3__0__1,FilterDout_3__0__0})) ;
    register_edge_rising_8 L0_3_L1_0_Wij (.CLK (CLK), .RST (nx1005), .EN (nx1037
                           ), .Din ({WindowDout_4__0__7,WindowDout_4__0__6,
                           WindowDout_4__0__5,WindowDout_4__0__4,
                           WindowDout_4__0__3,WindowDout_4__0__2,
                           WindowDout_4__0__1,WindowDout_4__0__0}), .Dout ({
                           WindowDout_3__0__7,WindowDout_3__0__6,
                           WindowDout_3__0__5,WindowDout_3__0__4,
                           WindowDout_3__0__3,WindowDout_3__0__2,
                           WindowDout_3__0__1,WindowDout_3__0__0})) ;
    register_edge_rising_8 L0_3_L1_1_Fij (.CLK (CLK), .RST (nx1007), .EN (nx1029
                           ), .Din ({FilterDout_4__1__7,FilterDout_4__1__6,
                           FilterDout_4__1__5,FilterDout_4__1__4,
                           FilterDout_4__1__3,FilterDout_4__1__2,
                           FilterDout_4__1__1,FilterDout_4__1__0}), .Dout ({
                           FilterDout_3__1__7,FilterDout_3__1__6,
                           FilterDout_3__1__5,FilterDout_3__1__4,
                           FilterDout_3__1__3,FilterDout_3__1__2,
                           FilterDout_3__1__1,FilterDout_3__1__0})) ;
    register_edge_rising_8 L0_3_L1_1_Wij (.CLK (CLK), .RST (nx1007), .EN (nx1037
                           ), .Din ({WindowDout_4__1__7,WindowDout_4__1__6,
                           WindowDout_4__1__5,WindowDout_4__1__4,
                           WindowDout_4__1__3,WindowDout_4__1__2,
                           WindowDout_4__1__1,WindowDout_4__1__0}), .Dout ({
                           WindowDout_3__1__7,WindowDout_3__1__6,
                           WindowDout_3__1__5,WindowDout_3__1__4,
                           WindowDout_3__1__3,WindowDout_3__1__2,
                           WindowDout_3__1__1,WindowDout_3__1__0})) ;
    register_edge_rising_8 L0_3_L1_2_Fij (.CLK (CLK), .RST (nx1009), .EN (nx1029
                           ), .Din ({FilterDout_4__2__7,FilterDout_4__2__6,
                           FilterDout_4__2__5,FilterDout_4__2__4,
                           FilterDout_4__2__3,FilterDout_4__2__2,
                           FilterDout_4__2__1,FilterDout_4__2__0}), .Dout ({
                           FilterDout_3__2__7,FilterDout_3__2__6,
                           FilterDout_3__2__5,FilterDout_3__2__4,
                           FilterDout_3__2__3,FilterDout_3__2__2,
                           FilterDout_3__2__1,FilterDout_3__2__0})) ;
    register_edge_rising_8 L0_3_L1_2_Wij (.CLK (CLK), .RST (nx1009), .EN (nx1037
                           ), .Din ({WindowDout_4__2__7,WindowDout_4__2__6,
                           WindowDout_4__2__5,WindowDout_4__2__4,
                           WindowDout_4__2__3,WindowDout_4__2__2,
                           WindowDout_4__2__1,WindowDout_4__2__0}), .Dout ({
                           WindowDout_3__2__7,WindowDout_3__2__6,
                           WindowDout_3__2__5,WindowDout_3__2__4,
                           WindowDout_3__2__3,WindowDout_3__2__2,
                           WindowDout_3__2__1,WindowDout_3__2__0})) ;
    register_edge_rising_8 L0_3_L1_3_Fij (.CLK (CLK), .RST (nx1011), .EN (nx945)
                           , .Din ({FilterDout_4__3__7,FilterDout_4__3__6,
                           FilterDout_4__3__5,FilterDout_4__3__4,
                           FilterDout_4__3__3,FilterDout_4__3__2,
                           FilterDout_4__3__1,FilterDout_4__3__0}), .Dout ({
                           FilterDout_3__3__7,FilterDout_3__3__6,
                           FilterDout_3__3__5,FilterDout_3__3__4,
                           FilterDout_3__3__3,FilterDout_3__3__2,
                           FilterDout_3__3__1,FilterDout_3__3__0})) ;
    register_edge_rising_8 L0_3_L1_3_Wij (.CLK (CLK), .RST (nx1011), .EN (nx959)
                           , .Din ({WindowDout_4__3__7,WindowDout_4__3__6,
                           WindowDout_4__3__5,WindowDout_4__3__4,
                           WindowDout_4__3__3,WindowDout_4__3__2,
                           WindowDout_4__3__1,WindowDout_4__3__0}), .Dout ({
                           WindowDout_3__3__7,WindowDout_3__3__6,
                           WindowDout_3__3__5,WindowDout_3__3__4,
                           WindowDout_3__3__3,WindowDout_3__3__2,
                           WindowDout_3__3__1,WindowDout_3__3__0})) ;
    register_edge_rising_8 L0_3_L1_4_Fij (.CLK (CLK), .RST (nx1013), .EN (nx943)
                           , .Din ({FilterDout_4__4__7,FilterDout_4__4__6,
                           FilterDout_4__4__5,FilterDout_4__4__4,
                           FilterDout_4__4__3,FilterDout_4__4__2,
                           FilterDout_4__4__1,FilterDout_4__4__0}), .Dout ({
                           FilterDout_3__4__7,FilterDout_3__4__6,
                           FilterDout_3__4__5,FilterDout_3__4__4,
                           FilterDout_3__4__3,FilterDout_3__4__2,
                           FilterDout_3__4__1,FilterDout_3__4__0})) ;
    register_edge_rising_8 L0_3_L1_4_Wij (.CLK (CLK), .RST (nx1013), .EN (nx957)
                           , .Din ({WindowDout_4__4__7,WindowDout_4__4__6,
                           WindowDout_4__4__5,WindowDout_4__4__4,
                           WindowDout_4__4__3,WindowDout_4__4__2,
                           WindowDout_4__4__1,WindowDout_4__4__0}), .Dout ({
                           WindowDout_3__4__7,WindowDout_3__4__6,
                           WindowDout_3__4__5,WindowDout_3__4__4,
                           WindowDout_3__4__3,WindowDout_3__4__2,
                           WindowDout_3__4__1,WindowDout_3__4__0})) ;
    register_edge_rising_8 L0_4_L1_0_Fij (.CLK (CLK), .RST (nx1015), .EN (nx1031
                           ), .Din ({Din[7],Din[6],Din[5],Din[4],Din[3],Din[2],
                           Din[1],Din[0]}), .Dout ({FilterDout_4__0__7,
                           FilterDout_4__0__6,FilterDout_4__0__5,
                           FilterDout_4__0__4,FilterDout_4__0__3,
                           FilterDout_4__0__2,FilterDout_4__0__1,
                           FilterDout_4__0__0})) ;
    register_edge_rising_8 L0_4_L1_0_Wij (.CLK (CLK), .RST (nx1015), .EN (nx1039
                           ), .Din ({Din[7],Din[6],Din[5],Din[4],Din[3],Din[2],
                           Din[1],Din[0]}), .Dout ({WindowDout_4__0__7,
                           WindowDout_4__0__6,WindowDout_4__0__5,
                           WindowDout_4__0__4,WindowDout_4__0__3,
                           WindowDout_4__0__2,WindowDout_4__0__1,
                           WindowDout_4__0__0})) ;
    register_edge_rising_8 L0_4_L1_1_Fij (.CLK (CLK), .RST (nx1017), .EN (nx1031
                           ), .Din ({Din[15],Din[14],Din[13],Din[12],Din[11],
                           Din[10],Din[9],Din[8]}), .Dout ({FilterDout_4__1__7,
                           FilterDout_4__1__6,FilterDout_4__1__5,
                           FilterDout_4__1__4,FilterDout_4__1__3,
                           FilterDout_4__1__2,FilterDout_4__1__1,
                           FilterDout_4__1__0})) ;
    register_edge_rising_8 L0_4_L1_1_Wij (.CLK (CLK), .RST (nx1017), .EN (nx1039
                           ), .Din ({Din[15],Din[14],Din[13],Din[12],Din[11],
                           Din[10],Din[9],Din[8]}), .Dout ({WindowDout_4__1__7,
                           WindowDout_4__1__6,WindowDout_4__1__5,
                           WindowDout_4__1__4,WindowDout_4__1__3,
                           WindowDout_4__1__2,WindowDout_4__1__1,
                           WindowDout_4__1__0})) ;
    register_edge_rising_8 L0_4_L1_2_Fij (.CLK (CLK), .RST (nx1019), .EN (nx1031
                           ), .Din ({Din[23],Din[22],Din[21],Din[20],Din[19],
                           Din[18],Din[17],Din[16]}), .Dout ({FilterDout_4__2__7
                           ,FilterDout_4__2__6,FilterDout_4__2__5,
                           FilterDout_4__2__4,FilterDout_4__2__3,
                           FilterDout_4__2__2,FilterDout_4__2__1,
                           FilterDout_4__2__0})) ;
    register_edge_rising_8 L0_4_L1_2_Wij (.CLK (CLK), .RST (nx1019), .EN (nx1039
                           ), .Din ({Din[23],Din[22],Din[21],Din[20],Din[19],
                           Din[18],Din[17],Din[16]}), .Dout ({WindowDout_4__2__7
                           ,WindowDout_4__2__6,WindowDout_4__2__5,
                           WindowDout_4__2__4,WindowDout_4__2__3,
                           WindowDout_4__2__2,WindowDout_4__2__1,
                           WindowDout_4__2__0})) ;
    register_edge_rising_8 L0_4_L1_3_Fij (.CLK (CLK), .RST (nx1021), .EN (nx943)
                           , .Din ({Din[31],Din[30],Din[29],Din[28],Din[27],
                           Din[26],Din[25],Din[24]}), .Dout ({FilterDout_4__3__7
                           ,FilterDout_4__3__6,FilterDout_4__3__5,
                           FilterDout_4__3__4,FilterDout_4__3__3,
                           FilterDout_4__3__2,FilterDout_4__3__1,
                           FilterDout_4__3__0})) ;
    register_edge_rising_8 L0_4_L1_3_Wij (.CLK (CLK), .RST (nx1021), .EN (nx957)
                           , .Din ({Din[31],Din[30],Din[29],Din[28],Din[27],
                           Din[26],Din[25],Din[24]}), .Dout ({WindowDout_4__3__7
                           ,WindowDout_4__3__6,WindowDout_4__3__5,
                           WindowDout_4__3__4,WindowDout_4__3__3,
                           WindowDout_4__3__2,WindowDout_4__3__1,
                           WindowDout_4__3__0})) ;
    register_edge_rising_8 L0_4_L1_4_Fij (.CLK (CLK), .RST (nx1023), .EN (nx943)
                           , .Din ({Din[39],Din[38],Din[37],Din[36],Din[35],
                           Din[34],Din[33],Din[32]}), .Dout ({FilterDout_4__4__7
                           ,FilterDout_4__4__6,FilterDout_4__4__5,
                           FilterDout_4__4__4,FilterDout_4__4__3,
                           FilterDout_4__4__2,FilterDout_4__4__1,
                           FilterDout_4__4__0})) ;
    register_edge_rising_8 L0_4_L1_4_Wij (.CLK (CLK), .RST (nx1023), .EN (nx957)
                           , .Din ({Din[39],Din[38],Din[37],Din[36],Din[35],
                           Din[34],Din[33],Din[32]}), .Dout ({WindowDout_4__4__7
                           ,WindowDout_4__4__6,WindowDout_4__4__5,
                           WindowDout_4__4__4,WindowDout_4__4__3,
                           WindowDout_4__4__2,WindowDout_4__4__1,
                           WindowDout_4__4__0})) ;
    inv01 ix942 (.Y (nx943), .A (nx941)) ;
    inv01 ix944 (.Y (nx945), .A (nx941)) ;
    inv01 ix946 (.Y (nx947), .A (nx941)) ;
    inv01 ix948 (.Y (nx949), .A (nx941)) ;
    inv01 ix950 (.Y (nx951), .A (nx941)) ;
    inv01 ix952 (.Y (nx953), .A (nx941)) ;
    inv01 ix956 (.Y (nx957), .A (nx955)) ;
    inv01 ix958 (.Y (nx959), .A (nx955)) ;
    inv01 ix960 (.Y (nx961), .A (nx955)) ;
    inv01 ix962 (.Y (nx963), .A (nx955)) ;
    inv01 ix964 (.Y (nx965), .A (nx955)) ;
    inv01 ix966 (.Y (nx967), .A (nx955)) ;
    inv02 ix974 (.Y (nx975), .A (nx1041)) ;
    inv02 ix976 (.Y (nx977), .A (nx1041)) ;
    inv02 ix978 (.Y (nx979), .A (nx1041)) ;
    inv02 ix980 (.Y (nx981), .A (nx1041)) ;
    inv02 ix982 (.Y (nx983), .A (nx1041)) ;
    inv02 ix984 (.Y (nx985), .A (nx1041)) ;
    inv02 ix986 (.Y (nx987), .A (nx1041)) ;
    inv02 ix988 (.Y (nx989), .A (nx1043)) ;
    inv02 ix990 (.Y (nx991), .A (nx1043)) ;
    inv02 ix992 (.Y (nx993), .A (nx1043)) ;
    inv02 ix994 (.Y (nx995), .A (nx1043)) ;
    inv02 ix996 (.Y (nx997), .A (nx1043)) ;
    inv02 ix998 (.Y (nx999), .A (nx1043)) ;
    inv02 ix1000 (.Y (nx1001), .A (nx1043)) ;
    inv02 ix1002 (.Y (nx1003), .A (nx1045)) ;
    inv02 ix1004 (.Y (nx1005), .A (nx1045)) ;
    inv02 ix1006 (.Y (nx1007), .A (nx1045)) ;
    inv02 ix1008 (.Y (nx1009), .A (nx1045)) ;
    inv02 ix1010 (.Y (nx1011), .A (nx1045)) ;
    inv02 ix1012 (.Y (nx1013), .A (nx1045)) ;
    inv02 ix1014 (.Y (nx1015), .A (nx1045)) ;
    inv02 ix1016 (.Y (nx1017), .A (nx1047)) ;
    inv02 ix1018 (.Y (nx1019), .A (nx1047)) ;
    inv02 ix1020 (.Y (nx1021), .A (nx1047)) ;
    inv02 ix1022 (.Y (nx1023), .A (nx1047)) ;
    inv01 ix1024 (.Y (nx1025), .A (FilterWR)) ;
    inv01 ix1026 (.Y (nx1027), .A (nx1025)) ;
    inv01 ix1028 (.Y (nx1029), .A (nx1025)) ;
    inv01 ix1030 (.Y (nx1031), .A (nx1025)) ;
    inv01 ix1032 (.Y (nx1033), .A (WindowWR)) ;
    inv01 ix1034 (.Y (nx1035), .A (nx1033)) ;
    inv01 ix1036 (.Y (nx1037), .A (nx1033)) ;
    inv01 ix1038 (.Y (nx1039), .A (nx1033)) ;
    inv02 ix1040 (.Y (nx1041), .A (RST)) ;
    inv02 ix1042 (.Y (nx1043), .A (RST)) ;
    inv02 ix1044 (.Y (nx1045), .A (RST)) ;
    inv02 ix1046 (.Y (nx1047), .A (RST)) ;
    nand02 ix1 (.Y (nx955), .A0 (nx1035), .A1 (FilterSize)) ;
    nand02 ix3 (.Y (nx941), .A0 (FilterSize), .A1 (nx1027)) ;
endmodule


module register_edge_rising_8 ( CLK, RST, EN, Din, Dout ) ;

    input CLK ;
    input RST ;
    input EN ;
    input [7:0]Din ;
    output [7:0]Dout ;

    wire nx212, nx222, nx232, nx242, nx252, nx262, nx272, nx282, nx296, nx331, 
         nx333, nx385, nx387, nx389, nx393, nx395, nx397, nx399, nx401, nx403, 
         nx405, nx407, nx409, nx411, nx413, nx415, nx417, nx419, nx421, nx423, 
         nx425, nx427, nx429;
    wire [7:0] \$dummy ;




    dff reg_Dout_0 (.Q (Dout[0]), .QB (\$dummy [0]), .D (nx212), .CLK (CLK)) ;
    nor02_2x ix297 (.Y (nx296), .A0 (nx423), .A1 (nx331)) ;
    dff reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [1]), .D (nx222), .CLK (CLK)) ;
    dff reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [2]), .D (nx232), .CLK (CLK)) ;
    dff reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [3]), .D (nx242), .CLK (CLK)) ;
    dff reg_Dout_4 (.Q (Dout[4]), .QB (\$dummy [4]), .D (nx252), .CLK (CLK)) ;
    dff reg_Dout_5 (.Q (Dout[5]), .QB (\$dummy [5]), .D (nx262), .CLK (CLK)) ;
    dff reg_Dout_6 (.Q (Dout[6]), .QB (\$dummy [6]), .D (nx272), .CLK (CLK)) ;
    dff reg_Dout_7 (.Q (Dout[7]), .QB (\$dummy [7]), .D (nx282), .CLK (CLK)) ;
    buf02 ix330 (.Y (nx331), .A (EN)) ;
    buf02 ix332 (.Y (nx333), .A (EN)) ;
    oai32 ix213 (.Y (nx212), .A0 (nx385), .A1 (nx423), .A2 (nx387), .B0 (nx389)
          , .B1 (nx427)) ;
    inv01 ix384 (.Y (nx385), .A (Din[0])) ;
    inv02 ix386 (.Y (nx387), .A (nx331)) ;
    inv01 ix388 (.Y (nx389), .A (Dout[0])) ;
    oai32 ix223 (.Y (nx222), .A0 (nx393), .A1 (nx423), .A2 (nx387), .B0 (nx395)
          , .B1 (nx427)) ;
    inv01 ix392 (.Y (nx393), .A (Din[1])) ;
    inv01 ix394 (.Y (nx395), .A (Dout[1])) ;
    oai32 ix233 (.Y (nx232), .A0 (nx397), .A1 (nx423), .A2 (nx387), .B0 (nx399)
          , .B1 (nx427)) ;
    inv01 ix396 (.Y (nx397), .A (Din[2])) ;
    inv01 ix398 (.Y (nx399), .A (Dout[2])) ;
    oai32 ix243 (.Y (nx242), .A0 (nx401), .A1 (nx423), .A2 (nx387), .B0 (nx403)
          , .B1 (nx427)) ;
    inv01 ix400 (.Y (nx401), .A (Din[3])) ;
    inv01 ix402 (.Y (nx403), .A (Dout[3])) ;
    oai32 ix253 (.Y (nx252), .A0 (nx405), .A1 (nx423), .A2 (nx387), .B0 (nx407)
          , .B1 (nx427)) ;
    inv01 ix404 (.Y (nx405), .A (Din[4])) ;
    inv01 ix406 (.Y (nx407), .A (Dout[4])) ;
    oai32 ix263 (.Y (nx262), .A0 (nx409), .A1 (nx423), .A2 (nx387), .B0 (nx411)
          , .B1 (nx427)) ;
    inv01 ix408 (.Y (nx409), .A (Din[5])) ;
    inv01 ix410 (.Y (nx411), .A (Dout[5])) ;
    oai32 ix273 (.Y (nx272), .A0 (nx413), .A1 (nx425), .A2 (nx415), .B0 (nx417)
          , .B1 (nx427)) ;
    inv01 ix412 (.Y (nx413), .A (Din[6])) ;
    inv01 ix414 (.Y (nx415), .A (nx333)) ;
    inv01 ix416 (.Y (nx417), .A (Dout[6])) ;
    oai32 ix283 (.Y (nx282), .A0 (nx419), .A1 (nx425), .A2 (nx415), .B0 (nx421)
          , .B1 (nx429)) ;
    inv01 ix418 (.Y (nx419), .A (Din[7])) ;
    inv01 ix420 (.Y (nx421), .A (Dout[7])) ;
    buf02 ix422 (.Y (nx423), .A (RST)) ;
    buf02 ix424 (.Y (nx425), .A (RST)) ;
    inv02 ix426 (.Y (nx427), .A (nx296)) ;
    inv02 ix428 (.Y (nx429), .A (nx296)) ;
endmodule

module RAM_8_18 ( input CLK, input WR, input [17:0] Address, input [7:0] Din, output [39:0] Dout );

reg [7:0] Mem [0:262143];

initial begin
	$readmemh("memory.list", Mem);
end

assign Dout = {Mem[Address + 4], Mem[Address + 3], Mem[Address + 2], Mem[Address + 1], Mem[Address]};

always @(CLK or WR)
  if (!CLK && WR)
    Mem[Address] = Din;

endmodule


module accelerator ( CLK, RST, Start, FilterSize, Instr, FilterDin_0__0__7, 
                     FilterDin_0__0__6, FilterDin_0__0__5, FilterDin_0__0__4, 
                     FilterDin_0__0__3, FilterDin_0__0__2, FilterDin_0__0__1, 
                     FilterDin_0__0__0, FilterDin_0__1__7, FilterDin_0__1__6, 
                     FilterDin_0__1__5, FilterDin_0__1__4, FilterDin_0__1__3, 
                     FilterDin_0__1__2, FilterDin_0__1__1, FilterDin_0__1__0, 
                     FilterDin_0__2__7, FilterDin_0__2__6, FilterDin_0__2__5, 
                     FilterDin_0__2__4, FilterDin_0__2__3, FilterDin_0__2__2, 
                     FilterDin_0__2__1, FilterDin_0__2__0, FilterDin_0__3__7, 
                     FilterDin_0__3__6, FilterDin_0__3__5, FilterDin_0__3__4, 
                     FilterDin_0__3__3, FilterDin_0__3__2, FilterDin_0__3__1, 
                     FilterDin_0__3__0, FilterDin_0__4__7, FilterDin_0__4__6, 
                     FilterDin_0__4__5, FilterDin_0__4__4, FilterDin_0__4__3, 
                     FilterDin_0__4__2, FilterDin_0__4__1, FilterDin_0__4__0, 
                     FilterDin_1__0__7, FilterDin_1__0__6, FilterDin_1__0__5, 
                     FilterDin_1__0__4, FilterDin_1__0__3, FilterDin_1__0__2, 
                     FilterDin_1__0__1, FilterDin_1__0__0, FilterDin_1__1__7, 
                     FilterDin_1__1__6, FilterDin_1__1__5, FilterDin_1__1__4, 
                     FilterDin_1__1__3, FilterDin_1__1__2, FilterDin_1__1__1, 
                     FilterDin_1__1__0, FilterDin_1__2__7, FilterDin_1__2__6, 
                     FilterDin_1__2__5, FilterDin_1__2__4, FilterDin_1__2__3, 
                     FilterDin_1__2__2, FilterDin_1__2__1, FilterDin_1__2__0, 
                     FilterDin_1__3__7, FilterDin_1__3__6, FilterDin_1__3__5, 
                     FilterDin_1__3__4, FilterDin_1__3__3, FilterDin_1__3__2, 
                     FilterDin_1__3__1, FilterDin_1__3__0, FilterDin_1__4__7, 
                     FilterDin_1__4__6, FilterDin_1__4__5, FilterDin_1__4__4, 
                     FilterDin_1__4__3, FilterDin_1__4__2, FilterDin_1__4__1, 
                     FilterDin_1__4__0, FilterDin_2__0__7, FilterDin_2__0__6, 
                     FilterDin_2__0__5, FilterDin_2__0__4, FilterDin_2__0__3, 
                     FilterDin_2__0__2, FilterDin_2__0__1, FilterDin_2__0__0, 
                     FilterDin_2__1__7, FilterDin_2__1__6, FilterDin_2__1__5, 
                     FilterDin_2__1__4, FilterDin_2__1__3, FilterDin_2__1__2, 
                     FilterDin_2__1__1, FilterDin_2__1__0, FilterDin_2__2__7, 
                     FilterDin_2__2__6, FilterDin_2__2__5, FilterDin_2__2__4, 
                     FilterDin_2__2__3, FilterDin_2__2__2, FilterDin_2__2__1, 
                     FilterDin_2__2__0, FilterDin_2__3__7, FilterDin_2__3__6, 
                     FilterDin_2__3__5, FilterDin_2__3__4, FilterDin_2__3__3, 
                     FilterDin_2__3__2, FilterDin_2__3__1, FilterDin_2__3__0, 
                     FilterDin_2__4__7, FilterDin_2__4__6, FilterDin_2__4__5, 
                     FilterDin_2__4__4, FilterDin_2__4__3, FilterDin_2__4__2, 
                     FilterDin_2__4__1, FilterDin_2__4__0, FilterDin_3__0__7, 
                     FilterDin_3__0__6, FilterDin_3__0__5, FilterDin_3__0__4, 
                     FilterDin_3__0__3, FilterDin_3__0__2, FilterDin_3__0__1, 
                     FilterDin_3__0__0, FilterDin_3__1__7, FilterDin_3__1__6, 
                     FilterDin_3__1__5, FilterDin_3__1__4, FilterDin_3__1__3, 
                     FilterDin_3__1__2, FilterDin_3__1__1, FilterDin_3__1__0, 
                     FilterDin_3__2__7, FilterDin_3__2__6, FilterDin_3__2__5, 
                     FilterDin_3__2__4, FilterDin_3__2__3, FilterDin_3__2__2, 
                     FilterDin_3__2__1, FilterDin_3__2__0, FilterDin_3__3__7, 
                     FilterDin_3__3__6, FilterDin_3__3__5, FilterDin_3__3__4, 
                     FilterDin_3__3__3, FilterDin_3__3__2, FilterDin_3__3__1, 
                     FilterDin_3__3__0, FilterDin_3__4__7, FilterDin_3__4__6, 
                     FilterDin_3__4__5, FilterDin_3__4__4, FilterDin_3__4__3, 
                     FilterDin_3__4__2, FilterDin_3__4__1, FilterDin_3__4__0, 
                     FilterDin_4__0__7, FilterDin_4__0__6, FilterDin_4__0__5, 
                     FilterDin_4__0__4, FilterDin_4__0__3, FilterDin_4__0__2, 
                     FilterDin_4__0__1, FilterDin_4__0__0, FilterDin_4__1__7, 
                     FilterDin_4__1__6, FilterDin_4__1__5, FilterDin_4__1__4, 
                     FilterDin_4__1__3, FilterDin_4__1__2, FilterDin_4__1__1, 
                     FilterDin_4__1__0, FilterDin_4__2__7, FilterDin_4__2__6, 
                     FilterDin_4__2__5, FilterDin_4__2__4, FilterDin_4__2__3, 
                     FilterDin_4__2__2, FilterDin_4__2__1, FilterDin_4__2__0, 
                     FilterDin_4__3__7, FilterDin_4__3__6, FilterDin_4__3__5, 
                     FilterDin_4__3__4, FilterDin_4__3__3, FilterDin_4__3__2, 
                     FilterDin_4__3__1, FilterDin_4__3__0, FilterDin_4__4__7, 
                     FilterDin_4__4__6, FilterDin_4__4__5, FilterDin_4__4__4, 
                     FilterDin_4__4__3, FilterDin_4__4__2, FilterDin_4__4__1, 
                     FilterDin_4__4__0, WindowDin_0__0__7, WindowDin_0__0__6, 
                     WindowDin_0__0__5, WindowDin_0__0__4, WindowDin_0__0__3, 
                     WindowDin_0__0__2, WindowDin_0__0__1, WindowDin_0__0__0, 
                     WindowDin_0__1__7, WindowDin_0__1__6, WindowDin_0__1__5, 
                     WindowDin_0__1__4, WindowDin_0__1__3, WindowDin_0__1__2, 
                     WindowDin_0__1__1, WindowDin_0__1__0, WindowDin_0__2__7, 
                     WindowDin_0__2__6, WindowDin_0__2__5, WindowDin_0__2__4, 
                     WindowDin_0__2__3, WindowDin_0__2__2, WindowDin_0__2__1, 
                     WindowDin_0__2__0, WindowDin_0__3__7, WindowDin_0__3__6, 
                     WindowDin_0__3__5, WindowDin_0__3__4, WindowDin_0__3__3, 
                     WindowDin_0__3__2, WindowDin_0__3__1, WindowDin_0__3__0, 
                     WindowDin_0__4__7, WindowDin_0__4__6, WindowDin_0__4__5, 
                     WindowDin_0__4__4, WindowDin_0__4__3, WindowDin_0__4__2, 
                     WindowDin_0__4__1, WindowDin_0__4__0, WindowDin_1__0__7, 
                     WindowDin_1__0__6, WindowDin_1__0__5, WindowDin_1__0__4, 
                     WindowDin_1__0__3, WindowDin_1__0__2, WindowDin_1__0__1, 
                     WindowDin_1__0__0, WindowDin_1__1__7, WindowDin_1__1__6, 
                     WindowDin_1__1__5, WindowDin_1__1__4, WindowDin_1__1__3, 
                     WindowDin_1__1__2, WindowDin_1__1__1, WindowDin_1__1__0, 
                     WindowDin_1__2__7, WindowDin_1__2__6, WindowDin_1__2__5, 
                     WindowDin_1__2__4, WindowDin_1__2__3, WindowDin_1__2__2, 
                     WindowDin_1__2__1, WindowDin_1__2__0, WindowDin_1__3__7, 
                     WindowDin_1__3__6, WindowDin_1__3__5, WindowDin_1__3__4, 
                     WindowDin_1__3__3, WindowDin_1__3__2, WindowDin_1__3__1, 
                     WindowDin_1__3__0, WindowDin_1__4__7, WindowDin_1__4__6, 
                     WindowDin_1__4__5, WindowDin_1__4__4, WindowDin_1__4__3, 
                     WindowDin_1__4__2, WindowDin_1__4__1, WindowDin_1__4__0, 
                     WindowDin_2__0__7, WindowDin_2__0__6, WindowDin_2__0__5, 
                     WindowDin_2__0__4, WindowDin_2__0__3, WindowDin_2__0__2, 
                     WindowDin_2__0__1, WindowDin_2__0__0, WindowDin_2__1__7, 
                     WindowDin_2__1__6, WindowDin_2__1__5, WindowDin_2__1__4, 
                     WindowDin_2__1__3, WindowDin_2__1__2, WindowDin_2__1__1, 
                     WindowDin_2__1__0, WindowDin_2__2__7, WindowDin_2__2__6, 
                     WindowDin_2__2__5, WindowDin_2__2__4, WindowDin_2__2__3, 
                     WindowDin_2__2__2, WindowDin_2__2__1, WindowDin_2__2__0, 
                     WindowDin_2__3__7, WindowDin_2__3__6, WindowDin_2__3__5, 
                     WindowDin_2__3__4, WindowDin_2__3__3, WindowDin_2__3__2, 
                     WindowDin_2__3__1, WindowDin_2__3__0, WindowDin_2__4__7, 
                     WindowDin_2__4__6, WindowDin_2__4__5, WindowDin_2__4__4, 
                     WindowDin_2__4__3, WindowDin_2__4__2, WindowDin_2__4__1, 
                     WindowDin_2__4__0, WindowDin_3__0__7, WindowDin_3__0__6, 
                     WindowDin_3__0__5, WindowDin_3__0__4, WindowDin_3__0__3, 
                     WindowDin_3__0__2, WindowDin_3__0__1, WindowDin_3__0__0, 
                     WindowDin_3__1__7, WindowDin_3__1__6, WindowDin_3__1__5, 
                     WindowDin_3__1__4, WindowDin_3__1__3, WindowDin_3__1__2, 
                     WindowDin_3__1__1, WindowDin_3__1__0, WindowDin_3__2__7, 
                     WindowDin_3__2__6, WindowDin_3__2__5, WindowDin_3__2__4, 
                     WindowDin_3__2__3, WindowDin_3__2__2, WindowDin_3__2__1, 
                     WindowDin_3__2__0, WindowDin_3__3__7, WindowDin_3__3__6, 
                     WindowDin_3__3__5, WindowDin_3__3__4, WindowDin_3__3__3, 
                     WindowDin_3__3__2, WindowDin_3__3__1, WindowDin_3__3__0, 
                     WindowDin_3__4__7, WindowDin_3__4__6, WindowDin_3__4__5, 
                     WindowDin_3__4__4, WindowDin_3__4__3, WindowDin_3__4__2, 
                     WindowDin_3__4__1, WindowDin_3__4__0, WindowDin_4__0__7, 
                     WindowDin_4__0__6, WindowDin_4__0__5, WindowDin_4__0__4, 
                     WindowDin_4__0__3, WindowDin_4__0__2, WindowDin_4__0__1, 
                     WindowDin_4__0__0, WindowDin_4__1__7, WindowDin_4__1__6, 
                     WindowDin_4__1__5, WindowDin_4__1__4, WindowDin_4__1__3, 
                     WindowDin_4__1__2, WindowDin_4__1__1, WindowDin_4__1__0, 
                     WindowDin_4__2__7, WindowDin_4__2__6, WindowDin_4__2__5, 
                     WindowDin_4__2__4, WindowDin_4__2__3, WindowDin_4__2__2, 
                     WindowDin_4__2__1, WindowDin_4__2__0, WindowDin_4__3__7, 
                     WindowDin_4__3__6, WindowDin_4__3__5, WindowDin_4__3__4, 
                     WindowDin_4__3__3, WindowDin_4__3__2, WindowDin_4__3__1, 
                     WindowDin_4__3__0, WindowDin_4__4__7, WindowDin_4__4__6, 
                     WindowDin_4__4__5, WindowDin_4__4__4, WindowDin_4__4__3, 
                     WindowDin_4__4__2, WindowDin_4__4__1, WindowDin_4__4__0, 
                     Done, Result ) ;

    input CLK ;
    input RST ;
    input Start ;
    input FilterSize ;
    input Instr ;
    input FilterDin_0__0__7 ;
    input FilterDin_0__0__6 ;
    input FilterDin_0__0__5 ;
    input FilterDin_0__0__4 ;
    input FilterDin_0__0__3 ;
    input FilterDin_0__0__2 ;
    input FilterDin_0__0__1 ;
    input FilterDin_0__0__0 ;
    input FilterDin_0__1__7 ;
    input FilterDin_0__1__6 ;
    input FilterDin_0__1__5 ;
    input FilterDin_0__1__4 ;
    input FilterDin_0__1__3 ;
    input FilterDin_0__1__2 ;
    input FilterDin_0__1__1 ;
    input FilterDin_0__1__0 ;
    input FilterDin_0__2__7 ;
    input FilterDin_0__2__6 ;
    input FilterDin_0__2__5 ;
    input FilterDin_0__2__4 ;
    input FilterDin_0__2__3 ;
    input FilterDin_0__2__2 ;
    input FilterDin_0__2__1 ;
    input FilterDin_0__2__0 ;
    input FilterDin_0__3__7 ;
    input FilterDin_0__3__6 ;
    input FilterDin_0__3__5 ;
    input FilterDin_0__3__4 ;
    input FilterDin_0__3__3 ;
    input FilterDin_0__3__2 ;
    input FilterDin_0__3__1 ;
    input FilterDin_0__3__0 ;
    input FilterDin_0__4__7 ;
    input FilterDin_0__4__6 ;
    input FilterDin_0__4__5 ;
    input FilterDin_0__4__4 ;
    input FilterDin_0__4__3 ;
    input FilterDin_0__4__2 ;
    input FilterDin_0__4__1 ;
    input FilterDin_0__4__0 ;
    input FilterDin_1__0__7 ;
    input FilterDin_1__0__6 ;
    input FilterDin_1__0__5 ;
    input FilterDin_1__0__4 ;
    input FilterDin_1__0__3 ;
    input FilterDin_1__0__2 ;
    input FilterDin_1__0__1 ;
    input FilterDin_1__0__0 ;
    input FilterDin_1__1__7 ;
    input FilterDin_1__1__6 ;
    input FilterDin_1__1__5 ;
    input FilterDin_1__1__4 ;
    input FilterDin_1__1__3 ;
    input FilterDin_1__1__2 ;
    input FilterDin_1__1__1 ;
    input FilterDin_1__1__0 ;
    input FilterDin_1__2__7 ;
    input FilterDin_1__2__6 ;
    input FilterDin_1__2__5 ;
    input FilterDin_1__2__4 ;
    input FilterDin_1__2__3 ;
    input FilterDin_1__2__2 ;
    input FilterDin_1__2__1 ;
    input FilterDin_1__2__0 ;
    input FilterDin_1__3__7 ;
    input FilterDin_1__3__6 ;
    input FilterDin_1__3__5 ;
    input FilterDin_1__3__4 ;
    input FilterDin_1__3__3 ;
    input FilterDin_1__3__2 ;
    input FilterDin_1__3__1 ;
    input FilterDin_1__3__0 ;
    input FilterDin_1__4__7 ;
    input FilterDin_1__4__6 ;
    input FilterDin_1__4__5 ;
    input FilterDin_1__4__4 ;
    input FilterDin_1__4__3 ;
    input FilterDin_1__4__2 ;
    input FilterDin_1__4__1 ;
    input FilterDin_1__4__0 ;
    input FilterDin_2__0__7 ;
    input FilterDin_2__0__6 ;
    input FilterDin_2__0__5 ;
    input FilterDin_2__0__4 ;
    input FilterDin_2__0__3 ;
    input FilterDin_2__0__2 ;
    input FilterDin_2__0__1 ;
    input FilterDin_2__0__0 ;
    input FilterDin_2__1__7 ;
    input FilterDin_2__1__6 ;
    input FilterDin_2__1__5 ;
    input FilterDin_2__1__4 ;
    input FilterDin_2__1__3 ;
    input FilterDin_2__1__2 ;
    input FilterDin_2__1__1 ;
    input FilterDin_2__1__0 ;
    input FilterDin_2__2__7 ;
    input FilterDin_2__2__6 ;
    input FilterDin_2__2__5 ;
    input FilterDin_2__2__4 ;
    input FilterDin_2__2__3 ;
    input FilterDin_2__2__2 ;
    input FilterDin_2__2__1 ;
    input FilterDin_2__2__0 ;
    input FilterDin_2__3__7 ;
    input FilterDin_2__3__6 ;
    input FilterDin_2__3__5 ;
    input FilterDin_2__3__4 ;
    input FilterDin_2__3__3 ;
    input FilterDin_2__3__2 ;
    input FilterDin_2__3__1 ;
    input FilterDin_2__3__0 ;
    input FilterDin_2__4__7 ;
    input FilterDin_2__4__6 ;
    input FilterDin_2__4__5 ;
    input FilterDin_2__4__4 ;
    input FilterDin_2__4__3 ;
    input FilterDin_2__4__2 ;
    input FilterDin_2__4__1 ;
    input FilterDin_2__4__0 ;
    input FilterDin_3__0__7 ;
    input FilterDin_3__0__6 ;
    input FilterDin_3__0__5 ;
    input FilterDin_3__0__4 ;
    input FilterDin_3__0__3 ;
    input FilterDin_3__0__2 ;
    input FilterDin_3__0__1 ;
    input FilterDin_3__0__0 ;
    input FilterDin_3__1__7 ;
    input FilterDin_3__1__6 ;
    input FilterDin_3__1__5 ;
    input FilterDin_3__1__4 ;
    input FilterDin_3__1__3 ;
    input FilterDin_3__1__2 ;
    input FilterDin_3__1__1 ;
    input FilterDin_3__1__0 ;
    input FilterDin_3__2__7 ;
    input FilterDin_3__2__6 ;
    input FilterDin_3__2__5 ;
    input FilterDin_3__2__4 ;
    input FilterDin_3__2__3 ;
    input FilterDin_3__2__2 ;
    input FilterDin_3__2__1 ;
    input FilterDin_3__2__0 ;
    input FilterDin_3__3__7 ;
    input FilterDin_3__3__6 ;
    input FilterDin_3__3__5 ;
    input FilterDin_3__3__4 ;
    input FilterDin_3__3__3 ;
    input FilterDin_3__3__2 ;
    input FilterDin_3__3__1 ;
    input FilterDin_3__3__0 ;
    input FilterDin_3__4__7 ;
    input FilterDin_3__4__6 ;
    input FilterDin_3__4__5 ;
    input FilterDin_3__4__4 ;
    input FilterDin_3__4__3 ;
    input FilterDin_3__4__2 ;
    input FilterDin_3__4__1 ;
    input FilterDin_3__4__0 ;
    input FilterDin_4__0__7 ;
    input FilterDin_4__0__6 ;
    input FilterDin_4__0__5 ;
    input FilterDin_4__0__4 ;
    input FilterDin_4__0__3 ;
    input FilterDin_4__0__2 ;
    input FilterDin_4__0__1 ;
    input FilterDin_4__0__0 ;
    input FilterDin_4__1__7 ;
    input FilterDin_4__1__6 ;
    input FilterDin_4__1__5 ;
    input FilterDin_4__1__4 ;
    input FilterDin_4__1__3 ;
    input FilterDin_4__1__2 ;
    input FilterDin_4__1__1 ;
    input FilterDin_4__1__0 ;
    input FilterDin_4__2__7 ;
    input FilterDin_4__2__6 ;
    input FilterDin_4__2__5 ;
    input FilterDin_4__2__4 ;
    input FilterDin_4__2__3 ;
    input FilterDin_4__2__2 ;
    input FilterDin_4__2__1 ;
    input FilterDin_4__2__0 ;
    input FilterDin_4__3__7 ;
    input FilterDin_4__3__6 ;
    input FilterDin_4__3__5 ;
    input FilterDin_4__3__4 ;
    input FilterDin_4__3__3 ;
    input FilterDin_4__3__2 ;
    input FilterDin_4__3__1 ;
    input FilterDin_4__3__0 ;
    input FilterDin_4__4__7 ;
    input FilterDin_4__4__6 ;
    input FilterDin_4__4__5 ;
    input FilterDin_4__4__4 ;
    input FilterDin_4__4__3 ;
    input FilterDin_4__4__2 ;
    input FilterDin_4__4__1 ;
    input FilterDin_4__4__0 ;
    input WindowDin_0__0__7 ;
    input WindowDin_0__0__6 ;
    input WindowDin_0__0__5 ;
    input WindowDin_0__0__4 ;
    input WindowDin_0__0__3 ;
    input WindowDin_0__0__2 ;
    input WindowDin_0__0__1 ;
    input WindowDin_0__0__0 ;
    input WindowDin_0__1__7 ;
    input WindowDin_0__1__6 ;
    input WindowDin_0__1__5 ;
    input WindowDin_0__1__4 ;
    input WindowDin_0__1__3 ;
    input WindowDin_0__1__2 ;
    input WindowDin_0__1__1 ;
    input WindowDin_0__1__0 ;
    input WindowDin_0__2__7 ;
    input WindowDin_0__2__6 ;
    input WindowDin_0__2__5 ;
    input WindowDin_0__2__4 ;
    input WindowDin_0__2__3 ;
    input WindowDin_0__2__2 ;
    input WindowDin_0__2__1 ;
    input WindowDin_0__2__0 ;
    input WindowDin_0__3__7 ;
    input WindowDin_0__3__6 ;
    input WindowDin_0__3__5 ;
    input WindowDin_0__3__4 ;
    input WindowDin_0__3__3 ;
    input WindowDin_0__3__2 ;
    input WindowDin_0__3__1 ;
    input WindowDin_0__3__0 ;
    input WindowDin_0__4__7 ;
    input WindowDin_0__4__6 ;
    input WindowDin_0__4__5 ;
    input WindowDin_0__4__4 ;
    input WindowDin_0__4__3 ;
    input WindowDin_0__4__2 ;
    input WindowDin_0__4__1 ;
    input WindowDin_0__4__0 ;
    input WindowDin_1__0__7 ;
    input WindowDin_1__0__6 ;
    input WindowDin_1__0__5 ;
    input WindowDin_1__0__4 ;
    input WindowDin_1__0__3 ;
    input WindowDin_1__0__2 ;
    input WindowDin_1__0__1 ;
    input WindowDin_1__0__0 ;
    input WindowDin_1__1__7 ;
    input WindowDin_1__1__6 ;
    input WindowDin_1__1__5 ;
    input WindowDin_1__1__4 ;
    input WindowDin_1__1__3 ;
    input WindowDin_1__1__2 ;
    input WindowDin_1__1__1 ;
    input WindowDin_1__1__0 ;
    input WindowDin_1__2__7 ;
    input WindowDin_1__2__6 ;
    input WindowDin_1__2__5 ;
    input WindowDin_1__2__4 ;
    input WindowDin_1__2__3 ;
    input WindowDin_1__2__2 ;
    input WindowDin_1__2__1 ;
    input WindowDin_1__2__0 ;
    input WindowDin_1__3__7 ;
    input WindowDin_1__3__6 ;
    input WindowDin_1__3__5 ;
    input WindowDin_1__3__4 ;
    input WindowDin_1__3__3 ;
    input WindowDin_1__3__2 ;
    input WindowDin_1__3__1 ;
    input WindowDin_1__3__0 ;
    input WindowDin_1__4__7 ;
    input WindowDin_1__4__6 ;
    input WindowDin_1__4__5 ;
    input WindowDin_1__4__4 ;
    input WindowDin_1__4__3 ;
    input WindowDin_1__4__2 ;
    input WindowDin_1__4__1 ;
    input WindowDin_1__4__0 ;
    input WindowDin_2__0__7 ;
    input WindowDin_2__0__6 ;
    input WindowDin_2__0__5 ;
    input WindowDin_2__0__4 ;
    input WindowDin_2__0__3 ;
    input WindowDin_2__0__2 ;
    input WindowDin_2__0__1 ;
    input WindowDin_2__0__0 ;
    input WindowDin_2__1__7 ;
    input WindowDin_2__1__6 ;
    input WindowDin_2__1__5 ;
    input WindowDin_2__1__4 ;
    input WindowDin_2__1__3 ;
    input WindowDin_2__1__2 ;
    input WindowDin_2__1__1 ;
    input WindowDin_2__1__0 ;
    input WindowDin_2__2__7 ;
    input WindowDin_2__2__6 ;
    input WindowDin_2__2__5 ;
    input WindowDin_2__2__4 ;
    input WindowDin_2__2__3 ;
    input WindowDin_2__2__2 ;
    input WindowDin_2__2__1 ;
    input WindowDin_2__2__0 ;
    input WindowDin_2__3__7 ;
    input WindowDin_2__3__6 ;
    input WindowDin_2__3__5 ;
    input WindowDin_2__3__4 ;
    input WindowDin_2__3__3 ;
    input WindowDin_2__3__2 ;
    input WindowDin_2__3__1 ;
    input WindowDin_2__3__0 ;
    input WindowDin_2__4__7 ;
    input WindowDin_2__4__6 ;
    input WindowDin_2__4__5 ;
    input WindowDin_2__4__4 ;
    input WindowDin_2__4__3 ;
    input WindowDin_2__4__2 ;
    input WindowDin_2__4__1 ;
    input WindowDin_2__4__0 ;
    input WindowDin_3__0__7 ;
    input WindowDin_3__0__6 ;
    input WindowDin_3__0__5 ;
    input WindowDin_3__0__4 ;
    input WindowDin_3__0__3 ;
    input WindowDin_3__0__2 ;
    input WindowDin_3__0__1 ;
    input WindowDin_3__0__0 ;
    input WindowDin_3__1__7 ;
    input WindowDin_3__1__6 ;
    input WindowDin_3__1__5 ;
    input WindowDin_3__1__4 ;
    input WindowDin_3__1__3 ;
    input WindowDin_3__1__2 ;
    input WindowDin_3__1__1 ;
    input WindowDin_3__1__0 ;
    input WindowDin_3__2__7 ;
    input WindowDin_3__2__6 ;
    input WindowDin_3__2__5 ;
    input WindowDin_3__2__4 ;
    input WindowDin_3__2__3 ;
    input WindowDin_3__2__2 ;
    input WindowDin_3__2__1 ;
    input WindowDin_3__2__0 ;
    input WindowDin_3__3__7 ;
    input WindowDin_3__3__6 ;
    input WindowDin_3__3__5 ;
    input WindowDin_3__3__4 ;
    input WindowDin_3__3__3 ;
    input WindowDin_3__3__2 ;
    input WindowDin_3__3__1 ;
    input WindowDin_3__3__0 ;
    input WindowDin_3__4__7 ;
    input WindowDin_3__4__6 ;
    input WindowDin_3__4__5 ;
    input WindowDin_3__4__4 ;
    input WindowDin_3__4__3 ;
    input WindowDin_3__4__2 ;
    input WindowDin_3__4__1 ;
    input WindowDin_3__4__0 ;
    input WindowDin_4__0__7 ;
    input WindowDin_4__0__6 ;
    input WindowDin_4__0__5 ;
    input WindowDin_4__0__4 ;
    input WindowDin_4__0__3 ;
    input WindowDin_4__0__2 ;
    input WindowDin_4__0__1 ;
    input WindowDin_4__0__0 ;
    input WindowDin_4__1__7 ;
    input WindowDin_4__1__6 ;
    input WindowDin_4__1__5 ;
    input WindowDin_4__1__4 ;
    input WindowDin_4__1__3 ;
    input WindowDin_4__1__2 ;
    input WindowDin_4__1__1 ;
    input WindowDin_4__1__0 ;
    input WindowDin_4__2__7 ;
    input WindowDin_4__2__6 ;
    input WindowDin_4__2__5 ;
    input WindowDin_4__2__4 ;
    input WindowDin_4__2__3 ;
    input WindowDin_4__2__2 ;
    input WindowDin_4__2__1 ;
    input WindowDin_4__2__0 ;
    input WindowDin_4__3__7 ;
    input WindowDin_4__3__6 ;
    input WindowDin_4__3__5 ;
    input WindowDin_4__3__4 ;
    input WindowDin_4__3__3 ;
    input WindowDin_4__3__2 ;
    input WindowDin_4__3__1 ;
    input WindowDin_4__3__0 ;
    input WindowDin_4__4__7 ;
    input WindowDin_4__4__6 ;
    input WindowDin_4__4__5 ;
    input WindowDin_4__4__4 ;
    input WindowDin_4__4__3 ;
    input WindowDin_4__4__2 ;
    input WindowDin_4__4__1 ;
    input WindowDin_4__4__0 ;
    output Done ;
    output [7:0]Result ;

    wire CounterEN, CounterRST, CounterOut_3, CounterOut_2, CounterOut_1, 
         CounterOut_0, L1FirstOperands_0__16, L1FirstOperands_0__14, 
         L1FirstOperands_0__13, L1FirstOperands_0__12, L1FirstOperands_0__11, 
         L1FirstOperands_0__10, L1FirstOperands_0__9, L1FirstOperands_0__8, 
         L1FirstOperands_0__7, L1FirstOperands_0__6, L1FirstOperands_0__5, 
         L1FirstOperands_0__4, L1FirstOperands_0__3, L1FirstOperands_0__2, 
         L1FirstOperands_0__1, L1FirstOperands_0__0, L1FirstOperands_1__16, 
         L1FirstOperands_1__14, L1FirstOperands_1__13, L1FirstOperands_1__12, 
         L1FirstOperands_1__11, L1FirstOperands_1__10, L1FirstOperands_1__9, 
         L1FirstOperands_1__8, L1FirstOperands_1__7, L1FirstOperands_1__6, 
         L1FirstOperands_1__5, L1FirstOperands_1__4, L1FirstOperands_1__3, 
         L1FirstOperands_1__2, L1FirstOperands_1__1, L1FirstOperands_1__0, 
         L1FirstOperands_2__16, L1FirstOperands_2__14, L1FirstOperands_2__13, 
         L1FirstOperands_2__12, L1FirstOperands_2__11, L1FirstOperands_2__10, 
         L1FirstOperands_2__9, L1FirstOperands_2__8, L1FirstOperands_2__7, 
         L1FirstOperands_2__6, L1FirstOperands_2__5, L1FirstOperands_2__4, 
         L1FirstOperands_2__3, L1FirstOperands_2__2, L1FirstOperands_2__1, 
         L1FirstOperands_2__0, L1FirstOperands_3__16, L1FirstOperands_3__14, 
         L1FirstOperands_3__13, L1FirstOperands_3__12, L1FirstOperands_3__11, 
         L1FirstOperands_3__10, L1FirstOperands_3__9, L1FirstOperands_3__8, 
         L1FirstOperands_3__7, L1FirstOperands_3__6, L1FirstOperands_3__5, 
         L1FirstOperands_3__4, L1FirstOperands_3__3, L1FirstOperands_3__2, 
         L1FirstOperands_3__1, L1FirstOperands_3__0, L1FirstOperands_4__16, 
         L1FirstOperands_4__14, L1FirstOperands_4__13, L1FirstOperands_4__12, 
         L1FirstOperands_4__11, L1FirstOperands_4__10, L1FirstOperands_4__9, 
         L1FirstOperands_4__8, L1FirstOperands_4__7, L1FirstOperands_4__6, 
         L1FirstOperands_4__5, L1FirstOperands_4__4, L1FirstOperands_4__3, 
         L1FirstOperands_4__2, L1FirstOperands_4__1, L1FirstOperands_4__0, 
         L1FirstOperands_5__16, L1FirstOperands_5__14, L1FirstOperands_5__13, 
         L1FirstOperands_5__12, L1FirstOperands_5__11, L1FirstOperands_5__10, 
         L1FirstOperands_5__9, L1FirstOperands_5__8, L1FirstOperands_5__7, 
         L1FirstOperands_5__6, L1FirstOperands_5__5, L1FirstOperands_5__4, 
         L1FirstOperands_5__3, L1FirstOperands_5__2, L1FirstOperands_5__1, 
         L1FirstOperands_5__0, L1FirstOperands_6__16, L1FirstOperands_6__14, 
         L1FirstOperands_6__13, L1FirstOperands_6__12, L1FirstOperands_6__11, 
         L1FirstOperands_6__10, L1FirstOperands_6__9, L1FirstOperands_6__8, 
         L1FirstOperands_6__7, L1FirstOperands_6__6, L1FirstOperands_6__5, 
         L1FirstOperands_6__4, L1FirstOperands_6__3, L1FirstOperands_6__2, 
         L1FirstOperands_6__1, L1FirstOperands_6__0, L1FirstOperands_7__16, 
         L1FirstOperands_7__14, L1FirstOperands_7__13, L1FirstOperands_7__12, 
         L1FirstOperands_7__11, L1FirstOperands_7__10, L1FirstOperands_7__9, 
         L1FirstOperands_7__8, L1FirstOperands_7__7, L1FirstOperands_7__6, 
         L1FirstOperands_7__5, L1FirstOperands_7__4, L1FirstOperands_7__3, 
         L1FirstOperands_7__2, L1FirstOperands_7__1, L1FirstOperands_7__0, 
         L1FirstOperands_8__16, L1FirstOperands_8__14, L1FirstOperands_8__13, 
         L1FirstOperands_8__12, L1FirstOperands_8__11, L1FirstOperands_8__10, 
         L1FirstOperands_8__9, L1FirstOperands_8__8, L1FirstOperands_8__7, 
         L1FirstOperands_8__6, L1FirstOperands_8__5, L1FirstOperands_8__4, 
         L1FirstOperands_8__3, L1FirstOperands_8__2, L1FirstOperands_8__1, 
         L1FirstOperands_8__0, L1FirstOperands_9__16, L1FirstOperands_9__14, 
         L1FirstOperands_9__13, L1FirstOperands_9__12, L1FirstOperands_9__11, 
         L1FirstOperands_9__10, L1FirstOperands_9__9, L1FirstOperands_9__8, 
         L1FirstOperands_9__7, L1FirstOperands_9__6, L1FirstOperands_9__5, 
         L1FirstOperands_9__4, L1FirstOperands_9__3, L1FirstOperands_9__2, 
         L1FirstOperands_9__1, L1FirstOperands_9__0, L1FirstOperands_10__16, 
         L1FirstOperands_10__14, L1FirstOperands_10__13, L1FirstOperands_10__12, 
         L1FirstOperands_10__11, L1FirstOperands_10__10, L1FirstOperands_10__9, 
         L1FirstOperands_10__8, L1FirstOperands_10__7, L1FirstOperands_10__6, 
         L1FirstOperands_10__5, L1FirstOperands_10__4, L1FirstOperands_10__3, 
         L1FirstOperands_10__2, L1FirstOperands_10__1, L1FirstOperands_10__0, 
         L1FirstOperands_11__16, L1FirstOperands_11__14, L1FirstOperands_11__13, 
         L1FirstOperands_11__12, L1FirstOperands_11__11, L1FirstOperands_11__10, 
         L1FirstOperands_11__9, L1FirstOperands_11__8, L1FirstOperands_11__7, 
         L1FirstOperands_11__6, L1FirstOperands_11__5, L1FirstOperands_11__4, 
         L1FirstOperands_11__3, L1FirstOperands_11__2, L1FirstOperands_11__1, 
         L1FirstOperands_11__0, L1SecondOperands_0__16, L1SecondOperands_0__14, 
         L1SecondOperands_0__13, L1SecondOperands_0__12, L1SecondOperands_0__11, 
         L1SecondOperands_0__10, L1SecondOperands_0__9, L1SecondOperands_0__8, 
         L1SecondOperands_0__7, L1SecondOperands_0__6, L1SecondOperands_0__5, 
         L1SecondOperands_0__4, L1SecondOperands_0__3, L1SecondOperands_0__2, 
         L1SecondOperands_0__1, L1SecondOperands_0__0, L1SecondOperands_1__16, 
         L1SecondOperands_1__14, L1SecondOperands_1__13, L1SecondOperands_1__12, 
         L1SecondOperands_1__11, L1SecondOperands_1__10, L1SecondOperands_1__9, 
         L1SecondOperands_1__8, L1SecondOperands_1__7, L1SecondOperands_1__6, 
         L1SecondOperands_1__5, L1SecondOperands_1__4, L1SecondOperands_1__3, 
         L1SecondOperands_1__2, L1SecondOperands_1__1, L1SecondOperands_1__0, 
         L1SecondOperands_2__16, L1SecondOperands_2__14, L1SecondOperands_2__13, 
         L1SecondOperands_2__12, L1SecondOperands_2__11, L1SecondOperands_2__10, 
         L1SecondOperands_2__9, L1SecondOperands_2__8, L1SecondOperands_2__7, 
         L1SecondOperands_2__6, L1SecondOperands_2__5, L1SecondOperands_2__4, 
         L1SecondOperands_2__3, L1SecondOperands_2__2, L1SecondOperands_2__1, 
         L1SecondOperands_2__0, L1SecondOperands_3__16, L1SecondOperands_3__14, 
         L1SecondOperands_3__13, L1SecondOperands_3__12, L1SecondOperands_3__11, 
         L1SecondOperands_3__10, L1SecondOperands_3__9, L1SecondOperands_3__8, 
         L1SecondOperands_3__7, L1SecondOperands_3__6, L1SecondOperands_3__5, 
         L1SecondOperands_3__4, L1SecondOperands_3__3, L1SecondOperands_3__2, 
         L1SecondOperands_3__1, L1SecondOperands_3__0, L1SecondOperands_4__16, 
         L1SecondOperands_4__14, L1SecondOperands_4__13, L1SecondOperands_4__12, 
         L1SecondOperands_4__11, L1SecondOperands_4__10, L1SecondOperands_4__9, 
         L1SecondOperands_4__8, L1SecondOperands_4__7, L1SecondOperands_4__6, 
         L1SecondOperands_4__5, L1SecondOperands_4__4, L1SecondOperands_4__3, 
         L1SecondOperands_4__2, L1SecondOperands_4__1, L1SecondOperands_4__0, 
         L1SecondOperands_5__16, L1SecondOperands_5__14, L1SecondOperands_5__13, 
         L1SecondOperands_5__12, L1SecondOperands_5__11, L1SecondOperands_5__10, 
         L1SecondOperands_5__9, L1SecondOperands_5__8, L1SecondOperands_5__7, 
         L1SecondOperands_5__6, L1SecondOperands_5__5, L1SecondOperands_5__4, 
         L1SecondOperands_5__3, L1SecondOperands_5__2, L1SecondOperands_5__1, 
         L1SecondOperands_5__0, L1SecondOperands_6__16, L1SecondOperands_6__14, 
         L1SecondOperands_6__13, L1SecondOperands_6__12, L1SecondOperands_6__11, 
         L1SecondOperands_6__10, L1SecondOperands_6__9, L1SecondOperands_6__8, 
         L1SecondOperands_6__7, L1SecondOperands_6__6, L1SecondOperands_6__5, 
         L1SecondOperands_6__4, L1SecondOperands_6__3, L1SecondOperands_6__2, 
         L1SecondOperands_6__1, L1SecondOperands_6__0, L1SecondOperands_7__16, 
         L1SecondOperands_7__14, L1SecondOperands_7__13, L1SecondOperands_7__12, 
         L1SecondOperands_7__11, L1SecondOperands_7__10, L1SecondOperands_7__9, 
         L1SecondOperands_7__8, L1SecondOperands_7__7, L1SecondOperands_7__6, 
         L1SecondOperands_7__5, L1SecondOperands_7__4, L1SecondOperands_7__3, 
         L1SecondOperands_7__2, L1SecondOperands_7__1, L1SecondOperands_7__0, 
         L1SecondOperands_8__16, L1SecondOperands_8__14, L1SecondOperands_8__13, 
         L1SecondOperands_8__12, L1SecondOperands_8__11, L1SecondOperands_8__10, 
         L1SecondOperands_8__9, L1SecondOperands_8__8, L1SecondOperands_8__7, 
         L1SecondOperands_8__6, L1SecondOperands_8__5, L1SecondOperands_8__4, 
         L1SecondOperands_8__3, L1SecondOperands_8__2, L1SecondOperands_8__1, 
         L1SecondOperands_8__0, L1SecondOperands_9__16, L1SecondOperands_9__14, 
         L1SecondOperands_9__13, L1SecondOperands_9__12, L1SecondOperands_9__11, 
         L1SecondOperands_9__10, L1SecondOperands_9__9, L1SecondOperands_9__8, 
         L1SecondOperands_9__7, L1SecondOperands_9__6, L1SecondOperands_9__5, 
         L1SecondOperands_9__4, L1SecondOperands_9__3, L1SecondOperands_9__2, 
         L1SecondOperands_9__1, L1SecondOperands_9__0, L1SecondOperands_10__16, 
         L1SecondOperands_10__14, L1SecondOperands_10__13, 
         L1SecondOperands_10__12, L1SecondOperands_10__11, 
         L1SecondOperands_10__10, L1SecondOperands_10__9, L1SecondOperands_10__8, 
         L1SecondOperands_10__7, L1SecondOperands_10__6, L1SecondOperands_10__5, 
         L1SecondOperands_10__4, L1SecondOperands_10__3, L1SecondOperands_10__2, 
         L1SecondOperands_10__1, L1SecondOperands_10__0, L1SecondOperands_11__16, 
         L1SecondOperands_11__14, L1SecondOperands_11__13, 
         L1SecondOperands_11__12, L1SecondOperands_11__11, 
         L1SecondOperands_11__10, L1SecondOperands_11__9, L1SecondOperands_11__8, 
         L1SecondOperands_11__7, L1SecondOperands_11__6, L1SecondOperands_11__5, 
         L1SecondOperands_11__4, L1SecondOperands_11__3, L1SecondOperands_11__2, 
         L1SecondOperands_11__1, L1SecondOperands_11__0, L1ResultsLarge_0__16, 
         L1ResultsLarge_0__15, L1ResultsLarge_0__14, L1ResultsLarge_0__13, 
         L1ResultsLarge_0__12, L1ResultsLarge_0__11, L1ResultsLarge_0__10, 
         L1ResultsLarge_0__9, L1ResultsLarge_0__8, L1ResultsLarge_0__7, 
         L1ResultsLarge_0__6, L1ResultsLarge_0__5, L1ResultsLarge_0__4, 
         L1ResultsLarge_0__3, L1ResultsLarge_0__2, L1ResultsLarge_0__1, 
         L1ResultsLarge_0__0, L1ResultsLarge_1__16, L1ResultsLarge_1__15, 
         L1ResultsLarge_1__14, L1ResultsLarge_1__13, L1ResultsLarge_1__12, 
         L1ResultsLarge_1__11, L1ResultsLarge_1__10, L1ResultsLarge_1__9, 
         L1ResultsLarge_1__8, L1ResultsLarge_1__7, L1ResultsLarge_1__6, 
         L1ResultsLarge_1__5, L1ResultsLarge_1__4, L1ResultsLarge_1__3, 
         L1ResultsLarge_1__2, L1ResultsLarge_1__1, L1ResultsLarge_1__0, 
         L1ResultsLarge_2__16, L1ResultsLarge_2__15, L1ResultsLarge_2__14, 
         L1ResultsLarge_2__13, L1ResultsLarge_2__12, L1ResultsLarge_2__11, 
         L1ResultsLarge_2__10, L1ResultsLarge_2__9, L1ResultsLarge_2__8, 
         L1ResultsLarge_2__7, L1ResultsLarge_2__6, L1ResultsLarge_2__5, 
         L1ResultsLarge_2__4, L1ResultsLarge_2__3, L1ResultsLarge_2__2, 
         L1ResultsLarge_2__1, L1ResultsLarge_2__0, L1ResultsLarge_3__16, 
         L1ResultsLarge_3__15, L1ResultsLarge_3__14, L1ResultsLarge_3__13, 
         L1ResultsLarge_3__12, L1ResultsLarge_3__11, L1ResultsLarge_3__10, 
         L1ResultsLarge_3__9, L1ResultsLarge_3__8, L1ResultsLarge_3__7, 
         L1ResultsLarge_3__6, L1ResultsLarge_3__5, L1ResultsLarge_3__4, 
         L1ResultsLarge_3__3, L1ResultsLarge_3__2, L1ResultsLarge_3__1, 
         L1ResultsLarge_3__0, L1ResultsLarge_4__16, L1ResultsLarge_4__15, 
         L1ResultsLarge_4__14, L1ResultsLarge_4__13, L1ResultsLarge_4__12, 
         L1ResultsLarge_4__11, L1ResultsLarge_4__10, L1ResultsLarge_4__9, 
         L1ResultsLarge_4__8, L1ResultsLarge_4__7, L1ResultsLarge_4__6, 
         L1ResultsLarge_4__5, L1ResultsLarge_4__4, L1ResultsLarge_4__3, 
         L1ResultsLarge_4__2, L1ResultsLarge_4__1, L1ResultsLarge_4__0, 
         L1ResultsLarge_5__16, L1ResultsLarge_5__15, L1ResultsLarge_5__14, 
         L1ResultsLarge_5__13, L1ResultsLarge_5__12, L1ResultsLarge_5__11, 
         L1ResultsLarge_5__10, L1ResultsLarge_5__9, L1ResultsLarge_5__8, 
         L1ResultsLarge_5__7, L1ResultsLarge_5__6, L1ResultsLarge_5__5, 
         L1ResultsLarge_5__4, L1ResultsLarge_5__3, L1ResultsLarge_5__2, 
         L1ResultsLarge_5__1, L1ResultsLarge_5__0, L1ResultsLarge_6__16, 
         L1ResultsLarge_6__15, L1ResultsLarge_6__14, L1ResultsLarge_6__13, 
         L1ResultsLarge_6__12, L1ResultsLarge_6__11, L1ResultsLarge_6__10, 
         L1ResultsLarge_6__9, L1ResultsLarge_6__8, L1ResultsLarge_6__7, 
         L1ResultsLarge_6__6, L1ResultsLarge_6__5, L1ResultsLarge_6__4, 
         L1ResultsLarge_6__3, L1ResultsLarge_6__2, L1ResultsLarge_6__1, 
         L1ResultsLarge_6__0, L1ResultsLarge_7__16, L1ResultsLarge_7__15, 
         L1ResultsLarge_7__14, L1ResultsLarge_7__13, L1ResultsLarge_7__12, 
         L1ResultsLarge_7__11, L1ResultsLarge_7__10, L1ResultsLarge_7__9, 
         L1ResultsLarge_7__8, L1ResultsLarge_7__7, L1ResultsLarge_7__6, 
         L1ResultsLarge_7__5, L1ResultsLarge_7__4, L1ResultsLarge_7__3, 
         L1ResultsLarge_7__2, L1ResultsLarge_7__1, L1ResultsLarge_7__0, 
         L1ResultsLarge_8__16, L1ResultsLarge_8__15, L1ResultsLarge_8__14, 
         L1ResultsLarge_8__13, L1ResultsLarge_8__12, L1ResultsLarge_8__11, 
         L1ResultsLarge_8__10, L1ResultsLarge_8__9, L1ResultsLarge_8__8, 
         L1ResultsLarge_8__7, L1ResultsLarge_8__6, L1ResultsLarge_8__5, 
         L1ResultsLarge_8__4, L1ResultsLarge_8__3, L1ResultsLarge_8__2, 
         L1ResultsLarge_8__1, L1ResultsLarge_8__0, L1ResultsLarge_9__16, 
         L1ResultsLarge_9__15, L1ResultsLarge_9__14, L1ResultsLarge_9__13, 
         L1ResultsLarge_9__12, L1ResultsLarge_9__11, L1ResultsLarge_9__10, 
         L1ResultsLarge_9__9, L1ResultsLarge_9__8, L1ResultsLarge_9__7, 
         L1ResultsLarge_9__6, L1ResultsLarge_9__5, L1ResultsLarge_9__4, 
         L1ResultsLarge_9__3, L1ResultsLarge_9__2, L1ResultsLarge_9__1, 
         L1ResultsLarge_9__0, L1ResultsLarge_10__16, L1ResultsLarge_10__15, 
         L1ResultsLarge_10__14, L1ResultsLarge_10__13, L1ResultsLarge_10__12, 
         L1ResultsLarge_10__11, L1ResultsLarge_10__10, L1ResultsLarge_10__9, 
         L1ResultsLarge_10__8, L1ResultsLarge_10__7, L1ResultsLarge_10__6, 
         L1ResultsLarge_10__5, L1ResultsLarge_10__4, L1ResultsLarge_10__3, 
         L1ResultsLarge_10__2, L1ResultsLarge_10__1, L1ResultsLarge_10__0, 
         L1ResultsLarge_11__16, L1ResultsLarge_11__15, L1ResultsLarge_11__14, 
         L1ResultsLarge_11__13, L1ResultsLarge_11__12, L1ResultsLarge_11__11, 
         L1ResultsLarge_11__10, L1ResultsLarge_11__9, L1ResultsLarge_11__8, 
         L1ResultsLarge_11__7, L1ResultsLarge_11__6, L1ResultsLarge_11__5, 
         L1ResultsLarge_11__4, L1ResultsLarge_11__3, L1ResultsLarge_11__2, 
         L1ResultsLarge_11__1, L1ResultsLarge_11__0, L2ResultsLarge_0__16, 
         L2ResultsLarge_0__15, L2ResultsLarge_0__14, L2ResultsLarge_0__13, 
         L2ResultsLarge_0__12, L2ResultsLarge_0__11, L2ResultsLarge_0__10, 
         L2ResultsLarge_0__9, L2ResultsLarge_0__8, L2ResultsLarge_0__7, 
         L2ResultsLarge_0__6, L2ResultsLarge_0__5, L2ResultsLarge_0__4, 
         L2ResultsLarge_0__3, L2ResultsLarge_0__2, L2ResultsLarge_0__1, 
         L2ResultsLarge_0__0, L2ResultsLarge_1__16, L2ResultsLarge_1__15, 
         L2ResultsLarge_1__14, L2ResultsLarge_1__13, L2ResultsLarge_1__12, 
         L2ResultsLarge_1__11, L2ResultsLarge_1__10, L2ResultsLarge_1__9, 
         L2ResultsLarge_1__8, L2ResultsLarge_1__7, L2ResultsLarge_1__6, 
         L2ResultsLarge_1__5, L2ResultsLarge_1__4, L2ResultsLarge_1__3, 
         L2ResultsLarge_1__2, L2ResultsLarge_1__1, L2ResultsLarge_1__0, 
         L2ResultsLarge_2__16, L2ResultsLarge_2__15, L2ResultsLarge_2__14, 
         L2ResultsLarge_2__13, L2ResultsLarge_2__12, L2ResultsLarge_2__11, 
         L2ResultsLarge_2__10, L2ResultsLarge_2__9, L2ResultsLarge_2__8, 
         L2ResultsLarge_2__7, L2ResultsLarge_2__6, L2ResultsLarge_2__5, 
         L2ResultsLarge_2__4, L2ResultsLarge_2__3, L2ResultsLarge_2__2, 
         L2ResultsLarge_2__1, L2ResultsLarge_2__0, L2ResultsLarge_3__16, 
         L2ResultsLarge_3__15, L2ResultsLarge_3__14, L2ResultsLarge_3__13, 
         L2ResultsLarge_3__12, L2ResultsLarge_3__11, L2ResultsLarge_3__10, 
         L2ResultsLarge_3__9, L2ResultsLarge_3__8, L2ResultsLarge_3__7, 
         L2ResultsLarge_3__6, L2ResultsLarge_3__5, L2ResultsLarge_3__4, 
         L2ResultsLarge_3__3, L2ResultsLarge_3__2, L2ResultsLarge_3__1, 
         L2ResultsLarge_3__0, L2ResultsLarge_4__16, L2ResultsLarge_4__15, 
         L2ResultsLarge_4__14, L2ResultsLarge_4__13, L2ResultsLarge_4__12, 
         L2ResultsLarge_4__11, L2ResultsLarge_4__10, L2ResultsLarge_4__9, 
         L2ResultsLarge_4__8, L2ResultsLarge_4__7, L2ResultsLarge_4__6, 
         L2ResultsLarge_4__5, L2ResultsLarge_4__4, L2ResultsLarge_4__3, 
         L2ResultsLarge_4__2, L2ResultsLarge_4__1, L2ResultsLarge_4__0, 
         L2ResultsLarge_5__16, L2ResultsLarge_5__15, L2ResultsLarge_5__14, 
         L2ResultsLarge_5__13, L2ResultsLarge_5__12, L2ResultsLarge_5__11, 
         L2ResultsLarge_5__10, L2ResultsLarge_5__9, L2ResultsLarge_5__8, 
         L2ResultsLarge_5__7, L2ResultsLarge_5__6, L2ResultsLarge_5__5, 
         L2ResultsLarge_5__4, L2ResultsLarge_5__3, L2ResultsLarge_5__2, 
         L2ResultsLarge_5__1, L2ResultsLarge_5__0, L3ResultsLarge_0__16, 
         L3ResultsLarge_0__15, L3ResultsLarge_0__14, L3ResultsLarge_0__13, 
         L3ResultsLarge_0__12, L3ResultsLarge_0__11, L3ResultsLarge_0__10, 
         L3ResultsLarge_0__9, L3ResultsLarge_0__8, L3ResultsLarge_0__7, 
         L3ResultsLarge_0__6, L3ResultsLarge_0__5, L3ResultsLarge_0__4, 
         L3ResultsLarge_0__3, L3ResultsLarge_0__2, L3ResultsLarge_0__1, 
         L3ResultsLarge_0__0, L3ResultsLarge_1__16, L3ResultsLarge_1__15, 
         L3ResultsLarge_1__14, L3ResultsLarge_1__13, L3ResultsLarge_1__12, 
         L3ResultsLarge_1__11, L3ResultsLarge_1__10, L3ResultsLarge_1__9, 
         L3ResultsLarge_1__8, L3ResultsLarge_1__7, L3ResultsLarge_1__6, 
         L3ResultsLarge_1__5, L3ResultsLarge_1__4, L3ResultsLarge_1__3, 
         L3ResultsLarge_1__2, L3ResultsLarge_1__1, L3ResultsLarge_1__0, 
         L3ResultsLarge_2__16, L3ResultsLarge_2__15, L3ResultsLarge_2__14, 
         L3ResultsLarge_2__13, L3ResultsLarge_2__12, L3ResultsLarge_2__11, 
         L3ResultsLarge_2__10, L3ResultsLarge_2__9, L3ResultsLarge_2__8, 
         L3ResultsLarge_2__7, L3ResultsLarge_2__6, L3ResultsLarge_2__5, 
         L3ResultsLarge_2__4, L3ResultsLarge_2__3, L3ResultsLarge_2__2, 
         L3ResultsLarge_2__1, L3ResultsLarge_2__0, L4ResultsLarge_0__16, 
         L4ResultsLarge_0__15, L4ResultsLarge_0__14, L4ResultsLarge_0__13, 
         L4ResultsLarge_0__12, L4ResultsLarge_0__11, L4ResultsLarge_0__10, 
         L4ResultsLarge_0__9, L4ResultsLarge_0__8, L4ResultsLarge_0__7, 
         L4ResultsLarge_0__6, L4ResultsLarge_0__5, L4ResultsLarge_0__4, 
         L4ResultsLarge_0__3, L4ResultsLarge_0__2, L4ResultsLarge_0__1, 
         L4ResultsLarge_0__0, L5FirstOperands_1__16, L5FirstOperands_1__15, 
         L5FirstOperands_1__14, L5FirstOperands_1__13, L5FirstOperands_1__12, 
         L5FirstOperands_1__11, L5FirstOperands_1__10, L5FirstOperands_1__9, 
         L5FirstOperands_1__8, L5FirstOperands_1__7, L5FirstOperands_1__6, 
         L5FirstOperands_1__5, L5FirstOperands_1__4, L5FirstOperands_1__3, 
         L5FirstOperands_1__2, L5FirstOperands_1__1, L5FirstOperands_1__0, 
         L5SecondOperands_1__16, L5SecondOperands_1__14, L5SecondOperands_1__13, 
         L5SecondOperands_1__12, L5SecondOperands_1__11, L5SecondOperands_1__10, 
         L5SecondOperands_1__9, L5SecondOperands_1__8, L5SecondOperands_1__7, 
         L5SecondOperands_1__6, L5SecondOperands_1__5, L5SecondOperands_1__4, 
         L5SecondOperands_1__3, L5SecondOperands_1__2, L5SecondOperands_1__1, 
         L5SecondOperands_1__0, L5ResultsLarge_1__7, L5ResultsLarge_1__6, 
         L5ResultsLarge_1__5, L5ResultsLarge_1__4, L5ResultsLarge_1__3, 
         L5ResultsLarge_1__2, L5ResultsLarge_1__1, L5ResultsLarge_1__0, 
         L1FirstOperands_12__16, nx22, nx1877, nx1883, nx1885, nx1889, nx1891, 
         nx1894, nx1896, nx1921, nx1923, nx1925, nx1927, nx1929, nx1931, nx1933, 
         nx1935, nx1937, nx1939, nx1945, nx1947, nx1951, nx1953, nx1955, nx1957, 
         nx1959, nx1961, nx1963, nx1965, nx1967, nx1969, nx1971, nx1973, nx1975, 
         nx1977, nx1979, nx1981, nx1983, nx1985, nx1987, nx1989, nx1991, nx1993, 
         nx1995, nx1997, nx1999, nx2001, nx2003, nx2005, nx2007, nx2009, nx2045, 
         nx2058, nx2060, nx2062, nx2064, nx2066, nx2068, nx2070;
    wire [50:0] \$dummy ;




    counter_4 ACCELERATOR_COUNTER (.CLK (CLK), .RST (CounterRST), .EN (nx2003), 
              .Dout ({CounterOut_3,CounterOut_2,CounterOut_1,CounterOut_0})) ;
    mini_alu_17 L1_0_L2_0_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1953), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1933), .CalculatingBooth (
                nx1923), .FilterCell ({FilterDin_0__0__7,FilterDin_0__0__6,
                FilterDin_0__0__5,FilterDin_0__0__4,FilterDin_0__0__3,
                FilterDin_0__0__2,FilterDin_0__0__1,FilterDin_0__0__0}), .WindowCell (
                {WindowDin_0__0__7,WindowDin_0__0__6,WindowDin_0__0__5,
                WindowDin_0__0__4,WindowDin_0__0__3,WindowDin_0__0__2,
                WindowDin_0__0__1,WindowDin_0__0__0}), .AdderFirstOperand ({
                L1FirstOperands_0__16,L1FirstOperands_0__16,
                L1FirstOperands_0__14,L1FirstOperands_0__13,
                L1FirstOperands_0__12,L1FirstOperands_0__11,
                L1FirstOperands_0__10,L1FirstOperands_0__9,L1FirstOperands_0__8,
                L1FirstOperands_0__7,L1FirstOperands_0__6,L1FirstOperands_0__5,
                L1FirstOperands_0__4,L1FirstOperands_0__3,L1FirstOperands_0__2,
                L1FirstOperands_0__1,L1FirstOperands_0__0}), .AdderSecondOperand (
                {L1SecondOperands_0__16,L1SecondOperands_0__16,
                L1SecondOperands_0__14,L1SecondOperands_0__13,
                L1SecondOperands_0__12,L1SecondOperands_0__11,
                L1SecondOperands_0__10,L1SecondOperands_0__9,
                L1SecondOperands_0__8,L1SecondOperands_0__7,
                L1SecondOperands_0__6,L1SecondOperands_0__5,
                L1SecondOperands_0__4,L1SecondOperands_0__3,
                L1SecondOperands_0__2,L1SecondOperands_0__1,
                L1SecondOperands_0__0}), .AdderResult ({L1ResultsLarge_0__16,
                L1ResultsLarge_0__15,L1ResultsLarge_0__14,L1ResultsLarge_0__13,
                L1ResultsLarge_0__12,L1ResultsLarge_0__11,L1ResultsLarge_0__10,
                L1ResultsLarge_0__9,L1ResultsLarge_0__8,L1ResultsLarge_0__7,
                L1ResultsLarge_0__6,L1ResultsLarge_0__5,L1ResultsLarge_0__4,
                L1ResultsLarge_0__3,L1ResultsLarge_0__2,L1ResultsLarge_0__1,
                L1ResultsLarge_0__0}), .OperationResult ({L1SecondOperands_0__16
                ,\$dummy [0],L1SecondOperands_0__14,L1SecondOperands_0__13,
                L1SecondOperands_0__12,L1SecondOperands_0__11,
                L1SecondOperands_0__10,L1SecondOperands_0__9,
                L1SecondOperands_0__8,L1SecondOperands_0__7,
                L1SecondOperands_0__6,L1SecondOperands_0__5,
                L1SecondOperands_0__4,L1SecondOperands_0__3,
                L1SecondOperands_0__2,L1SecondOperands_0__1,
                L1SecondOperands_0__0})) ;
    mini_alu_17 L1_0_L2_1_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1955), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1933), .CalculatingBooth (
                nx1923), .FilterCell ({FilterDin_0__1__7,FilterDin_0__1__6,
                FilterDin_0__1__5,FilterDin_0__1__4,FilterDin_0__1__3,
                FilterDin_0__1__2,FilterDin_0__1__1,FilterDin_0__1__0}), .WindowCell (
                {WindowDin_0__1__7,WindowDin_0__1__6,WindowDin_0__1__5,
                WindowDin_0__1__4,WindowDin_0__1__3,WindowDin_0__1__2,
                WindowDin_0__1__1,WindowDin_0__1__0}), .AdderFirstOperand ({
                L1FirstOperands_1__16,L1FirstOperands_1__16,
                L1FirstOperands_1__14,L1FirstOperands_1__13,
                L1FirstOperands_1__12,L1FirstOperands_1__11,
                L1FirstOperands_1__10,L1FirstOperands_1__9,L1FirstOperands_1__8,
                L1FirstOperands_1__7,L1FirstOperands_1__6,L1FirstOperands_1__5,
                L1FirstOperands_1__4,L1FirstOperands_1__3,L1FirstOperands_1__2,
                L1FirstOperands_1__1,L1FirstOperands_1__0}), .AdderSecondOperand (
                {L1SecondOperands_1__16,L1SecondOperands_1__16,
                L1SecondOperands_1__14,L1SecondOperands_1__13,
                L1SecondOperands_1__12,L1SecondOperands_1__11,
                L1SecondOperands_1__10,L1SecondOperands_1__9,
                L1SecondOperands_1__8,L1SecondOperands_1__7,
                L1SecondOperands_1__6,L1SecondOperands_1__5,
                L1SecondOperands_1__4,L1SecondOperands_1__3,
                L1SecondOperands_1__2,L1SecondOperands_1__1,
                L1SecondOperands_1__0}), .AdderResult ({L1ResultsLarge_1__16,
                L1ResultsLarge_1__15,L1ResultsLarge_1__14,L1ResultsLarge_1__13,
                L1ResultsLarge_1__12,L1ResultsLarge_1__11,L1ResultsLarge_1__10,
                L1ResultsLarge_1__9,L1ResultsLarge_1__8,L1ResultsLarge_1__7,
                L1ResultsLarge_1__6,L1ResultsLarge_1__5,L1ResultsLarge_1__4,
                L1ResultsLarge_1__3,L1ResultsLarge_1__2,L1ResultsLarge_1__1,
                L1ResultsLarge_1__0}), .OperationResult ({L1SecondOperands_1__16
                ,\$dummy [1],L1SecondOperands_1__14,L1SecondOperands_1__13,
                L1SecondOperands_1__12,L1SecondOperands_1__11,
                L1SecondOperands_1__10,L1SecondOperands_1__9,
                L1SecondOperands_1__8,L1SecondOperands_1__7,
                L1SecondOperands_1__6,L1SecondOperands_1__5,
                L1SecondOperands_1__4,L1SecondOperands_1__3,
                L1SecondOperands_1__2,L1SecondOperands_1__1,
                L1SecondOperands_1__0})) ;
    mini_alu_17 L1_0_L2_2_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1957), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1933), .CalculatingBooth (
                nx1923), .FilterCell ({FilterDin_0__2__7,FilterDin_0__2__6,
                FilterDin_0__2__5,FilterDin_0__2__4,FilterDin_0__2__3,
                FilterDin_0__2__2,FilterDin_0__2__1,FilterDin_0__2__0}), .WindowCell (
                {WindowDin_0__2__7,WindowDin_0__2__6,WindowDin_0__2__5,
                WindowDin_0__2__4,WindowDin_0__2__3,WindowDin_0__2__2,
                WindowDin_0__2__1,WindowDin_0__2__0}), .AdderFirstOperand ({
                L1FirstOperands_2__16,L1FirstOperands_2__16,
                L1FirstOperands_2__14,L1FirstOperands_2__13,
                L1FirstOperands_2__12,L1FirstOperands_2__11,
                L1FirstOperands_2__10,L1FirstOperands_2__9,L1FirstOperands_2__8,
                L1FirstOperands_2__7,L1FirstOperands_2__6,L1FirstOperands_2__5,
                L1FirstOperands_2__4,L1FirstOperands_2__3,L1FirstOperands_2__2,
                L1FirstOperands_2__1,L1FirstOperands_2__0}), .AdderSecondOperand (
                {L1SecondOperands_2__16,L1SecondOperands_2__16,
                L1SecondOperands_2__14,L1SecondOperands_2__13,
                L1SecondOperands_2__12,L1SecondOperands_2__11,
                L1SecondOperands_2__10,L1SecondOperands_2__9,
                L1SecondOperands_2__8,L1SecondOperands_2__7,
                L1SecondOperands_2__6,L1SecondOperands_2__5,
                L1SecondOperands_2__4,L1SecondOperands_2__3,
                L1SecondOperands_2__2,L1SecondOperands_2__1,
                L1SecondOperands_2__0}), .AdderResult ({L1ResultsLarge_2__16,
                L1ResultsLarge_2__15,L1ResultsLarge_2__14,L1ResultsLarge_2__13,
                L1ResultsLarge_2__12,L1ResultsLarge_2__11,L1ResultsLarge_2__10,
                L1ResultsLarge_2__9,L1ResultsLarge_2__8,L1ResultsLarge_2__7,
                L1ResultsLarge_2__6,L1ResultsLarge_2__5,L1ResultsLarge_2__4,
                L1ResultsLarge_2__3,L1ResultsLarge_2__2,L1ResultsLarge_2__1,
                L1ResultsLarge_2__0}), .OperationResult ({L1SecondOperands_2__16
                ,\$dummy [2],L1SecondOperands_2__14,L1SecondOperands_2__13,
                L1SecondOperands_2__12,L1SecondOperands_2__11,
                L1SecondOperands_2__10,L1SecondOperands_2__9,
                L1SecondOperands_2__8,L1SecondOperands_2__7,
                L1SecondOperands_2__6,L1SecondOperands_2__5,
                L1SecondOperands_2__4,L1SecondOperands_2__3,
                L1SecondOperands_2__2,L1SecondOperands_2__1,
                L1SecondOperands_2__0})) ;
    mini_alu_17 L1_0_L2_3_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1959), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1933), .CalculatingBooth (
                nx1923), .FilterCell ({FilterDin_0__3__7,FilterDin_0__3__6,
                FilterDin_0__3__5,FilterDin_0__3__4,FilterDin_0__3__3,
                FilterDin_0__3__2,FilterDin_0__3__1,FilterDin_0__3__0}), .WindowCell (
                {WindowDin_0__3__7,WindowDin_0__3__6,WindowDin_0__3__5,
                WindowDin_0__3__4,WindowDin_0__3__3,WindowDin_0__3__2,
                WindowDin_0__3__1,WindowDin_0__3__0}), .AdderFirstOperand ({
                L1FirstOperands_3__16,L1FirstOperands_3__16,
                L1FirstOperands_3__14,L1FirstOperands_3__13,
                L1FirstOperands_3__12,L1FirstOperands_3__11,
                L1FirstOperands_3__10,L1FirstOperands_3__9,L1FirstOperands_3__8,
                L1FirstOperands_3__7,L1FirstOperands_3__6,L1FirstOperands_3__5,
                L1FirstOperands_3__4,L1FirstOperands_3__3,L1FirstOperands_3__2,
                L1FirstOperands_3__1,L1FirstOperands_3__0}), .AdderSecondOperand (
                {L1SecondOperands_3__16,L1SecondOperands_3__16,
                L1SecondOperands_3__14,L1SecondOperands_3__13,
                L1SecondOperands_3__12,L1SecondOperands_3__11,
                L1SecondOperands_3__10,L1SecondOperands_3__9,
                L1SecondOperands_3__8,L1SecondOperands_3__7,
                L1SecondOperands_3__6,L1SecondOperands_3__5,
                L1SecondOperands_3__4,L1SecondOperands_3__3,
                L1SecondOperands_3__2,L1SecondOperands_3__1,
                L1SecondOperands_3__0}), .AdderResult ({L1ResultsLarge_3__16,
                L1ResultsLarge_3__15,L1ResultsLarge_3__14,L1ResultsLarge_3__13,
                L1ResultsLarge_3__12,L1ResultsLarge_3__11,L1ResultsLarge_3__10,
                L1ResultsLarge_3__9,L1ResultsLarge_3__8,L1ResultsLarge_3__7,
                L1ResultsLarge_3__6,L1ResultsLarge_3__5,L1ResultsLarge_3__4,
                L1ResultsLarge_3__3,L1ResultsLarge_3__2,L1ResultsLarge_3__1,
                L1ResultsLarge_3__0}), .OperationResult ({L1SecondOperands_3__16
                ,\$dummy [3],L1SecondOperands_3__14,L1SecondOperands_3__13,
                L1SecondOperands_3__12,L1SecondOperands_3__11,
                L1SecondOperands_3__10,L1SecondOperands_3__9,
                L1SecondOperands_3__8,L1SecondOperands_3__7,
                L1SecondOperands_3__6,L1SecondOperands_3__5,
                L1SecondOperands_3__4,L1SecondOperands_3__3,
                L1SecondOperands_3__2,L1SecondOperands_3__1,
                L1SecondOperands_3__0})) ;
    mini_alu_17 L1_0_L2_4_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1961), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1933), .CalculatingBooth (
                nx1923), .FilterCell ({FilterDin_0__4__7,FilterDin_0__4__6,
                FilterDin_0__4__5,FilterDin_0__4__4,FilterDin_0__4__3,
                FilterDin_0__4__2,FilterDin_0__4__1,FilterDin_0__4__0}), .WindowCell (
                {WindowDin_0__4__7,WindowDin_0__4__6,WindowDin_0__4__5,
                WindowDin_0__4__4,WindowDin_0__4__3,WindowDin_0__4__2,
                WindowDin_0__4__1,WindowDin_0__4__0}), .AdderFirstOperand ({
                L1FirstOperands_4__16,L1FirstOperands_4__16,
                L1FirstOperands_4__14,L1FirstOperands_4__13,
                L1FirstOperands_4__12,L1FirstOperands_4__11,
                L1FirstOperands_4__10,L1FirstOperands_4__9,L1FirstOperands_4__8,
                L1FirstOperands_4__7,L1FirstOperands_4__6,L1FirstOperands_4__5,
                L1FirstOperands_4__4,L1FirstOperands_4__3,L1FirstOperands_4__2,
                L1FirstOperands_4__1,L1FirstOperands_4__0}), .AdderSecondOperand (
                {L1SecondOperands_4__16,L1SecondOperands_4__16,
                L1SecondOperands_4__14,L1SecondOperands_4__13,
                L1SecondOperands_4__12,L1SecondOperands_4__11,
                L1SecondOperands_4__10,L1SecondOperands_4__9,
                L1SecondOperands_4__8,L1SecondOperands_4__7,
                L1SecondOperands_4__6,L1SecondOperands_4__5,
                L1SecondOperands_4__4,L1SecondOperands_4__3,
                L1SecondOperands_4__2,L1SecondOperands_4__1,
                L1SecondOperands_4__0}), .AdderResult ({L1ResultsLarge_4__16,
                L1ResultsLarge_4__15,L1ResultsLarge_4__14,L1ResultsLarge_4__13,
                L1ResultsLarge_4__12,L1ResultsLarge_4__11,L1ResultsLarge_4__10,
                L1ResultsLarge_4__9,L1ResultsLarge_4__8,L1ResultsLarge_4__7,
                L1ResultsLarge_4__6,L1ResultsLarge_4__5,L1ResultsLarge_4__4,
                L1ResultsLarge_4__3,L1ResultsLarge_4__2,L1ResultsLarge_4__1,
                L1ResultsLarge_4__0}), .OperationResult ({L1SecondOperands_4__16
                ,\$dummy [4],L1SecondOperands_4__14,L1SecondOperands_4__13,
                L1SecondOperands_4__12,L1SecondOperands_4__11,
                L1SecondOperands_4__10,L1SecondOperands_4__9,
                L1SecondOperands_4__8,L1SecondOperands_4__7,
                L1SecondOperands_4__6,L1SecondOperands_4__5,
                L1SecondOperands_4__4,L1SecondOperands_4__3,
                L1SecondOperands_4__2,L1SecondOperands_4__1,
                L1SecondOperands_4__0})) ;
    mini_alu_17 L1_1_L2_0_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1963), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1933), .CalculatingBooth (
                nx1923), .FilterCell ({FilterDin_1__0__7,FilterDin_1__0__6,
                FilterDin_1__0__5,FilterDin_1__0__4,FilterDin_1__0__3,
                FilterDin_1__0__2,FilterDin_1__0__1,FilterDin_1__0__0}), .WindowCell (
                {WindowDin_1__0__7,WindowDin_1__0__6,WindowDin_1__0__5,
                WindowDin_1__0__4,WindowDin_1__0__3,WindowDin_1__0__2,
                WindowDin_1__0__1,WindowDin_1__0__0}), .AdderFirstOperand ({
                L1FirstOperands_5__16,L1FirstOperands_5__16,
                L1FirstOperands_5__14,L1FirstOperands_5__13,
                L1FirstOperands_5__12,L1FirstOperands_5__11,
                L1FirstOperands_5__10,L1FirstOperands_5__9,L1FirstOperands_5__8,
                L1FirstOperands_5__7,L1FirstOperands_5__6,L1FirstOperands_5__5,
                L1FirstOperands_5__4,L1FirstOperands_5__3,L1FirstOperands_5__2,
                L1FirstOperands_5__1,L1FirstOperands_5__0}), .AdderSecondOperand (
                {L1SecondOperands_5__16,L1SecondOperands_5__16,
                L1SecondOperands_5__14,L1SecondOperands_5__13,
                L1SecondOperands_5__12,L1SecondOperands_5__11,
                L1SecondOperands_5__10,L1SecondOperands_5__9,
                L1SecondOperands_5__8,L1SecondOperands_5__7,
                L1SecondOperands_5__6,L1SecondOperands_5__5,
                L1SecondOperands_5__4,L1SecondOperands_5__3,
                L1SecondOperands_5__2,L1SecondOperands_5__1,
                L1SecondOperands_5__0}), .AdderResult ({L1ResultsLarge_5__16,
                L1ResultsLarge_5__15,L1ResultsLarge_5__14,L1ResultsLarge_5__13,
                L1ResultsLarge_5__12,L1ResultsLarge_5__11,L1ResultsLarge_5__10,
                L1ResultsLarge_5__9,L1ResultsLarge_5__8,L1ResultsLarge_5__7,
                L1ResultsLarge_5__6,L1ResultsLarge_5__5,L1ResultsLarge_5__4,
                L1ResultsLarge_5__3,L1ResultsLarge_5__2,L1ResultsLarge_5__1,
                L1ResultsLarge_5__0}), .OperationResult ({L1SecondOperands_5__16
                ,\$dummy [5],L1SecondOperands_5__14,L1SecondOperands_5__13,
                L1SecondOperands_5__12,L1SecondOperands_5__11,
                L1SecondOperands_5__10,L1SecondOperands_5__9,
                L1SecondOperands_5__8,L1SecondOperands_5__7,
                L1SecondOperands_5__6,L1SecondOperands_5__5,
                L1SecondOperands_5__4,L1SecondOperands_5__3,
                L1SecondOperands_5__2,L1SecondOperands_5__1,
                L1SecondOperands_5__0})) ;
    mini_alu_17 L1_1_L2_1_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1965), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1933), .CalculatingBooth (
                nx1923), .FilterCell ({FilterDin_1__1__7,FilterDin_1__1__6,
                FilterDin_1__1__5,FilterDin_1__1__4,FilterDin_1__1__3,
                FilterDin_1__1__2,FilterDin_1__1__1,FilterDin_1__1__0}), .WindowCell (
                {WindowDin_1__1__7,WindowDin_1__1__6,WindowDin_1__1__5,
                WindowDin_1__1__4,WindowDin_1__1__3,WindowDin_1__1__2,
                WindowDin_1__1__1,WindowDin_1__1__0}), .AdderFirstOperand ({
                L1FirstOperands_6__16,L1FirstOperands_6__16,
                L1FirstOperands_6__14,L1FirstOperands_6__13,
                L1FirstOperands_6__12,L1FirstOperands_6__11,
                L1FirstOperands_6__10,L1FirstOperands_6__9,L1FirstOperands_6__8,
                L1FirstOperands_6__7,L1FirstOperands_6__6,L1FirstOperands_6__5,
                L1FirstOperands_6__4,L1FirstOperands_6__3,L1FirstOperands_6__2,
                L1FirstOperands_6__1,L1FirstOperands_6__0}), .AdderSecondOperand (
                {L1SecondOperands_6__16,L1SecondOperands_6__16,
                L1SecondOperands_6__14,L1SecondOperands_6__13,
                L1SecondOperands_6__12,L1SecondOperands_6__11,
                L1SecondOperands_6__10,L1SecondOperands_6__9,
                L1SecondOperands_6__8,L1SecondOperands_6__7,
                L1SecondOperands_6__6,L1SecondOperands_6__5,
                L1SecondOperands_6__4,L1SecondOperands_6__3,
                L1SecondOperands_6__2,L1SecondOperands_6__1,
                L1SecondOperands_6__0}), .AdderResult ({L1ResultsLarge_6__16,
                L1ResultsLarge_6__15,L1ResultsLarge_6__14,L1ResultsLarge_6__13,
                L1ResultsLarge_6__12,L1ResultsLarge_6__11,L1ResultsLarge_6__10,
                L1ResultsLarge_6__9,L1ResultsLarge_6__8,L1ResultsLarge_6__7,
                L1ResultsLarge_6__6,L1ResultsLarge_6__5,L1ResultsLarge_6__4,
                L1ResultsLarge_6__3,L1ResultsLarge_6__2,L1ResultsLarge_6__1,
                L1ResultsLarge_6__0}), .OperationResult ({L1SecondOperands_6__16
                ,\$dummy [6],L1SecondOperands_6__14,L1SecondOperands_6__13,
                L1SecondOperands_6__12,L1SecondOperands_6__11,
                L1SecondOperands_6__10,L1SecondOperands_6__9,
                L1SecondOperands_6__8,L1SecondOperands_6__7,
                L1SecondOperands_6__6,L1SecondOperands_6__5,
                L1SecondOperands_6__4,L1SecondOperands_6__3,
                L1SecondOperands_6__2,L1SecondOperands_6__1,
                L1SecondOperands_6__0})) ;
    mini_alu_17 L1_1_L2_2_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1967), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1935), .CalculatingBooth (
                nx1925), .FilterCell ({FilterDin_1__2__7,FilterDin_1__2__6,
                FilterDin_1__2__5,FilterDin_1__2__4,FilterDin_1__2__3,
                FilterDin_1__2__2,FilterDin_1__2__1,FilterDin_1__2__0}), .WindowCell (
                {WindowDin_1__2__7,WindowDin_1__2__6,WindowDin_1__2__5,
                WindowDin_1__2__4,WindowDin_1__2__3,WindowDin_1__2__2,
                WindowDin_1__2__1,WindowDin_1__2__0}), .AdderFirstOperand ({
                L1FirstOperands_7__16,L1FirstOperands_7__16,
                L1FirstOperands_7__14,L1FirstOperands_7__13,
                L1FirstOperands_7__12,L1FirstOperands_7__11,
                L1FirstOperands_7__10,L1FirstOperands_7__9,L1FirstOperands_7__8,
                L1FirstOperands_7__7,L1FirstOperands_7__6,L1FirstOperands_7__5,
                L1FirstOperands_7__4,L1FirstOperands_7__3,L1FirstOperands_7__2,
                L1FirstOperands_7__1,L1FirstOperands_7__0}), .AdderSecondOperand (
                {L1SecondOperands_7__16,L1SecondOperands_7__16,
                L1SecondOperands_7__14,L1SecondOperands_7__13,
                L1SecondOperands_7__12,L1SecondOperands_7__11,
                L1SecondOperands_7__10,L1SecondOperands_7__9,
                L1SecondOperands_7__8,L1SecondOperands_7__7,
                L1SecondOperands_7__6,L1SecondOperands_7__5,
                L1SecondOperands_7__4,L1SecondOperands_7__3,
                L1SecondOperands_7__2,L1SecondOperands_7__1,
                L1SecondOperands_7__0}), .AdderResult ({L1ResultsLarge_7__16,
                L1ResultsLarge_7__15,L1ResultsLarge_7__14,L1ResultsLarge_7__13,
                L1ResultsLarge_7__12,L1ResultsLarge_7__11,L1ResultsLarge_7__10,
                L1ResultsLarge_7__9,L1ResultsLarge_7__8,L1ResultsLarge_7__7,
                L1ResultsLarge_7__6,L1ResultsLarge_7__5,L1ResultsLarge_7__4,
                L1ResultsLarge_7__3,L1ResultsLarge_7__2,L1ResultsLarge_7__1,
                L1ResultsLarge_7__0}), .OperationResult ({L1SecondOperands_7__16
                ,\$dummy [7],L1SecondOperands_7__14,L1SecondOperands_7__13,
                L1SecondOperands_7__12,L1SecondOperands_7__11,
                L1SecondOperands_7__10,L1SecondOperands_7__9,
                L1SecondOperands_7__8,L1SecondOperands_7__7,
                L1SecondOperands_7__6,L1SecondOperands_7__5,
                L1SecondOperands_7__4,L1SecondOperands_7__3,
                L1SecondOperands_7__2,L1SecondOperands_7__1,
                L1SecondOperands_7__0})) ;
    mini_alu_17 L1_1_L2_3_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1969), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1935), .CalculatingBooth (
                nx1925), .FilterCell ({FilterDin_1__3__7,FilterDin_1__3__6,
                FilterDin_1__3__5,FilterDin_1__3__4,FilterDin_1__3__3,
                FilterDin_1__3__2,FilterDin_1__3__1,FilterDin_1__3__0}), .WindowCell (
                {WindowDin_1__3__7,WindowDin_1__3__6,WindowDin_1__3__5,
                WindowDin_1__3__4,WindowDin_1__3__3,WindowDin_1__3__2,
                WindowDin_1__3__1,WindowDin_1__3__0}), .AdderFirstOperand ({
                L1FirstOperands_8__16,L1FirstOperands_8__16,
                L1FirstOperands_8__14,L1FirstOperands_8__13,
                L1FirstOperands_8__12,L1FirstOperands_8__11,
                L1FirstOperands_8__10,L1FirstOperands_8__9,L1FirstOperands_8__8,
                L1FirstOperands_8__7,L1FirstOperands_8__6,L1FirstOperands_8__5,
                L1FirstOperands_8__4,L1FirstOperands_8__3,L1FirstOperands_8__2,
                L1FirstOperands_8__1,L1FirstOperands_8__0}), .AdderSecondOperand (
                {L1SecondOperands_8__16,L1SecondOperands_8__16,
                L1SecondOperands_8__14,L1SecondOperands_8__13,
                L1SecondOperands_8__12,L1SecondOperands_8__11,
                L1SecondOperands_8__10,L1SecondOperands_8__9,
                L1SecondOperands_8__8,L1SecondOperands_8__7,
                L1SecondOperands_8__6,L1SecondOperands_8__5,
                L1SecondOperands_8__4,L1SecondOperands_8__3,
                L1SecondOperands_8__2,L1SecondOperands_8__1,
                L1SecondOperands_8__0}), .AdderResult ({L1ResultsLarge_8__16,
                L1ResultsLarge_8__15,L1ResultsLarge_8__14,L1ResultsLarge_8__13,
                L1ResultsLarge_8__12,L1ResultsLarge_8__11,L1ResultsLarge_8__10,
                L1ResultsLarge_8__9,L1ResultsLarge_8__8,L1ResultsLarge_8__7,
                L1ResultsLarge_8__6,L1ResultsLarge_8__5,L1ResultsLarge_8__4,
                L1ResultsLarge_8__3,L1ResultsLarge_8__2,L1ResultsLarge_8__1,
                L1ResultsLarge_8__0}), .OperationResult ({L1SecondOperands_8__16
                ,\$dummy [8],L1SecondOperands_8__14,L1SecondOperands_8__13,
                L1SecondOperands_8__12,L1SecondOperands_8__11,
                L1SecondOperands_8__10,L1SecondOperands_8__9,
                L1SecondOperands_8__8,L1SecondOperands_8__7,
                L1SecondOperands_8__6,L1SecondOperands_8__5,
                L1SecondOperands_8__4,L1SecondOperands_8__3,
                L1SecondOperands_8__2,L1SecondOperands_8__1,
                L1SecondOperands_8__0})) ;
    mini_alu_17 L1_1_L2_4_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1971), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1935), .CalculatingBooth (
                nx1925), .FilterCell ({FilterDin_1__4__7,FilterDin_1__4__6,
                FilterDin_1__4__5,FilterDin_1__4__4,FilterDin_1__4__3,
                FilterDin_1__4__2,FilterDin_1__4__1,FilterDin_1__4__0}), .WindowCell (
                {WindowDin_1__4__7,WindowDin_1__4__6,WindowDin_1__4__5,
                WindowDin_1__4__4,WindowDin_1__4__3,WindowDin_1__4__2,
                WindowDin_1__4__1,WindowDin_1__4__0}), .AdderFirstOperand ({
                L1FirstOperands_9__16,L1FirstOperands_9__16,
                L1FirstOperands_9__14,L1FirstOperands_9__13,
                L1FirstOperands_9__12,L1FirstOperands_9__11,
                L1FirstOperands_9__10,L1FirstOperands_9__9,L1FirstOperands_9__8,
                L1FirstOperands_9__7,L1FirstOperands_9__6,L1FirstOperands_9__5,
                L1FirstOperands_9__4,L1FirstOperands_9__3,L1FirstOperands_9__2,
                L1FirstOperands_9__1,L1FirstOperands_9__0}), .AdderSecondOperand (
                {L1SecondOperands_9__16,L1SecondOperands_9__16,
                L1SecondOperands_9__14,L1SecondOperands_9__13,
                L1SecondOperands_9__12,L1SecondOperands_9__11,
                L1SecondOperands_9__10,L1SecondOperands_9__9,
                L1SecondOperands_9__8,L1SecondOperands_9__7,
                L1SecondOperands_9__6,L1SecondOperands_9__5,
                L1SecondOperands_9__4,L1SecondOperands_9__3,
                L1SecondOperands_9__2,L1SecondOperands_9__1,
                L1SecondOperands_9__0}), .AdderResult ({L1ResultsLarge_9__16,
                L1ResultsLarge_9__15,L1ResultsLarge_9__14,L1ResultsLarge_9__13,
                L1ResultsLarge_9__12,L1ResultsLarge_9__11,L1ResultsLarge_9__10,
                L1ResultsLarge_9__9,L1ResultsLarge_9__8,L1ResultsLarge_9__7,
                L1ResultsLarge_9__6,L1ResultsLarge_9__5,L1ResultsLarge_9__4,
                L1ResultsLarge_9__3,L1ResultsLarge_9__2,L1ResultsLarge_9__1,
                L1ResultsLarge_9__0}), .OperationResult ({L1SecondOperands_9__16
                ,\$dummy [9],L1SecondOperands_9__14,L1SecondOperands_9__13,
                L1SecondOperands_9__12,L1SecondOperands_9__11,
                L1SecondOperands_9__10,L1SecondOperands_9__9,
                L1SecondOperands_9__8,L1SecondOperands_9__7,
                L1SecondOperands_9__6,L1SecondOperands_9__5,
                L1SecondOperands_9__4,L1SecondOperands_9__3,
                L1SecondOperands_9__2,L1SecondOperands_9__1,
                L1SecondOperands_9__0})) ;
    mini_alu_17 L1_2_L2_0_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1973), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1935), .CalculatingBooth (
                nx1925), .FilterCell ({FilterDin_2__0__7,FilterDin_2__0__6,
                FilterDin_2__0__5,FilterDin_2__0__4,FilterDin_2__0__3,
                FilterDin_2__0__2,FilterDin_2__0__1,FilterDin_2__0__0}), .WindowCell (
                {WindowDin_2__0__7,WindowDin_2__0__6,WindowDin_2__0__5,
                WindowDin_2__0__4,WindowDin_2__0__3,WindowDin_2__0__2,
                WindowDin_2__0__1,WindowDin_2__0__0}), .AdderFirstOperand ({
                L1FirstOperands_10__16,L1FirstOperands_10__16,
                L1FirstOperands_10__14,L1FirstOperands_10__13,
                L1FirstOperands_10__12,L1FirstOperands_10__11,
                L1FirstOperands_10__10,L1FirstOperands_10__9,
                L1FirstOperands_10__8,L1FirstOperands_10__7,
                L1FirstOperands_10__6,L1FirstOperands_10__5,
                L1FirstOperands_10__4,L1FirstOperands_10__3,
                L1FirstOperands_10__2,L1FirstOperands_10__1,
                L1FirstOperands_10__0}), .AdderSecondOperand ({
                L1SecondOperands_10__16,L1SecondOperands_10__16,
                L1SecondOperands_10__14,L1SecondOperands_10__13,
                L1SecondOperands_10__12,L1SecondOperands_10__11,
                L1SecondOperands_10__10,L1SecondOperands_10__9,
                L1SecondOperands_10__8,L1SecondOperands_10__7,
                L1SecondOperands_10__6,L1SecondOperands_10__5,
                L1SecondOperands_10__4,L1SecondOperands_10__3,
                L1SecondOperands_10__2,L1SecondOperands_10__1,
                L1SecondOperands_10__0}), .AdderResult ({L1ResultsLarge_10__16,
                L1ResultsLarge_10__15,L1ResultsLarge_10__14,
                L1ResultsLarge_10__13,L1ResultsLarge_10__12,
                L1ResultsLarge_10__11,L1ResultsLarge_10__10,L1ResultsLarge_10__9
                ,L1ResultsLarge_10__8,L1ResultsLarge_10__7,L1ResultsLarge_10__6,
                L1ResultsLarge_10__5,L1ResultsLarge_10__4,L1ResultsLarge_10__3,
                L1ResultsLarge_10__2,L1ResultsLarge_10__1,L1ResultsLarge_10__0})
                , .OperationResult ({L1SecondOperands_10__16,\$dummy [10],
                L1SecondOperands_10__14,L1SecondOperands_10__13,
                L1SecondOperands_10__12,L1SecondOperands_10__11,
                L1SecondOperands_10__10,L1SecondOperands_10__9,
                L1SecondOperands_10__8,L1SecondOperands_10__7,
                L1SecondOperands_10__6,L1SecondOperands_10__5,
                L1SecondOperands_10__4,L1SecondOperands_10__3,
                L1SecondOperands_10__2,L1SecondOperands_10__1,
                L1SecondOperands_10__0})) ;
    mini_alu_17 L1_2_L2_1_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1975), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1935), .CalculatingBooth (
                nx1925), .FilterCell ({FilterDin_2__1__7,FilterDin_2__1__6,
                FilterDin_2__1__5,FilterDin_2__1__4,FilterDin_2__1__3,
                FilterDin_2__1__2,FilterDin_2__1__1,FilterDin_2__1__0}), .WindowCell (
                {WindowDin_2__1__7,WindowDin_2__1__6,WindowDin_2__1__5,
                WindowDin_2__1__4,WindowDin_2__1__3,WindowDin_2__1__2,
                WindowDin_2__1__1,WindowDin_2__1__0}), .AdderFirstOperand ({
                L1FirstOperands_11__16,L1FirstOperands_11__16,
                L1FirstOperands_11__14,L1FirstOperands_11__13,
                L1FirstOperands_11__12,L1FirstOperands_11__11,
                L1FirstOperands_11__10,L1FirstOperands_11__9,
                L1FirstOperands_11__8,L1FirstOperands_11__7,
                L1FirstOperands_11__6,L1FirstOperands_11__5,
                L1FirstOperands_11__4,L1FirstOperands_11__3,
                L1FirstOperands_11__2,L1FirstOperands_11__1,
                L1FirstOperands_11__0}), .AdderSecondOperand ({
                L1SecondOperands_11__16,L1SecondOperands_11__16,
                L1SecondOperands_11__14,L1SecondOperands_11__13,
                L1SecondOperands_11__12,L1SecondOperands_11__11,
                L1SecondOperands_11__10,L1SecondOperands_11__9,
                L1SecondOperands_11__8,L1SecondOperands_11__7,
                L1SecondOperands_11__6,L1SecondOperands_11__5,
                L1SecondOperands_11__4,L1SecondOperands_11__3,
                L1SecondOperands_11__2,L1SecondOperands_11__1,
                L1SecondOperands_11__0}), .AdderResult ({L1ResultsLarge_11__16,
                L1ResultsLarge_11__15,L1ResultsLarge_11__14,
                L1ResultsLarge_11__13,L1ResultsLarge_11__12,
                L1ResultsLarge_11__11,L1ResultsLarge_11__10,L1ResultsLarge_11__9
                ,L1ResultsLarge_11__8,L1ResultsLarge_11__7,L1ResultsLarge_11__6,
                L1ResultsLarge_11__5,L1ResultsLarge_11__4,L1ResultsLarge_11__3,
                L1ResultsLarge_11__2,L1ResultsLarge_11__1,L1ResultsLarge_11__0})
                , .OperationResult ({L1SecondOperands_11__16,\$dummy [11],
                L1SecondOperands_11__14,L1SecondOperands_11__13,
                L1SecondOperands_11__12,L1SecondOperands_11__11,
                L1SecondOperands_11__10,L1SecondOperands_11__9,
                L1SecondOperands_11__8,L1SecondOperands_11__7,
                L1SecondOperands_11__6,L1SecondOperands_11__5,
                L1SecondOperands_11__4,L1SecondOperands_11__3,
                L1SecondOperands_11__2,L1SecondOperands_11__1,
                L1SecondOperands_11__0})) ;
    mini_alu_17 L1_2_L2_2_G1_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1977), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1935), .CalculatingBooth (
                nx1925), .FilterCell ({FilterDin_2__2__7,FilterDin_2__2__6,
                FilterDin_2__2__5,FilterDin_2__2__4,FilterDin_2__2__3,
                FilterDin_2__2__2,FilterDin_2__2__1,FilterDin_2__2__0}), .WindowCell (
                {WindowDin_2__2__7,WindowDin_2__2__6,WindowDin_2__2__5,
                WindowDin_2__2__4,WindowDin_2__2__3,WindowDin_2__2__2,
                WindowDin_2__2__1,WindowDin_2__2__0}), .AdderFirstOperand ({
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16}), .AdderSecondOperand ({
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16,L1FirstOperands_12__16,
                L1FirstOperands_12__16}), .AdderResult ({\$dummy [12],
                \$dummy [13],\$dummy [14],\$dummy [15],\$dummy [16],\$dummy [17]
                ,\$dummy [18],\$dummy [19],\$dummy [20],\$dummy [21],
                \$dummy [22],\$dummy [23],\$dummy [24],\$dummy [25],\$dummy [26]
                ,\$dummy [27],\$dummy [28]}), .OperationResult ({
                L1FirstOperands_11__16,\$dummy [29],L1FirstOperands_11__14,
                L1FirstOperands_11__13,L1FirstOperands_11__12,
                L1FirstOperands_11__11,L1FirstOperands_11__10,
                L1FirstOperands_11__9,L1FirstOperands_11__8,
                L1FirstOperands_11__7,L1FirstOperands_11__6,
                L1FirstOperands_11__5,L1FirstOperands_11__4,
                L1FirstOperands_11__3,L1FirstOperands_11__2,
                L1FirstOperands_11__1,L1FirstOperands_11__0})) ;
    mini_alu_17 L1_2_L2_3_G2_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1979), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1935), .CalculatingBooth (
                nx1925), .FilterCell ({FilterDin_2__3__7,FilterDin_2__3__6,
                FilterDin_2__3__5,FilterDin_2__3__4,FilterDin_2__3__3,
                FilterDin_2__3__2,FilterDin_2__3__1,FilterDin_2__3__0}), .WindowCell (
                {WindowDin_2__3__7,WindowDin_2__3__6,WindowDin_2__3__5,
                WindowDin_2__3__4,WindowDin_2__3__3,WindowDin_2__3__2,
                WindowDin_2__3__1,WindowDin_2__3__0}), .AdderFirstOperand ({
                L1ResultsLarge_0__16,L1ResultsLarge_0__15,L1ResultsLarge_0__14,
                L1ResultsLarge_0__13,L1ResultsLarge_0__12,L1ResultsLarge_0__11,
                L1ResultsLarge_0__10,L1ResultsLarge_0__9,L1ResultsLarge_0__8,
                L1ResultsLarge_0__7,L1ResultsLarge_0__6,L1ResultsLarge_0__5,
                L1ResultsLarge_0__4,L1ResultsLarge_0__3,L1ResultsLarge_0__2,
                L1ResultsLarge_0__1,L1ResultsLarge_0__0}), .AdderSecondOperand (
                {L1ResultsLarge_1__16,L1ResultsLarge_1__15,L1ResultsLarge_1__14,
                L1ResultsLarge_1__13,L1ResultsLarge_1__12,L1ResultsLarge_1__11,
                L1ResultsLarge_1__10,L1ResultsLarge_1__9,L1ResultsLarge_1__8,
                L1ResultsLarge_1__7,L1ResultsLarge_1__6,L1ResultsLarge_1__5,
                L1ResultsLarge_1__4,L1ResultsLarge_1__3,L1ResultsLarge_1__2,
                L1ResultsLarge_1__1,L1ResultsLarge_1__0}), .AdderResult ({
                L2ResultsLarge_0__16,L2ResultsLarge_0__15,L2ResultsLarge_0__14,
                L2ResultsLarge_0__13,L2ResultsLarge_0__12,L2ResultsLarge_0__11,
                L2ResultsLarge_0__10,L2ResultsLarge_0__9,L2ResultsLarge_0__8,
                L2ResultsLarge_0__7,L2ResultsLarge_0__6,L2ResultsLarge_0__5,
                L2ResultsLarge_0__4,L2ResultsLarge_0__3,L2ResultsLarge_0__2,
                L2ResultsLarge_0__1,L2ResultsLarge_0__0}), .OperationResult ({
                L1FirstOperands_0__16,\$dummy [30],L1FirstOperands_0__14,
                L1FirstOperands_0__13,L1FirstOperands_0__12,
                L1FirstOperands_0__11,L1FirstOperands_0__10,L1FirstOperands_0__9
                ,L1FirstOperands_0__8,L1FirstOperands_0__7,L1FirstOperands_0__6,
                L1FirstOperands_0__5,L1FirstOperands_0__4,L1FirstOperands_0__3,
                L1FirstOperands_0__2,L1FirstOperands_0__1,L1FirstOperands_0__0})
                ) ;
    mini_alu_17 L1_2_L2_4_G2_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1981), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1937), .CalculatingBooth (
                nx1927), .FilterCell ({FilterDin_2__4__7,FilterDin_2__4__6,
                FilterDin_2__4__5,FilterDin_2__4__4,FilterDin_2__4__3,
                FilterDin_2__4__2,FilterDin_2__4__1,FilterDin_2__4__0}), .WindowCell (
                {WindowDin_2__4__7,WindowDin_2__4__6,WindowDin_2__4__5,
                WindowDin_2__4__4,WindowDin_2__4__3,WindowDin_2__4__2,
                WindowDin_2__4__1,WindowDin_2__4__0}), .AdderFirstOperand ({
                L1ResultsLarge_2__16,L1ResultsLarge_2__15,L1ResultsLarge_2__14,
                L1ResultsLarge_2__13,L1ResultsLarge_2__12,L1ResultsLarge_2__11,
                L1ResultsLarge_2__10,L1ResultsLarge_2__9,L1ResultsLarge_2__8,
                L1ResultsLarge_2__7,L1ResultsLarge_2__6,L1ResultsLarge_2__5,
                L1ResultsLarge_2__4,L1ResultsLarge_2__3,L1ResultsLarge_2__2,
                L1ResultsLarge_2__1,L1ResultsLarge_2__0}), .AdderSecondOperand (
                {L1ResultsLarge_3__16,L1ResultsLarge_3__15,L1ResultsLarge_3__14,
                L1ResultsLarge_3__13,L1ResultsLarge_3__12,L1ResultsLarge_3__11,
                L1ResultsLarge_3__10,L1ResultsLarge_3__9,L1ResultsLarge_3__8,
                L1ResultsLarge_3__7,L1ResultsLarge_3__6,L1ResultsLarge_3__5,
                L1ResultsLarge_3__4,L1ResultsLarge_3__3,L1ResultsLarge_3__2,
                L1ResultsLarge_3__1,L1ResultsLarge_3__0}), .AdderResult ({
                L2ResultsLarge_1__16,L2ResultsLarge_1__15,L2ResultsLarge_1__14,
                L2ResultsLarge_1__13,L2ResultsLarge_1__12,L2ResultsLarge_1__11,
                L2ResultsLarge_1__10,L2ResultsLarge_1__9,L2ResultsLarge_1__8,
                L2ResultsLarge_1__7,L2ResultsLarge_1__6,L2ResultsLarge_1__5,
                L2ResultsLarge_1__4,L2ResultsLarge_1__3,L2ResultsLarge_1__2,
                L2ResultsLarge_1__1,L2ResultsLarge_1__0}), .OperationResult ({
                L1FirstOperands_2__16,\$dummy [31],L1FirstOperands_2__14,
                L1FirstOperands_2__13,L1FirstOperands_2__12,
                L1FirstOperands_2__11,L1FirstOperands_2__10,L1FirstOperands_2__9
                ,L1FirstOperands_2__8,L1FirstOperands_2__7,L1FirstOperands_2__6,
                L1FirstOperands_2__5,L1FirstOperands_2__4,L1FirstOperands_2__3,
                L1FirstOperands_2__2,L1FirstOperands_2__1,L1FirstOperands_2__0})
                ) ;
    mini_alu_17 L1_3_L2_0_G2_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1983), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1937), .CalculatingBooth (
                nx1927), .FilterCell ({FilterDin_3__0__7,FilterDin_3__0__6,
                FilterDin_3__0__5,FilterDin_3__0__4,FilterDin_3__0__3,
                FilterDin_3__0__2,FilterDin_3__0__1,FilterDin_3__0__0}), .WindowCell (
                {WindowDin_3__0__7,WindowDin_3__0__6,WindowDin_3__0__5,
                WindowDin_3__0__4,WindowDin_3__0__3,WindowDin_3__0__2,
                WindowDin_3__0__1,WindowDin_3__0__0}), .AdderFirstOperand ({
                L1ResultsLarge_4__16,L1ResultsLarge_4__15,L1ResultsLarge_4__14,
                L1ResultsLarge_4__13,L1ResultsLarge_4__12,L1ResultsLarge_4__11,
                L1ResultsLarge_4__10,L1ResultsLarge_4__9,L1ResultsLarge_4__8,
                L1ResultsLarge_4__7,L1ResultsLarge_4__6,L1ResultsLarge_4__5,
                L1ResultsLarge_4__4,L1ResultsLarge_4__3,L1ResultsLarge_4__2,
                L1ResultsLarge_4__1,L1ResultsLarge_4__0}), .AdderSecondOperand (
                {L1ResultsLarge_5__16,L1ResultsLarge_5__15,L1ResultsLarge_5__14,
                L1ResultsLarge_5__13,L1ResultsLarge_5__12,L1ResultsLarge_5__11,
                L1ResultsLarge_5__10,L1ResultsLarge_5__9,L1ResultsLarge_5__8,
                L1ResultsLarge_5__7,L1ResultsLarge_5__6,L1ResultsLarge_5__5,
                L1ResultsLarge_5__4,L1ResultsLarge_5__3,L1ResultsLarge_5__2,
                L1ResultsLarge_5__1,L1ResultsLarge_5__0}), .AdderResult ({
                L2ResultsLarge_2__16,L2ResultsLarge_2__15,L2ResultsLarge_2__14,
                L2ResultsLarge_2__13,L2ResultsLarge_2__12,L2ResultsLarge_2__11,
                L2ResultsLarge_2__10,L2ResultsLarge_2__9,L2ResultsLarge_2__8,
                L2ResultsLarge_2__7,L2ResultsLarge_2__6,L2ResultsLarge_2__5,
                L2ResultsLarge_2__4,L2ResultsLarge_2__3,L2ResultsLarge_2__2,
                L2ResultsLarge_2__1,L2ResultsLarge_2__0}), .OperationResult ({
                L1FirstOperands_4__16,\$dummy [32],L1FirstOperands_4__14,
                L1FirstOperands_4__13,L1FirstOperands_4__12,
                L1FirstOperands_4__11,L1FirstOperands_4__10,L1FirstOperands_4__9
                ,L1FirstOperands_4__8,L1FirstOperands_4__7,L1FirstOperands_4__6,
                L1FirstOperands_4__5,L1FirstOperands_4__4,L1FirstOperands_4__3,
                L1FirstOperands_4__2,L1FirstOperands_4__1,L1FirstOperands_4__0})
                ) ;
    mini_alu_17 L1_3_L2_1_G2_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1985), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1937), .CalculatingBooth (
                nx1927), .FilterCell ({FilterDin_3__1__7,FilterDin_3__1__6,
                FilterDin_3__1__5,FilterDin_3__1__4,FilterDin_3__1__3,
                FilterDin_3__1__2,FilterDin_3__1__1,FilterDin_3__1__0}), .WindowCell (
                {WindowDin_3__1__7,WindowDin_3__1__6,WindowDin_3__1__5,
                WindowDin_3__1__4,WindowDin_3__1__3,WindowDin_3__1__2,
                WindowDin_3__1__1,WindowDin_3__1__0}), .AdderFirstOperand ({
                L1ResultsLarge_6__16,L1ResultsLarge_6__15,L1ResultsLarge_6__14,
                L1ResultsLarge_6__13,L1ResultsLarge_6__12,L1ResultsLarge_6__11,
                L1ResultsLarge_6__10,L1ResultsLarge_6__9,L1ResultsLarge_6__8,
                L1ResultsLarge_6__7,L1ResultsLarge_6__6,L1ResultsLarge_6__5,
                L1ResultsLarge_6__4,L1ResultsLarge_6__3,L1ResultsLarge_6__2,
                L1ResultsLarge_6__1,L1ResultsLarge_6__0}), .AdderSecondOperand (
                {L1ResultsLarge_7__16,L1ResultsLarge_7__15,L1ResultsLarge_7__14,
                L1ResultsLarge_7__13,L1ResultsLarge_7__12,L1ResultsLarge_7__11,
                L1ResultsLarge_7__10,L1ResultsLarge_7__9,L1ResultsLarge_7__8,
                L1ResultsLarge_7__7,L1ResultsLarge_7__6,L1ResultsLarge_7__5,
                L1ResultsLarge_7__4,L1ResultsLarge_7__3,L1ResultsLarge_7__2,
                L1ResultsLarge_7__1,L1ResultsLarge_7__0}), .AdderResult ({
                L2ResultsLarge_3__16,L2ResultsLarge_3__15,L2ResultsLarge_3__14,
                L2ResultsLarge_3__13,L2ResultsLarge_3__12,L2ResultsLarge_3__11,
                L2ResultsLarge_3__10,L2ResultsLarge_3__9,L2ResultsLarge_3__8,
                L2ResultsLarge_3__7,L2ResultsLarge_3__6,L2ResultsLarge_3__5,
                L2ResultsLarge_3__4,L2ResultsLarge_3__3,L2ResultsLarge_3__2,
                L2ResultsLarge_3__1,L2ResultsLarge_3__0}), .OperationResult ({
                L1FirstOperands_6__16,\$dummy [33],L1FirstOperands_6__14,
                L1FirstOperands_6__13,L1FirstOperands_6__12,
                L1FirstOperands_6__11,L1FirstOperands_6__10,L1FirstOperands_6__9
                ,L1FirstOperands_6__8,L1FirstOperands_6__7,L1FirstOperands_6__6,
                L1FirstOperands_6__5,L1FirstOperands_6__4,L1FirstOperands_6__3,
                L1FirstOperands_6__2,L1FirstOperands_6__1,L1FirstOperands_6__0})
                ) ;
    mini_alu_17 L1_3_L2_2_G2_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1987), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1937), .CalculatingBooth (
                nx1927), .FilterCell ({FilterDin_3__2__7,FilterDin_3__2__6,
                FilterDin_3__2__5,FilterDin_3__2__4,FilterDin_3__2__3,
                FilterDin_3__2__2,FilterDin_3__2__1,FilterDin_3__2__0}), .WindowCell (
                {WindowDin_3__2__7,WindowDin_3__2__6,WindowDin_3__2__5,
                WindowDin_3__2__4,WindowDin_3__2__3,WindowDin_3__2__2,
                WindowDin_3__2__1,WindowDin_3__2__0}), .AdderFirstOperand ({
                L1ResultsLarge_8__16,L1ResultsLarge_8__15,L1ResultsLarge_8__14,
                L1ResultsLarge_8__13,L1ResultsLarge_8__12,L1ResultsLarge_8__11,
                L1ResultsLarge_8__10,L1ResultsLarge_8__9,L1ResultsLarge_8__8,
                L1ResultsLarge_8__7,L1ResultsLarge_8__6,L1ResultsLarge_8__5,
                L1ResultsLarge_8__4,L1ResultsLarge_8__3,L1ResultsLarge_8__2,
                L1ResultsLarge_8__1,L1ResultsLarge_8__0}), .AdderSecondOperand (
                {L1ResultsLarge_9__16,L1ResultsLarge_9__15,L1ResultsLarge_9__14,
                L1ResultsLarge_9__13,L1ResultsLarge_9__12,L1ResultsLarge_9__11,
                L1ResultsLarge_9__10,L1ResultsLarge_9__9,L1ResultsLarge_9__8,
                L1ResultsLarge_9__7,L1ResultsLarge_9__6,L1ResultsLarge_9__5,
                L1ResultsLarge_9__4,L1ResultsLarge_9__3,L1ResultsLarge_9__2,
                L1ResultsLarge_9__1,L1ResultsLarge_9__0}), .AdderResult ({
                L2ResultsLarge_4__16,L2ResultsLarge_4__15,L2ResultsLarge_4__14,
                L2ResultsLarge_4__13,L2ResultsLarge_4__12,L2ResultsLarge_4__11,
                L2ResultsLarge_4__10,L2ResultsLarge_4__9,L2ResultsLarge_4__8,
                L2ResultsLarge_4__7,L2ResultsLarge_4__6,L2ResultsLarge_4__5,
                L2ResultsLarge_4__4,L2ResultsLarge_4__3,L2ResultsLarge_4__2,
                L2ResultsLarge_4__1,L2ResultsLarge_4__0}), .OperationResult ({
                L1FirstOperands_8__16,\$dummy [34],L1FirstOperands_8__14,
                L1FirstOperands_8__13,L1FirstOperands_8__12,
                L1FirstOperands_8__11,L1FirstOperands_8__10,L1FirstOperands_8__9
                ,L1FirstOperands_8__8,L1FirstOperands_8__7,L1FirstOperands_8__6,
                L1FirstOperands_8__5,L1FirstOperands_8__4,L1FirstOperands_8__3,
                L1FirstOperands_8__2,L1FirstOperands_8__1,L1FirstOperands_8__0})
                ) ;
    mini_alu_17 L1_3_L2_3_G2_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1989), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1937), .CalculatingBooth (
                nx1927), .FilterCell ({FilterDin_3__3__7,FilterDin_3__3__6,
                FilterDin_3__3__5,FilterDin_3__3__4,FilterDin_3__3__3,
                FilterDin_3__3__2,FilterDin_3__3__1,FilterDin_3__3__0}), .WindowCell (
                {WindowDin_3__3__7,WindowDin_3__3__6,WindowDin_3__3__5,
                WindowDin_3__3__4,WindowDin_3__3__3,WindowDin_3__3__2,
                WindowDin_3__3__1,WindowDin_3__3__0}), .AdderFirstOperand ({
                L1ResultsLarge_10__16,L1ResultsLarge_10__15,
                L1ResultsLarge_10__14,L1ResultsLarge_10__13,
                L1ResultsLarge_10__12,L1ResultsLarge_10__11,
                L1ResultsLarge_10__10,L1ResultsLarge_10__9,L1ResultsLarge_10__8,
                L1ResultsLarge_10__7,L1ResultsLarge_10__6,L1ResultsLarge_10__5,
                L1ResultsLarge_10__4,L1ResultsLarge_10__3,L1ResultsLarge_10__2,
                L1ResultsLarge_10__1,L1ResultsLarge_10__0}), .AdderSecondOperand (
                {L1ResultsLarge_11__16,L1ResultsLarge_11__15,
                L1ResultsLarge_11__14,L1ResultsLarge_11__13,
                L1ResultsLarge_11__12,L1ResultsLarge_11__11,
                L1ResultsLarge_11__10,L1ResultsLarge_11__9,L1ResultsLarge_11__8,
                L1ResultsLarge_11__7,L1ResultsLarge_11__6,L1ResultsLarge_11__5,
                L1ResultsLarge_11__4,L1ResultsLarge_11__3,L1ResultsLarge_11__2,
                L1ResultsLarge_11__1,L1ResultsLarge_11__0}), .AdderResult ({
                L2ResultsLarge_5__16,L2ResultsLarge_5__15,L2ResultsLarge_5__14,
                L2ResultsLarge_5__13,L2ResultsLarge_5__12,L2ResultsLarge_5__11,
                L2ResultsLarge_5__10,L2ResultsLarge_5__9,L2ResultsLarge_5__8,
                L2ResultsLarge_5__7,L2ResultsLarge_5__6,L2ResultsLarge_5__5,
                L2ResultsLarge_5__4,L2ResultsLarge_5__3,L2ResultsLarge_5__2,
                L2ResultsLarge_5__1,L2ResultsLarge_5__0}), .OperationResult ({
                L1FirstOperands_10__16,\$dummy [35],L1FirstOperands_10__14,
                L1FirstOperands_10__13,L1FirstOperands_10__12,
                L1FirstOperands_10__11,L1FirstOperands_10__10,
                L1FirstOperands_10__9,L1FirstOperands_10__8,
                L1FirstOperands_10__7,L1FirstOperands_10__6,
                L1FirstOperands_10__5,L1FirstOperands_10__4,
                L1FirstOperands_10__3,L1FirstOperands_10__2,
                L1FirstOperands_10__1,L1FirstOperands_10__0})) ;
    mini_alu_17 L1_3_L2_4_G3_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1991), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1937), .CalculatingBooth (
                nx1927), .FilterCell ({FilterDin_3__4__7,FilterDin_3__4__6,
                FilterDin_3__4__5,FilterDin_3__4__4,FilterDin_3__4__3,
                FilterDin_3__4__2,FilterDin_3__4__1,FilterDin_3__4__0}), .WindowCell (
                {WindowDin_3__4__7,WindowDin_3__4__6,WindowDin_3__4__5,
                WindowDin_3__4__4,WindowDin_3__4__3,WindowDin_3__4__2,
                WindowDin_3__4__1,WindowDin_3__4__0}), .AdderFirstOperand ({
                L2ResultsLarge_0__16,L2ResultsLarge_0__15,L2ResultsLarge_0__14,
                L2ResultsLarge_0__13,L2ResultsLarge_0__12,L2ResultsLarge_0__11,
                L2ResultsLarge_0__10,L2ResultsLarge_0__9,L2ResultsLarge_0__8,
                L2ResultsLarge_0__7,L2ResultsLarge_0__6,L2ResultsLarge_0__5,
                L2ResultsLarge_0__4,L2ResultsLarge_0__3,L2ResultsLarge_0__2,
                L2ResultsLarge_0__1,L2ResultsLarge_0__0}), .AdderSecondOperand (
                {L2ResultsLarge_1__16,L2ResultsLarge_1__15,L2ResultsLarge_1__14,
                L2ResultsLarge_1__13,L2ResultsLarge_1__12,L2ResultsLarge_1__11,
                L2ResultsLarge_1__10,L2ResultsLarge_1__9,L2ResultsLarge_1__8,
                L2ResultsLarge_1__7,L2ResultsLarge_1__6,L2ResultsLarge_1__5,
                L2ResultsLarge_1__4,L2ResultsLarge_1__3,L2ResultsLarge_1__2,
                L2ResultsLarge_1__1,L2ResultsLarge_1__0}), .AdderResult ({
                L3ResultsLarge_0__16,L3ResultsLarge_0__15,L3ResultsLarge_0__14,
                L3ResultsLarge_0__13,L3ResultsLarge_0__12,L3ResultsLarge_0__11,
                L3ResultsLarge_0__10,L3ResultsLarge_0__9,L3ResultsLarge_0__8,
                L3ResultsLarge_0__7,L3ResultsLarge_0__6,L3ResultsLarge_0__5,
                L3ResultsLarge_0__4,L3ResultsLarge_0__3,L3ResultsLarge_0__2,
                L3ResultsLarge_0__1,L3ResultsLarge_0__0}), .OperationResult ({
                L1FirstOperands_1__16,\$dummy [36],L1FirstOperands_1__14,
                L1FirstOperands_1__13,L1FirstOperands_1__12,
                L1FirstOperands_1__11,L1FirstOperands_1__10,L1FirstOperands_1__9
                ,L1FirstOperands_1__8,L1FirstOperands_1__7,L1FirstOperands_1__6,
                L1FirstOperands_1__5,L1FirstOperands_1__4,L1FirstOperands_1__3,
                L1FirstOperands_1__2,L1FirstOperands_1__1,L1FirstOperands_1__0})
                ) ;
    mini_alu_17 L1_4_L2_0_G3_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1993), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1937), .CalculatingBooth (
                nx1927), .FilterCell ({FilterDin_4__0__7,FilterDin_4__0__6,
                FilterDin_4__0__5,FilterDin_4__0__4,FilterDin_4__0__3,
                FilterDin_4__0__2,FilterDin_4__0__1,FilterDin_4__0__0}), .WindowCell (
                {WindowDin_4__0__7,WindowDin_4__0__6,WindowDin_4__0__5,
                WindowDin_4__0__4,WindowDin_4__0__3,WindowDin_4__0__2,
                WindowDin_4__0__1,WindowDin_4__0__0}), .AdderFirstOperand ({
                L2ResultsLarge_2__16,L2ResultsLarge_2__15,L2ResultsLarge_2__14,
                L2ResultsLarge_2__13,L2ResultsLarge_2__12,L2ResultsLarge_2__11,
                L2ResultsLarge_2__10,L2ResultsLarge_2__9,L2ResultsLarge_2__8,
                L2ResultsLarge_2__7,L2ResultsLarge_2__6,L2ResultsLarge_2__5,
                L2ResultsLarge_2__4,L2ResultsLarge_2__3,L2ResultsLarge_2__2,
                L2ResultsLarge_2__1,L2ResultsLarge_2__0}), .AdderSecondOperand (
                {L2ResultsLarge_3__16,L2ResultsLarge_3__15,L2ResultsLarge_3__14,
                L2ResultsLarge_3__13,L2ResultsLarge_3__12,L2ResultsLarge_3__11,
                L2ResultsLarge_3__10,L2ResultsLarge_3__9,L2ResultsLarge_3__8,
                L2ResultsLarge_3__7,L2ResultsLarge_3__6,L2ResultsLarge_3__5,
                L2ResultsLarge_3__4,L2ResultsLarge_3__3,L2ResultsLarge_3__2,
                L2ResultsLarge_3__1,L2ResultsLarge_3__0}), .AdderResult ({
                L3ResultsLarge_1__16,L3ResultsLarge_1__15,L3ResultsLarge_1__14,
                L3ResultsLarge_1__13,L3ResultsLarge_1__12,L3ResultsLarge_1__11,
                L3ResultsLarge_1__10,L3ResultsLarge_1__9,L3ResultsLarge_1__8,
                L3ResultsLarge_1__7,L3ResultsLarge_1__6,L3ResultsLarge_1__5,
                L3ResultsLarge_1__4,L3ResultsLarge_1__3,L3ResultsLarge_1__2,
                L3ResultsLarge_1__1,L3ResultsLarge_1__0}), .OperationResult ({
                L1FirstOperands_5__16,\$dummy [37],L1FirstOperands_5__14,
                L1FirstOperands_5__13,L1FirstOperands_5__12,
                L1FirstOperands_5__11,L1FirstOperands_5__10,L1FirstOperands_5__9
                ,L1FirstOperands_5__8,L1FirstOperands_5__7,L1FirstOperands_5__6,
                L1FirstOperands_5__5,L1FirstOperands_5__4,L1FirstOperands_5__3,
                L1FirstOperands_5__2,L1FirstOperands_5__1,L1FirstOperands_5__0})
                ) ;
    mini_alu_17 L1_4_L2_1_G3_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1995), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1939), .CalculatingBooth (
                nx1929), .FilterCell ({FilterDin_4__1__7,FilterDin_4__1__6,
                FilterDin_4__1__5,FilterDin_4__1__4,FilterDin_4__1__3,
                FilterDin_4__1__2,FilterDin_4__1__1,FilterDin_4__1__0}), .WindowCell (
                {WindowDin_4__1__7,WindowDin_4__1__6,WindowDin_4__1__5,
                WindowDin_4__1__4,WindowDin_4__1__3,WindowDin_4__1__2,
                WindowDin_4__1__1,WindowDin_4__1__0}), .AdderFirstOperand ({
                L2ResultsLarge_4__16,L2ResultsLarge_4__15,L2ResultsLarge_4__14,
                L2ResultsLarge_4__13,L2ResultsLarge_4__12,L2ResultsLarge_4__11,
                L2ResultsLarge_4__10,L2ResultsLarge_4__9,L2ResultsLarge_4__8,
                L2ResultsLarge_4__7,L2ResultsLarge_4__6,L2ResultsLarge_4__5,
                L2ResultsLarge_4__4,L2ResultsLarge_4__3,L2ResultsLarge_4__2,
                L2ResultsLarge_4__1,L2ResultsLarge_4__0}), .AdderSecondOperand (
                {L2ResultsLarge_5__16,L2ResultsLarge_5__15,L2ResultsLarge_5__14,
                L2ResultsLarge_5__13,L2ResultsLarge_5__12,L2ResultsLarge_5__11,
                L2ResultsLarge_5__10,L2ResultsLarge_5__9,L2ResultsLarge_5__8,
                L2ResultsLarge_5__7,L2ResultsLarge_5__6,L2ResultsLarge_5__5,
                L2ResultsLarge_5__4,L2ResultsLarge_5__3,L2ResultsLarge_5__2,
                L2ResultsLarge_5__1,L2ResultsLarge_5__0}), .AdderResult ({
                L3ResultsLarge_2__16,L3ResultsLarge_2__15,L3ResultsLarge_2__14,
                L3ResultsLarge_2__13,L3ResultsLarge_2__12,L3ResultsLarge_2__11,
                L3ResultsLarge_2__10,L3ResultsLarge_2__9,L3ResultsLarge_2__8,
                L3ResultsLarge_2__7,L3ResultsLarge_2__6,L3ResultsLarge_2__5,
                L3ResultsLarge_2__4,L3ResultsLarge_2__3,L3ResultsLarge_2__2,
                L3ResultsLarge_2__1,L3ResultsLarge_2__0}), .OperationResult ({
                L1FirstOperands_9__16,\$dummy [38],L1FirstOperands_9__14,
                L1FirstOperands_9__13,L1FirstOperands_9__12,
                L1FirstOperands_9__11,L1FirstOperands_9__10,L1FirstOperands_9__9
                ,L1FirstOperands_9__8,L1FirstOperands_9__7,L1FirstOperands_9__6,
                L1FirstOperands_9__5,L1FirstOperands_9__4,L1FirstOperands_9__3,
                L1FirstOperands_9__2,L1FirstOperands_9__1,L1FirstOperands_9__0})
                ) ;
    mini_alu_17 L1_4_L2_2_G4_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1997), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1939), .CalculatingBooth (
                nx1929), .FilterCell ({FilterDin_4__2__7,FilterDin_4__2__6,
                FilterDin_4__2__5,FilterDin_4__2__4,FilterDin_4__2__3,
                FilterDin_4__2__2,FilterDin_4__2__1,FilterDin_4__2__0}), .WindowCell (
                {WindowDin_4__2__7,WindowDin_4__2__6,WindowDin_4__2__5,
                WindowDin_4__2__4,WindowDin_4__2__3,WindowDin_4__2__2,
                WindowDin_4__2__1,WindowDin_4__2__0}), .AdderFirstOperand ({
                L3ResultsLarge_0__16,L3ResultsLarge_0__15,L3ResultsLarge_0__14,
                L3ResultsLarge_0__13,L3ResultsLarge_0__12,L3ResultsLarge_0__11,
                L3ResultsLarge_0__10,L3ResultsLarge_0__9,L3ResultsLarge_0__8,
                L3ResultsLarge_0__7,L3ResultsLarge_0__6,L3ResultsLarge_0__5,
                L3ResultsLarge_0__4,L3ResultsLarge_0__3,L3ResultsLarge_0__2,
                L3ResultsLarge_0__1,L3ResultsLarge_0__0}), .AdderSecondOperand (
                {L3ResultsLarge_1__16,L3ResultsLarge_1__15,L3ResultsLarge_1__14,
                L3ResultsLarge_1__13,L3ResultsLarge_1__12,L3ResultsLarge_1__11,
                L3ResultsLarge_1__10,L3ResultsLarge_1__9,L3ResultsLarge_1__8,
                L3ResultsLarge_1__7,L3ResultsLarge_1__6,L3ResultsLarge_1__5,
                L3ResultsLarge_1__4,L3ResultsLarge_1__3,L3ResultsLarge_1__2,
                L3ResultsLarge_1__1,L3ResultsLarge_1__0}), .AdderResult ({
                L4ResultsLarge_0__16,L4ResultsLarge_0__15,L4ResultsLarge_0__14,
                L4ResultsLarge_0__13,L4ResultsLarge_0__12,L4ResultsLarge_0__11,
                L4ResultsLarge_0__10,L4ResultsLarge_0__9,L4ResultsLarge_0__8,
                L4ResultsLarge_0__7,L4ResultsLarge_0__6,L4ResultsLarge_0__5,
                L4ResultsLarge_0__4,L4ResultsLarge_0__3,L4ResultsLarge_0__2,
                L4ResultsLarge_0__1,L4ResultsLarge_0__0}), .OperationResult ({
                L1FirstOperands_3__16,\$dummy [39],L1FirstOperands_3__14,
                L1FirstOperands_3__13,L1FirstOperands_3__12,
                L1FirstOperands_3__11,L1FirstOperands_3__10,L1FirstOperands_3__9
                ,L1FirstOperands_3__8,L1FirstOperands_3__7,L1FirstOperands_3__6,
                L1FirstOperands_3__5,L1FirstOperands_3__4,L1FirstOperands_3__3,
                L1FirstOperands_3__2,L1FirstOperands_3__1,L1FirstOperands_3__0})
                ) ;
    mini_alu_17 L1_4_L2_3_G5_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx1999), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1939), .CalculatingBooth (
                nx1929), .FilterCell ({FilterDin_4__3__7,FilterDin_4__3__6,
                FilterDin_4__3__5,FilterDin_4__3__4,FilterDin_4__3__3,
                FilterDin_4__3__2,FilterDin_4__3__1,FilterDin_4__3__0}), .WindowCell (
                {WindowDin_4__3__7,WindowDin_4__3__6,WindowDin_4__3__5,
                WindowDin_4__3__4,WindowDin_4__3__3,WindowDin_4__3__2,
                WindowDin_4__3__1,WindowDin_4__3__0}), .AdderFirstOperand ({
                L4ResultsLarge_0__16,L4ResultsLarge_0__15,L4ResultsLarge_0__14,
                L4ResultsLarge_0__13,L4ResultsLarge_0__12,L4ResultsLarge_0__11,
                L4ResultsLarge_0__10,L4ResultsLarge_0__9,L4ResultsLarge_0__8,
                L4ResultsLarge_0__7,L4ResultsLarge_0__6,L4ResultsLarge_0__5,
                L4ResultsLarge_0__4,L4ResultsLarge_0__3,L4ResultsLarge_0__2,
                L4ResultsLarge_0__1,L4ResultsLarge_0__0}), .AdderSecondOperand (
                {L3ResultsLarge_2__16,L3ResultsLarge_2__15,L3ResultsLarge_2__14,
                L3ResultsLarge_2__13,L3ResultsLarge_2__12,L3ResultsLarge_2__11,
                L3ResultsLarge_2__10,L3ResultsLarge_2__9,L3ResultsLarge_2__8,
                L3ResultsLarge_2__7,L3ResultsLarge_2__6,L3ResultsLarge_2__5,
                L3ResultsLarge_2__4,L3ResultsLarge_2__3,L3ResultsLarge_2__2,
                L3ResultsLarge_2__1,L3ResultsLarge_2__0}), .AdderResult ({
                L5FirstOperands_1__16,L5FirstOperands_1__15,
                L5FirstOperands_1__14,L5FirstOperands_1__13,
                L5FirstOperands_1__12,L5FirstOperands_1__11,
                L5FirstOperands_1__10,L5FirstOperands_1__9,L5FirstOperands_1__8,
                L5FirstOperands_1__7,L5FirstOperands_1__6,L5FirstOperands_1__5,
                L5FirstOperands_1__4,L5FirstOperands_1__3,L5FirstOperands_1__2,
                L5FirstOperands_1__1,L5FirstOperands_1__0}), .OperationResult ({
                L1FirstOperands_7__16,\$dummy [40],L1FirstOperands_7__14,
                L1FirstOperands_7__13,L1FirstOperands_7__12,
                L1FirstOperands_7__11,L1FirstOperands_7__10,L1FirstOperands_7__9
                ,L1FirstOperands_7__8,L1FirstOperands_7__7,L1FirstOperands_7__6,
                L1FirstOperands_7__5,L1FirstOperands_7__4,L1FirstOperands_7__3,
                L1FirstOperands_7__2,L1FirstOperands_7__1,L1FirstOperands_7__0})
                ) ;
    mini_alu_17 L1_4_L2_4_G5_MINI_ALU (.CLK (CLK), .RST (RST), .Start (nx2001), 
                .Instr (Instr), .Size (nx2045), .ResultReady (nx1939), .CalculatingBooth (
                nx1929), .FilterCell ({FilterDin_4__4__7,FilterDin_4__4__6,
                FilterDin_4__4__5,FilterDin_4__4__4,FilterDin_4__4__3,
                FilterDin_4__4__2,FilterDin_4__4__1,FilterDin_4__4__0}), .WindowCell (
                {WindowDin_4__4__7,WindowDin_4__4__6,WindowDin_4__4__5,
                WindowDin_4__4__4,WindowDin_4__4__3,WindowDin_4__4__2,
                WindowDin_4__4__1,WindowDin_4__4__0}), .AdderFirstOperand ({
                L5FirstOperands_1__16,L5FirstOperands_1__15,
                L5FirstOperands_1__14,L5FirstOperands_1__13,
                L5FirstOperands_1__12,L5FirstOperands_1__11,
                L5FirstOperands_1__10,L5FirstOperands_1__9,L5FirstOperands_1__8,
                L5FirstOperands_1__7,L5FirstOperands_1__6,L5FirstOperands_1__5,
                L5FirstOperands_1__4,L5FirstOperands_1__3,L5FirstOperands_1__2,
                L5FirstOperands_1__1,L5FirstOperands_1__0}), .AdderSecondOperand (
                {L5SecondOperands_1__16,L5SecondOperands_1__16,
                L5SecondOperands_1__14,L5SecondOperands_1__13,
                L5SecondOperands_1__12,L5SecondOperands_1__11,
                L5SecondOperands_1__10,L5SecondOperands_1__9,
                L5SecondOperands_1__8,L5SecondOperands_1__7,
                L5SecondOperands_1__6,L5SecondOperands_1__5,
                L5SecondOperands_1__4,L5SecondOperands_1__3,
                L5SecondOperands_1__2,L5SecondOperands_1__1,
                L5SecondOperands_1__0}), .AdderResult ({\$dummy [41],
                \$dummy [42],\$dummy [43],\$dummy [44],\$dummy [45],\$dummy [46]
                ,\$dummy [47],\$dummy [48],\$dummy [49],L5ResultsLarge_1__7,
                L5ResultsLarge_1__6,L5ResultsLarge_1__5,L5ResultsLarge_1__4,
                L5ResultsLarge_1__3,L5ResultsLarge_1__2,L5ResultsLarge_1__1,
                L5ResultsLarge_1__0}), .OperationResult ({L5SecondOperands_1__16
                ,\$dummy [50],L5SecondOperands_1__14,L5SecondOperands_1__13,
                L5SecondOperands_1__12,L5SecondOperands_1__11,
                L5SecondOperands_1__10,L5SecondOperands_1__9,
                L5SecondOperands_1__8,L5SecondOperands_1__7,
                L5SecondOperands_1__6,L5SecondOperands_1__5,
                L5SecondOperands_1__4,L5SecondOperands_1__3,
                L5SecondOperands_1__2,L5SecondOperands_1__1,
                L5SecondOperands_1__0})) ;
    fake_gnd ix1848 (.Y (L1FirstOperands_12__16)) ;
    nor04 ix1878 (.Y (nx1877), .A0 (CounterOut_0), .A1 (CounterOut_1), .A2 (
          CounterOut_2), .A3 (CounterOut_3)) ;
    oai21 ix29 (.Y (Result[0]), .A0 (nx1883), .A1 (Instr), .B0 (nx1885)) ;
    inv01 ix1884 (.Y (nx1883), .A (L5ResultsLarge_1__0)) ;
    aoi32 ix1886 (.Y (nx1885), .A0 (L5ResultsLarge_1__5), .A1 (FilterSize), .A2 (
          Instr), .B0 (L5ResultsLarge_1__3), .B1 (nx22)) ;
    nor02ii ix23 (.Y (nx22), .A0 (FilterSize), .A1 (Instr)) ;
    oai21 ix41 (.Y (Result[1]), .A0 (nx1889), .A1 (Instr), .B0 (nx1891)) ;
    inv01 ix1890 (.Y (nx1889), .A (L5ResultsLarge_1__1)) ;
    aoi32 ix1892 (.Y (nx1891), .A0 (L5ResultsLarge_1__6), .A1 (FilterSize), .A2 (
          Instr), .B0 (L5ResultsLarge_1__4), .B1 (nx22)) ;
    oai21 ix53 (.Y (Result[2]), .A0 (nx1894), .A1 (Instr), .B0 (nx1896)) ;
    inv01 ix1895 (.Y (nx1894), .A (L5ResultsLarge_1__2)) ;
    aoi32 ix1897 (.Y (nx1896), .A0 (L5ResultsLarge_1__7), .A1 (FilterSize), .A2 (
          Instr), .B0 (L5ResultsLarge_1__5), .B1 (nx22)) ;
    nor02ii ix3 (.Y (Result[5]), .A0 (Instr), .A1 (L5ResultsLarge_1__5)) ;
    nor02ii ix7 (.Y (Result[6]), .A0 (Instr), .A1 (L5ResultsLarge_1__6)) ;
    nor02ii ix11 (.Y (Result[7]), .A0 (Instr), .A1 (L5ResultsLarge_1__7)) ;
    inv01 ix93 (.Y (Done), .A (CounterEN)) ;
    inv01 ix1922 (.Y (nx1923), .A (nx1921)) ;
    inv01 ix1924 (.Y (nx1925), .A (nx1921)) ;
    inv01 ix1926 (.Y (nx1927), .A (nx1921)) ;
    inv01 ix1928 (.Y (nx1929), .A (nx1921)) ;
    inv02 ix1932 (.Y (nx1933), .A (nx1931)) ;
    inv02 ix1934 (.Y (nx1935), .A (nx1931)) ;
    inv02 ix1936 (.Y (nx1937), .A (nx1931)) ;
    inv02 ix1938 (.Y (nx1939), .A (nx1931)) ;
    nand04 ix79 (.Y (nx1931), .A0 (CounterOut_3), .A1 (nx1945), .A2 (nx1947), .A3 (
           CounterOut_0)) ;
    inv01 ix1944 (.Y (nx1945), .A (CounterOut_2)) ;
    inv01 ix1946 (.Y (nx1947), .A (CounterOut_1)) ;
    nor02ii ix1881 (.Y (CounterEN), .A0 (Instr), .A1 (nx1931)) ;
    inv01 ix1950 (.Y (nx1951), .A (Start)) ;
    inv01 ix1952 (.Y (nx1953), .A (nx2005)) ;
    inv01 ix1954 (.Y (nx1955), .A (nx2005)) ;
    inv01 ix1956 (.Y (nx1957), .A (nx2005)) ;
    inv01 ix1958 (.Y (nx1959), .A (nx2005)) ;
    inv01 ix1960 (.Y (nx1961), .A (nx2005)) ;
    inv01 ix1962 (.Y (nx1963), .A (nx2005)) ;
    inv01 ix1964 (.Y (nx1965), .A (nx2005)) ;
    inv01 ix1966 (.Y (nx1967), .A (nx2007)) ;
    inv01 ix1968 (.Y (nx1969), .A (nx2007)) ;
    inv01 ix1970 (.Y (nx1971), .A (nx2007)) ;
    inv01 ix1972 (.Y (nx1973), .A (nx2007)) ;
    inv01 ix1974 (.Y (nx1975), .A (nx2007)) ;
    inv01 ix1976 (.Y (nx1977), .A (nx2007)) ;
    inv01 ix1978 (.Y (nx1979), .A (nx2007)) ;
    inv01 ix1980 (.Y (nx1981), .A (nx2009)) ;
    inv01 ix1982 (.Y (nx1983), .A (nx2009)) ;
    inv01 ix1984 (.Y (nx1985), .A (nx2009)) ;
    inv01 ix1986 (.Y (nx1987), .A (nx2009)) ;
    inv01 ix1988 (.Y (nx1989), .A (nx2009)) ;
    inv01 ix1990 (.Y (nx1991), .A (nx2009)) ;
    inv01 ix1992 (.Y (nx1993), .A (nx2009)) ;
    inv01 ix1994 (.Y (nx1995), .A (nx1951)) ;
    inv01 ix1996 (.Y (nx1997), .A (nx1951)) ;
    inv01 ix1998 (.Y (nx1999), .A (nx1951)) ;
    inv01 ix2000 (.Y (nx2001), .A (nx1951)) ;
    inv02 ix2002 (.Y (nx2003), .A (Done)) ;
    inv01 ix2004 (.Y (nx2005), .A (Start)) ;
    inv01 ix2006 (.Y (nx2007), .A (Start)) ;
    inv01 ix2008 (.Y (nx2009), .A (Start)) ;
    fake_gnd ix2046 (.Y (nx2045)) ;
    nand02 ix91 (.Y (CounterRST), .A0 (nx2058), .A1 (nx2005)) ;
    inv01 ix2057 (.Y (nx2058), .A (RST)) ;
    nand02 ix89 (.Y (nx1921), .A0 (nx1931), .A1 (nx2060)) ;
    inv01 ix2059 (.Y (nx2060), .A (nx1877)) ;
    oai22 ix61 (.Y (Result[3]), .A0 (nx2062), .A1 (nx2064), .B0 (nx2066), .B1 (
          Instr)) ;
    inv01 ix2061 (.Y (nx2062), .A (L5ResultsLarge_1__6)) ;
    inv01 ix2063 (.Y (nx2064), .A (nx22)) ;
    inv01 ix2065 (.Y (nx2066), .A (L5ResultsLarge_1__3)) ;
    oai22 ix69 (.Y (Result[4]), .A0 (nx2068), .A1 (nx2064), .B0 (nx2070), .B1 (
          Instr)) ;
    inv01 ix2067 (.Y (nx2068), .A (L5ResultsLarge_1__7)) ;
    inv01 ix2069 (.Y (nx2070), .A (L5ResultsLarge_1__4)) ;
endmodule


module mini_alu_17 ( CLK, RST, Start, Instr, Size, ResultReady, CalculatingBooth, 
                     FilterCell, WindowCell, AdderFirstOperand, 
                     AdderSecondOperand, AdderResult, OperationResult ) ;

    input CLK ;
    input RST ;
    input Start ;
    input Instr ;
    input Size ;
    input ResultReady ;
    input CalculatingBooth ;
    input [7:0]FilterCell ;
    input [7:0]WindowCell ;
    input [16:0]AdderFirstOperand ;
    input [16:0]AdderSecondOperand ;
    output [16:0]AdderResult ;
    output [16:0]OperationResult ;

    wire AddPToBoothOperand, BoothOperand_16, BoothOperand_15, BoothOperand_14, 
         BoothOperand_13, BoothOperand_12, BoothOperand_11, BoothOperand_10, 
         BoothOperand_9, BoothOperand_8, BoothOperand_7, BoothOperand_6, 
         BoothOperand_5, BoothOperand_4, BoothOperand_3, BoothOperand_2, 
         BoothOperand_1, BoothOperand_0, BoothP_16, BoothP_15, BoothP_14, 
         BoothP_13, BoothP_12, BoothP_11, BoothP_10, BoothP_9, BoothP_8, 
         BoothP_7, BoothP_6, BoothP_5, BoothP_4, BoothP_3, BoothP_2, BoothP_1, 
         BoothP_0, WindowCellShiftedLeft_16, SelectBoothOperandsForAdder, 
         NewBoothP_16, NewBoothP_14, NewBoothP_13, NewBoothP_12, NewBoothP_11, 
         NewBoothP_10, NewBoothP_9, NewBoothP_8, NewBoothP_7, NewBoothP_6, 
         NewBoothP_5, NewBoothP_4, NewBoothP_3, NewBoothP_2, NewBoothP_1, 
         NewBoothP_0;
    wire [16:0] \$dummy ;




    assign OperationResult[15] = OperationResult[16] ;
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
                   BoothOperand_9,BoothOperand_8,BoothOperand_7,BoothOperand_6,
                   BoothOperand_5,BoothOperand_4,BoothOperand_3,BoothOperand_2,
                   BoothOperand_1,BoothOperand_0}), .BoothP ({BoothP_16,
                   BoothP_15,BoothP_14,BoothP_13,BoothP_12,BoothP_11,BoothP_10,
                   BoothP_9,BoothP_8,BoothP_7,BoothP_6,BoothP_5,BoothP_4,
                   BoothP_3,BoothP_2,BoothP_1,BoothP_0}), .SelectBoothOperandsForAdder (
                   SelectBoothOperandsForAdder), .AddPToBoothOperand (
                   AddPToBoothOperand), .AdderResult ({AdderResult[16],
                   AdderResult[15],AdderResult[14],AdderResult[13],
                   AdderResult[12],AdderResult[11],AdderResult[10],
                   AdderResult[9],AdderResult[8],AdderResult[7],AdderResult[6],
                   AdderResult[5],AdderResult[4],AdderResult[3],AdderResult[2],
                   AdderResult[1],AdderResult[0]}), .NewBoothP ({NewBoothP_16,
                   \$dummy [0],NewBoothP_14,NewBoothP_13,NewBoothP_12,
                   NewBoothP_11,NewBoothP_10,NewBoothP_9,NewBoothP_8,NewBoothP_7
                   ,NewBoothP_6,NewBoothP_5,NewBoothP_4,NewBoothP_3,NewBoothP_2,
                   NewBoothP_1,NewBoothP_0})) ;
    booth_unit_17 BOOTH_UNIT (.CLK (CLK), .RST (RST), .Start (Start), .Instr (
                  Instr), .CalculatingBooth (CalculatingBooth), .FilterCell ({
                  FilterCell[7],FilterCell[6],FilterCell[5],FilterCell[4],
                  FilterCell[3],FilterCell[2],FilterCell[1],FilterCell[0]}), .WindowCell (
                  {WindowCell[7],WindowCell[6],WindowCell[5],WindowCell[4],
                  WindowCell[3],WindowCell[2],WindowCell[1],WindowCell[0]}), .NewBoothP (
                  {NewBoothP_16,NewBoothP_16,NewBoothP_14,NewBoothP_13,
                  NewBoothP_12,NewBoothP_11,NewBoothP_10,NewBoothP_9,NewBoothP_8
                  ,NewBoothP_7,NewBoothP_6,NewBoothP_5,NewBoothP_4,NewBoothP_3,
                  NewBoothP_2,NewBoothP_1,NewBoothP_0}), .AddPToBoothOperand (
                  AddPToBoothOperand), .BoothOperand ({BoothOperand_16,
                  BoothOperand_15,BoothOperand_14,BoothOperand_13,
                  BoothOperand_12,BoothOperand_11,BoothOperand_10,BoothOperand_9
                  ,BoothOperand_8,BoothOperand_7,BoothOperand_6,BoothOperand_5,
                  BoothOperand_4,BoothOperand_3,BoothOperand_2,BoothOperand_1,
                  BoothOperand_0}), .BoothP ({BoothP_16,BoothP_15,BoothP_14,
                  BoothP_13,BoothP_12,BoothP_11,BoothP_10,BoothP_9,BoothP_8,
                  BoothP_7,BoothP_6,BoothP_5,BoothP_4,BoothP_3,BoothP_2,BoothP_1
                  ,BoothP_0}), .WindowCellShiftedLeft ({WindowCellShiftedLeft_16
                  ,\$dummy [1],\$dummy [2],\$dummy [3],\$dummy [4],\$dummy [5],
                  \$dummy [6],\$dummy [7],\$dummy [8],\$dummy [9],\$dummy [10],
                  \$dummy [11],\$dummy [12],\$dummy [13],\$dummy [14],
                  \$dummy [15],\$dummy [16]})) ;
    nor02_2x ix119 (.Y (SelectBoothOperandsForAdder), .A0 (ResultReady), .A1 (
             Instr)) ;
    mux21_ni ix7 (.Y (OperationResult[0]), .A0 (BoothP_1), .A1 (WindowCell[0]), 
             .S0 (Instr)) ;
    mux21_ni ix15 (.Y (OperationResult[1]), .A0 (BoothP_2), .A1 (WindowCell[1])
             , .S0 (Instr)) ;
    mux21_ni ix23 (.Y (OperationResult[2]), .A0 (BoothP_3), .A1 (WindowCell[2])
             , .S0 (Instr)) ;
    mux21_ni ix31 (.Y (OperationResult[3]), .A0 (BoothP_4), .A1 (WindowCell[3])
             , .S0 (Instr)) ;
    mux21_ni ix39 (.Y (OperationResult[4]), .A0 (BoothP_5), .A1 (WindowCell[4])
             , .S0 (Instr)) ;
    mux21_ni ix47 (.Y (OperationResult[5]), .A0 (BoothP_6), .A1 (WindowCell[5])
             , .S0 (Instr)) ;
    mux21_ni ix55 (.Y (OperationResult[6]), .A0 (BoothP_7), .A1 (WindowCell[6])
             , .S0 (Instr)) ;
    mux21_ni ix63 (.Y (OperationResult[7]), .A0 (BoothP_8), .A1 (WindowCell[7])
             , .S0 (Instr)) ;
    mux21_ni ix71 (.Y (OperationResult[8]), .A0 (BoothP_9), .A1 (
             WindowCellShiftedLeft_16), .S0 (Instr)) ;
    mux21_ni ix77 (.Y (OperationResult[9]), .A0 (BoothP_10), .A1 (
             WindowCellShiftedLeft_16), .S0 (Instr)) ;
    mux21_ni ix83 (.Y (OperationResult[10]), .A0 (BoothP_11), .A1 (
             WindowCellShiftedLeft_16), .S0 (Instr)) ;
    mux21_ni ix89 (.Y (OperationResult[11]), .A0 (BoothP_12), .A1 (
             WindowCellShiftedLeft_16), .S0 (Instr)) ;
    mux21_ni ix95 (.Y (OperationResult[12]), .A0 (BoothP_13), .A1 (
             WindowCellShiftedLeft_16), .S0 (Instr)) ;
    mux21_ni ix101 (.Y (OperationResult[13]), .A0 (BoothP_14), .A1 (
             WindowCellShiftedLeft_16), .S0 (Instr)) ;
    mux21_ni ix107 (.Y (OperationResult[14]), .A0 (BoothP_15), .A1 (
             WindowCellShiftedLeft_16), .S0 (Instr)) ;
    mux21_ni ix113 (.Y (OperationResult[16]), .A0 (BoothP_16), .A1 (
             WindowCellShiftedLeft_16), .S0 (Instr)) ;
endmodule


module booth_unit_17 ( CLK, RST, Start, Instr, CalculatingBooth, FilterCell, 
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
         nx20, nx24, nx80, nx328, nx450, nx452, nx454, nx456, nx458, nx460, 
         nx462, nx464, nx466, nx468, nx470, nx472, nx474, nx476, nx478, nx480, 
         nx482, nx484, nx486, nx488, nx490, nx492, nx494, nx496, nx498, nx500, 
         nx502, nx504, nx506, nx508, nx510, nx512, nx514, nx516, nx518, nx520, 
         nx522, nx524, nx526, nx528, nx530, nx532, nx534, nx536, nx538, nx540, 
         nx542, nx544, nx546, nx548, nx550, nx552, nx554, nx556, nx558, nx560, 
         nx562, nx564, nx566, nx568, nx570, nx572, nx574, nx576, nx578, nx580, 
         nx582, nx584, nx590, nx592;



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
    register_edge_falling_17 REGISTER_A (.CLK (CLK), .RST (RST), .EN (nx590), .Din (
                             {FilterCell[7],FilterCell[6],FilterCell[5],
                             FilterCell[4],FilterCell[3],FilterCell[2],
                             FilterCell[1],FilterCell[0],
                             WindowCellShiftedLeft[16],WindowCellShiftedLeft[16]
                             ,WindowCellShiftedLeft[16],
                             WindowCellShiftedLeft[16],WindowCellShiftedLeft[16]
                             ,WindowCellShiftedLeft[16],
                             WindowCellShiftedLeft[16],WindowCellShiftedLeft[16]
                             ,WindowCellShiftedLeft[16]}), .Dout ({
                             RegisterADout_16,RegisterADout_15,RegisterADout_14,
                             RegisterADout_13,RegisterADout_12,RegisterADout_11,
                             RegisterADout_10,RegisterADout_9,RegisterADout_8,
                             RegisterADout_7,RegisterADout_6,RegisterADout_5,
                             RegisterADout_4,RegisterADout_3,RegisterADout_2,
                             RegisterADout_1,RegisterADout_0})) ;
    register_edge_falling_17 REGISTER_S (.CLK (CLK), .RST (RST), .EN (nx590), .Din (
                             {RegisterSDin_16,RegisterSDin_15,RegisterSDin_14,
                             RegisterSDin_13,RegisterSDin_12,RegisterSDin_11,
                             RegisterSDin_10,FilterCell[0],
                             WindowCellShiftedLeft[16],WindowCellShiftedLeft[16]
                             ,WindowCellShiftedLeft[16],
                             WindowCellShiftedLeft[16],WindowCellShiftedLeft[16]
                             ,WindowCellShiftedLeft[16],
                             WindowCellShiftedLeft[16],WindowCellShiftedLeft[16]
                             ,WindowCellShiftedLeft[16]}), .Dout ({
                             RegisterSDout_16,RegisterSDout_15,RegisterSDout_14,
                             RegisterSDout_13,RegisterSDout_12,RegisterSDout_11,
                             RegisterSDout_10,RegisterSDout_9,RegisterSDout_8,
                             RegisterSDout_7,RegisterSDout_6,RegisterSDout_5,
                             RegisterSDout_4,RegisterSDout_3,RegisterSDout_2,
                             RegisterSDout_1,RegisterSDout_0})) ;
    register_edge_falling_17 REGISTER_P (.CLK (CLK), .RST (RST), .EN (
                             RegisterPEN), .Din ({RegisterPDin_16,
                             RegisterPDin_15,RegisterPDin_14,RegisterPDin_13,
                             RegisterPDin_12,RegisterPDin_11,RegisterPDin_10,
                             RegisterPDin_9,RegisterPDin_8,RegisterPDin_7,
                             RegisterPDin_6,RegisterPDin_5,RegisterPDin_4,
                             RegisterPDin_3,RegisterPDin_2,RegisterPDin_1,
                             RegisterPDin_0}), .Dout ({BoothP[16],BoothP[15],
                             BoothP[14],BoothP[13],BoothP[12],BoothP[11],
                             BoothP[10],BoothP[9],BoothP[8],BoothP[7],BoothP[6],
                             BoothP[5],BoothP[4],BoothP[3],BoothP[2],BoothP[1],
                             BoothP[0]})) ;
    fake_gnd ix216 (.Y (WindowCellShiftedLeft[16])) ;
    nor02ii ix81 (.Y (nx80), .A0 (Instr), .A1 (nx590)) ;
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
    or02 ix319 (.Y (RegisterPEN), .A0 (nx592), .A1 (CalculatingBooth)) ;
    inv01 ix329 (.Y (nx328), .A (nx4)) ;
    nor02_2x ix85 (.Y (RegisterPDin_0), .A0 (nx580), .A1 (nx450)) ;
    inv01 ix449 (.Y (nx450), .A (NewBoothP[0])) ;
    mux21 ix125 (.Y (RegisterPDin_1), .A0 (nx452), .A1 (nx454), .S0 (nx580)) ;
    inv01 ix451 (.Y (nx452), .A (NewBoothP[1])) ;
    inv01 ix453 (.Y (nx454), .A (WindowCell[0])) ;
    mux21 ix133 (.Y (RegisterPDin_2), .A0 (nx456), .A1 (nx458), .S0 (nx580)) ;
    inv01 ix455 (.Y (nx456), .A (NewBoothP[2])) ;
    inv01 ix457 (.Y (nx458), .A (WindowCell[1])) ;
    mux21 ix141 (.Y (RegisterPDin_3), .A0 (nx460), .A1 (nx462), .S0 (nx580)) ;
    inv01 ix459 (.Y (nx460), .A (NewBoothP[3])) ;
    inv01 ix461 (.Y (nx462), .A (WindowCell[2])) ;
    mux21 ix149 (.Y (RegisterPDin_4), .A0 (nx464), .A1 (nx466), .S0 (nx580)) ;
    inv01 ix463 (.Y (nx464), .A (NewBoothP[4])) ;
    inv01 ix465 (.Y (nx466), .A (WindowCell[3])) ;
    mux21 ix157 (.Y (RegisterPDin_5), .A0 (nx468), .A1 (nx470), .S0 (nx580)) ;
    inv01 ix467 (.Y (nx468), .A (NewBoothP[5])) ;
    inv01 ix469 (.Y (nx470), .A (WindowCell[4])) ;
    mux21 ix165 (.Y (RegisterPDin_6), .A0 (nx472), .A1 (nx474), .S0 (nx580)) ;
    inv01 ix471 (.Y (nx472), .A (NewBoothP[6])) ;
    inv01 ix473 (.Y (nx474), .A (WindowCell[5])) ;
    mux21 ix173 (.Y (RegisterPDin_7), .A0 (nx476), .A1 (nx478), .S0 (nx582)) ;
    inv01 ix475 (.Y (nx476), .A (NewBoothP[7])) ;
    inv01 ix477 (.Y (nx478), .A (WindowCell[6])) ;
    mux21 ix181 (.Y (RegisterPDin_8), .A0 (nx480), .A1 (nx482), .S0 (nx582)) ;
    inv01 ix479 (.Y (nx480), .A (NewBoothP[8])) ;
    inv01 ix481 (.Y (nx482), .A (WindowCell[7])) ;
    nor02_2x ix89 (.Y (RegisterPDin_9), .A0 (nx582), .A1 (nx484)) ;
    inv01 ix483 (.Y (nx484), .A (NewBoothP[9])) ;
    nor02_2x ix93 (.Y (RegisterPDin_10), .A0 (nx582), .A1 (nx486)) ;
    inv01 ix485 (.Y (nx486), .A (NewBoothP[10])) ;
    nor02_2x ix97 (.Y (RegisterPDin_11), .A0 (nx582), .A1 (nx488)) ;
    inv01 ix487 (.Y (nx488), .A (NewBoothP[11])) ;
    nor02_2x ix101 (.Y (RegisterPDin_12), .A0 (nx582), .A1 (nx490)) ;
    inv01 ix489 (.Y (nx490), .A (NewBoothP[12])) ;
    nor02_2x ix105 (.Y (RegisterPDin_13), .A0 (nx582), .A1 (nx492)) ;
    inv01 ix491 (.Y (nx492), .A (NewBoothP[13])) ;
    nor02_2x ix109 (.Y (RegisterPDin_14), .A0 (nx584), .A1 (nx494)) ;
    inv01 ix493 (.Y (nx494), .A (NewBoothP[14])) ;
    nor02_2x ix113 (.Y (RegisterPDin_15), .A0 (nx584), .A1 (nx496)) ;
    inv01 ix495 (.Y (nx496), .A (NewBoothP[15])) ;
    nor02_2x ix117 (.Y (RegisterPDin_16), .A0 (nx584), .A1 (nx498)) ;
    inv01 ix497 (.Y (nx498), .A (NewBoothP[16])) ;
    mux21 ix189 (.Y (BoothOperand[0]), .A0 (nx500), .A1 (nx502), .S0 (nx572)) ;
    inv01 ix499 (.Y (nx500), .A (RegisterSDout_0)) ;
    inv01 ix501 (.Y (nx502), .A (RegisterADout_0)) ;
    mux21 ix197 (.Y (BoothOperand[1]), .A0 (nx504), .A1 (nx506), .S0 (nx572)) ;
    inv01 ix503 (.Y (nx504), .A (RegisterSDout_1)) ;
    inv01 ix505 (.Y (nx506), .A (RegisterADout_1)) ;
    mux21 ix205 (.Y (BoothOperand[2]), .A0 (nx508), .A1 (nx510), .S0 (nx572)) ;
    inv01 ix507 (.Y (nx508), .A (RegisterSDout_2)) ;
    inv01 ix509 (.Y (nx510), .A (RegisterADout_2)) ;
    mux21 ix213 (.Y (BoothOperand[3]), .A0 (nx512), .A1 (nx514), .S0 (nx572)) ;
    inv01 ix511 (.Y (nx512), .A (RegisterSDout_3)) ;
    inv01 ix513 (.Y (nx514), .A (RegisterADout_3)) ;
    mux21 ix221 (.Y (BoothOperand[4]), .A0 (nx516), .A1 (nx518), .S0 (nx572)) ;
    inv01 ix515 (.Y (nx516), .A (RegisterSDout_4)) ;
    inv01 ix517 (.Y (nx518), .A (RegisterADout_4)) ;
    mux21 ix229 (.Y (BoothOperand[5]), .A0 (nx520), .A1 (nx522), .S0 (nx572)) ;
    inv01 ix519 (.Y (nx520), .A (RegisterSDout_5)) ;
    inv01 ix521 (.Y (nx522), .A (RegisterADout_5)) ;
    mux21 ix237 (.Y (BoothOperand[6]), .A0 (nx524), .A1 (nx526), .S0 (nx572)) ;
    inv01 ix523 (.Y (nx524), .A (RegisterSDout_6)) ;
    inv01 ix525 (.Y (nx526), .A (RegisterADout_6)) ;
    mux21 ix245 (.Y (BoothOperand[7]), .A0 (nx528), .A1 (nx530), .S0 (nx574)) ;
    inv01 ix527 (.Y (nx528), .A (RegisterSDout_7)) ;
    inv01 ix529 (.Y (nx530), .A (RegisterADout_7)) ;
    mux21 ix253 (.Y (BoothOperand[8]), .A0 (nx532), .A1 (nx534), .S0 (nx574)) ;
    inv01 ix531 (.Y (nx532), .A (RegisterSDout_8)) ;
    inv01 ix533 (.Y (nx534), .A (RegisterADout_8)) ;
    mux21 ix261 (.Y (BoothOperand[9]), .A0 (nx536), .A1 (nx538), .S0 (nx574)) ;
    inv01 ix535 (.Y (nx536), .A (RegisterSDout_9)) ;
    inv01 ix537 (.Y (nx538), .A (RegisterADout_9)) ;
    mux21 ix269 (.Y (BoothOperand[10]), .A0 (nx540), .A1 (nx542), .S0 (nx574)) ;
    inv01 ix539 (.Y (nx540), .A (RegisterSDout_10)) ;
    inv01 ix541 (.Y (nx542), .A (RegisterADout_10)) ;
    mux21 ix277 (.Y (BoothOperand[11]), .A0 (nx544), .A1 (nx546), .S0 (nx574)) ;
    inv01 ix543 (.Y (nx544), .A (RegisterSDout_11)) ;
    inv01 ix545 (.Y (nx546), .A (RegisterADout_11)) ;
    mux21 ix285 (.Y (BoothOperand[12]), .A0 (nx548), .A1 (nx550), .S0 (nx574)) ;
    inv01 ix547 (.Y (nx548), .A (RegisterSDout_12)) ;
    inv01 ix549 (.Y (nx550), .A (RegisterADout_12)) ;
    mux21 ix293 (.Y (BoothOperand[13]), .A0 (nx552), .A1 (nx554), .S0 (nx574)) ;
    inv01 ix551 (.Y (nx552), .A (RegisterSDout_13)) ;
    inv01 ix553 (.Y (nx554), .A (RegisterADout_13)) ;
    mux21 ix301 (.Y (BoothOperand[14]), .A0 (nx556), .A1 (nx558), .S0 (nx576)) ;
    inv01 ix555 (.Y (nx556), .A (RegisterSDout_14)) ;
    inv01 ix557 (.Y (nx558), .A (RegisterADout_14)) ;
    mux21 ix309 (.Y (BoothOperand[15]), .A0 (nx560), .A1 (nx562), .S0 (nx576)) ;
    inv01 ix559 (.Y (nx560), .A (RegisterSDout_15)) ;
    inv01 ix561 (.Y (nx562), .A (RegisterADout_15)) ;
    mux21 ix317 (.Y (BoothOperand[16]), .A0 (nx564), .A1 (nx566), .S0 (nx576)) ;
    inv01 ix563 (.Y (nx564), .A (RegisterSDout_16)) ;
    inv01 ix565 (.Y (nx566), .A (RegisterADout_16)) ;
    xnor2 ix321 (.Y (AddPToBoothOperand), .A0 (nx576), .A1 (nx568)) ;
    inv01 ix567 (.Y (nx568), .A (BoothP[1])) ;
    inv01 ix569 (.Y (nx570), .A (BoothP[0])) ;
    inv02 ix571 (.Y (nx572), .A (nx570)) ;
    inv02 ix573 (.Y (nx574), .A (nx570)) ;
    inv02 ix575 (.Y (nx576), .A (nx570)) ;
    inv01 ix577 (.Y (nx578), .A (nx80)) ;
    inv02 ix579 (.Y (nx580), .A (nx578)) ;
    inv02 ix581 (.Y (nx582), .A (nx578)) ;
    inv02 ix583 (.Y (nx584), .A (nx578)) ;
    buf02 ix589 (.Y (nx590), .A (Start)) ;
    buf02 ix591 (.Y (nx592), .A (Start)) ;
endmodule


module register_edge_falling_17 ( CLK, RST, EN, Din, Dout ) ;

    input CLK ;
    input RST ;
    input EN ;
    input [16:0]Din ;
    output [16:0]Dout ;

    wire nx392, nx402, nx412, nx422, nx432, nx442, nx452, nx462, nx472, nx482, 
         nx492, nx502, nx512, nx522, nx532, nx542, nx552, nx564, nx566, nx624, 
         nx626, nx628, nx644, nx700, nx702, nx704, nx706, nx708, nx710, nx712, 
         nx714, nx716, nx718, nx720, nx722, nx724, nx726, nx728, nx730, nx732, 
         nx734, nx736, nx738, nx740, nx742, nx744, nx746, nx748, nx750, nx752, 
         nx754, nx756, nx758, nx760, nx762, nx764, nx766, nx768, nx770, nx772, 
         nx774, nx776, nx778;
    wire [16:0] \$dummy ;




    dff reg_Dout_0 (.Q (Dout[0]), .QB (\$dummy [0]), .D (nx392), .CLK (nx624)) ;
    inv01 ix565 (.Y (nx564), .A (RST)) ;
    nor02_2x ix567 (.Y (nx566), .A0 (RST), .A1 (nx644)) ;
    dff reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [1]), .D (nx402), .CLK (nx624)) ;
    dff reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [2]), .D (nx412), .CLK (nx624)) ;
    dff reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [3]), .D (nx422), .CLK (nx624)) ;
    dff reg_Dout_4 (.Q (Dout[4]), .QB (\$dummy [4]), .D (nx432), .CLK (nx624)) ;
    dff reg_Dout_5 (.Q (Dout[5]), .QB (\$dummy [5]), .D (nx442), .CLK (nx624)) ;
    dff reg_Dout_6 (.Q (Dout[6]), .QB (\$dummy [6]), .D (nx452), .CLK (nx624)) ;
    dff reg_Dout_7 (.Q (Dout[7]), .QB (\$dummy [7]), .D (nx462), .CLK (nx626)) ;
    dff reg_Dout_8 (.Q (Dout[8]), .QB (\$dummy [8]), .D (nx472), .CLK (nx626)) ;
    dff reg_Dout_9 (.Q (Dout[9]), .QB (\$dummy [9]), .D (nx482), .CLK (nx626)) ;
    dff reg_Dout_10 (.Q (Dout[10]), .QB (\$dummy [10]), .D (nx492), .CLK (nx626)
        ) ;
    dff reg_Dout_11 (.Q (Dout[11]), .QB (\$dummy [11]), .D (nx502), .CLK (nx626)
        ) ;
    dff reg_Dout_12 (.Q (Dout[12]), .QB (\$dummy [12]), .D (nx512), .CLK (nx626)
        ) ;
    dff reg_Dout_13 (.Q (Dout[13]), .QB (\$dummy [13]), .D (nx522), .CLK (nx626)
        ) ;
    dff reg_Dout_14 (.Q (Dout[14]), .QB (\$dummy [14]), .D (nx532), .CLK (nx628)
        ) ;
    dff reg_Dout_15 (.Q (Dout[15]), .QB (\$dummy [15]), .D (nx542), .CLK (nx628)
        ) ;
    dff reg_Dout_16 (.Q (Dout[16]), .QB (\$dummy [16]), .D (nx552), .CLK (nx628)
        ) ;
    inv02 ix623 (.Y (nx624), .A (CLK)) ;
    inv02 ix625 (.Y (nx626), .A (CLK)) ;
    inv02 ix627 (.Y (nx628), .A (CLK)) ;
    inv02 ix643 (.Y (nx644), .A (nx774)) ;
    oai32 ix393 (.Y (nx392), .A0 (nx700), .A1 (RST), .A2 (nx774), .B0 (nx702), .B1 (
          nx704)) ;
    inv01 ix699 (.Y (nx700), .A (Din[0])) ;
    inv01 ix701 (.Y (nx702), .A (Dout[0])) ;
    oai32 ix403 (.Y (nx402), .A0 (nx706), .A1 (RST), .A2 (nx774), .B0 (nx708), .B1 (
          nx704)) ;
    inv01 ix705 (.Y (nx706), .A (Din[1])) ;
    inv01 ix707 (.Y (nx708), .A (Dout[1])) ;
    oai32 ix413 (.Y (nx412), .A0 (nx710), .A1 (RST), .A2 (nx774), .B0 (nx712), .B1 (
          nx704)) ;
    inv01 ix709 (.Y (nx710), .A (Din[2])) ;
    inv01 ix711 (.Y (nx712), .A (Dout[2])) ;
    oai32 ix423 (.Y (nx422), .A0 (nx714), .A1 (RST), .A2 (nx774), .B0 (nx716), .B1 (
          nx704)) ;
    inv01 ix713 (.Y (nx714), .A (Din[3])) ;
    inv01 ix715 (.Y (nx716), .A (Dout[3])) ;
    oai32 ix433 (.Y (nx432), .A0 (nx718), .A1 (RST), .A2 (nx774), .B0 (nx720), .B1 (
          nx704)) ;
    inv01 ix717 (.Y (nx718), .A (Din[4])) ;
    inv01 ix719 (.Y (nx720), .A (Dout[4])) ;
    oai32 ix443 (.Y (nx442), .A0 (nx722), .A1 (RST), .A2 (nx774), .B0 (nx724), .B1 (
          nx704)) ;
    inv01 ix721 (.Y (nx722), .A (Din[5])) ;
    inv01 ix723 (.Y (nx724), .A (Dout[5])) ;
    oai32 ix453 (.Y (nx452), .A0 (nx726), .A1 (RST), .A2 (nx776), .B0 (nx728), .B1 (
          nx704)) ;
    inv01 ix725 (.Y (nx726), .A (Din[6])) ;
    inv01 ix727 (.Y (nx728), .A (Dout[6])) ;
    oai32 ix463 (.Y (nx462), .A0 (nx730), .A1 (RST), .A2 (nx776), .B0 (nx732), .B1 (
          nx734)) ;
    inv01 ix729 (.Y (nx730), .A (Din[7])) ;
    inv01 ix731 (.Y (nx732), .A (Dout[7])) ;
    oai32 ix473 (.Y (nx472), .A0 (nx736), .A1 (RST), .A2 (nx776), .B0 (nx738), .B1 (
          nx734)) ;
    inv01 ix735 (.Y (nx736), .A (Din[8])) ;
    inv01 ix737 (.Y (nx738), .A (Dout[8])) ;
    oai32 ix483 (.Y (nx482), .A0 (nx740), .A1 (RST), .A2 (nx776), .B0 (nx742), .B1 (
          nx734)) ;
    inv01 ix739 (.Y (nx740), .A (Din[9])) ;
    inv01 ix741 (.Y (nx742), .A (Dout[9])) ;
    oai32 ix493 (.Y (nx492), .A0 (nx744), .A1 (RST), .A2 (nx776), .B0 (nx746), .B1 (
          nx734)) ;
    inv01 ix743 (.Y (nx744), .A (Din[10])) ;
    inv01 ix745 (.Y (nx746), .A (Dout[10])) ;
    oai32 ix503 (.Y (nx502), .A0 (nx748), .A1 (RST), .A2 (nx776), .B0 (nx750), .B1 (
          nx734)) ;
    inv01 ix747 (.Y (nx748), .A (Din[11])) ;
    inv01 ix749 (.Y (nx750), .A (Dout[11])) ;
    oai32 ix513 (.Y (nx512), .A0 (nx752), .A1 (RST), .A2 (nx776), .B0 (nx754), .B1 (
          nx734)) ;
    inv01 ix751 (.Y (nx752), .A (Din[12])) ;
    inv01 ix753 (.Y (nx754), .A (Dout[12])) ;
    oai32 ix523 (.Y (nx522), .A0 (nx756), .A1 (RST), .A2 (nx778), .B0 (nx758), .B1 (
          nx734)) ;
    inv01 ix755 (.Y (nx756), .A (Din[13])) ;
    inv01 ix757 (.Y (nx758), .A (Dout[13])) ;
    oai32 ix533 (.Y (nx532), .A0 (nx760), .A1 (RST), .A2 (nx778), .B0 (nx762), .B1 (
          nx764)) ;
    inv01 ix759 (.Y (nx760), .A (Din[14])) ;
    inv01 ix761 (.Y (nx762), .A (Dout[14])) ;
    inv01 ix763 (.Y (nx764), .A (nx566)) ;
    oai32 ix543 (.Y (nx542), .A0 (nx766), .A1 (RST), .A2 (nx778), .B0 (nx768), .B1 (
          nx764)) ;
    inv01 ix765 (.Y (nx766), .A (Din[15])) ;
    inv01 ix767 (.Y (nx768), .A (Dout[15])) ;
    oai32 ix553 (.Y (nx552), .A0 (nx770), .A1 (RST), .A2 (nx778), .B0 (nx772), .B1 (
          nx764)) ;
    inv01 ix769 (.Y (nx770), .A (Din[16])) ;
    inv01 ix771 (.Y (nx772), .A (Dout[16])) ;
    nand02_2x ix633 (.Y (nx704), .A0 (nx564), .A1 (nx778)) ;
    nand02_2x ix635 (.Y (nx734), .A0 (nx564), .A1 (nx778)) ;
    inv02 ix773 (.Y (nx774), .A (EN)) ;
    inv02 ix775 (.Y (nx776), .A (EN)) ;
    inv02 ix777 (.Y (nx778), .A (EN)) ;
endmodule


module booth_adder_17 ( AdderFirstOperand, AdderSecondOperand, BoothOperand, 
                        BoothP, SelectBoothOperandsForAdder, AddPToBoothOperand, 
                        AdderResult, NewBoothP ) ;

    input [16:0]AdderFirstOperand ;
    input [16:0]AdderSecondOperand ;
    input [16:0]BoothOperand ;
    input [16:0]BoothP ;
    input SelectBoothOperandsForAdder ;
    input AddPToBoothOperand ;
    output [16:0]AdderResult ;
    output [16:0]NewBoothP ;

    wire nx6, nx14, nx34, nx42, nx62, nx70, nx78, nx98, nx106, nx114, nx134, 
         nx142, nx150, nx170, nx178, nx186, nx206, nx214, nx222, nx242, nx250, 
         nx258, nx278, nx286, nx294, nx314, nx322, nx330, nx350, nx358, nx366, 
         nx386, nx394, nx402, nx422, nx430, nx438, nx458, nx466, nx474, nx494, 
         nx502, nx510, nx530, nx538, nx546, nx566, nx574, nx582, nx355, nx357, 
         nx369, nx379, nx391, nx401, nx413, nx425, nx435, nx447, nx457, nx467, 
         nx477, nx487, nx499, nx509, nx521, nx604, nx606, nx608, nx610, nx612, 
         nx614, nx616, nx618, nx620, nx622, nx624, nx626, nx628, nx630, nx632, 
         nx634, nx636, nx638, nx640, nx642, nx644, nx646, nx648, nx650, nx652, 
         nx654, nx656, nx658, nx660, nx662, nx664, nx666, nx668, nx670, nx672, 
         nx674, nx676, nx678, nx680, nx682, nx684, nx686, nx688, nx690, nx692, 
         nx694, nx696, nx698, nx700, nx702, nx704, nx706, nx708, nx710, nx712, 
         nx714, nx716, nx718, nx720, nx722, nx724, nx726, nx728, nx730, nx732, 
         nx734, nx736, nx738, nx740, nx742, nx744, nx746, nx748, nx750, nx752, 
         nx754, nx756, nx758, nx760, nx762, nx764, nx766, nx768, nx770, nx772, 
         nx774, nx776, nx778, nx780, nx782, nx784, nx786, nx788, nx790;



    assign NewBoothP[15] = NewBoothP[16] ;
    xor2 ix23 (.Y (AdderResult[0]), .A0 (nx6), .A1 (nx14)) ;
    xor2 ix47 (.Y (AdderResult[1]), .A0 (nx355), .A1 (nx357)) ;
    nand02 ix356 (.Y (nx355), .A0 (nx6), .A1 (nx14)) ;
    xnor2 ix358 (.Y (nx357), .A0 (nx34), .A1 (nx42)) ;
    xnor2 ix83 (.Y (AdderResult[2]), .A0 (nx62), .A1 (nx369)) ;
    xnor2 ix370 (.Y (nx369), .A0 (nx70), .A1 (nx78)) ;
    xnor2 ix119 (.Y (AdderResult[3]), .A0 (nx98), .A1 (nx379)) ;
    mux21_ni ix99 (.Y (nx98), .A0 (nx62), .A1 (nx78), .S0 (nx369)) ;
    xnor2 ix380 (.Y (nx379), .A0 (nx106), .A1 (nx114)) ;
    xnor2 ix155 (.Y (AdderResult[4]), .A0 (nx134), .A1 (nx391)) ;
    mux21_ni ix135 (.Y (nx134), .A0 (nx98), .A1 (nx114), .S0 (nx379)) ;
    xnor2 ix392 (.Y (nx391), .A0 (nx142), .A1 (nx150)) ;
    xnor2 ix191 (.Y (AdderResult[5]), .A0 (nx170), .A1 (nx401)) ;
    mux21_ni ix171 (.Y (nx170), .A0 (nx134), .A1 (nx150), .S0 (nx391)) ;
    xnor2 ix402 (.Y (nx401), .A0 (nx178), .A1 (nx186)) ;
    xnor2 ix227 (.Y (AdderResult[6]), .A0 (nx206), .A1 (nx413)) ;
    mux21_ni ix207 (.Y (nx206), .A0 (nx170), .A1 (nx186), .S0 (nx401)) ;
    xnor2 ix414 (.Y (nx413), .A0 (nx214), .A1 (nx222)) ;
    xnor2 ix263 (.Y (AdderResult[7]), .A0 (nx242), .A1 (nx425)) ;
    mux21_ni ix243 (.Y (nx242), .A0 (nx206), .A1 (nx222), .S0 (nx413)) ;
    xnor2 ix426 (.Y (nx425), .A0 (nx250), .A1 (nx258)) ;
    xnor2 ix299 (.Y (AdderResult[8]), .A0 (nx278), .A1 (nx435)) ;
    mux21_ni ix279 (.Y (nx278), .A0 (nx242), .A1 (nx258), .S0 (nx425)) ;
    xnor2 ix436 (.Y (nx435), .A0 (nx286), .A1 (nx294)) ;
    xnor2 ix335 (.Y (AdderResult[9]), .A0 (nx314), .A1 (nx447)) ;
    mux21_ni ix315 (.Y (nx314), .A0 (nx278), .A1 (nx294), .S0 (nx435)) ;
    xnor2 ix448 (.Y (nx447), .A0 (nx322), .A1 (nx330)) ;
    xnor2 ix371 (.Y (AdderResult[10]), .A0 (nx350), .A1 (nx457)) ;
    mux21_ni ix351 (.Y (nx350), .A0 (nx314), .A1 (nx330), .S0 (nx447)) ;
    xnor2 ix458 (.Y (nx457), .A0 (nx358), .A1 (nx366)) ;
    xnor2 ix407 (.Y (AdderResult[11]), .A0 (nx386), .A1 (nx467)) ;
    mux21_ni ix387 (.Y (nx386), .A0 (nx350), .A1 (nx366), .S0 (nx457)) ;
    xnor2 ix468 (.Y (nx467), .A0 (nx394), .A1 (nx402)) ;
    xnor2 ix443 (.Y (AdderResult[12]), .A0 (nx422), .A1 (nx477)) ;
    mux21_ni ix423 (.Y (nx422), .A0 (nx386), .A1 (nx402), .S0 (nx467)) ;
    xnor2 ix478 (.Y (nx477), .A0 (nx430), .A1 (nx438)) ;
    xnor2 ix479 (.Y (AdderResult[13]), .A0 (nx458), .A1 (nx487)) ;
    mux21_ni ix459 (.Y (nx458), .A0 (nx422), .A1 (nx438), .S0 (nx477)) ;
    xnor2 ix488 (.Y (nx487), .A0 (nx466), .A1 (nx474)) ;
    xnor2 ix515 (.Y (AdderResult[14]), .A0 (nx494), .A1 (nx499)) ;
    mux21_ni ix495 (.Y (nx494), .A0 (nx458), .A1 (nx474), .S0 (nx487)) ;
    xnor2 ix500 (.Y (nx499), .A0 (nx502), .A1 (nx510)) ;
    xnor2 ix551 (.Y (AdderResult[15]), .A0 (nx530), .A1 (nx509)) ;
    mux21_ni ix531 (.Y (nx530), .A0 (nx494), .A1 (nx510), .S0 (nx499)) ;
    xnor2 ix510 (.Y (nx509), .A0 (nx538), .A1 (nx546)) ;
    xnor2 ix587 (.Y (AdderResult[16]), .A0 (nx566), .A1 (nx521)) ;
    mux21_ni ix567 (.Y (nx566), .A0 (nx530), .A1 (nx546), .S0 (nx509)) ;
    xnor2 ix522 (.Y (nx521), .A0 (nx574), .A1 (nx582)) ;
    mux21 ix7 (.Y (nx6), .A0 (nx604), .A1 (nx606), .S0 (nx782)) ;
    inv01 ix603 (.Y (nx604), .A (BoothOperand[0])) ;
    inv01 ix605 (.Y (nx606), .A (AdderFirstOperand[0])) ;
    mux21 ix15 (.Y (nx14), .A0 (nx608), .A1 (nx610), .S0 (nx782)) ;
    inv01 ix607 (.Y (nx608), .A (BoothP[0])) ;
    inv01 ix609 (.Y (nx610), .A (AdderSecondOperand[0])) ;
    mux21 ix51 (.Y (NewBoothP[0]), .A0 (nx612), .A1 (nx614), .S0 (nx776)) ;
    inv01 ix611 (.Y (nx612), .A (AdderResult[1])) ;
    inv01 ix613 (.Y (nx614), .A (BoothP[1])) ;
    mux21 ix35 (.Y (nx34), .A0 (nx616), .A1 (nx618), .S0 (nx782)) ;
    inv01 ix615 (.Y (nx616), .A (BoothOperand[1])) ;
    inv01 ix617 (.Y (nx618), .A (AdderFirstOperand[1])) ;
    mux21 ix43 (.Y (nx42), .A0 (nx614), .A1 (nx620), .S0 (nx782)) ;
    inv01 ix619 (.Y (nx620), .A (AdderSecondOperand[1])) ;
    mux21 ix87 (.Y (NewBoothP[1]), .A0 (nx622), .A1 (nx624), .S0 (nx776)) ;
    inv01 ix621 (.Y (nx622), .A (AdderResult[2])) ;
    inv01 ix623 (.Y (nx624), .A (BoothP[2])) ;
    mux21 ix63 (.Y (nx62), .A0 (nx626), .A1 (nx355), .S0 (nx628)) ;
    inv01 ix625 (.Y (nx626), .A (nx42)) ;
    inv01 ix627 (.Y (nx628), .A (nx357)) ;
    mux21 ix71 (.Y (nx70), .A0 (nx630), .A1 (nx632), .S0 (nx782)) ;
    inv01 ix629 (.Y (nx630), .A (BoothOperand[2])) ;
    inv01 ix631 (.Y (nx632), .A (AdderFirstOperand[2])) ;
    mux21 ix79 (.Y (nx78), .A0 (nx624), .A1 (nx634), .S0 (nx782)) ;
    inv01 ix633 (.Y (nx634), .A (AdderSecondOperand[2])) ;
    mux21 ix123 (.Y (NewBoothP[2]), .A0 (nx636), .A1 (nx638), .S0 (nx776)) ;
    inv01 ix635 (.Y (nx636), .A (AdderResult[3])) ;
    inv01 ix637 (.Y (nx638), .A (BoothP[3])) ;
    mux21 ix107 (.Y (nx106), .A0 (nx640), .A1 (nx642), .S0 (nx782)) ;
    inv01 ix639 (.Y (nx640), .A (BoothOperand[3])) ;
    inv01 ix641 (.Y (nx642), .A (AdderFirstOperand[3])) ;
    mux21 ix115 (.Y (nx114), .A0 (nx638), .A1 (nx644), .S0 (nx784)) ;
    inv01 ix643 (.Y (nx644), .A (AdderSecondOperand[3])) ;
    mux21 ix159 (.Y (NewBoothP[3]), .A0 (nx646), .A1 (nx648), .S0 (nx776)) ;
    inv01 ix645 (.Y (nx646), .A (AdderResult[4])) ;
    inv01 ix647 (.Y (nx648), .A (BoothP[4])) ;
    mux21 ix143 (.Y (nx142), .A0 (nx650), .A1 (nx652), .S0 (nx784)) ;
    inv01 ix649 (.Y (nx650), .A (BoothOperand[4])) ;
    inv01 ix651 (.Y (nx652), .A (AdderFirstOperand[4])) ;
    mux21 ix151 (.Y (nx150), .A0 (nx648), .A1 (nx654), .S0 (nx784)) ;
    inv01 ix653 (.Y (nx654), .A (AdderSecondOperand[4])) ;
    mux21 ix195 (.Y (NewBoothP[4]), .A0 (nx656), .A1 (nx658), .S0 (nx776)) ;
    inv01 ix655 (.Y (nx656), .A (AdderResult[5])) ;
    inv01 ix657 (.Y (nx658), .A (BoothP[5])) ;
    mux21 ix179 (.Y (nx178), .A0 (nx660), .A1 (nx662), .S0 (nx784)) ;
    inv01 ix659 (.Y (nx660), .A (BoothOperand[5])) ;
    inv01 ix661 (.Y (nx662), .A (AdderFirstOperand[5])) ;
    mux21 ix187 (.Y (nx186), .A0 (nx658), .A1 (nx664), .S0 (nx784)) ;
    inv01 ix663 (.Y (nx664), .A (AdderSecondOperand[5])) ;
    mux21 ix231 (.Y (NewBoothP[5]), .A0 (nx666), .A1 (nx668), .S0 (nx776)) ;
    inv01 ix665 (.Y (nx666), .A (AdderResult[6])) ;
    inv01 ix667 (.Y (nx668), .A (BoothP[6])) ;
    mux21 ix215 (.Y (nx214), .A0 (nx670), .A1 (nx672), .S0 (nx784)) ;
    inv01 ix669 (.Y (nx670), .A (BoothOperand[6])) ;
    inv01 ix671 (.Y (nx672), .A (AdderFirstOperand[6])) ;
    mux21 ix223 (.Y (nx222), .A0 (nx668), .A1 (nx674), .S0 (nx784)) ;
    inv01 ix673 (.Y (nx674), .A (AdderSecondOperand[6])) ;
    mux21 ix267 (.Y (NewBoothP[6]), .A0 (nx676), .A1 (nx678), .S0 (nx776)) ;
    inv01 ix675 (.Y (nx676), .A (AdderResult[7])) ;
    inv01 ix677 (.Y (nx678), .A (BoothP[7])) ;
    mux21 ix251 (.Y (nx250), .A0 (nx680), .A1 (nx682), .S0 (nx786)) ;
    inv01 ix679 (.Y (nx680), .A (BoothOperand[7])) ;
    inv01 ix681 (.Y (nx682), .A (AdderFirstOperand[7])) ;
    mux21 ix259 (.Y (nx258), .A0 (nx678), .A1 (nx684), .S0 (nx786)) ;
    inv01 ix683 (.Y (nx684), .A (AdderSecondOperand[7])) ;
    mux21 ix303 (.Y (NewBoothP[7]), .A0 (nx686), .A1 (nx688), .S0 (nx778)) ;
    inv01 ix685 (.Y (nx686), .A (AdderResult[8])) ;
    inv01 ix687 (.Y (nx688), .A (BoothP[8])) ;
    mux21 ix287 (.Y (nx286), .A0 (nx690), .A1 (nx692), .S0 (nx786)) ;
    inv01 ix689 (.Y (nx690), .A (BoothOperand[8])) ;
    inv01 ix691 (.Y (nx692), .A (AdderFirstOperand[8])) ;
    mux21 ix295 (.Y (nx294), .A0 (nx688), .A1 (nx694), .S0 (nx786)) ;
    inv01 ix693 (.Y (nx694), .A (AdderSecondOperand[8])) ;
    mux21 ix339 (.Y (NewBoothP[8]), .A0 (nx696), .A1 (nx698), .S0 (nx778)) ;
    inv01 ix695 (.Y (nx696), .A (AdderResult[9])) ;
    inv01 ix697 (.Y (nx698), .A (BoothP[9])) ;
    mux21 ix323 (.Y (nx322), .A0 (nx700), .A1 (nx702), .S0 (nx786)) ;
    inv01 ix699 (.Y (nx700), .A (BoothOperand[9])) ;
    inv01 ix701 (.Y (nx702), .A (AdderFirstOperand[9])) ;
    mux21 ix331 (.Y (nx330), .A0 (nx698), .A1 (nx704), .S0 (nx786)) ;
    inv01 ix703 (.Y (nx704), .A (AdderSecondOperand[9])) ;
    mux21 ix375 (.Y (NewBoothP[9]), .A0 (nx706), .A1 (nx708), .S0 (nx778)) ;
    inv01 ix705 (.Y (nx706), .A (AdderResult[10])) ;
    inv01 ix707 (.Y (nx708), .A (BoothP[10])) ;
    mux21 ix359 (.Y (nx358), .A0 (nx710), .A1 (nx712), .S0 (nx786)) ;
    inv01 ix709 (.Y (nx710), .A (BoothOperand[10])) ;
    inv01 ix711 (.Y (nx712), .A (AdderFirstOperand[10])) ;
    mux21 ix367 (.Y (nx366), .A0 (nx708), .A1 (nx714), .S0 (nx788)) ;
    inv01 ix713 (.Y (nx714), .A (AdderSecondOperand[10])) ;
    mux21 ix411 (.Y (NewBoothP[10]), .A0 (nx716), .A1 (nx718), .S0 (nx778)) ;
    inv01 ix715 (.Y (nx716), .A (AdderResult[11])) ;
    inv01 ix717 (.Y (nx718), .A (BoothP[11])) ;
    mux21 ix395 (.Y (nx394), .A0 (nx720), .A1 (nx722), .S0 (nx788)) ;
    inv01 ix719 (.Y (nx720), .A (BoothOperand[11])) ;
    inv01 ix721 (.Y (nx722), .A (AdderFirstOperand[11])) ;
    mux21 ix403 (.Y (nx402), .A0 (nx718), .A1 (nx724), .S0 (nx788)) ;
    inv01 ix723 (.Y (nx724), .A (AdderSecondOperand[11])) ;
    mux21 ix447 (.Y (NewBoothP[11]), .A0 (nx726), .A1 (nx728), .S0 (nx778)) ;
    inv01 ix725 (.Y (nx726), .A (AdderResult[12])) ;
    inv01 ix727 (.Y (nx728), .A (BoothP[12])) ;
    mux21 ix431 (.Y (nx430), .A0 (nx730), .A1 (nx732), .S0 (nx788)) ;
    inv01 ix729 (.Y (nx730), .A (BoothOperand[12])) ;
    inv01 ix731 (.Y (nx732), .A (AdderFirstOperand[12])) ;
    mux21 ix439 (.Y (nx438), .A0 (nx728), .A1 (nx734), .S0 (nx788)) ;
    inv01 ix733 (.Y (nx734), .A (AdderSecondOperand[12])) ;
    mux21 ix483 (.Y (NewBoothP[12]), .A0 (nx736), .A1 (nx738), .S0 (nx778)) ;
    inv01 ix735 (.Y (nx736), .A (AdderResult[13])) ;
    inv01 ix737 (.Y (nx738), .A (BoothP[13])) ;
    mux21 ix467 (.Y (nx466), .A0 (nx740), .A1 (nx742), .S0 (nx788)) ;
    inv01 ix739 (.Y (nx740), .A (BoothOperand[13])) ;
    inv01 ix741 (.Y (nx742), .A (AdderFirstOperand[13])) ;
    mux21 ix475 (.Y (nx474), .A0 (nx738), .A1 (nx744), .S0 (nx788)) ;
    inv01 ix743 (.Y (nx744), .A (AdderSecondOperand[13])) ;
    mux21 ix519 (.Y (NewBoothP[13]), .A0 (nx746), .A1 (nx748), .S0 (nx778)) ;
    inv01 ix745 (.Y (nx746), .A (AdderResult[14])) ;
    inv01 ix747 (.Y (nx748), .A (BoothP[14])) ;
    mux21 ix503 (.Y (nx502), .A0 (nx750), .A1 (nx752), .S0 (nx790)) ;
    inv01 ix749 (.Y (nx750), .A (BoothOperand[14])) ;
    inv01 ix751 (.Y (nx752), .A (AdderFirstOperand[14])) ;
    mux21 ix511 (.Y (nx510), .A0 (nx748), .A1 (nx754), .S0 (nx790)) ;
    inv01 ix753 (.Y (nx754), .A (AdderSecondOperand[14])) ;
    mux21 ix555 (.Y (NewBoothP[14]), .A0 (nx756), .A1 (nx758), .S0 (nx780)) ;
    inv01 ix755 (.Y (nx756), .A (AdderResult[15])) ;
    inv01 ix757 (.Y (nx758), .A (BoothP[15])) ;
    mux21 ix539 (.Y (nx538), .A0 (nx760), .A1 (nx762), .S0 (nx790)) ;
    inv01 ix759 (.Y (nx760), .A (BoothOperand[15])) ;
    inv01 ix761 (.Y (nx762), .A (AdderFirstOperand[15])) ;
    mux21 ix547 (.Y (nx546), .A0 (nx758), .A1 (nx764), .S0 (nx790)) ;
    inv01 ix763 (.Y (nx764), .A (AdderSecondOperand[15])) ;
    mux21 ix591 (.Y (NewBoothP[16]), .A0 (nx766), .A1 (nx768), .S0 (nx780)) ;
    inv01 ix765 (.Y (nx766), .A (AdderResult[16])) ;
    inv01 ix767 (.Y (nx768), .A (BoothP[16])) ;
    mux21 ix575 (.Y (nx574), .A0 (nx770), .A1 (nx772), .S0 (nx790)) ;
    inv01 ix769 (.Y (nx770), .A (BoothOperand[16])) ;
    inv01 ix771 (.Y (nx772), .A (AdderFirstOperand[16])) ;
    mux21 ix583 (.Y (nx582), .A0 (nx768), .A1 (nx774), .S0 (nx790)) ;
    inv01 ix773 (.Y (nx774), .A (AdderSecondOperand[16])) ;
    inv02 ix775 (.Y (nx776), .A (AddPToBoothOperand)) ;
    inv02 ix777 (.Y (nx778), .A (AddPToBoothOperand)) ;
    inv02 ix779 (.Y (nx780), .A (AddPToBoothOperand)) ;
    inv02 ix781 (.Y (nx782), .A (SelectBoothOperandsForAdder)) ;
    inv02 ix783 (.Y (nx784), .A (SelectBoothOperandsForAdder)) ;
    inv02 ix785 (.Y (nx786), .A (SelectBoothOperandsForAdder)) ;
    inv02 ix787 (.Y (nx788), .A (SelectBoothOperandsForAdder)) ;
    inv02 ix789 (.Y (nx790), .A (SelectBoothOperandsForAdder)) ;
endmodule


module counter_4 ( CLK, RST, EN, Dout ) ;

    input CLK ;
    input RST ;
    input EN ;
    inout [3:0]Dout ;

    wire nx6, nx12, nx18, nx81, nx91, nx101, nx111, nx133, nx139;
    wire [3:0] \$dummy ;




    dffr reg_Dout_0 (.Q (Dout[0]), .QB (\$dummy [0]), .D (nx81), .CLK (CLK), .R (
         RST)) ;
    dffr reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [1]), .D (nx91), .CLK (CLK), .R (
         RST)) ;
    mux21_ni ix92 (.Y (nx91), .A0 (Dout[1]), .A1 (nx6), .S0 (EN)) ;
    xor2 ix7 (.Y (nx6), .A0 (Dout[1]), .A1 (Dout[0])) ;
    dffr reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [2]), .D (nx101), .CLK (CLK), .R (
         RST)) ;
    mux21_ni ix102 (.Y (nx101), .A0 (Dout[2]), .A1 (nx12), .S0 (EN)) ;
    xnor2 ix13 (.Y (nx12), .A0 (Dout[2]), .A1 (nx133)) ;
    nand02 ix134 (.Y (nx133), .A0 (Dout[1]), .A1 (Dout[0])) ;
    dffr reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [3]), .D (nx111), .CLK (CLK), .R (
         RST)) ;
    mux21_ni ix112 (.Y (nx111), .A0 (Dout[3]), .A1 (nx18), .S0 (EN)) ;
    xnor2 ix19 (.Y (nx18), .A0 (Dout[3]), .A1 (nx139)) ;
    nand03 ix140 (.Y (nx139), .A0 (Dout[2]), .A1 (Dout[1]), .A2 (Dout[0])) ;
    xor2 ix82 (.Y (nx81), .A0 (Dout[0]), .A1 (EN)) ;
endmodule


module flip_flop_falling ( CLK, RST, Din, Dout ) ;

    input CLK ;
    input RST ;
    input Din ;
    output Dout ;

    wire NOT_CLK;
    wire [0:0] \$dummy ;




    dffr reg_Dout (.Q (Dout), .QB (\$dummy [0]), .D (Din), .CLK (NOT_CLK), .R (
         RST)) ;
    inv01 ix59 (.Y (NOT_CLK), .A (CLK)) ;
endmodule


module flip_flop_rising ( CLK, RST, Din, Dout ) ;

    input CLK ;
    input RST ;
    input Din ;
    output Dout ;

    wire [0:0] \$dummy ;




    dffr reg_Dout (.Q (Dout), .QB (\$dummy [0]), .D (Din), .CLK (CLK), .R (RST)
         ) ;
endmodule


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
         nx829, nx889, nx891, nx893, nx895;



    assign MemAddr[16] = MemWR ;
    register_edge_falling_5 STATE (.CLK (CLK), .RST (Restart), .EN (
                            FilterAddr_17), .Din ({NxtState_4,NxtState_3,
                            NxtState_2,NxtState_1,NxtState_0}), .Dout ({Done,
                            Calc,MemWR,CacheWindowWR,CacheFilterWR})) ;
    register_edge_falling_8 ROW (.CLK (CLK), .RST (CntRST), .EN (CntEN), .Din ({
                            NxtRow_7,NxtRow_6,NxtRow_5,NxtRow_4,NxtRow_3,
                            NxtRow_2,NxtRow_1,NxtRow_0}), .Dout ({CurRow_7,
                            CurRow_6,CurRow_5,CurRow_4,CurRow_3,CurRow_2,
                            CurRow_1,CurRow_0})) ;
    register_edge_falling_8 COL (.CLK (CLK), .RST (CntRST), .EN (CntEN), .Din ({
                            NxtCol_7,NxtCol_6,NxtCol_5,NxtCol_4,NxtCol_3,
                            NxtCol_2,NxtCol_1,NxtCol_0}), .Dout ({CurCol_7,
                            CurCol_6,CurCol_5,CurCol_4,CurCol_3,CurCol_2,
                            CurCol_1,CurCol_0})) ;
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
    ao21 ix565 (.Y (CntRST), .A0 (CacheFilterWR), .A1 (NxtState_1), .B0 (Restart
         )) ;
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
           nx893), .C0 (nx685)) ;
    xnor2 ix672 (.Y (nx671), .A0 (nx673), .A1 (nx675)) ;
    nand02 ix674 (.Y (nx673), .A0 (nx638), .A1 (CurCol_0)) ;
    xnor2 ix676 (.Y (nx675), .A0 (FilterSize), .A1 (CurCol_1)) ;
    nand02 ix678 (.Y (nx677), .A0 (Stride), .A1 (nx791)) ;
    inv01 ix680 (.Y (nx679), .A (CurCol_0)) ;
    oai21 ix686 (.Y (nx685), .A0 (CurCol_0), .A1 (nx638), .B0 (nx142)) ;
    aoi21 ix143 (.Y (nx142), .A0 (nx638), .A1 (CurCol_0), .B0 (nx895)) ;
    oai222 ix183 (.Y (MemAddr[1]), .A0 (nx691), .A1 (nx807), .B0 (nx599), .B1 (
           nx893), .C0 (nx671), .C1 (nx895)) ;
    xor2 ix692 (.Y (nx691), .A0 (CurCol_2), .A1 (nx693)) ;
    oai21 ix694 (.Y (nx693), .A0 (FilterSize), .A1 (CurCol_0), .B0 (CurCol_1)) ;
    oai222 ix201 (.Y (MemAddr[2]), .A0 (nx691), .A1 (nx895), .B0 (nx696), .B1 (
           nx807), .C0 (nx699), .C1 (nx893)) ;
    oai21 ix697 (.Y (nx696), .A0 (nx168), .A1 (CurCol_3), .B0 (nx701)) ;
    inv01 ix700 (.Y (nx699), .A (CurCol_2)) ;
    nand02 ix702 (.Y (nx701), .A0 (CurCol_3), .A1 (nx168)) ;
    oai221 ix229 (.Y (MemAddr[3]), .A0 (nx696), .A1 (nx895), .B0 (nx606), .B1 (
           nx893), .C0 (nx704)) ;
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
    oai221 ix273 (.Y (MemAddr[5]), .A0 (nx711), .A1 (nx895), .B0 (nx613), .B1 (
           nx893), .C0 (nx723)) ;
    aoi22 ix724 (.Y (nx723), .A0 (CurRow_2), .A1 (MemAddr[17]), .B0 (nx260), .B1 (
          nx150)) ;
    xnor2 ix261 (.Y (nx260), .A0 (CurCol_6), .A1 (nx716)) ;
    oai321 ix289 (.Y (MemAddr[6]), .A0 (nx727), .A1 (nx795), .A2 (nx793), .B0 (
           nx729), .B1 (nx807), .C0 (nx732)) ;
    inv01 ix728 (.Y (nx727), .A (CurRow_3)) ;
    xnor2 ix730 (.Y (nx729), .A0 (nx254), .A1 (CurCol_7)) ;
    aoi22 ix733 (.Y (nx732), .A0 (CurCol_6), .A1 (nx823), .B0 (nx260), .B1 (
          nx829)) ;
    oai21 ix299 (.Y (MemAddr[7]), .A0 (nx729), .A1 (nx895), .B0 (nx735)) ;
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
    oai221 ix387 (.Y (MemAddr[10]), .A0 (nx749), .A1 (nx895), .B0 (nx756), .B1 (
           nx893), .C0 (nx758)) ;
    inv01 ix757 (.Y (nx756), .A (CurRow_2)) ;
    aoi22 ix759 (.Y (nx758), .A0 (CurRow_7), .A1 (MemAddr[17]), .B0 (nx374), .B1 (
          nx150)) ;
    nand02 ix347 (.Y (nx346), .A0 (nx751), .A1 (nx756)) ;
    oai222 ix405 (.Y (MemAddr[11]), .A0 (nx763), .A1 (nx817), .B0 (nx767), .B1 (
           nx807), .C0 (nx727), .C1 (nx893)) ;
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
    oai21 ix511 (.Y (CntEN), .A0 (nx502), .A1 (nx889), .B0 (nx891)) ;
    inv01 ix888 (.Y (nx889), .A (MemRD)) ;
    inv01 ix890 (.Y (nx891), .A (nx791)) ;
    oai22 ix459 (.Y (MemAddr[15]), .A0 (nx640), .A1 (nx811), .B0 (nx781), .B1 (
          nx815)) ;
    xnor2 ix57 (.Y (NxtRow_1), .A0 (CurRow_1), .A1 (NxtRow_0)) ;
    nand02 ix623 (.Y (nx622), .A0 (CurRow_1), .A1 (CurRow_0)) ;
    nor02_2x ix741 (.Y (nx740), .A0 (FilterSize), .A1 (CurRow_0)) ;
    xnor2 ix321 (.Y (nx320), .A0 (FilterSize), .A1 (CurRow_1)) ;
    inv02 ix892 (.Y (nx893), .A (nx124)) ;
    inv02 ix894 (.Y (nx895), .A (nx138)) ;
endmodule


module register_edge_falling_8 ( CLK, RST, EN, Din, Dout ) ;

    input CLK ;
    input RST ;
    input EN ;
    input [7:0]Din ;
    output [7:0]Dout ;

    wire NOT_CLK, nx212, nx222, nx232, nx242, nx252, nx262, nx272, nx282, nx296, 
         nx327, nx335, nx337, nx389, nx391, nx393, nx397, nx399, nx401, nx403, 
         nx405, nx407, nx409, nx411, nx413, nx415, nx417, nx419, nx421, nx423, 
         nx425, nx427, nx429, nx431, nx433;
    wire [7:0] \$dummy ;




    dff reg_Dout_0 (.Q (Dout[0]), .QB (\$dummy [0]), .D (nx212), .CLK (nx327)) ;
    nor02_2x ix297 (.Y (nx296), .A0 (nx427), .A1 (nx335)) ;
    inv01 ix299 (.Y (NOT_CLK), .A (CLK)) ;
    dff reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [1]), .D (nx222), .CLK (nx327)) ;
    dff reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [2]), .D (nx232), .CLK (nx327)) ;
    dff reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [3]), .D (nx242), .CLK (nx327)) ;
    dff reg_Dout_4 (.Q (Dout[4]), .QB (\$dummy [4]), .D (nx252), .CLK (nx327)) ;
    dff reg_Dout_5 (.Q (Dout[5]), .QB (\$dummy [5]), .D (nx262), .CLK (NOT_CLK)
        ) ;
    dff reg_Dout_6 (.Q (Dout[6]), .QB (\$dummy [6]), .D (nx272), .CLK (NOT_CLK)
        ) ;
    dff reg_Dout_7 (.Q (Dout[7]), .QB (\$dummy [7]), .D (nx282), .CLK (NOT_CLK)
        ) ;
    inv01 ix326 (.Y (nx327), .A (CLK)) ;
    buf02 ix334 (.Y (nx335), .A (EN)) ;
    buf02 ix336 (.Y (nx337), .A (EN)) ;
    oai32 ix213 (.Y (nx212), .A0 (nx389), .A1 (nx427), .A2 (nx391), .B0 (nx393)
          , .B1 (nx431)) ;
    inv01 ix388 (.Y (nx389), .A (Din[0])) ;
    inv02 ix390 (.Y (nx391), .A (nx335)) ;
    inv01 ix392 (.Y (nx393), .A (Dout[0])) ;
    oai32 ix223 (.Y (nx222), .A0 (nx397), .A1 (nx427), .A2 (nx391), .B0 (nx399)
          , .B1 (nx431)) ;
    inv01 ix396 (.Y (nx397), .A (Din[1])) ;
    inv01 ix398 (.Y (nx399), .A (Dout[1])) ;
    oai32 ix233 (.Y (nx232), .A0 (nx401), .A1 (nx427), .A2 (nx391), .B0 (nx403)
          , .B1 (nx431)) ;
    inv01 ix400 (.Y (nx401), .A (Din[2])) ;
    inv01 ix402 (.Y (nx403), .A (Dout[2])) ;
    oai32 ix243 (.Y (nx242), .A0 (nx405), .A1 (nx427), .A2 (nx391), .B0 (nx407)
          , .B1 (nx431)) ;
    inv01 ix404 (.Y (nx405), .A (Din[3])) ;
    inv01 ix406 (.Y (nx407), .A (Dout[3])) ;
    oai32 ix253 (.Y (nx252), .A0 (nx409), .A1 (nx427), .A2 (nx391), .B0 (nx411)
          , .B1 (nx431)) ;
    inv01 ix408 (.Y (nx409), .A (Din[4])) ;
    inv01 ix410 (.Y (nx411), .A (Dout[4])) ;
    oai32 ix263 (.Y (nx262), .A0 (nx413), .A1 (nx427), .A2 (nx391), .B0 (nx415)
          , .B1 (nx431)) ;
    inv01 ix412 (.Y (nx413), .A (Din[5])) ;
    inv01 ix414 (.Y (nx415), .A (Dout[5])) ;
    oai32 ix273 (.Y (nx272), .A0 (nx417), .A1 (nx429), .A2 (nx419), .B0 (nx421)
          , .B1 (nx431)) ;
    inv01 ix416 (.Y (nx417), .A (Din[6])) ;
    inv01 ix418 (.Y (nx419), .A (nx337)) ;
    inv01 ix420 (.Y (nx421), .A (Dout[6])) ;
    oai32 ix283 (.Y (nx282), .A0 (nx423), .A1 (nx429), .A2 (nx419), .B0 (nx425)
          , .B1 (nx433)) ;
    inv01 ix422 (.Y (nx423), .A (Din[7])) ;
    inv01 ix424 (.Y (nx425), .A (Dout[7])) ;
    buf02 ix426 (.Y (nx427), .A (RST)) ;
    buf02 ix428 (.Y (nx429), .A (RST)) ;
    inv02 ix430 (.Y (nx431), .A (nx296)) ;
    inv02 ix432 (.Y (nx433), .A (nx296)) ;
endmodule


module register_edge_falling_5 ( CLK, RST, EN, Din, Dout ) ;

    input CLK ;
    input RST ;
    input EN ;
    input [4:0]Din ;
    output [4:0]Dout ;

    wire NOT_CLK, nx152, nx162, nx172, nx182, nx192, nx206, nx282, nx284, nx286, 
         nx288, nx290, nx292, nx294, nx296, nx298, nx300, nx302, nx304, nx306;
    wire [4:0] \$dummy ;




    dff reg_Dout_0 (.Q (Dout[0]), .QB (\$dummy [0]), .D (nx152), .CLK (NOT_CLK)
        ) ;
    nor02_2x ix207 (.Y (nx206), .A0 (nx306), .A1 (EN)) ;
    inv01 ix209 (.Y (NOT_CLK), .A (CLK)) ;
    dff reg_Dout_1 (.Q (Dout[1]), .QB (\$dummy [1]), .D (nx162), .CLK (NOT_CLK)
        ) ;
    dff reg_Dout_2 (.Q (Dout[2]), .QB (\$dummy [2]), .D (nx172), .CLK (NOT_CLK)
        ) ;
    dff reg_Dout_3 (.Q (Dout[3]), .QB (\$dummy [3]), .D (nx182), .CLK (NOT_CLK)
        ) ;
    dff reg_Dout_4 (.Q (Dout[4]), .QB (\$dummy [4]), .D (nx192), .CLK (NOT_CLK)
        ) ;
    oai32 ix153 (.Y (nx152), .A0 (nx282), .A1 (nx306), .A2 (nx284), .B0 (nx286)
          , .B1 (nx288)) ;
    inv01 ix281 (.Y (nx282), .A (Din[0])) ;
    inv02 ix283 (.Y (nx284), .A (EN)) ;
    inv01 ix285 (.Y (nx286), .A (Dout[0])) ;
    inv02 ix287 (.Y (nx288), .A (nx206)) ;
    oai32 ix163 (.Y (nx162), .A0 (nx290), .A1 (nx306), .A2 (nx284), .B0 (nx292)
          , .B1 (nx288)) ;
    inv01 ix289 (.Y (nx290), .A (Din[1])) ;
    inv01 ix291 (.Y (nx292), .A (Dout[1])) ;
    oai32 ix173 (.Y (nx172), .A0 (nx294), .A1 (nx306), .A2 (nx284), .B0 (nx296)
          , .B1 (nx288)) ;
    inv01 ix293 (.Y (nx294), .A (Din[2])) ;
    inv01 ix295 (.Y (nx296), .A (Dout[2])) ;
    oai32 ix183 (.Y (nx182), .A0 (nx298), .A1 (nx306), .A2 (nx284), .B0 (nx300)
          , .B1 (nx288)) ;
    inv01 ix297 (.Y (nx298), .A (Din[3])) ;
    inv01 ix299 (.Y (nx300), .A (Dout[3])) ;
    oai32 ix193 (.Y (nx192), .A0 (nx302), .A1 (nx306), .A2 (nx284), .B0 (nx304)
          , .B1 (nx288)) ;
    inv01 ix301 (.Y (nx302), .A (Din[4])) ;
    inv01 ix303 (.Y (nx304), .A (Dout[4])) ;
    buf02 ix305 (.Y (nx306), .A (RST)) ;
endmodule

