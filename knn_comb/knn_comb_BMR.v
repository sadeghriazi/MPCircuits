module knn_comb_BMR //kn=K, N=n, W=32
#(
	parameter W = 32,
	parameter K = 2,
	parameter N = 4
)
(
	p_input,
	o
);
	input [(N+1)*W-1:0] p_input;
	output [W*K-1:0] o;

	knn_comb #(.W(W), .K(K), .N(N)) knn_comb_ (.p0_input(p_input[(N+1)*W-1:N*W]),.p1_input(p_input[N*W-1:0]), .o(o));

endmodule

module knn_comb_BMR_1_8
#(
	parameter W = 32,
	parameter K = 1,
	parameter N = 8
)
(
	input [(N+1)*W-1:0] p_input,
	output [W*K-1:0] o
);
	knn_comb #(.W(W), .K(K), .N(N)) knn_comb_ (.p0_input(p_input[(N+1)*W-1:N*W]),.p1_input(p_input[N*W-1:0]), .o(o));

endmodule

module knn_comb_BMR_1_16
#(
	parameter W = 32,
	parameter K = 1,
	parameter N = 16
)
(
	input [(N+1)*W-1:0] p_input,
	output [W*K-1:0] o
);
	knn_comb #(.W(W), .K(K), .N(N)) knn_comb_ (.p0_input(p_input[(N+1)*W-1:N*W]),.p1_input(p_input[N*W-1:0]), .o(o));

endmodule

module knn_comb_BMR_2_8
#(
	parameter W = 32,
	parameter K = 2,
	parameter N = 8
)
(
	input [(N+1)*W-1:0] p_input,
	output [W*K-1:0] o
);
	knn_comb #(.W(W), .K(K), .N(N)) knn_comb_ (.p0_input(p_input[(N+1)*W-1:N*W]),.p1_input(p_input[N*W-1:0]), .o(o));

endmodule

module knn_comb_BMR_2_16
#(
	parameter W = 32,
	parameter K = 2,
	parameter N = 16
)
(
	input [(N+1)*W-1:0] p_input,
	output [W*K-1:0] o
);
	knn_comb #(.W(W), .K(K), .N(N)) knn_comb_ (.p0_input(p_input[(N+1)*W-1:N*W]),.p1_input(p_input[N*W-1:0]), .o(o));

endmodule

module knn_comb_BMR_3_8
#(
	parameter W = 32,
	parameter K = 3,
	parameter N = 8
)
(
	input [(N+1)*W-1:0] p_input,
	output [W*K-1:0] o
);
	knn_comb #(.W(W), .K(K), .N(N)) knn_comb_ (.p0_input(p_input[(N+1)*W-1:N*W]),.p1_input(p_input[N*W-1:0]), .o(o));

endmodule

module knn_comb_BMR_3_16
#(
	parameter W = 32,
	parameter K = 3,
	parameter N = 16
)
(
	input [(N+1)*W-1:0] p_input,
	output [W*K-1:0] o
);
	knn_comb #(.W(W), .K(K), .N(N)) knn_comb_ (.p0_input(p_input[(N+1)*W-1:N*W]),.p1_input(p_input[N*W-1:0]), .o(o));

endmodule