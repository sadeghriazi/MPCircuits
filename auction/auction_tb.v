`timescale 1ps/1ps

module auction_tb;

parameter N = 3, W = 3;

wire [(2**N)*W-1:0] bid;
wire [N-1:0] winner;
wire [W-1:0] winning_bid;

reg [W-1:0] B [2**N-1:0];
genvar i;
generate
	for (i = 0; i < 2**N; i = i + 1)
		assign bid[(i+1)*W-1:i*W] = B[i]; 
endgenerate

reg clk;
always #5 clk = ~clk;

initial begin
  clk = 0;
  
  B[0] = 6; //1
  B[1] = 0; //7
  B[2] = 1; //6
  B[3] = 4; //3
  B[4] = 7; //4
  B[5] = 3; //0
  B[6] = 5; //2
  B[7] = 2; //5
  
  #20
  B[0] = 7; //1
  B[1] = 0; //7
  B[2] = 1; //6
  B[3] = 4; //3
  B[4] = 6; //4
  B[5] = 3; //0
  B[6] = 5; //2
  B[7] = 2; //5
  
  #20
  B[0] = 6; //1
  B[1] = 0; //7
  B[2] = 1; //6
  B[3] = 7; //3
  B[4] = 4; //4
  B[5] = 3; //0
  B[6] = 5; //2
  B[7] = 2; //5
  
  #20
  B[0] = 6; //1
  B[1] = 0; //7
  B[2] = 1; //6
  B[3] = 4; //3
  B[4] = 5; //4
  B[5] = 3; //0
  B[6] = 5; //2
  B[7] = 7; //5
  
  #20
  B[0] = 6; //1
  B[1] = 7; //7
  B[2] = 1; //6
  B[3] = 4; //3
  B[4] = 7; //4
  B[5] = 3; //0
  B[6] = 5; //2
  B[7] = 2; //5

  #20
  $stop;
end

auction #(.N(N), .W(W)) dut(
	.bid(bid),
	.winner(winner),
	.winning_bid(winning_bid)
);

endmodule
