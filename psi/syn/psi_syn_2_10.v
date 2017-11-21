
module psi_BMR_b10_n2 ( p_input, o );
  input [19:0] p_input;
  output [9:0] o;


  AND U1 ( .A(p_input[9]), .B(p_input[19]), .Z(o[9]) );
  AND U2 ( .A(p_input[8]), .B(p_input[18]), .Z(o[8]) );
  AND U3 ( .A(p_input[7]), .B(p_input[17]), .Z(o[7]) );
  AND U4 ( .A(p_input[6]), .B(p_input[16]), .Z(o[6]) );
  AND U5 ( .A(p_input[5]), .B(p_input[15]), .Z(o[5]) );
  AND U6 ( .A(p_input[4]), .B(p_input[14]), .Z(o[4]) );
  AND U7 ( .A(p_input[3]), .B(p_input[13]), .Z(o[3]) );
  AND U8 ( .A(p_input[2]), .B(p_input[12]), .Z(o[2]) );
  AND U9 ( .A(p_input[1]), .B(p_input[11]), .Z(o[1]) );
  AND U10 ( .A(p_input[10]), .B(p_input[0]), .Z(o[0]) );
endmodule

