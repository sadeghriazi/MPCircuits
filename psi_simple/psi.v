module psi
#(
parameter W = 10, // = |sigma|
parameter N = 4
)
(	
	all_input,
	all_output
);


input [N*W-1:0] all_input; 
output [W-1:0] all_output; 

wire [N*W-W-1:0] con_wire; // Connection wire  

assign con_wire [W-1:0] = all_input [W-1:0] & all_input [2*W-1:W];
genvar i; 
generate 
    for (i=1 ; i<N-1; i=i+1) begin: main_conn
	assign con_wire [(i+1)*W-1:i*W] = con_wire [i*W-1:(i-1)*W] & all_input [(i+2)*W-1:(i+1)*W]; 
    end
endgenerate 

assign all_output = con_wire[(N-1)*W-1:(N-2)*W];

endmodule 
