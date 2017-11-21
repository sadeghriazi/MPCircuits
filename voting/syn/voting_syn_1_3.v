
module voting_N1_M3 ( p_input, o );
  input [7:0] p_input;
  output [0:0] o;
  wire   \dV[7][1] , \dV[6][1] , \dV[5][1] , \dV[4][1] , \dV[3][1] ,
         \dV[2][1] , \dV[1][1] , \dV[0][1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68;
  assign \dV[7][1]  = p_input[7];
  assign \dV[6][1]  = p_input[6];
  assign \dV[5][1]  = p_input[5];
  assign \dV[4][1]  = p_input[4];
  assign \dV[3][1]  = p_input[3];
  assign \dV[2][1]  = p_input[2];
  assign \dV[1][1]  = p_input[1];
  assign \dV[0][1]  = p_input[0];

  NOR U2 ( .A(n1), .B(n2), .Z(o[0]) );
  NOR U3 ( .A(n3), .B(n4), .Z(n2) );
  NOR U4 ( .A(n5), .B(n6), .Z(n4) );
  AND U5 ( .A(n7), .B(n8), .Z(n6) );
  XOR U6 ( .A(n9), .B(n10), .Z(n5) );
  NOR U7 ( .A(n11), .B(n12), .Z(n10) );
  AND U8 ( .A(n13), .B(n14), .Z(n12) );
  XNOR U9 ( .A(n11), .B(n15), .Z(n9) );
  NOR U10 ( .A(n16), .B(n17), .Z(n15) );
  NOR U11 ( .A(n18), .B(n19), .Z(n3) );
  XOR U12 ( .A(n20), .B(n21), .Z(n19) );
  XOR U13 ( .A(n22), .B(n23), .Z(n21) );
  AND U14 ( .A(n24), .B(n25), .Z(n23) );
  IV U15 ( .A(n26), .Z(n25) );
  AND U16 ( .A(n27), .B(n28), .Z(n26) );
  NOR U17 ( .A(n29), .B(n30), .Z(n24) );
  AND U18 ( .A(n31), .B(n32), .Z(n30) );
  NOR U19 ( .A(n33), .B(n31), .Z(n22) );
  XOR U20 ( .A(n29), .B(n34), .Z(n20) );
  AND U21 ( .A(n33), .B(n35), .Z(n34) );
  NOR U22 ( .A(n36), .B(n37), .Z(n18) );
  AND U23 ( .A(n7), .B(n36), .Z(n1) );
  XNOR U24 ( .A(n35), .B(n37), .Z(n36) );
  IV U25 ( .A(n38), .Z(n37) );
  NOR U26 ( .A(n39), .B(n40), .Z(n38) );
  IV U27 ( .A(\dV[7][1] ), .Z(n40) );
  AND U28 ( .A(n41), .B(n42), .Z(n39) );
  XOR U29 ( .A(n32), .B(n33), .Z(n35) );
  NOR U30 ( .A(n42), .B(n41), .Z(n33) );
  XNOR U31 ( .A(n43), .B(\dV[5][1] ), .Z(n41) );
  XNOR U32 ( .A(n44), .B(n27), .Z(n32) );
  XOR U33 ( .A(n28), .B(n45), .Z(n27) );
  NOR U34 ( .A(n46), .B(n47), .Z(n45) );
  XOR U35 ( .A(n48), .B(n49), .Z(n28) );
  NOR U36 ( .A(n50), .B(n51), .Z(n49) );
  NOR U37 ( .A(n52), .B(n53), .Z(n51) );
  AND U38 ( .A(\dV[2][1] ), .B(n54), .Z(n50) );
  XNOR U39 ( .A(n29), .B(n31), .Z(n44) );
  AND U40 ( .A(\dV[5][1] ), .B(n43), .Z(n31) );
  XOR U41 ( .A(n55), .B(\dV[4][1] ), .Z(n43) );
  AND U42 ( .A(\dV[4][1] ), .B(n55), .Z(n29) );
  XNOR U43 ( .A(\dV[3][1] ), .B(n46), .Z(n55) );
  NOR U44 ( .A(\dV[2][1] ), .B(n54), .Z(n46) );
  XOR U45 ( .A(n52), .B(n53), .Z(n54) );
  IV U46 ( .A(\dV[0][1] ), .Z(n52) );
  XNOR U47 ( .A(n56), .B(n57), .Z(n7) );
  XOR U48 ( .A(n17), .B(n58), .Z(n57) );
  XOR U49 ( .A(n8), .B(n16), .Z(n58) );
  AND U50 ( .A(n59), .B(n42), .Z(n16) );
  NOR U51 ( .A(n60), .B(\dV[7][1] ), .Z(n8) );
  XNOR U52 ( .A(n59), .B(n42), .Z(n60) );
  IV U53 ( .A(\dV[6][1] ), .Z(n42) );
  XOR U54 ( .A(n61), .B(\dV[5][1] ), .Z(n59) );
  NOR U55 ( .A(n61), .B(\dV[5][1] ), .Z(n17) );
  XNOR U56 ( .A(n62), .B(\dV[4][1] ), .Z(n61) );
  XOR U57 ( .A(n13), .B(n11), .Z(n56) );
  NOR U58 ( .A(n62), .B(\dV[4][1] ), .Z(n11) );
  XOR U59 ( .A(n63), .B(\dV[3][1] ), .Z(n62) );
  XOR U60 ( .A(n14), .B(n64), .Z(n13) );
  AND U61 ( .A(n63), .B(n47), .Z(n64) );
  IV U62 ( .A(\dV[3][1] ), .Z(n47) );
  XOR U63 ( .A(\dV[2][1] ), .B(n65), .Z(n63) );
  XOR U64 ( .A(n48), .B(n66), .Z(n14) );
  NOR U65 ( .A(n67), .B(n68), .Z(n66) );
  NOR U66 ( .A(\dV[1][1] ), .B(\dV[0][1] ), .Z(n68) );
  NOR U67 ( .A(n65), .B(\dV[2][1] ), .Z(n67) );
  XNOR U68 ( .A(\dV[0][1] ), .B(\dV[1][1] ), .Z(n65) );
  XOR U69 ( .A(\dV[0][1] ), .B(n53), .Z(n48) );
  IV U70 ( .A(\dV[1][1] ), .Z(n53) );
endmodule

