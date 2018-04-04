// module psi_BMR 
// #
// (
// 	parameter W = 10, 
// 	parameter N = 4
// ) 
// (
// 	input [N*W-1:0] p_input,
// 	output [W-1:0] o
// );

// psi #(.N(N), .W(W)) psi_ (.all_input(p_input),.all_output(o));

// endmodule

module psi_BMR_4_104 
#
(
	parameter W = 10000, 
	parameter N = 4
) 
(
	input [N*W-1:0] p_input,
	output [W-1:0] o
);

psi #(.N(N), .W(W)) psi_ (.all_input(p_input),.all_output(o));

endmodule

module psi_BMR_8_104 
#
(
	parameter W = 10000, 
	parameter N = 8
) 
(
	input [N*W-1:0] p_input,
	output [W-1:0] o
);

psi #(.N(N), .W(W)) psi_ (.all_input(p_input),.all_output(o));

endmodule

module psi_BMR_16_104 
#
(
	parameter W = 10000, 
	parameter N = 16
) 
(
	input [N*W-1:0] p_input,
	output [W-1:0] o
);

psi #(.N(N), .W(W)) psi_ (.all_input(p_input),.all_output(o));

endmodule

module psi_BMR_4_105 
#
(
	parameter W = 100000, 
	parameter N = 4
) 
(
	input [N*W-1:0] p_input,
	output [W-1:0] o
);

psi #(.N(N), .W(W)) psi_ (.all_input(p_input),.all_output(o));

endmodule

module psi_BMR_8_105 
#
(
	parameter W = 100000, 
	parameter N = 8
) 
(
	input [N*W-1:0] p_input,
	output [W-1:0] o
);

psi #(.N(N), .W(W)) psi_ (.all_input(p_input),.all_output(o));

endmodule