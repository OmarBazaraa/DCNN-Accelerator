//
// Verilog description for cell full_adder, 
// Wed May  9 07:35:55 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module full_adder ( A, B, Cin, Sum, Cout ) ;

    input A ;
    input B ;
    input Cin ;
    output Sum ;
    output Cout ;

    wire nx0, nx113;



    ao22 ix7 (.Y (Cout), .A0 (B), .A1 (A), .B0 (Cin), .B1 (nx0)) ;
    xnor2 ix9 (.Y (Sum), .A0 (nx113), .A1 (Cin)) ;
    xnor2 ix114 (.Y (nx113), .A0 (A), .A1 (B)) ;
    inv01 ix1 (.Y (nx0), .A (nx113)) ;
endmodule

