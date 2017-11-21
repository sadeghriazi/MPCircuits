
module psi_BMR ( p_input, o );
  input [39:0] p_input;
  output [9:0] o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  AND U1 ( .A(n1), .B(n2), .Z(o[9]) );
  AND U2 ( .A(p_input[29]), .B(p_input[19]), .Z(n2) );
  AND U3 ( .A(p_input[9]), .B(p_input[39]), .Z(n1) );
  AND U4 ( .A(n3), .B(n4), .Z(o[8]) );
  AND U5 ( .A(p_input[28]), .B(p_input[18]), .Z(n4) );
  AND U6 ( .A(p_input[8]), .B(p_input[38]), .Z(n3) );
  AND U7 ( .A(n5), .B(n6), .Z(o[7]) );
  AND U8 ( .A(p_input[27]), .B(p_input[17]), .Z(n6) );
  AND U9 ( .A(p_input[7]), .B(p_input[37]), .Z(n5) );
  AND U10 ( .A(n7), .B(n8), .Z(o[6]) );
  AND U11 ( .A(p_input[26]), .B(p_input[16]), .Z(n8) );
  AND U12 ( .A(p_input[6]), .B(p_input[36]), .Z(n7) );
  AND U13 ( .A(n9), .B(n10), .Z(o[5]) );
  AND U14 ( .A(p_input[25]), .B(p_input[15]), .Z(n10) );
  AND U15 ( .A(p_input[5]), .B(p_input[35]), .Z(n9) );
  AND U16 ( .A(n11), .B(n12), .Z(o[4]) );
  AND U17 ( .A(p_input[24]), .B(p_input[14]), .Z(n12) );
  AND U18 ( .A(p_input[4]), .B(p_input[34]), .Z(n11) );
  AND U19 ( .A(n13), .B(n14), .Z(o[3]) );
  AND U20 ( .A(p_input[23]), .B(p_input[13]), .Z(n14) );
  AND U21 ( .A(p_input[3]), .B(p_input[33]), .Z(n13) );
  AND U22 ( .A(n15), .B(n16), .Z(o[2]) );
  AND U23 ( .A(p_input[22]), .B(p_input[12]), .Z(n16) );
  AND U24 ( .A(p_input[32]), .B(p_input[2]), .Z(n15) );
  AND U25 ( .A(n17), .B(n18), .Z(o[1]) );
  AND U26 ( .A(p_input[1]), .B(p_input[11]), .Z(n18) );
  AND U27 ( .A(p_input[31]), .B(p_input[21]), .Z(n17) );
  AND U28 ( .A(n19), .B(n20), .Z(o[0]) );
  AND U29 ( .A(p_input[10]), .B(p_input[0]), .Z(n20) );
  AND U30 ( .A(p_input[30]), .B(p_input[20]), .Z(n19) );
endmodule

