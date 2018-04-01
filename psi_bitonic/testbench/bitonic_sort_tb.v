module bitonic_sort_tb;

	parameter W = 3;   // bit width for each of the entries
	parameter K = 8;   // number of elements in each array

	reg [W*K-1:0] in_array;
	wire [W*K-1:0] out_array;

	// bitonic_merge
	// #(
	// 	.W(W),
	// 	.K(K)
	// )
	// uut (
	// 	.in_array(in_array),
	// 	.dir(1'b1),        // DESCENDING
	// 	.out_array(out_array)
	// );

	bitonic_sort
	#(
		.W(W),
		.K(K)
	)
	uut (
		.in_array(in_array),
		.dir(1'b1),        // DESCENDING
		.out_array(out_array)
	);

	initial begin
		// test bitonic_merge
		// in_array [23:21] = 3'd1;
		// in_array [20:18] = 3'd3;
		// in_array [17:15] = 3'd5;
		// in_array [14:12] = 3'd6;
		// in_array [11:9] = 3'd7;
		// in_array [8:6] = 3'd4;
		// in_array [5:3] = 3'd2;
		// in_array [2:0] = 3'd0;

		// test bitonic_sort
		in_array [23:21] = 3'd1;
		in_array [20:18] = 3'd6;
		in_array [17:15] = 3'd5;
		in_array [14:12] = 3'd3;
		in_array [11:9] = 3'd7;
		in_array [8:6] = 3'd0;
		in_array [5:3] = 3'd2;
		in_array [2:0] = 3'd4;
	end
	
endmodule