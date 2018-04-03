module stable_matching_comb_BMR
	#(
	parameter Ks = 12,   //number of preferences for list A
	parameter Kr = Ks,   //number of preferences for list B
	parameter S  = 16,   //number of members in list A
	parameter R  = S   //number of members in list B
	// parameter logS = 4,
	// parameter logR = logS
	)
	(
	p_input,
	o
	);

	function integer log2;
		input [31:0] value;
		reg [31:0] temp;
	begin
		temp = value - 1;
		for (log2=0; temp>0; log2=log2+1)
			temp = temp>>1;
	end
	endfunction
	
	//------------------------------- Local Parameters 
	localparam logS = log2(S);
	localparam logR = log2(R);

	localparam N = (S==Ks) ? S*S-S+2 : S*Ks;    //number of iterations

	input [R*Kr*logS-1 + S*Ks*logR-1  + 1:0]  p_input;
	output [R*logS-1:0] o;

	stable_matching_comb #(.Kr(Kr), .Ks(Ks), .S(S), .R(R), .N(N)) stable_matching_comb_ (.p_input(p_input), .o(o));

endmodule 