module tb_auction;

parameter N = 3, W = 3;

wire [(2**N)*W-1:0] bid;
wire [N-1:0] winner;

wire [W-1:0] B [2**N-1:0];
genvar i;
generate
	for (i = 0; i < 2**N; i = i + 1)
		assign bid[(i+1)*W-1:i*W] = B[i]; 
endgenerate

assign B[0] = 6; //1
assign B[1] = 0; //7
assign B[2] = 1; //6
assign B[3] = 4; //3
assign B[4] = 3; //4
assign B[5] = 7; //0
assign B[6] = 5; //2
assign B[7] = 2; //5

auction #(.N(N), .W(W)) uut(
	.bid(bid),
	.winner(winner)
);

endmodule

