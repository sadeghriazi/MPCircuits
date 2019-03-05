`timescale 1ns / 1ps

module MUX #(parameter N=8)(
	input [N-1:0] A,
	input [N-1:0] B,
	input S,
	output [N-1:0] O
);

	assign O = S ? B : A;

endmodule

