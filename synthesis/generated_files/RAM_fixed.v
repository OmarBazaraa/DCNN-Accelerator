module RAM ( input CLK, input WR, input [17:0] Address, input [7:0] Din, output [39:0] Dout );

reg [7:0] Mem [0:262143];

initial begin
	$readmemh("memory.list", Mem);
end

assign Dout = {Mem[Address + 4], Mem[Address + 3], Mem[Address + 2], Mem[Address + 1], Mem[Address]};

always @(CLK or WR)
  if (!CLK && WR)
    Mem[Address] = Din;

endmodule