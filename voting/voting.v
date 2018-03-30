module voting #(parameter N = 2, M = 2)( //2**N candidates, 2**M voters
	input [(2**M)*N-1:0] vote,
	output [N-1:0] winner	
);

function integer log2;
	input [31:0] value;
	reg [31:0] temp;
begin
	temp = value;
	for (log2=0; temp>0; log2=log2+1)
		temp = temp>>1;
end
endfunction

wire [N-1:0] V [2**M-1:0];
genvar i;
generate
	for (i = 0; i < 2**M; i = i + 1)
		assign V[i] = vote[(i+1)*N-1:i*N]; 
endgenerate

genvar j, k;

wire [2**N-1:0] dV [2**M-1:0];
wire [M:0] count [2**N-1:0][2**M-1:0];

decoder #(.N(N)) decoder_(
		.e(V[0]),
		.d(dV[0]) 
	);
generate
	for (k = 0; k < 2**N; k = k + 1)
		assign count[k][0][0] = dV[0][k];
endgenerate


generate
for (j = 1; j < 2**M; j = j + 1)
	begin:one_vote
		decoder #(.N(N)) decoder_(
			.e(V[j]),
			.d(dV[j]) 
		);	
		for (k = 0; k < 2**N; k = k + 1)
			begin:one_count
				ADD #(.N(log2(j))) ADD__(
					.A(count[k][j-1][log2(j)-1:0]),
					.B({{(log2(j)-1){1'b0}}, dV[j][k]}),
					.CI(1'b0),
					.S(count[k][j][log2(j)-1:0]),
					.CO(count[k][j][log2(j)])
				);					
			end	
	end
endgenerate

wire [M:0] C [2**N-1:0];
generate
	for (k = 0; k < 2**N; k = k + 1)
		assign C[k] = count[k][2**M-1];
endgenerate

wire [(2**N)*(M+1)-1:0] bid;

generate
	for (i = 0; i < 2**N; i = i + 1)
		assign bid[(i+1)*(M+1)-1:i*(M+1)] = C[i]; 
endgenerate

auction #(.N(N), .W(M+1)) auction_(
	.bid(bid),
	.winner(winner)
	);

endmodule

module voting_BMR 
#
(
	parameter N = 2, 
	parameter M = 2
) 
(
	input [(2**M)*N-1:0] p_input,
	output [N-1:0] o
);

voting #(.N(N), .M(M)) voting_ (.vote(p_input),.winner(o));

endmodule






