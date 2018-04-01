module knn_comb_tb ();

parameter W = 4; 
parameter K = 1;
parameter N = 4;

reg [W-1:0] p0_input;
reg [N*W-1:0] p1_input;
wire[W*K-1:0] o;

knn_comb #(.W(W), .K(K), .N(N)) DUT (
						.p0_input(p0_input),
						.p1_input(p1_input),
						.o(o)
					);

initial begin
	p0_input = 4'hf;
	p1_input = 16'b1001000010000111;
	#1000
	$stop;
end

endmodule 


