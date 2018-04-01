module compare_swap
	#(
		parameter W = 2
	)
	(
		a1, a2,
		dir,
		o1, o2 
	);
	
	input [W-1:0] a1, a2;
	input dir;              // dir = 1 -> ascending
	output [W-1:0] o1, o2;

	wire comp;
	wire isCorrect;

	COMP #(.N(W)) COMP_ (.A(a1), .B(a2), .O(comp));

	assign isCorrect = (dir==1 & comp==1) | (dir==0 & comp==0);

	MUX #(.N(W)) MUX_o1 (.A(a2), .B(a1), .S(isCorrect), .O(o1));
	MUX #(.N(W)) MUX_o2 (.A(a1), .B(a2), .S(isCorrect), .O(o2));

endmodule

module bitonic_merge
	#(
		parameter W = 2,
		parameter K = 3
	)
	(
		in_array,
		dir,
		out_array
	);

	input [W*K-1:0] in_array;
	input dir;
	output [W*K-1:0] out_array;

	wire [W-1:0] in_mat [K-1:0];

	wire [W-1:0] out_interm_mat [K-1:0];
	wire [W*K-1:0] out_interm_array;

	wire [W*K-1:0] out_merge;

	localparam lo = 0;

	genvar i;
	generate
		for (i=K-1; i>=0; i=i-1) begin
			assign in_mat[i] = in_array[(i+1)*W-1:i*W];
			assign out_interm_array[(i+1)*W-1:i*W] = out_interm_mat[i];
		end
	endgenerate

	generate
		if (K > 1) begin
			localparam k = K/2;

			for (i=lo; i<lo+k; i=i+1) begin
				compare_swap #(.W(W)) compare_swap_ 
							(.a1(in_mat[i]), .a2(in_mat[i+k]), .dir(dir), .o1(out_interm_mat[i]), .o2(out_interm_mat[i+k]));
			end

			bitonic_merge #(.W(W), .K(k)) bitonic_merge_1 
							(.in_array(out_interm_array[(lo+k)*W-1:lo*W]), .dir(dir), .out_array(out_merge[(lo+k)*W-1:lo*W]));
			bitonic_merge #(.W(W), .K(k)) bitonic_merge_2 
							(.in_array(out_interm_array[(lo+2*k)*W-1:(lo+k)*W]), .dir(dir), .out_array(out_merge[(lo+2*k)*W-1:(lo+k)*W]));
		end
	endgenerate

	assign out_array = (K > 1) ? out_merge : in_array;

endmodule

module bitonic_sort
	#(
		parameter W = 2,
		parameter K = 2
	)
	(
		in_array,
		dir,
		out_array
	);

	input [W*K-1:0] in_array;
	input dir;
	output [W*K-1:0] out_array;

	wire [W*K-1:0] out_sort;
	wire [W*K-1:0] out_merge;

	localparam lo = 0;

	genvar i;
	generate
		if (K > 1) begin
			localparam k = K/2;

			bitonic_sort #(.W(W), .K(k)) bitonic_sort_1
							(.in_array(in_array[(lo+k)*W-1:lo*W]), .dir(1'b1), .out_array(out_sort[(lo+k)*W-1:lo*W]));
			bitonic_sort #(.W(W), .K(k)) bitonic_sort_2
							(.in_array(in_array[(lo+2*k)*W-1:(lo+k)*W]), .dir(1'b0), .out_array(out_sort[(lo+2*k)*W-1:(lo+k)*W]));
			bitonic_merge #(.W(W), .K(K)) bitonic_merge_ 
							(.in_array(out_sort), .dir(dir), .out_array(out_merge));
		end
	endgenerate

	assign out_array = (K > 1) ? out_merge : in_array;

endmodule