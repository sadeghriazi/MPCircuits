
module psi_BMR_b10_n5 ( p_input, o );
  input [49:0] p_input;
  output [9:0] o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;

  AND U1 ( .A(n1), .B(n2), .Z(o[9]) );
  AND U2 ( .A(n3), .B(p_input[39]), .Z(n2) );
  AND U3 ( .A(p_input[29]), .B(p_input[19]), .Z(n3) );
  AND U4 ( .A(p_input[9]), .B(p_input[49]), .Z(n1) );
  AND U5 ( .A(n4), .B(n5), .Z(o[8]) );
  AND U6 ( .A(n6), .B(p_input[38]), .Z(n5) );
  AND U7 ( .A(p_input[28]), .B(p_input[18]), .Z(n6) );
  AND U8 ( .A(p_input[8]), .B(p_input[48]), .Z(n4) );
  AND U9 ( .A(n7), .B(n8), .Z(o[7]) );
  AND U10 ( .A(n9), .B(p_input[37]), .Z(n8) );
  AND U11 ( .A(p_input[27]), .B(p_input[17]), .Z(n9) );
  AND U12 ( .A(p_input[7]), .B(p_input[47]), .Z(n7) );
  AND U13 ( .A(n10), .B(n11), .Z(o[6]) );
  AND U14 ( .A(n12), .B(p_input[36]), .Z(n11) );
  AND U15 ( .A(p_input[26]), .B(p_input[16]), .Z(n12) );
  AND U16 ( .A(p_input[6]), .B(p_input[46]), .Z(n10) );
  AND U17 ( .A(n13), .B(n14), .Z(o[5]) );
  AND U18 ( .A(n15), .B(p_input[35]), .Z(n14) );
  AND U19 ( .A(p_input[25]), .B(p_input[15]), .Z(n15) );
  AND U20 ( .A(p_input[5]), .B(p_input[45]), .Z(n13) );
  AND U21 ( .A(n16), .B(n17), .Z(o[4]) );
  AND U22 ( .A(n18), .B(p_input[34]), .Z(n17) );
  AND U23 ( .A(p_input[24]), .B(p_input[14]), .Z(n18) );
  AND U24 ( .A(p_input[4]), .B(p_input[44]), .Z(n16) );
  AND U25 ( .A(n19), .B(n20), .Z(o[3]) );
  AND U26 ( .A(n21), .B(p_input[33]), .Z(n20) );
  AND U27 ( .A(p_input[23]), .B(p_input[13]), .Z(n21) );
  AND U28 ( .A(p_input[43]), .B(p_input[3]), .Z(n19) );
  AND U29 ( .A(n22), .B(n23), .Z(o[2]) );
  AND U30 ( .A(n24), .B(p_input[2]), .Z(n23) );
  AND U31 ( .A(p_input[22]), .B(p_input[12]), .Z(n24) );
  AND U32 ( .A(p_input[42]), .B(p_input[32]), .Z(n22) );
  AND U33 ( .A(n25), .B(n26), .Z(o[1]) );
  AND U34 ( .A(n27), .B(p_input[21]), .Z(n26) );
  AND U35 ( .A(p_input[1]), .B(p_input[11]), .Z(n27) );
  AND U36 ( .A(p_input[41]), .B(p_input[31]), .Z(n25) );
  AND U37 ( .A(n28), .B(n29), .Z(o[0]) );
  AND U38 ( .A(n30), .B(p_input[20]), .Z(n29) );
  AND U39 ( .A(p_input[10]), .B(p_input[0]), .Z(n30) );
  AND U40 ( .A(p_input[40]), .B(p_input[30]), .Z(n28) );
endmodule

