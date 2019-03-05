`timescale 1ns / 1ps

module COMP
#(
	parameter N = 8, M = N
)
(
	input [N-1:0] A,
	input [M-1:0] B,
	output 	O
);

	assign O = A > B;

endmodule

