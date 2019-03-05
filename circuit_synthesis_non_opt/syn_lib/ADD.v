`timescale 1ns / 1ps

module ADD #(parameter N = 8, M = N)( // N >= M
  input [N-1:0] A,
  input [M-1:0] B,
  input CI,
  output CO,
  output [N-1:0] S
);

assign {CO, S} = A + B + CI;

endmodule

