module psi_tb ();

parameter b = 8; // = |sigma|
parameter n = 4;

reg [n*b-1:0] all_input; 
wire [b-1:0] all_output; 

psi #(.b(b), .n(n)) DUT (.all_input(all_input), .all_output(all_output));

initial begin
	all_input = 32'h03010517;
	#1000
	all_input = 32'hf371eec2;
	#1000
	$stop;
end

endmodule 

