module voting_BMR 
#
(
	parameter N = 2, //log2 of number of candidates
	parameter M = 2  //log2 of number of voters
) 
(
	input [(2**M)*N-1:0] p_input,
	output [N-1:0] o
);

voting #(.N(N), .M(M)) voting_ (.vote(p_input),.winner(o));

endmodule

// module voting_BMR_1_3
// #
// (
// 	parameter N = 1, //log2 of number of candidates
// 	parameter M = 3  //number of voters
// ) 
// (
// 	input [(2**M)*N-1:0] p_input,
// 	output [N-1:0] o
// );

// voting #(.N(N), .M(M)) voting_ (.vote(p_input),.winner(o));

// endmodule

// module voting_BMR_1_4
// #
// (
// 	parameter N = 1, //log2 of number of candidates
// 	parameter M = 4  //number of voters
// ) 
// (
// 	input [(2**M)*N-1:0] p_input,
// 	output [N-1:0] o
// );

// voting #(.N(N), .M(M)) voting_ (.vote(p_input),.winner(o));

// endmodule

// module voting_BMR_2_3
// #
// (
// 	parameter N = 2, //log2 of number of candidates
// 	parameter M = 3  //number of voters
// ) 
// (
// 	input [(2**M)*N-1:0] p_input,
// 	output [N-1:0] o
// );

// voting #(.N(N), .M(M)) voting_ (.vote(p_input),.winner(o));

// endmodule

// module voting_BMR_2_4
// #
// (
// 	parameter N = 2, //log2 of number of candidates
// 	parameter M = 4  //number of voters
// ) 
// (
// 	input [(2**M)*N-1:0] p_input,
// 	output [N-1:0] o
// );

// voting #(.N(N), .M(M)) voting_ (.vote(p_input),.winner(o));

// endmodule

// module voting_BMR_3_4
// #
// (
// 	parameter N = 3, //log2 of number of candidates
// 	parameter M = 4  //log2 number of voters
// ) 
// (
// 	input [(2**M)*N-1:0] p_input,
// 	output [N-1:0] o
// );

// voting #(.N(N), .M(M)) voting_ (.vote(p_input),.winner(o));

// endmodule

