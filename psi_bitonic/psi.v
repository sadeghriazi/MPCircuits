module DupSelect_3 
	#(
		parameter W = 2
	)
	(
		dup_in,
		o
	);

	input [3*W-1:0] dup_in;
	output [W-1:0] o;

	wire [W-1:0] x1;
	wire [W-1:0] x2;
	wire [W-1:0] x3;

	assign x1 = dup_in[W-1:0];
	assign x2 = dup_in[2*W-1:W];
	assign x3 = dup_in[3*W-1:2*W];

	wire [W-1:0] XOR_x1_x2, XOR_x3_x2;
	assign XOR_x1_x2 = x1 ^ x2;
	assign XOR_x3_x2 = x3 ^ x2;

	wire OR_x1_x2, OR_x3_x2;
	assign OR_x1_x2 = ~|XOR_x1_x2;
	assign OR_x3_x2 = ~|XOR_x3_x2;

	wire MUX_S;
	assign MUX_S = OR_x1_x2 | OR_x3_x2;

	MUX #(.N(W)) MUX_ (.A({W{1'b0}}), .B(x2), .S(MUX_S), .O(o));

endmodule

module DupSelect_2 
	#(
		parameter W = 2
	)
	(
		dup_in,
		o
	);

	input [2*W-1:0] dup_in;
	output [W-1:0] o;

	wire [W-1:0] x1;
	wire [W-1:0] x2;

	assign x1 = dup_in[W-1:0];
	assign x2 = dup_in[2*W-1:W];

	wire [W-1:0] XOR_x1_x2;
	assign XOR_x1_x2 = x1 ^ x2;

	wire OR_x1_x2;
	assign OR_x1_x2 = |XOR_x1_x2;

	wire MUX_S;
	assign MUX_S = OR_x1_x2;

	MUX #(.N(W)) MUX_ (.A(x2), .B({W{1'b0}}), .S(MUX_S), .O(o));

endmodule

module Dup
	#(
		parameter W = 2,
		parameter K = 2      //must be power of 2
	)
	(
		in_array,
		out_array
	);

	input [W*K-1:0] in_array;
	output [W*K/2-1:0] out_array;

	genvar i, idx;
	generate
		for (i=0; i<K-2; i=i+2) begin
			DupSelect_3 #(.W(W)) DupSelect_3_ (.dup_in(in_array[(i+3)*W-1:i*W]), .o(out_array[(i/2+1)*W-1:i/2*W]));
		end
		DupSelect_2 #(.W(W)) DupSelect_2_ (.dup_in(in_array[W*K-1:W*(K-2)]), .o(out_array[W*K/2-1:W*(K/2-1)]));
	endgenerate 

endmodule

module psi
	#(
		parameter W = 2,   // bit width of each of the array elements
		parameter K = 2,   // length of each array, must be even
		parameter N = 2   // number of parties, must be power of 2
	)
	(
		p_input,
		o
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

	localparam LOGN = log2(N)-1;

	input [W*K*N-1:0] p_input;  // input of each user is ascending
	output [W*K-1:0] o;

	wire [W*K-1:0] array1 [LOGN:0][N/2-1:0];
	wire [W*K-1:0] array2 [LOGN:0][N/2-1:0];
	wire [W*K-1:0] array2_t [LOGN:0][N/2-1:0];
	wire [W*2*K-1:0] out_merge [LOGN:0][N/2-1:0];
	wire [W*K-1:0] out_Dup [LOGN:0][N/2-1:0];
	wire  [W*K*N-1:0] out_sort [LOGN:0];

	assign out_sort[0] = p_input;

	genvar i, j, k;
	generate
		for (i=0; i<K; i=i+1) begin
			for (j=0; j<N/2; j=j+1) begin
				for (k=0; k<LOGN; k=k+1) begin
					assign array2_t[k][j][(i+1)*W-1:i*W] = array2[k][j][(K-i)*W-1:(K-i-1)*W];
				end
			end
		end		
	endgenerate

	generate
		for (i=0; i<LOGN; i=i+1) begin : loop_1
			for (j=0; j<N/(2**i); j=j+2) begin : loop_2
				assign array1[i][j/2] = out_sort[i][(j+1)*K*W-1:j*K*W];
				assign array2[i][j/2] = out_sort[i][(j+2)*K*W-1:(j+1)*K*W];   //transpose 

				bitonic_merge #(.W(W), .K(2*K)) bitonic_merge_ 
							(.in_array({array1[i][j/2], array2_t[i][j/2]}), .dir(1'b1), .out_array(out_merge[i][j/2]));   //perform ascending merge

				Dup #(.W(W), .K(2*K)) Dup_ (.in_array(out_merge[i][j/2]), .out_array(out_Dup[i][j/2]));

				bitonic_sort #(.W(W), .K(K)) bitonic_sort_ (.in_array(out_Dup[i][j/2]), .dir(1'b1), .out_array(out_sort[i+1][(j/2+1)*K*W-1:j/2*K*W]));
			end
		end
	endgenerate

	assign o = out_sort[LOGN][W*K-1:0];

endmodule
