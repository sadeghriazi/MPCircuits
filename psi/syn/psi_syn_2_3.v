
module psi_BMR_b3_n2 ( p_input, o );
  input [5:0] p_input;
  output [2:0] o;


  AND U1 ( .A(p_input[5]), .B(p_input[2]), .Z(o[2]) );
  AND U2 ( .A(p_input[4]), .B(p_input[1]), .Z(o[1]) );
  AND U3 ( .A(p_input[3]), .B(p_input[0]), .Z(o[0]) );
endmodule

