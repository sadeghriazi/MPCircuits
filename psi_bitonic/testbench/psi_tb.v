module psi_tb;

	parameter N = 8;
	parameter K = 4;
	parameter W = 4;

	// reg [W*K-1:0] in_array;
	// wire [W*K/2-1:0] out_array;

	reg [W*K*N-1:0] p_input;  // input of each user is ascending
	wire [W*K-1:0] o;

	// Dup #(.W(W), .K(K)) Dup_ (.in_array(in_array), .out_array(out_array));

	psi
	#(
		.W(W),   // bit width of each of the array elements
		.K(K),   // length of each array, must be even
		.N(N)    // number of parties, must be power of 2
	)
	uut
	(
		.p_input(p_input),
		.o(o)
	);

	initial begin
		// in_array = {4'd1, 4'd3, 4'd3, 4'd2};
		p_input = {4'd1, 4'd2, 4'd3, 4'd4, 4'd2, 4'd4, 4'd5, 4'd6,
				   4'd1, 4'd2, 4'd6, 4'd7, 4'd2, 4'd5, 4'd6, 4'd7,
				   4'd1, 4'd2, 4'd3, 4'd5, 4'd2, 4'd5, 4'd6, 4'd7,
				   4'd3, 4'd4, 4'd6, 4'd7, 4'd3, 4'd5, 4'd6, 4'd7};
	end

endmodule
