module stable_matching_comb_BMR
	#(
	parameter Kr =10,   //number of preferences for list B
	parameter Ks =10,   //number of preferences for list A
	parameter S  =10,   //number of members in list A
	parameter R  =10,   //number of members in list B
	parameter N = S*S-S+2    //number of iterations
	)
	(
	input [R*Kr*logS-1 + S*Ks*logR-1  + 1:0]  p_input,
	output [R*logS:0] o
	);

	stable_matching_comb #(.Kr(Kr), .Ks(Ks), .S(S), .R(R), .N(N)) stable_matching_comb_ (.p_input(p_input), .o(o));

endmodule 