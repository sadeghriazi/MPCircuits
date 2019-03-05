`timescale 1ns / 1ps

module DIV #( parameter N = 8, M = N )( 
	input  [N-1:0] A,
	input  [M-1:0] B,
	output [N-1:0] O
);

assign O = A/B;

endmodule
