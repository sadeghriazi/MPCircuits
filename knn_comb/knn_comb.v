module knn 
#(
	parameter W = 8,
	parameter K = 2
)
(
	min_val_in,
	min_dist_in,
	g_input,
	e_input,
	min_val_out,
	min_dist_out
	
);
	
	function integer log2;
		input [31:0] value;
		reg [31:0] temp;
		begin
			temp = value;
			for (log2=0; temp>0; log2=log2+1)
				temp = temp>>1;
		end
	endfunction

	localparam LOGW = log2(W);
	
	input [W*K-1:0] min_val_in;
	input [LOGW*K-1:0] min_dist_in;
	input [W-1:0] g_input;
	input [W-1:0] e_input;
	output [W*K-1:0] min_val_out;
	output [LOGW*K-1:0] min_dist_out;
	
	wire [LOGW-1:0] dist;

	wire [W-1:0] min_val [K-1:0];
	wire [LOGW-1:0] min_dist [K-1:0];
	
	wire [W-1:0] min_val_reg [K-1:0];
	wire [LOGW-1:0] min_dist_reg [K-1:0];
	
	wire gt_dist_1 [K-1:0];
	wire gt_dist_2 [K-1:0];


	wire [W-1:0] local_min_val  [K:0];
	wire [LOGW-1:0] local_min_dist [K:0];
	
	genvar i;
	
	generate
	for (i=0; i<K; i = i+1)
	begin: MIN_VAL_ASS
		assign min_val_reg[i] = min_val_in[W*(i+1)-1:W*(i)];
		assign min_dist_reg[i] = min_dist_in[LOGW*(i+1)-1:LOGW*i];
		
		assign min_val_out[W*(i+1)-1:W*(i)] = min_val[i];
		assign min_dist_out[LOGW*(i+1)-1:LOGW*i] = min_dist[i];
	end
	endgenerate

	COUNT #(.N(W)) COUNT_ (
			.A(g_input ^ e_input),
			.S(dist)
		);


	generate
	for (i=0;i<K;i=i+1)
	begin:COMP_ASN
		COMP #(.N(LOGW)) COMP_1 (
			.A(min_dist_reg[i]),
			.B(local_min_dist[i+1]),
			.O(gt_dist_1[i])
		);

		if(i>0)
		begin
			COMP #(.N(LOGW)) COMP_2 (
				.A(min_dist_reg[i-1]),
				.B(local_min_dist[i]),
				.O(gt_dist_2[i])
			);	
		end
		else 
		begin
			assign gt_dist_2[i] = 0;
		end
	end
	endgenerate

	generate
	for (i=0;i<K;i=i+1)
	begin:MUX_ASN
		MUX #(.N(LOGW)) MUX_1 (
			.A(min_dist_reg[i]),
			.B(local_min_dist[i+1]),
			.S(gt_dist_1[i]),
			.O(local_min_dist[i])
		);
		
		if(i>0)
		begin
			MUX #(.N(LOGW)) MUX_2 (
				.A(local_min_dist[i]),
				.B(min_dist_reg[i-1]),
				.S(gt_dist_2[i]),
				.O(min_dist[i])
			);
		end
		else 
		begin
			assign min_dist[i] = local_min_dist[i];
		end


		MUX #(.N(W)) MUX_3 (
			.A(min_val_reg[i]),
			.B(local_min_val[i+1]),
			.S(gt_dist_1[i]),
			.O(local_min_val[i])
		);
		
		if(i>0)
		begin
			MUX #(.N(W)) MUX_4 (
				.A(local_min_val[i]),
				.B(min_val_reg[i-1]),
				.S(gt_dist_2[i]),
				.O(min_val[i])
			);
		end
		else 
		begin
			assign min_val[i] = local_min_val[i];
		end

	end
	endgenerate

	assign local_min_dist[K] = dist;
	assign local_min_val[K] = e_input;

endmodule

module knn_comb
#(
	parameter W = 8,  //bit width
	parameter K = 2,  //number of nearest neighbors
	parameter N = 4   //number of parties
)
(
	p0_input,
	p1_input,
	o
);

	input [W-1:0] p0_input;
	input [0:N*W-1] p1_input;
	output[W*K-1:0] o;
	
	function integer log2;
		input [31:0] value;
		reg [31:0] temp;
		begin
			temp = value;
			for (log2=0; temp>0; log2=log2+1)
				temp = temp>>1;
		end
	endfunction

	localparam LOGW = log2(W);
	localparam WK = W*K;
	localparam LOGWK = LOGW*K;
	
	wire [W*K-1:0] min_val_out [N-1:0];
	wire [LOGW*K-1:0] min_dist_out [N-1:0];
	
	knn #(.W(W), .K(K)) knn_1 (
				.min_val_in({WK{1'b0}}),
				.min_dist_in({LOGWK{1'b1}}),
				.g_input(p0_input),
				.e_input(p1_input[0:W-1]),
				.min_val_out(min_val_out[0]),
				.min_dist_out(min_dist_out[0])
			);
			
	genvar j;
	generate
	for(j=1;j<N;j=j+1)
	begin: ASN_1
		knn #(.W(W), .K(K)) knn_ (
				.min_val_in(min_val_out[j-1]),
				.min_dist_in(min_dist_out[j-1]),
				.g_input(p0_input),
				.e_input(p1_input[W*j:W*(j+1)-1]),
				.min_val_out(min_val_out[j]),
				.min_dist_out(min_dist_out[j])
			);
	end
	endgenerate
	
	assign o = min_val_out[N-1];

endmodule

