module tb;

parameter N = 3, M = 5; 

wire [(2**M)*N-1:0] vote;
wire [N-1:0] winner;	

voting #(.N(N), .M(M)) uut(
	.vote(vote),
	.winner(winner)	
);

wire [N-1:0] V [2**M-1:0];
genvar i;
generate
	for (i = 0; i < 2**M; i = i + 1)
		assign vote[(i+1)*N-1:i*N] = V[i];
endgenerate

//winner is 5
assign V[0] =  5; 
assign V[1] =  7; 
assign V[2] =  5; 
assign V[3] =  4;
assign V[4] =  0; 
assign V[5] =  7; 
assign V[6] =  0; 
assign V[7] =  5;
assign V[8] =  3; 
assign V[9] =  3; 
assign V[10] = 1; 
assign V[11] = 2;
assign V[12] = 2; 
assign V[13] = 1; 
assign V[14] = 4; 
assign V[15] = 2;
assign V[16] = 3; 
assign V[17] = 5; 
assign V[18] = 6; 
assign V[19] = 0;
assign V[20] = 5; 
assign V[21] = 5; 
assign V[22] = 7; 
assign V[23] = 1;
assign V[24] = 6; 
assign V[25] = 3; 
assign V[26] = 5; 
assign V[27] = 5; 
assign V[28] = 3; 
assign V[29] = 1; 
assign V[30] = 7; 
assign V[31] = 2; 

endmodule

