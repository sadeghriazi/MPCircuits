
`timescale 1ps/1ps

module voting_tb;

parameter N = 3, M = 3;

wire [(2**M)*N-1:0] vote;
wire [N-1:0] winner;

reg [N-1:0] V [2**M-1:0];
genvar i;
generate
	for (i = 0; i < 2**M; i = i + 1)
		assign vote[(i+1)*N-1:i*N] = V[i]; 
endgenerate

reg clk;
always #5 clk = ~clk;

initial begin
  clk = 0;
  
  V[0] = 6; //1
  V[1] = 6; //7
  V[2] = 1; //6
  V[3] = 1; //3
  V[4] = 7; //4
  V[5] = 7; //0
  V[6] = 7; //2
  V[7] = 2; //5
  
  #20
  V[0] = 7; //1
  V[1] = 7; //7
  V[2] = 1; //6
  V[3] = 4; //3
  V[4] = 4; //4
  V[5] = 4; //0
  V[6] = 4; //2
  V[7] = 2; //5
  
  #20
  V[0] = 6; //1
  V[1] = 0; //7
  V[2] = 1; //6
  V[3] = 7; //3
  V[4] = 4; //4
  V[5] = 3; //0
  V[6] = 2; //2
  V[7] = 2; //5
  
  #20
  V[0] = 6; //1
  V[1] = 6; //7
  V[2] = 1; //6
  V[3] = 4; //3
  V[4] = 5; //4
  V[5] = 3; //0
  V[6] = 5; //2
  V[7] = 7; //5
  
  #20
  V[0] = 6; //1
  V[1] = 7; //7
  V[2] = 1; //6
  V[3] = 7; //3
  V[4] = 7; //4
  V[5] = 7; //0
  V[6] = 7; //2
  V[7] = 7; //5

  #20
  $stop;
end

voting #(.N(N), .M(M)) dut(
	.vote(vote),
	.winner(winner)
);

endmodule
