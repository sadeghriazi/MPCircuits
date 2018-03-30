module psi
#(
parameter b = 10, // = |sigma|
parameter n = 4
)
(	
	all_input,
	all_output
);


input [n*b-1:0] all_input; 
output [b-1:0] all_output; 

wire [n*b-b-1:0] con_wire; // Connection wire  

assign con_wire [b-1:0] = all_input [b-1:0] & all_input [2*b-1:b];
genvar i; 
generate 
    for (i=1 ; i<n-1; i=i+1) begin: main_conn
	assign con_wire [(i+1)*b-1:i*b] = con_wire [i*b-1:(i-1)*b] & all_input [(i+2)*b-1:(i+1)*b]; 
    end
endgenerate 

assign all_output = con_wire[(n-1)*b-1:(n-2)*b];

endmodule 

module psi_BMR 
#
(
	parameter b = 10, 
	parameter n = 4
) 
(
	input [n*b-1:0] p_input,
	output [b-1:0] o
);

psi #(.N(N), .W(W)) psi_ (.all_input(p_input),.all_output(o));

endmodule
