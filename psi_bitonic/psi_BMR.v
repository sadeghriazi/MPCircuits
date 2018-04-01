// module psi_BMR
// 	#(
// 		parameter W = 32,   // bit width of each of the array elements
// 		parameter K = 100,   // length of each array, must be even
// 		parameter N = 1024    // number of parties, must be power of 2
// 	)
// 	(
// 		input [W*K*N-1:0] p_input,  // input of each user is ascending
// 		output [W*K-1:0] o
// 	);
// 	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

// endmodule

module psi_BMR_16_10_4
	#(
		parameter W = 16,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 4    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule

module psi_BMR_32_10_4
	#(
		parameter W = 32,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 4    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule

module psi_BMR_64_10_4
	#(
		parameter W = 64,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 4    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule

module psi_BMR_16_10_8
	#(
		parameter W = 16,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 8    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule

module psi_BMR_32_10_8
	#(
		parameter W = 32,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 8    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule

module psi_BMR_64_10_8
	#(
		parameter W = 64,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 8    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule

module psi_BMR_16_10_16
	#(
		parameter W = 16,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 16    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule

module psi_BMR_32_10_16
	#(
		parameter W = 32,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 16    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule

module psi_BMR_64_10_16
	#(
		parameter W = 64,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 16    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule

module psi_BMR_16_10_32
	#(
		parameter W = 16,   // bit width of each of the array elements
		parameter K = 10,   // length of each array, must be even
		parameter N = 32    // number of parties, must be power of 2
	)
	(
		input [W*K*N-1:0] p_input,  // input of each user is ascending
		output [W*K-1:0] o
	);
	psi #(.N(N), .W(W), .K(K)) psi_ (.p_input(p_input), .o(o));

endmodule