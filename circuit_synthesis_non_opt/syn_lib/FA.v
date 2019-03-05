`timescale 1ns / 1ps

module FA( 
	input A, B, CI,
	output S, CO
);

	assign {CO, S} = A + B + CI;
  
endmodule

