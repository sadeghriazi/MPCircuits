module auction_BMR 
#
(
	parameter N = 2, 
	parameter W = 16
) 
(
	input [(2**N)*W-1:0] p_input,
	output [N+W-1:0] o
);

auction #(.N(N), .W(W)) auction_ (.bid(p_input),.winning_bid(o[N+W-1:N]),.winner(o[N-1:0]));

endmodule

module auction_BMR_2_16 
#
(
	parameter N = 2, 
	parameter W = 16
) 
(
	input [(2**N)*W-1:0] p_input,
	output [N+W-1:0] o
);

auction #(.N(N), .W(W)) auction_ (.bid(p_input),.winning_bid(o[N+W-1:N]),.winner(o[N-1:0]));

endmodule 


module auction_BMR_2_32 
#
(
	parameter N = 2, 
	parameter W = 32
) 
(
	input [(2**N)*W-1:0] p_input,
	output [N+W-1:0] o
);

auction #(.N(N), .W(W)) auction_ (.bid(p_input),.winning_bid(o[N+W-1:N]),.winner(o[N-1:0]));

endmodule 


module auction_BMR_3_16 
#
(
	parameter N = 3, 
	parameter W = 16
) 
(
	input [(2**N)*W-1:0] p_input,
	output [N+W-1:0] o
);

auction #(.N(N), .W(W)) auction_ (.bid(p_input),.winning_bid(o[N+W-1:N]),.winner(o[N-1:0]));

endmodule 


module auction_BMR_3_32 
#
(
	parameter N = 3, 
	parameter W = 32
) 
(
	input [(2**N)*W-1:0] p_input,
	output [N+W-1:0] o
);

auction #(.N(N), .W(W)) auction_ (.bid(p_input),.winning_bid(o[N+W-1:N]),.winner(o[N-1:0]));

endmodule 


module auction_BMR_4_16 
#
(
	parameter N = 4, 
	parameter W = 16
) 
(
	input [(2**N)*W-1:0] p_input,
	output [N+W-1:0] o
);

auction #(.N(N), .W(W)) auction_ (.bid(p_input),.winning_bid(o[N+W-1:N]),.winner(o[N-1:0]));

endmodule 


module auction_BMR_4_32 
#
(
	parameter N = 4, 
	parameter W = 32
) 
(
	input [(2**N)*W-1:0] p_input,
	output [N+W-1:0] o
);

auction #(.N(N), .W(W)) auction_ (.bid(p_input),.winning_bid(o[N+W-1:N]),.winner(o[N-1:0]));

endmodule 


