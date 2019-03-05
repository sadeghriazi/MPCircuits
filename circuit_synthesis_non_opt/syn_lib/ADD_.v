`timescale 1ns / 1ps

module ADD_ #(parameter N = 8, M = N)( // N >= M
	input [N-1:0] A,
	input [M-1:0] B,
	output [N:0] O
    );
	
	assign O = A + B;
	
	
endmodule

