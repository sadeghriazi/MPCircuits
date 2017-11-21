
module knn_comb_BMR_W16_K2_N4 ( p_input, o );
  input [79:0] p_input;
  output [31:0] o;
  wire   \knn_comb_/min_val_out[0][0] , \knn_comb_/min_val_out[0][1] ,
         \knn_comb_/min_val_out[0][2] , \knn_comb_/min_val_out[0][3] ,
         \knn_comb_/min_val_out[0][4] , \knn_comb_/min_val_out[0][5] ,
         \knn_comb_/min_val_out[0][6] , \knn_comb_/min_val_out[0][7] ,
         \knn_comb_/min_val_out[0][8] , \knn_comb_/min_val_out[0][9] ,
         \knn_comb_/min_val_out[0][10] , \knn_comb_/min_val_out[0][11] ,
         \knn_comb_/min_val_out[0][12] , \knn_comb_/min_val_out[0][13] ,
         \knn_comb_/min_val_out[0][14] , \knn_comb_/min_val_out[0][15] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][0] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][1] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][2] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][3] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][4] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][5] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][6] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][7] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][8] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][9] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][10] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][11] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][12] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][13] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][14] ,
         \knn_comb_/ASN_1[1].knn_/local_min_val[1][15] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824;
  assign \knn_comb_/min_val_out[0][0]  = p_input[48];
  assign \knn_comb_/min_val_out[0][1]  = p_input[49];
  assign \knn_comb_/min_val_out[0][2]  = p_input[50];
  assign \knn_comb_/min_val_out[0][3]  = p_input[51];
  assign \knn_comb_/min_val_out[0][4]  = p_input[52];
  assign \knn_comb_/min_val_out[0][5]  = p_input[53];
  assign \knn_comb_/min_val_out[0][6]  = p_input[54];
  assign \knn_comb_/min_val_out[0][7]  = p_input[55];
  assign \knn_comb_/min_val_out[0][8]  = p_input[56];
  assign \knn_comb_/min_val_out[0][9]  = p_input[57];
  assign \knn_comb_/min_val_out[0][10]  = p_input[58];
  assign \knn_comb_/min_val_out[0][11]  = p_input[59];
  assign \knn_comb_/min_val_out[0][12]  = p_input[60];
  assign \knn_comb_/min_val_out[0][13]  = p_input[61];
  assign \knn_comb_/min_val_out[0][14]  = p_input[62];
  assign \knn_comb_/min_val_out[0][15]  = p_input[63];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][0]  = p_input[32];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][1]  = p_input[33];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][2]  = p_input[34];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][3]  = p_input[35];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][4]  = p_input[36];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][5]  = p_input[37];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][6]  = p_input[38];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][7]  = p_input[39];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][8]  = p_input[40];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][9]  = p_input[41];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][10]  = p_input[42];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][11]  = p_input[43];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][12]  = p_input[44];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][13]  = p_input[45];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][14]  = p_input[46];
  assign \knn_comb_/ASN_1[1].knn_/local_min_val[1][15]  = p_input[47];

  XOR U1 ( .A(n1), .B(n2), .Z(o[9]) );
  AND U2 ( .A(n3), .B(n4), .Z(n1) );
  XOR U3 ( .A(n5), .B(n6), .Z(o[8]) );
  AND U4 ( .A(n3), .B(n7), .Z(n5) );
  XOR U5 ( .A(n8), .B(n9), .Z(o[7]) );
  AND U6 ( .A(n3), .B(n10), .Z(n8) );
  XOR U7 ( .A(n11), .B(n12), .Z(o[6]) );
  AND U8 ( .A(n3), .B(n13), .Z(n11) );
  XOR U9 ( .A(n14), .B(n15), .Z(o[5]) );
  AND U10 ( .A(n3), .B(n16), .Z(n14) );
  XOR U11 ( .A(n17), .B(n18), .Z(o[4]) );
  AND U12 ( .A(n3), .B(n19), .Z(n17) );
  XOR U13 ( .A(n20), .B(n21), .Z(o[3]) );
  AND U14 ( .A(n3), .B(n22), .Z(n20) );
  XOR U15 ( .A(n23), .B(n24), .Z(o[31]) );
  AND U16 ( .A(n25), .B(n26), .Z(n23) );
  XOR U17 ( .A(n27), .B(n28), .Z(o[30]) );
  AND U18 ( .A(n25), .B(n29), .Z(n27) );
  XOR U19 ( .A(n30), .B(n31), .Z(o[2]) );
  AND U20 ( .A(n3), .B(n32), .Z(n30) );
  XOR U21 ( .A(n33), .B(n34), .Z(o[29]) );
  AND U22 ( .A(n25), .B(n35), .Z(n33) );
  XOR U23 ( .A(n36), .B(n37), .Z(o[28]) );
  AND U24 ( .A(n25), .B(n38), .Z(n36) );
  XOR U25 ( .A(n39), .B(n40), .Z(o[27]) );
  AND U26 ( .A(n25), .B(n41), .Z(n39) );
  XOR U27 ( .A(n42), .B(n43), .Z(o[26]) );
  AND U28 ( .A(n25), .B(n44), .Z(n42) );
  XOR U29 ( .A(n45), .B(n46), .Z(o[25]) );
  AND U30 ( .A(n25), .B(n4), .Z(n45) );
  XOR U31 ( .A(n2), .B(n46), .Z(n4) );
  XOR U32 ( .A(n47), .B(n48), .Z(n46) );
  AND U33 ( .A(n49), .B(n50), .Z(n48) );
  XOR U34 ( .A(p_input[9]), .B(n47), .Z(n50) );
  XOR U35 ( .A(n51), .B(n52), .Z(n47) );
  AND U36 ( .A(n53), .B(n54), .Z(n52) );
  XOR U37 ( .A(n55), .B(n56), .Z(n2) );
  AND U38 ( .A(n57), .B(n54), .Z(n56) );
  XNOR U39 ( .A(n58), .B(n51), .Z(n54) );
  XOR U40 ( .A(n59), .B(n60), .Z(n51) );
  AND U41 ( .A(n61), .B(n62), .Z(n60) );
  XOR U42 ( .A(p_input[25]), .B(n59), .Z(n62) );
  XNOR U43 ( .A(n63), .B(n64), .Z(n59) );
  AND U44 ( .A(n65), .B(n66), .Z(n64) );
  IV U45 ( .A(n58), .Z(n55) );
  XNOR U46 ( .A(\knn_comb_/min_val_out[0][9] ), .B(n67), .Z(n58) );
  AND U47 ( .A(n68), .B(n66), .Z(n67) );
  XOR U48 ( .A(\knn_comb_/min_val_out[0][9] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][9] ), .Z(n66) );
  XOR U49 ( .A(n69), .B(n70), .Z(o[24]) );
  AND U50 ( .A(n25), .B(n7), .Z(n69) );
  XOR U51 ( .A(n6), .B(n70), .Z(n7) );
  XOR U52 ( .A(n71), .B(n72), .Z(n70) );
  AND U53 ( .A(n49), .B(n73), .Z(n72) );
  XOR U54 ( .A(p_input[8]), .B(n71), .Z(n73) );
  XOR U55 ( .A(n74), .B(n75), .Z(n71) );
  AND U56 ( .A(n53), .B(n76), .Z(n75) );
  XOR U57 ( .A(n77), .B(n78), .Z(n6) );
  AND U58 ( .A(n57), .B(n76), .Z(n78) );
  XNOR U59 ( .A(n79), .B(n74), .Z(n76) );
  XOR U60 ( .A(n80), .B(n81), .Z(n74) );
  AND U61 ( .A(n61), .B(n82), .Z(n81) );
  XOR U62 ( .A(p_input[24]), .B(n80), .Z(n82) );
  XNOR U63 ( .A(n83), .B(n84), .Z(n80) );
  AND U64 ( .A(n65), .B(n85), .Z(n84) );
  IV U65 ( .A(n79), .Z(n77) );
  XNOR U66 ( .A(\knn_comb_/min_val_out[0][8] ), .B(n86), .Z(n79) );
  AND U67 ( .A(n68), .B(n85), .Z(n86) );
  XOR U68 ( .A(\knn_comb_/min_val_out[0][8] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][8] ), .Z(n85) );
  XOR U69 ( .A(n87), .B(n88), .Z(o[23]) );
  AND U70 ( .A(n25), .B(n10), .Z(n87) );
  XOR U71 ( .A(n9), .B(n88), .Z(n10) );
  XOR U72 ( .A(n89), .B(n90), .Z(n88) );
  AND U73 ( .A(n49), .B(n91), .Z(n90) );
  XOR U74 ( .A(p_input[7]), .B(n89), .Z(n91) );
  XOR U75 ( .A(n92), .B(n93), .Z(n89) );
  AND U76 ( .A(n53), .B(n94), .Z(n93) );
  XOR U77 ( .A(n95), .B(n96), .Z(n9) );
  AND U78 ( .A(n57), .B(n94), .Z(n96) );
  XNOR U79 ( .A(n97), .B(n92), .Z(n94) );
  XOR U80 ( .A(n98), .B(n99), .Z(n92) );
  AND U81 ( .A(n61), .B(n100), .Z(n99) );
  XOR U82 ( .A(p_input[23]), .B(n98), .Z(n100) );
  XOR U83 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][7] ), .B(n101), .Z(
        n98) );
  AND U84 ( .A(n65), .B(n102), .Z(n101) );
  IV U85 ( .A(n97), .Z(n95) );
  XNOR U86 ( .A(\knn_comb_/min_val_out[0][7] ), .B(n103), .Z(n97) );
  AND U87 ( .A(n68), .B(n102), .Z(n103) );
  XOR U88 ( .A(\knn_comb_/min_val_out[0][7] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][7] ), .Z(n102) );
  XOR U89 ( .A(n104), .B(n105), .Z(o[22]) );
  AND U90 ( .A(n25), .B(n13), .Z(n104) );
  XOR U91 ( .A(n12), .B(n105), .Z(n13) );
  XOR U92 ( .A(n106), .B(n107), .Z(n105) );
  AND U93 ( .A(n49), .B(n108), .Z(n107) );
  XOR U94 ( .A(p_input[6]), .B(n106), .Z(n108) );
  XOR U95 ( .A(n109), .B(n110), .Z(n106) );
  AND U96 ( .A(n53), .B(n111), .Z(n110) );
  XOR U97 ( .A(n112), .B(n113), .Z(n12) );
  AND U98 ( .A(n57), .B(n111), .Z(n113) );
  XNOR U99 ( .A(n114), .B(n109), .Z(n111) );
  XOR U100 ( .A(n115), .B(n116), .Z(n109) );
  AND U101 ( .A(n61), .B(n117), .Z(n116) );
  XOR U102 ( .A(p_input[22]), .B(n115), .Z(n117) );
  XNOR U103 ( .A(n118), .B(n119), .Z(n115) );
  AND U104 ( .A(n65), .B(n120), .Z(n119) );
  IV U105 ( .A(n114), .Z(n112) );
  XNOR U106 ( .A(\knn_comb_/min_val_out[0][6] ), .B(n121), .Z(n114) );
  AND U107 ( .A(n68), .B(n120), .Z(n121) );
  XOR U108 ( .A(\knn_comb_/min_val_out[0][6] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][6] ), .Z(n120) );
  XOR U109 ( .A(n122), .B(n123), .Z(o[21]) );
  AND U110 ( .A(n25), .B(n16), .Z(n122) );
  XOR U111 ( .A(n15), .B(n123), .Z(n16) );
  XOR U112 ( .A(n124), .B(n125), .Z(n123) );
  AND U113 ( .A(n49), .B(n126), .Z(n125) );
  XOR U114 ( .A(p_input[5]), .B(n124), .Z(n126) );
  XOR U115 ( .A(n127), .B(n128), .Z(n124) );
  AND U116 ( .A(n53), .B(n129), .Z(n128) );
  XOR U117 ( .A(n130), .B(n131), .Z(n15) );
  AND U118 ( .A(n57), .B(n129), .Z(n131) );
  XNOR U119 ( .A(n132), .B(n127), .Z(n129) );
  XOR U120 ( .A(n133), .B(n134), .Z(n127) );
  AND U121 ( .A(n61), .B(n135), .Z(n134) );
  XOR U122 ( .A(p_input[21]), .B(n133), .Z(n135) );
  XNOR U123 ( .A(n136), .B(n137), .Z(n133) );
  AND U124 ( .A(n65), .B(n138), .Z(n137) );
  IV U125 ( .A(n132), .Z(n130) );
  XNOR U126 ( .A(\knn_comb_/min_val_out[0][5] ), .B(n139), .Z(n132) );
  AND U127 ( .A(n68), .B(n138), .Z(n139) );
  XOR U128 ( .A(\knn_comb_/min_val_out[0][5] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][5] ), .Z(n138) );
  XOR U129 ( .A(n140), .B(n141), .Z(o[20]) );
  AND U130 ( .A(n25), .B(n19), .Z(n140) );
  XOR U131 ( .A(n18), .B(n141), .Z(n19) );
  XOR U132 ( .A(n142), .B(n143), .Z(n141) );
  AND U133 ( .A(n49), .B(n144), .Z(n143) );
  XOR U134 ( .A(p_input[4]), .B(n142), .Z(n144) );
  XOR U135 ( .A(n145), .B(n146), .Z(n142) );
  AND U136 ( .A(n53), .B(n147), .Z(n146) );
  XOR U137 ( .A(n148), .B(n149), .Z(n18) );
  AND U138 ( .A(n57), .B(n147), .Z(n149) );
  XNOR U139 ( .A(n150), .B(n145), .Z(n147) );
  XOR U140 ( .A(n151), .B(n152), .Z(n145) );
  AND U141 ( .A(n61), .B(n153), .Z(n152) );
  XOR U142 ( .A(p_input[20]), .B(n151), .Z(n153) );
  XOR U143 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][4] ), .B(n154), .Z(
        n151) );
  AND U144 ( .A(n65), .B(n155), .Z(n154) );
  IV U145 ( .A(n150), .Z(n148) );
  XNOR U146 ( .A(\knn_comb_/min_val_out[0][4] ), .B(n156), .Z(n150) );
  AND U147 ( .A(n68), .B(n155), .Z(n156) );
  XOR U148 ( .A(\knn_comb_/min_val_out[0][4] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][4] ), .Z(n155) );
  XOR U149 ( .A(n157), .B(n158), .Z(o[1]) );
  AND U150 ( .A(n3), .B(n159), .Z(n157) );
  XOR U151 ( .A(n160), .B(n161), .Z(o[19]) );
  AND U152 ( .A(n25), .B(n22), .Z(n160) );
  XOR U153 ( .A(n21), .B(n161), .Z(n22) );
  XOR U154 ( .A(n162), .B(n163), .Z(n161) );
  AND U155 ( .A(n49), .B(n164), .Z(n163) );
  XOR U156 ( .A(p_input[3]), .B(n162), .Z(n164) );
  XOR U157 ( .A(n165), .B(n166), .Z(n162) );
  AND U158 ( .A(n53), .B(n167), .Z(n166) );
  XOR U159 ( .A(n168), .B(n169), .Z(n21) );
  AND U160 ( .A(n57), .B(n167), .Z(n169) );
  XNOR U161 ( .A(n170), .B(n165), .Z(n167) );
  XOR U162 ( .A(n171), .B(n172), .Z(n165) );
  AND U163 ( .A(n61), .B(n173), .Z(n172) );
  XOR U164 ( .A(p_input[19]), .B(n171), .Z(n173) );
  XNOR U165 ( .A(n174), .B(n175), .Z(n171) );
  AND U166 ( .A(n65), .B(n176), .Z(n175) );
  IV U167 ( .A(n170), .Z(n168) );
  XNOR U168 ( .A(\knn_comb_/min_val_out[0][3] ), .B(n177), .Z(n170) );
  AND U169 ( .A(n68), .B(n176), .Z(n177) );
  XOR U170 ( .A(\knn_comb_/min_val_out[0][3] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][3] ), .Z(n176) );
  XOR U171 ( .A(n178), .B(n179), .Z(o[18]) );
  AND U172 ( .A(n25), .B(n32), .Z(n178) );
  XOR U173 ( .A(n31), .B(n179), .Z(n32) );
  XOR U174 ( .A(n180), .B(n181), .Z(n179) );
  AND U175 ( .A(n49), .B(n182), .Z(n181) );
  XOR U176 ( .A(p_input[2]), .B(n180), .Z(n182) );
  XOR U177 ( .A(n183), .B(n184), .Z(n180) );
  AND U178 ( .A(n53), .B(n185), .Z(n184) );
  XOR U179 ( .A(n186), .B(n187), .Z(n31) );
  AND U180 ( .A(n57), .B(n185), .Z(n187) );
  XNOR U181 ( .A(n188), .B(n183), .Z(n185) );
  XOR U182 ( .A(n189), .B(n190), .Z(n183) );
  AND U183 ( .A(n61), .B(n191), .Z(n190) );
  XOR U184 ( .A(p_input[18]), .B(n189), .Z(n191) );
  XNOR U185 ( .A(n192), .B(n193), .Z(n189) );
  AND U186 ( .A(n65), .B(n194), .Z(n193) );
  IV U187 ( .A(n188), .Z(n186) );
  XNOR U188 ( .A(\knn_comb_/min_val_out[0][2] ), .B(n195), .Z(n188) );
  AND U189 ( .A(n68), .B(n194), .Z(n195) );
  XOR U190 ( .A(\knn_comb_/min_val_out[0][2] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][2] ), .Z(n194) );
  XOR U191 ( .A(n196), .B(n197), .Z(o[17]) );
  AND U192 ( .A(n25), .B(n159), .Z(n196) );
  XOR U193 ( .A(n158), .B(n197), .Z(n159) );
  XOR U194 ( .A(n198), .B(n199), .Z(n197) );
  AND U195 ( .A(n49), .B(n200), .Z(n199) );
  XOR U196 ( .A(p_input[1]), .B(n198), .Z(n200) );
  XOR U197 ( .A(n201), .B(n202), .Z(n198) );
  AND U198 ( .A(n53), .B(n203), .Z(n202) );
  XOR U199 ( .A(n204), .B(n205), .Z(n158) );
  AND U200 ( .A(n57), .B(n203), .Z(n205) );
  XNOR U201 ( .A(n206), .B(n201), .Z(n203) );
  XOR U202 ( .A(n207), .B(n208), .Z(n201) );
  AND U203 ( .A(n61), .B(n209), .Z(n208) );
  XOR U204 ( .A(p_input[17]), .B(n207), .Z(n209) );
  XNOR U205 ( .A(n210), .B(n211), .Z(n207) );
  AND U206 ( .A(n65), .B(n212), .Z(n211) );
  IV U207 ( .A(n206), .Z(n204) );
  XNOR U208 ( .A(\knn_comb_/min_val_out[0][1] ), .B(n213), .Z(n206) );
  AND U209 ( .A(n68), .B(n212), .Z(n213) );
  XOR U210 ( .A(\knn_comb_/min_val_out[0][1] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][1] ), .Z(n212) );
  XOR U211 ( .A(n214), .B(n215), .Z(o[16]) );
  AND U212 ( .A(n25), .B(n216), .Z(n214) );
  XOR U213 ( .A(n217), .B(n218), .Z(n25) );
  MUX U214 ( .IN0(n219), .IN1(n220), .SEL(n217), .F(n218) );
  XNOR U215 ( .A(n221), .B(n222), .Z(n217) );
  XOR U216 ( .A(n223), .B(n224), .Z(o[15]) );
  AND U217 ( .A(n3), .B(n26), .Z(n223) );
  XOR U218 ( .A(n24), .B(n224), .Z(n26) );
  XOR U219 ( .A(n225), .B(n226), .Z(n224) );
  AND U220 ( .A(n57), .B(n227), .Z(n226) );
  XOR U221 ( .A(n228), .B(n229), .Z(n24) );
  AND U222 ( .A(n49), .B(n230), .Z(n229) );
  XOR U223 ( .A(p_input[15]), .B(n228), .Z(n230) );
  XNOR U224 ( .A(n231), .B(n232), .Z(n228) );
  AND U225 ( .A(n53), .B(n227), .Z(n232) );
  XNOR U226 ( .A(n231), .B(n225), .Z(n227) );
  XOR U227 ( .A(\knn_comb_/min_val_out[0][15] ), .B(n233), .Z(n225) );
  AND U228 ( .A(n68), .B(n234), .Z(n233) );
  XNOR U229 ( .A(n235), .B(n236), .Z(n231) );
  AND U230 ( .A(n61), .B(n237), .Z(n236) );
  XOR U231 ( .A(p_input[31]), .B(n235), .Z(n237) );
  XNOR U232 ( .A(n238), .B(n239), .Z(n235) );
  AND U233 ( .A(n65), .B(n234), .Z(n239) );
  XOR U234 ( .A(n240), .B(n238), .Z(n234) );
  IV U235 ( .A(\knn_comb_/min_val_out[0][15] ), .Z(n240) );
  IV U236 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][15] ), .Z(n238) );
  XOR U237 ( .A(n241), .B(n242), .Z(o[14]) );
  AND U238 ( .A(n3), .B(n29), .Z(n241) );
  XOR U239 ( .A(n28), .B(n242), .Z(n29) );
  XOR U240 ( .A(n243), .B(n244), .Z(n242) );
  AND U241 ( .A(n57), .B(n245), .Z(n244) );
  XOR U242 ( .A(n246), .B(n247), .Z(n28) );
  AND U243 ( .A(n49), .B(n248), .Z(n247) );
  XOR U244 ( .A(p_input[14]), .B(n246), .Z(n248) );
  XNOR U245 ( .A(n249), .B(n250), .Z(n246) );
  AND U246 ( .A(n53), .B(n245), .Z(n250) );
  XNOR U247 ( .A(n249), .B(n243), .Z(n245) );
  XOR U248 ( .A(\knn_comb_/min_val_out[0][14] ), .B(n251), .Z(n243) );
  AND U249 ( .A(n68), .B(n252), .Z(n251) );
  XNOR U250 ( .A(n253), .B(n254), .Z(n249) );
  AND U251 ( .A(n61), .B(n255), .Z(n254) );
  XOR U252 ( .A(p_input[30]), .B(n253), .Z(n255) );
  XNOR U253 ( .A(n256), .B(n257), .Z(n253) );
  AND U254 ( .A(n65), .B(n252), .Z(n257) );
  XOR U255 ( .A(n258), .B(n256), .Z(n252) );
  IV U256 ( .A(\knn_comb_/min_val_out[0][14] ), .Z(n258) );
  IV U257 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][14] ), .Z(n256) );
  XOR U258 ( .A(n259), .B(n260), .Z(o[13]) );
  AND U259 ( .A(n3), .B(n35), .Z(n259) );
  XOR U260 ( .A(n34), .B(n260), .Z(n35) );
  XOR U261 ( .A(n261), .B(n262), .Z(n260) );
  AND U262 ( .A(n57), .B(n263), .Z(n262) );
  XOR U263 ( .A(n264), .B(n265), .Z(n34) );
  AND U264 ( .A(n49), .B(n266), .Z(n265) );
  XOR U265 ( .A(p_input[13]), .B(n264), .Z(n266) );
  XNOR U266 ( .A(n267), .B(n268), .Z(n264) );
  AND U267 ( .A(n53), .B(n263), .Z(n268) );
  XNOR U268 ( .A(n267), .B(n261), .Z(n263) );
  XOR U269 ( .A(\knn_comb_/min_val_out[0][13] ), .B(n269), .Z(n261) );
  AND U270 ( .A(n68), .B(n270), .Z(n269) );
  XNOR U271 ( .A(n271), .B(n272), .Z(n267) );
  AND U272 ( .A(n61), .B(n273), .Z(n272) );
  XOR U273 ( .A(p_input[29]), .B(n271), .Z(n273) );
  XNOR U274 ( .A(n274), .B(n275), .Z(n271) );
  AND U275 ( .A(n65), .B(n270), .Z(n275) );
  XOR U276 ( .A(\knn_comb_/min_val_out[0][13] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][13] ), .Z(n270) );
  XOR U277 ( .A(n276), .B(n277), .Z(o[12]) );
  AND U278 ( .A(n3), .B(n38), .Z(n276) );
  XOR U279 ( .A(n37), .B(n277), .Z(n38) );
  XOR U280 ( .A(n278), .B(n279), .Z(n277) );
  AND U281 ( .A(n57), .B(n280), .Z(n279) );
  XOR U282 ( .A(n281), .B(n282), .Z(n37) );
  AND U283 ( .A(n49), .B(n283), .Z(n282) );
  XOR U284 ( .A(p_input[12]), .B(n281), .Z(n283) );
  XNOR U285 ( .A(n284), .B(n285), .Z(n281) );
  AND U286 ( .A(n53), .B(n280), .Z(n285) );
  XNOR U287 ( .A(n284), .B(n278), .Z(n280) );
  XOR U288 ( .A(\knn_comb_/min_val_out[0][12] ), .B(n286), .Z(n278) );
  AND U289 ( .A(n68), .B(n287), .Z(n286) );
  XNOR U290 ( .A(n288), .B(n289), .Z(n284) );
  AND U291 ( .A(n61), .B(n290), .Z(n289) );
  XOR U292 ( .A(p_input[28]), .B(n288), .Z(n290) );
  XNOR U293 ( .A(n291), .B(n292), .Z(n288) );
  AND U294 ( .A(n65), .B(n287), .Z(n292) );
  XOR U295 ( .A(\knn_comb_/min_val_out[0][12] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][12] ), .Z(n287) );
  XOR U296 ( .A(n293), .B(n294), .Z(o[11]) );
  AND U297 ( .A(n3), .B(n41), .Z(n293) );
  XOR U298 ( .A(n40), .B(n294), .Z(n41) );
  XOR U299 ( .A(n295), .B(n296), .Z(n294) );
  AND U300 ( .A(n57), .B(n297), .Z(n296) );
  XOR U301 ( .A(n298), .B(n299), .Z(n40) );
  AND U302 ( .A(n49), .B(n300), .Z(n299) );
  XOR U303 ( .A(p_input[11]), .B(n298), .Z(n300) );
  XNOR U304 ( .A(n301), .B(n302), .Z(n298) );
  AND U305 ( .A(n53), .B(n297), .Z(n302) );
  XNOR U306 ( .A(n301), .B(n295), .Z(n297) );
  XOR U307 ( .A(\knn_comb_/min_val_out[0][11] ), .B(n303), .Z(n295) );
  AND U308 ( .A(n68), .B(n304), .Z(n303) );
  XNOR U309 ( .A(n305), .B(n306), .Z(n301) );
  AND U310 ( .A(n61), .B(n307), .Z(n306) );
  XOR U311 ( .A(p_input[27]), .B(n305), .Z(n307) );
  XNOR U312 ( .A(n308), .B(n309), .Z(n305) );
  AND U313 ( .A(n65), .B(n304), .Z(n309) );
  XOR U314 ( .A(n310), .B(n308), .Z(n304) );
  IV U315 ( .A(\knn_comb_/min_val_out[0][11] ), .Z(n310) );
  IV U316 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][11] ), .Z(n308) );
  XOR U317 ( .A(n311), .B(n312), .Z(o[10]) );
  AND U318 ( .A(n3), .B(n44), .Z(n311) );
  XOR U319 ( .A(n43), .B(n312), .Z(n44) );
  XOR U320 ( .A(n313), .B(n314), .Z(n312) );
  AND U321 ( .A(n57), .B(n315), .Z(n314) );
  XOR U322 ( .A(n316), .B(n317), .Z(n43) );
  AND U323 ( .A(n49), .B(n318), .Z(n317) );
  XOR U324 ( .A(p_input[10]), .B(n316), .Z(n318) );
  XNOR U325 ( .A(n319), .B(n320), .Z(n316) );
  AND U326 ( .A(n53), .B(n315), .Z(n320) );
  XNOR U327 ( .A(n319), .B(n313), .Z(n315) );
  XOR U328 ( .A(\knn_comb_/min_val_out[0][10] ), .B(n321), .Z(n313) );
  AND U329 ( .A(n68), .B(n322), .Z(n321) );
  XNOR U330 ( .A(n323), .B(n324), .Z(n319) );
  AND U331 ( .A(n61), .B(n325), .Z(n324) );
  XOR U332 ( .A(p_input[26]), .B(n323), .Z(n325) );
  XNOR U333 ( .A(n326), .B(n327), .Z(n323) );
  AND U334 ( .A(n65), .B(n322), .Z(n327) );
  XOR U335 ( .A(\knn_comb_/min_val_out[0][10] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][10] ), .Z(n322) );
  XOR U336 ( .A(n328), .B(n329), .Z(o[0]) );
  AND U337 ( .A(n3), .B(n216), .Z(n328) );
  XOR U338 ( .A(n215), .B(n329), .Z(n216) );
  XOR U339 ( .A(n330), .B(n331), .Z(n329) );
  AND U340 ( .A(n57), .B(n332), .Z(n331) );
  XOR U341 ( .A(n333), .B(n334), .Z(n215) );
  AND U342 ( .A(n49), .B(n335), .Z(n334) );
  XOR U343 ( .A(p_input[0]), .B(n333), .Z(n335) );
  XNOR U344 ( .A(n336), .B(n337), .Z(n333) );
  AND U345 ( .A(n53), .B(n332), .Z(n337) );
  XNOR U346 ( .A(n336), .B(n330), .Z(n332) );
  XOR U347 ( .A(\knn_comb_/min_val_out[0][0] ), .B(n338), .Z(n330) );
  AND U348 ( .A(n68), .B(n339), .Z(n338) );
  XNOR U349 ( .A(n340), .B(n341), .Z(n336) );
  AND U350 ( .A(n61), .B(n342), .Z(n341) );
  XOR U351 ( .A(p_input[16]), .B(n340), .Z(n342) );
  XNOR U352 ( .A(n343), .B(n344), .Z(n340) );
  AND U353 ( .A(n65), .B(n339), .Z(n344) );
  XOR U354 ( .A(\knn_comb_/min_val_out[0][0] ), .B(
        \knn_comb_/ASN_1[1].knn_/local_min_val[1][0] ), .Z(n339) );
  XNOR U355 ( .A(n345), .B(n346), .Z(n3) );
  MUX U356 ( .IN0(n220), .IN1(n219), .SEL(n345), .F(n346) );
  AND U357 ( .A(n347), .B(n348), .Z(n219) );
  AND U358 ( .A(n349), .B(n350), .Z(n220) );
  IV U359 ( .A(n351), .Z(n349) );
  XOR U360 ( .A(n221), .B(n222), .Z(n345) );
  AND U361 ( .A(n352), .B(n353), .Z(n222) );
  XNOR U362 ( .A(n221), .B(n354), .Z(n353) );
  XOR U363 ( .A(n355), .B(n356), .Z(n354) );
  AND U364 ( .A(n49), .B(n357), .Z(n356) );
  XOR U365 ( .A(n358), .B(n355), .Z(n357) );
  XNOR U366 ( .A(n221), .B(n359), .Z(n352) );
  XOR U367 ( .A(n360), .B(n361), .Z(n359) );
  AND U368 ( .A(n57), .B(n362), .Z(n361) );
  XNOR U369 ( .A(n360), .B(n363), .Z(n362) );
  XOR U370 ( .A(n364), .B(n365), .Z(n221) );
  AND U371 ( .A(n366), .B(n367), .Z(n365) );
  XOR U372 ( .A(n368), .B(n364), .Z(n367) );
  XOR U373 ( .A(n369), .B(n370), .Z(n368) );
  AND U374 ( .A(n49), .B(n371), .Z(n370) );
  XNOR U375 ( .A(n372), .B(n369), .Z(n371) );
  XNOR U376 ( .A(n364), .B(n373), .Z(n366) );
  XOR U377 ( .A(n374), .B(n375), .Z(n373) );
  AND U378 ( .A(n57), .B(n376), .Z(n375) );
  XOR U379 ( .A(n377), .B(n378), .Z(n364) );
  AND U380 ( .A(n379), .B(n380), .Z(n378) );
  XOR U381 ( .A(n377), .B(n381), .Z(n380) );
  XOR U382 ( .A(n382), .B(n383), .Z(n381) );
  AND U383 ( .A(n49), .B(n384), .Z(n383) );
  XOR U384 ( .A(n385), .B(n382), .Z(n384) );
  XNOR U385 ( .A(n386), .B(n377), .Z(n379) );
  XNOR U386 ( .A(n387), .B(n388), .Z(n386) );
  AND U387 ( .A(n57), .B(n389), .Z(n388) );
  AND U388 ( .A(n390), .B(n391), .Z(n377) );
  XNOR U389 ( .A(n392), .B(n393), .Z(n391) );
  AND U390 ( .A(n49), .B(n394), .Z(n393) );
  XNOR U391 ( .A(n395), .B(n392), .Z(n394) );
  XNOR U392 ( .A(n396), .B(n397), .Z(n49) );
  NOR U393 ( .A(n398), .B(n399), .Z(n397) );
  XNOR U394 ( .A(n396), .B(n351), .Z(n399) );
  NOR U395 ( .A(n347), .B(n348), .Z(n351) );
  NOR U396 ( .A(n396), .B(n350), .Z(n398) );
  AND U397 ( .A(n358), .B(n400), .Z(n350) );
  XOR U398 ( .A(n401), .B(n402), .Z(n396) );
  AND U399 ( .A(n403), .B(n404), .Z(n402) );
  XNOR U400 ( .A(n401), .B(n358), .Z(n404) );
  XNOR U401 ( .A(n405), .B(n406), .Z(n358) );
  XOR U402 ( .A(n407), .B(n400), .Z(n406) );
  AND U403 ( .A(n372), .B(n408), .Z(n400) );
  AND U404 ( .A(n409), .B(n410), .Z(n407) );
  XOR U405 ( .A(n411), .B(n405), .Z(n409) );
  XOR U406 ( .A(n355), .B(n401), .Z(n403) );
  AND U407 ( .A(n412), .B(n363), .Z(n355) );
  XOR U408 ( .A(n413), .B(n414), .Z(n401) );
  AND U409 ( .A(n415), .B(n416), .Z(n414) );
  XNOR U410 ( .A(n413), .B(n372), .Z(n416) );
  XOR U411 ( .A(n417), .B(n410), .Z(n372) );
  XNOR U412 ( .A(n418), .B(n405), .Z(n410) );
  XOR U413 ( .A(n419), .B(n420), .Z(n405) );
  AND U414 ( .A(n421), .B(n422), .Z(n420) );
  XOR U415 ( .A(n423), .B(n419), .Z(n421) );
  XNOR U416 ( .A(n424), .B(n425), .Z(n418) );
  AND U417 ( .A(n426), .B(n427), .Z(n425) );
  XOR U418 ( .A(n424), .B(n428), .Z(n426) );
  XNOR U419 ( .A(n411), .B(n408), .Z(n417) );
  AND U420 ( .A(n429), .B(n430), .Z(n408) );
  XOR U421 ( .A(n431), .B(n432), .Z(n411) );
  AND U422 ( .A(n433), .B(n434), .Z(n432) );
  XOR U423 ( .A(n431), .B(n435), .Z(n433) );
  XNOR U424 ( .A(n369), .B(n413), .Z(n415) );
  XNOR U425 ( .A(n436), .B(n437), .Z(n369) );
  AND U426 ( .A(n53), .B(n376), .Z(n437) );
  XOR U427 ( .A(n436), .B(n438), .Z(n376) );
  XOR U428 ( .A(n439), .B(n440), .Z(n413) );
  AND U429 ( .A(n441), .B(n442), .Z(n440) );
  XNOR U430 ( .A(n439), .B(n429), .Z(n442) );
  IV U431 ( .A(n385), .Z(n429) );
  XNOR U432 ( .A(n443), .B(n422), .Z(n385) );
  XNOR U433 ( .A(n444), .B(n428), .Z(n422) );
  XOR U434 ( .A(n445), .B(n446), .Z(n428) );
  NOR U435 ( .A(n447), .B(n448), .Z(n446) );
  XNOR U436 ( .A(n445), .B(n449), .Z(n447) );
  XNOR U437 ( .A(n427), .B(n419), .Z(n444) );
  XOR U438 ( .A(n450), .B(n451), .Z(n419) );
  AND U439 ( .A(n452), .B(n453), .Z(n451) );
  XOR U440 ( .A(n454), .B(n455), .Z(n452) );
  XNOR U441 ( .A(n456), .B(n424), .Z(n427) );
  XOR U442 ( .A(n457), .B(n458), .Z(n424) );
  NOR U443 ( .A(n459), .B(n460), .Z(n458) );
  XNOR U444 ( .A(n457), .B(n461), .Z(n459) );
  XNOR U445 ( .A(n462), .B(n463), .Z(n456) );
  NOR U446 ( .A(n464), .B(n465), .Z(n463) );
  XNOR U447 ( .A(n462), .B(n466), .Z(n464) );
  XNOR U448 ( .A(n423), .B(n430), .Z(n443) );
  NOR U449 ( .A(n395), .B(n467), .Z(n430) );
  XOR U450 ( .A(n435), .B(n434), .Z(n423) );
  XNOR U451 ( .A(n468), .B(n431), .Z(n434) );
  XOR U452 ( .A(n469), .B(n470), .Z(n431) );
  AND U453 ( .A(n471), .B(n472), .Z(n470) );
  XOR U454 ( .A(n469), .B(n473), .Z(n471) );
  XNOR U455 ( .A(n474), .B(n475), .Z(n468) );
  NOR U456 ( .A(n476), .B(n477), .Z(n475) );
  XNOR U457 ( .A(n474), .B(n478), .Z(n476) );
  XOR U458 ( .A(n479), .B(n480), .Z(n435) );
  NOR U459 ( .A(n481), .B(n482), .Z(n480) );
  XNOR U460 ( .A(n479), .B(n483), .Z(n481) );
  XNOR U461 ( .A(n382), .B(n439), .Z(n441) );
  XNOR U462 ( .A(n484), .B(n485), .Z(n382) );
  AND U463 ( .A(n53), .B(n389), .Z(n485) );
  XOR U464 ( .A(n484), .B(n387), .Z(n389) );
  AND U465 ( .A(n392), .B(n395), .Z(n439) );
  XOR U466 ( .A(n486), .B(n467), .Z(n395) );
  XNOR U467 ( .A(p_input[0]), .B(p_input[64]), .Z(n467) );
  XOR U468 ( .A(n455), .B(n453), .Z(n486) );
  XNOR U469 ( .A(n487), .B(n461), .Z(n453) );
  XNOR U470 ( .A(n449), .B(n448), .Z(n461) );
  XOR U471 ( .A(n488), .B(n445), .Z(n448) );
  XOR U472 ( .A(p_input[10]), .B(p_input[74]), .Z(n445) );
  XNOR U473 ( .A(p_input[11]), .B(p_input[75]), .Z(n488) );
  XOR U474 ( .A(p_input[12]), .B(p_input[76]), .Z(n449) );
  XNOR U475 ( .A(n460), .B(n454), .Z(n487) );
  IV U476 ( .A(n450), .Z(n454) );
  XOR U477 ( .A(p_input[1]), .B(p_input[65]), .Z(n450) );
  XOR U478 ( .A(n489), .B(n466), .Z(n460) );
  XOR U479 ( .A(p_input[15]), .B(p_input[79]), .Z(n466) );
  XOR U480 ( .A(n457), .B(n465), .Z(n489) );
  XOR U481 ( .A(n490), .B(n462), .Z(n465) );
  XOR U482 ( .A(p_input[13]), .B(p_input[77]), .Z(n462) );
  XNOR U483 ( .A(p_input[14]), .B(p_input[78]), .Z(n490) );
  XOR U484 ( .A(p_input[73]), .B(p_input[9]), .Z(n457) );
  XNOR U485 ( .A(n473), .B(n472), .Z(n455) );
  XNOR U486 ( .A(n491), .B(n478), .Z(n472) );
  XOR U487 ( .A(p_input[72]), .B(p_input[8]), .Z(n478) );
  XOR U488 ( .A(n469), .B(n477), .Z(n491) );
  XOR U489 ( .A(n492), .B(n474), .Z(n477) );
  XOR U490 ( .A(p_input[6]), .B(p_input[70]), .Z(n474) );
  XNOR U491 ( .A(p_input[71]), .B(p_input[7]), .Z(n492) );
  XOR U492 ( .A(p_input[2]), .B(p_input[66]), .Z(n469) );
  XNOR U493 ( .A(n483), .B(n482), .Z(n473) );
  XOR U494 ( .A(n493), .B(n479), .Z(n482) );
  XOR U495 ( .A(p_input[3]), .B(p_input[67]), .Z(n479) );
  XNOR U496 ( .A(p_input[4]), .B(p_input[68]), .Z(n493) );
  XOR U497 ( .A(p_input[5]), .B(p_input[69]), .Z(n483) );
  XNOR U498 ( .A(n494), .B(n495), .Z(n392) );
  AND U499 ( .A(n53), .B(n496), .Z(n495) );
  XOR U500 ( .A(n497), .B(n498), .Z(n53) );
  MUX U501 ( .IN0(n348), .IN1(n347), .SEL(n497), .F(n498) );
  XNOR U502 ( .A(n499), .B(n500), .Z(n497) );
  AND U503 ( .A(n501), .B(n502), .Z(n500) );
  XNOR U504 ( .A(n499), .B(n363), .Z(n502) );
  XOR U505 ( .A(n499), .B(n412), .Z(n501) );
  XOR U506 ( .A(n503), .B(n504), .Z(n499) );
  AND U507 ( .A(n505), .B(n506), .Z(n504) );
  XOR U508 ( .A(n503), .B(n438), .Z(n505) );
  IV U509 ( .A(n374), .Z(n438) );
  XOR U510 ( .A(n507), .B(n508), .Z(n390) );
  AND U511 ( .A(n57), .B(n496), .Z(n508) );
  XNOR U512 ( .A(n494), .B(n507), .Z(n496) );
  XNOR U513 ( .A(n509), .B(n510), .Z(n57) );
  MUX U514 ( .IN0(n347), .IN1(n348), .SEL(n509), .F(n510) );
  AND U515 ( .A(n511), .B(n512), .Z(n348) );
  AND U516 ( .A(n513), .B(n514), .Z(n347) );
  IV U517 ( .A(n515), .Z(n513) );
  XOR U518 ( .A(n516), .B(n517), .Z(n509) );
  AND U519 ( .A(n518), .B(n519), .Z(n517) );
  XNOR U520 ( .A(n363), .B(n516), .Z(n519) );
  XOR U521 ( .A(n520), .B(n521), .Z(n363) );
  AND U522 ( .A(n61), .B(n522), .Z(n521) );
  XOR U523 ( .A(n523), .B(n520), .Z(n522) );
  XNOR U524 ( .A(n360), .B(n516), .Z(n518) );
  IV U525 ( .A(n412), .Z(n360) );
  XOR U526 ( .A(n524), .B(n525), .Z(n412) );
  AND U527 ( .A(n68), .B(n526), .Z(n525) );
  XOR U528 ( .A(n527), .B(n524), .Z(n526) );
  XOR U529 ( .A(n503), .B(n528), .Z(n516) );
  AND U530 ( .A(n529), .B(n506), .Z(n528) );
  XNOR U531 ( .A(n436), .B(n503), .Z(n506) );
  XNOR U532 ( .A(n530), .B(n531), .Z(n436) );
  AND U533 ( .A(n61), .B(n532), .Z(n531) );
  XNOR U534 ( .A(n533), .B(n530), .Z(n532) );
  XNOR U535 ( .A(n374), .B(n503), .Z(n529) );
  XNOR U536 ( .A(n534), .B(n535), .Z(n374) );
  AND U537 ( .A(n68), .B(n536), .Z(n535) );
  XOR U538 ( .A(n537), .B(n538), .Z(n503) );
  AND U539 ( .A(n539), .B(n540), .Z(n538) );
  XNOR U540 ( .A(n537), .B(n484), .Z(n540) );
  XNOR U541 ( .A(n541), .B(n542), .Z(n484) );
  AND U542 ( .A(n61), .B(n543), .Z(n542) );
  XOR U543 ( .A(n544), .B(n541), .Z(n543) );
  XNOR U544 ( .A(n545), .B(n537), .Z(n539) );
  IV U545 ( .A(n387), .Z(n545) );
  XOR U546 ( .A(n546), .B(n547), .Z(n387) );
  AND U547 ( .A(n68), .B(n548), .Z(n547) );
  AND U548 ( .A(n507), .B(n494), .Z(n537) );
  XNOR U549 ( .A(n549), .B(n550), .Z(n494) );
  AND U550 ( .A(n61), .B(n551), .Z(n550) );
  XNOR U551 ( .A(n552), .B(n549), .Z(n551) );
  XNOR U552 ( .A(n553), .B(n554), .Z(n61) );
  NOR U553 ( .A(n555), .B(n556), .Z(n554) );
  XNOR U554 ( .A(n553), .B(n515), .Z(n556) );
  NOR U555 ( .A(n511), .B(n512), .Z(n515) );
  NOR U556 ( .A(n553), .B(n514), .Z(n555) );
  AND U557 ( .A(n523), .B(n557), .Z(n514) );
  XOR U558 ( .A(n558), .B(n559), .Z(n553) );
  AND U559 ( .A(n560), .B(n561), .Z(n559) );
  XNOR U560 ( .A(n558), .B(n523), .Z(n561) );
  XNOR U561 ( .A(n562), .B(n563), .Z(n523) );
  XOR U562 ( .A(n564), .B(n557), .Z(n563) );
  AND U563 ( .A(n533), .B(n565), .Z(n557) );
  AND U564 ( .A(n566), .B(n567), .Z(n564) );
  XOR U565 ( .A(n568), .B(n562), .Z(n566) );
  XOR U566 ( .A(n520), .B(n558), .Z(n560) );
  AND U567 ( .A(n524), .B(n527), .Z(n520) );
  XOR U568 ( .A(n569), .B(n570), .Z(n558) );
  AND U569 ( .A(n571), .B(n572), .Z(n570) );
  XNOR U570 ( .A(n569), .B(n533), .Z(n572) );
  XOR U571 ( .A(n573), .B(n567), .Z(n533) );
  XNOR U572 ( .A(n574), .B(n562), .Z(n567) );
  XOR U573 ( .A(n575), .B(n576), .Z(n562) );
  AND U574 ( .A(n577), .B(n578), .Z(n576) );
  XOR U575 ( .A(n579), .B(n575), .Z(n577) );
  XNOR U576 ( .A(n580), .B(n581), .Z(n574) );
  AND U577 ( .A(n582), .B(n583), .Z(n581) );
  XOR U578 ( .A(n580), .B(n584), .Z(n582) );
  XNOR U579 ( .A(n568), .B(n565), .Z(n573) );
  AND U580 ( .A(n585), .B(n586), .Z(n565) );
  XOR U581 ( .A(n587), .B(n588), .Z(n568) );
  AND U582 ( .A(n589), .B(n590), .Z(n588) );
  XOR U583 ( .A(n587), .B(n591), .Z(n589) );
  XNOR U584 ( .A(n530), .B(n569), .Z(n571) );
  XNOR U585 ( .A(n592), .B(n593), .Z(n530) );
  AND U586 ( .A(n65), .B(n536), .Z(n593) );
  XOR U587 ( .A(n592), .B(n534), .Z(n536) );
  XOR U588 ( .A(n594), .B(n595), .Z(n569) );
  AND U589 ( .A(n596), .B(n597), .Z(n595) );
  XNOR U590 ( .A(n594), .B(n585), .Z(n597) );
  IV U591 ( .A(n544), .Z(n585) );
  XNOR U592 ( .A(n598), .B(n578), .Z(n544) );
  XNOR U593 ( .A(n599), .B(n584), .Z(n578) );
  XNOR U594 ( .A(n600), .B(n601), .Z(n584) );
  NOR U595 ( .A(n602), .B(n603), .Z(n601) );
  XOR U596 ( .A(n600), .B(n604), .Z(n602) );
  XNOR U597 ( .A(n583), .B(n575), .Z(n599) );
  XOR U598 ( .A(n605), .B(n606), .Z(n575) );
  AND U599 ( .A(n607), .B(n608), .Z(n606) );
  XOR U600 ( .A(n605), .B(n609), .Z(n607) );
  XNOR U601 ( .A(n610), .B(n580), .Z(n583) );
  XOR U602 ( .A(n611), .B(n612), .Z(n580) );
  AND U603 ( .A(n613), .B(n614), .Z(n612) );
  XOR U604 ( .A(n611), .B(n615), .Z(n613) );
  XNOR U605 ( .A(n616), .B(n617), .Z(n610) );
  NOR U606 ( .A(n618), .B(n619), .Z(n617) );
  XNOR U607 ( .A(n616), .B(n620), .Z(n618) );
  XNOR U608 ( .A(n579), .B(n586), .Z(n598) );
  NOR U609 ( .A(n552), .B(n621), .Z(n586) );
  XOR U610 ( .A(n591), .B(n590), .Z(n579) );
  XNOR U611 ( .A(n622), .B(n587), .Z(n590) );
  XNOR U612 ( .A(n623), .B(n624), .Z(n587) );
  NOR U613 ( .A(n625), .B(n626), .Z(n624) );
  XOR U614 ( .A(n623), .B(n627), .Z(n625) );
  XNOR U615 ( .A(n628), .B(n629), .Z(n622) );
  NOR U616 ( .A(n630), .B(n631), .Z(n629) );
  XNOR U617 ( .A(n628), .B(n632), .Z(n630) );
  XOR U618 ( .A(n633), .B(n634), .Z(n591) );
  NOR U619 ( .A(n635), .B(n636), .Z(n634) );
  XNOR U620 ( .A(n633), .B(n637), .Z(n635) );
  XNOR U621 ( .A(n541), .B(n594), .Z(n596) );
  XNOR U622 ( .A(n638), .B(n639), .Z(n541) );
  AND U623 ( .A(n65), .B(n548), .Z(n639) );
  XOR U624 ( .A(n638), .B(n546), .Z(n548) );
  AND U625 ( .A(n549), .B(n552), .Z(n594) );
  XOR U626 ( .A(n640), .B(n621), .Z(n552) );
  XNOR U627 ( .A(p_input[16]), .B(p_input[64]), .Z(n621) );
  XNOR U628 ( .A(n609), .B(n608), .Z(n640) );
  XNOR U629 ( .A(n641), .B(n615), .Z(n608) );
  XNOR U630 ( .A(n604), .B(n603), .Z(n615) );
  XOR U631 ( .A(n642), .B(n643), .Z(n603) );
  IV U632 ( .A(n600), .Z(n643) );
  XNOR U633 ( .A(p_input[26]), .B(p_input[74]), .Z(n600) );
  XOR U634 ( .A(p_input[27]), .B(n644), .Z(n642) );
  XOR U635 ( .A(p_input[28]), .B(p_input[76]), .Z(n604) );
  XNOR U636 ( .A(n614), .B(n605), .Z(n641) );
  XOR U637 ( .A(p_input[17]), .B(p_input[65]), .Z(n605) );
  XNOR U638 ( .A(n645), .B(n620), .Z(n614) );
  XOR U639 ( .A(p_input[31]), .B(p_input[79]), .Z(n620) );
  XOR U640 ( .A(n611), .B(n619), .Z(n645) );
  XOR U641 ( .A(n646), .B(n616), .Z(n619) );
  XOR U642 ( .A(p_input[29]), .B(p_input[77]), .Z(n616) );
  XOR U643 ( .A(p_input[30]), .B(n647), .Z(n646) );
  XOR U644 ( .A(p_input[25]), .B(p_input[73]), .Z(n611) );
  XNOR U645 ( .A(n627), .B(n626), .Z(n609) );
  XOR U646 ( .A(n648), .B(n632), .Z(n626) );
  XOR U647 ( .A(p_input[24]), .B(p_input[72]), .Z(n632) );
  XNOR U648 ( .A(n623), .B(n631), .Z(n648) );
  XOR U649 ( .A(n649), .B(n628), .Z(n631) );
  XOR U650 ( .A(p_input[22]), .B(p_input[70]), .Z(n628) );
  XNOR U651 ( .A(p_input[23]), .B(p_input[71]), .Z(n649) );
  XNOR U652 ( .A(p_input[18]), .B(p_input[66]), .Z(n623) );
  XNOR U653 ( .A(n637), .B(n636), .Z(n627) );
  XOR U654 ( .A(n650), .B(n633), .Z(n636) );
  XOR U655 ( .A(p_input[19]), .B(p_input[67]), .Z(n633) );
  XNOR U656 ( .A(p_input[20]), .B(p_input[68]), .Z(n650) );
  XOR U657 ( .A(p_input[21]), .B(p_input[69]), .Z(n637) );
  XNOR U658 ( .A(n651), .B(n652), .Z(n549) );
  AND U659 ( .A(n65), .B(n653), .Z(n652) );
  XNOR U660 ( .A(n654), .B(n655), .Z(n65) );
  MUX U661 ( .IN0(n511), .IN1(n512), .SEL(n654), .F(n655) );
  XOR U662 ( .A(n656), .B(n657), .Z(n654) );
  AND U663 ( .A(n658), .B(n659), .Z(n657) );
  XOR U664 ( .A(n656), .B(n524), .Z(n658) );
  XOR U665 ( .A(n660), .B(n661), .Z(n507) );
  AND U666 ( .A(n68), .B(n653), .Z(n661) );
  XOR U667 ( .A(n662), .B(n660), .Z(n653) );
  XNOR U668 ( .A(n663), .B(n664), .Z(n68) );
  MUX U669 ( .IN0(n511), .IN1(n512), .SEL(n663), .F(n664) );
  AND U670 ( .A(n524), .B(n665), .Z(n512) );
  AND U671 ( .A(n527), .B(n666), .Z(n511) );
  XOR U672 ( .A(n656), .B(n667), .Z(n663) );
  AND U673 ( .A(n668), .B(n659), .Z(n667) );
  XNOR U674 ( .A(n527), .B(n656), .Z(n659) );
  XNOR U675 ( .A(n669), .B(n670), .Z(n527) );
  XOR U676 ( .A(n671), .B(n666), .Z(n670) );
  AND U677 ( .A(n592), .B(n672), .Z(n666) );
  AND U678 ( .A(n673), .B(n674), .Z(n671) );
  XOR U679 ( .A(n675), .B(n669), .Z(n673) );
  XNOR U680 ( .A(n676), .B(n656), .Z(n668) );
  IV U681 ( .A(n524), .Z(n676) );
  XNOR U682 ( .A(n677), .B(n678), .Z(n524) );
  XOR U683 ( .A(n679), .B(n665), .Z(n678) );
  AND U684 ( .A(n534), .B(n680), .Z(n665) );
  AND U685 ( .A(n681), .B(n682), .Z(n679) );
  XNOR U686 ( .A(n677), .B(n683), .Z(n681) );
  XOR U687 ( .A(n684), .B(n685), .Z(n656) );
  AND U688 ( .A(n686), .B(n687), .Z(n685) );
  XNOR U689 ( .A(n592), .B(n684), .Z(n687) );
  XOR U690 ( .A(n688), .B(n674), .Z(n592) );
  XNOR U691 ( .A(n689), .B(n669), .Z(n674) );
  XOR U692 ( .A(n690), .B(n691), .Z(n669) );
  AND U693 ( .A(n692), .B(n693), .Z(n691) );
  XOR U694 ( .A(n694), .B(n690), .Z(n692) );
  XNOR U695 ( .A(n695), .B(n696), .Z(n689) );
  AND U696 ( .A(n697), .B(n698), .Z(n696) );
  XOR U697 ( .A(n695), .B(n699), .Z(n697) );
  XNOR U698 ( .A(n675), .B(n672), .Z(n688) );
  AND U699 ( .A(n638), .B(n700), .Z(n672) );
  XOR U700 ( .A(n701), .B(n702), .Z(n675) );
  AND U701 ( .A(n703), .B(n704), .Z(n702) );
  XOR U702 ( .A(n701), .B(n705), .Z(n703) );
  XOR U703 ( .A(n684), .B(n534), .Z(n686) );
  XNOR U704 ( .A(n706), .B(n683), .Z(n534) );
  XNOR U705 ( .A(n707), .B(n708), .Z(n683) );
  AND U706 ( .A(n709), .B(n710), .Z(n708) );
  XOR U707 ( .A(n707), .B(n711), .Z(n709) );
  XNOR U708 ( .A(n682), .B(n680), .Z(n706) );
  AND U709 ( .A(n546), .B(n712), .Z(n680) );
  XNOR U710 ( .A(n713), .B(n677), .Z(n682) );
  XOR U711 ( .A(n714), .B(n715), .Z(n677) );
  AND U712 ( .A(n716), .B(n717), .Z(n715) );
  XOR U713 ( .A(n714), .B(n718), .Z(n716) );
  XNOR U714 ( .A(n719), .B(n720), .Z(n713) );
  AND U715 ( .A(n721), .B(n722), .Z(n720) );
  XNOR U716 ( .A(n719), .B(n723), .Z(n721) );
  XOR U717 ( .A(n724), .B(n725), .Z(n684) );
  AND U718 ( .A(n726), .B(n727), .Z(n725) );
  XNOR U719 ( .A(n724), .B(n638), .Z(n727) );
  XOR U720 ( .A(n728), .B(n693), .Z(n638) );
  XNOR U721 ( .A(n729), .B(n699), .Z(n693) );
  XOR U722 ( .A(n730), .B(n731), .Z(n699) );
  NOR U723 ( .A(n732), .B(n733), .Z(n731) );
  XNOR U724 ( .A(n730), .B(n734), .Z(n732) );
  XNOR U725 ( .A(n698), .B(n690), .Z(n729) );
  XOR U726 ( .A(n735), .B(n736), .Z(n690) );
  AND U727 ( .A(n737), .B(n738), .Z(n736) );
  XNOR U728 ( .A(n735), .B(n739), .Z(n737) );
  XNOR U729 ( .A(n740), .B(n695), .Z(n698) );
  XOR U730 ( .A(n741), .B(n742), .Z(n695) );
  AND U731 ( .A(n743), .B(n744), .Z(n742) );
  XOR U732 ( .A(n741), .B(n745), .Z(n743) );
  XNOR U733 ( .A(n746), .B(n747), .Z(n740) );
  NOR U734 ( .A(n748), .B(n749), .Z(n747) );
  XOR U735 ( .A(n746), .B(n750), .Z(n748) );
  XNOR U736 ( .A(n694), .B(n700), .Z(n728) );
  AND U737 ( .A(n662), .B(n751), .Z(n700) );
  IV U738 ( .A(n651), .Z(n662) );
  XOR U739 ( .A(n705), .B(n704), .Z(n694) );
  XNOR U740 ( .A(n752), .B(n701), .Z(n704) );
  XOR U741 ( .A(n753), .B(n754), .Z(n701) );
  AND U742 ( .A(n755), .B(n756), .Z(n754) );
  XOR U743 ( .A(n753), .B(n757), .Z(n755) );
  XNOR U744 ( .A(n758), .B(n759), .Z(n752) );
  NOR U745 ( .A(n760), .B(n761), .Z(n759) );
  XNOR U746 ( .A(n758), .B(n762), .Z(n760) );
  XOR U747 ( .A(n763), .B(n764), .Z(n705) );
  NOR U748 ( .A(n765), .B(n766), .Z(n764) );
  XNOR U749 ( .A(n763), .B(n767), .Z(n765) );
  XNOR U750 ( .A(n768), .B(n724), .Z(n726) );
  IV U751 ( .A(n546), .Z(n768) );
  XOR U752 ( .A(n769), .B(n718), .Z(n546) );
  XOR U753 ( .A(n711), .B(n710), .Z(n718) );
  XNOR U754 ( .A(n770), .B(n707), .Z(n710) );
  XOR U755 ( .A(n771), .B(n772), .Z(n707) );
  AND U756 ( .A(n773), .B(n774), .Z(n772) );
  XOR U757 ( .A(n771), .B(n775), .Z(n773) );
  XNOR U758 ( .A(n776), .B(n777), .Z(n770) );
  NOR U759 ( .A(n778), .B(n779), .Z(n777) );
  XNOR U760 ( .A(n776), .B(n780), .Z(n778) );
  XOR U761 ( .A(n781), .B(n782), .Z(n711) );
  NOR U762 ( .A(n783), .B(n784), .Z(n782) );
  XNOR U763 ( .A(n781), .B(n785), .Z(n783) );
  XNOR U764 ( .A(n717), .B(n712), .Z(n769) );
  AND U765 ( .A(n660), .B(n786), .Z(n712) );
  XOR U766 ( .A(n787), .B(n723), .Z(n717) );
  XNOR U767 ( .A(n788), .B(n789), .Z(n723) );
  NOR U768 ( .A(n790), .B(n791), .Z(n789) );
  XNOR U769 ( .A(n788), .B(n792), .Z(n790) );
  XNOR U770 ( .A(n722), .B(n714), .Z(n787) );
  XOR U771 ( .A(n793), .B(n794), .Z(n714) );
  AND U772 ( .A(n795), .B(n796), .Z(n794) );
  XOR U773 ( .A(n793), .B(n797), .Z(n795) );
  XNOR U774 ( .A(n798), .B(n719), .Z(n722) );
  XOR U775 ( .A(n799), .B(n800), .Z(n719) );
  AND U776 ( .A(n801), .B(n802), .Z(n800) );
  XOR U777 ( .A(n799), .B(n803), .Z(n801) );
  XNOR U778 ( .A(n804), .B(n805), .Z(n798) );
  NOR U779 ( .A(n806), .B(n807), .Z(n805) );
  XOR U780 ( .A(n804), .B(n808), .Z(n806) );
  AND U781 ( .A(n660), .B(n651), .Z(n724) );
  XNOR U782 ( .A(n809), .B(n751), .Z(n651) );
  XNOR U783 ( .A(n343), .B(p_input[64]), .Z(n751) );
  IV U784 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][0] ), .Z(n343) );
  XOR U785 ( .A(n739), .B(n738), .Z(n809) );
  XNOR U786 ( .A(n810), .B(n745), .Z(n738) );
  XNOR U787 ( .A(n734), .B(n733), .Z(n745) );
  XOR U788 ( .A(n811), .B(n730), .Z(n733) );
  XNOR U789 ( .A(n326), .B(p_input[74]), .Z(n730) );
  IV U790 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][10] ), .Z(n326) );
  XOR U791 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][11] ), .B(n644), .Z(
        n811) );
  XNOR U792 ( .A(n291), .B(p_input[76]), .Z(n734) );
  IV U793 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][12] ), .Z(n291) );
  XNOR U794 ( .A(n744), .B(n735), .Z(n810) );
  XNOR U795 ( .A(n210), .B(p_input[65]), .Z(n735) );
  IV U796 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][1] ), .Z(n210) );
  XOR U797 ( .A(n812), .B(n750), .Z(n744) );
  XNOR U798 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][15] ), .B(
        p_input[79]), .Z(n750) );
  XOR U799 ( .A(n741), .B(n749), .Z(n812) );
  XOR U800 ( .A(n813), .B(n746), .Z(n749) );
  XNOR U801 ( .A(n274), .B(p_input[77]), .Z(n746) );
  IV U802 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][13] ), .Z(n274) );
  XOR U803 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][14] ), .B(n647), .Z(
        n813) );
  XNOR U804 ( .A(n63), .B(p_input[73]), .Z(n741) );
  IV U805 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][9] ), .Z(n63) );
  XNOR U806 ( .A(n757), .B(n756), .Z(n739) );
  XNOR U807 ( .A(n814), .B(n762), .Z(n756) );
  XNOR U808 ( .A(n83), .B(p_input[72]), .Z(n762) );
  IV U809 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][8] ), .Z(n83) );
  XOR U810 ( .A(n753), .B(n761), .Z(n814) );
  XOR U811 ( .A(n815), .B(n758), .Z(n761) );
  XNOR U812 ( .A(n118), .B(p_input[70]), .Z(n758) );
  IV U813 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][6] ), .Z(n118) );
  XNOR U814 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][7] ), .B(
        p_input[71]), .Z(n815) );
  XNOR U815 ( .A(n192), .B(p_input[66]), .Z(n753) );
  IV U816 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][2] ), .Z(n192) );
  XNOR U817 ( .A(n767), .B(n766), .Z(n757) );
  XOR U818 ( .A(n816), .B(n763), .Z(n766) );
  XNOR U819 ( .A(n174), .B(p_input[67]), .Z(n763) );
  IV U820 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][3] ), .Z(n174) );
  XNOR U821 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][4] ), .B(
        p_input[68]), .Z(n816) );
  XNOR U822 ( .A(n136), .B(p_input[69]), .Z(n767) );
  IV U823 ( .A(\knn_comb_/ASN_1[1].knn_/local_min_val[1][5] ), .Z(n136) );
  XOR U824 ( .A(n817), .B(n797), .Z(n660) );
  XOR U825 ( .A(n775), .B(n774), .Z(n797) );
  XNOR U826 ( .A(n818), .B(n780), .Z(n774) );
  XOR U827 ( .A(\knn_comb_/min_val_out[0][8] ), .B(p_input[72]), .Z(n780) );
  XOR U828 ( .A(n771), .B(n779), .Z(n818) );
  XOR U829 ( .A(n819), .B(n776), .Z(n779) );
  XOR U830 ( .A(\knn_comb_/min_val_out[0][6] ), .B(p_input[70]), .Z(n776) );
  XNOR U831 ( .A(\knn_comb_/min_val_out[0][7] ), .B(p_input[71]), .Z(n819) );
  XOR U832 ( .A(\knn_comb_/min_val_out[0][2] ), .B(p_input[66]), .Z(n771) );
  XNOR U833 ( .A(n785), .B(n784), .Z(n775) );
  XOR U834 ( .A(n820), .B(n781), .Z(n784) );
  XOR U835 ( .A(\knn_comb_/min_val_out[0][3] ), .B(p_input[67]), .Z(n781) );
  XNOR U836 ( .A(\knn_comb_/min_val_out[0][4] ), .B(p_input[68]), .Z(n820) );
  XOR U837 ( .A(\knn_comb_/min_val_out[0][5] ), .B(p_input[69]), .Z(n785) );
  XNOR U838 ( .A(n796), .B(n786), .Z(n817) );
  XOR U839 ( .A(\knn_comb_/min_val_out[0][0] ), .B(p_input[64]), .Z(n786) );
  XNOR U840 ( .A(n821), .B(n803), .Z(n796) );
  XNOR U841 ( .A(n792), .B(n791), .Z(n803) );
  XOR U842 ( .A(n822), .B(n788), .Z(n791) );
  XOR U843 ( .A(\knn_comb_/min_val_out[0][10] ), .B(p_input[74]), .Z(n788) );
  XOR U844 ( .A(\knn_comb_/min_val_out[0][11] ), .B(n644), .Z(n822) );
  IV U845 ( .A(p_input[75]), .Z(n644) );
  XOR U846 ( .A(\knn_comb_/min_val_out[0][12] ), .B(p_input[76]), .Z(n792) );
  XNOR U847 ( .A(n802), .B(n793), .Z(n821) );
  XOR U848 ( .A(\knn_comb_/min_val_out[0][1] ), .B(p_input[65]), .Z(n793) );
  XOR U849 ( .A(n823), .B(n808), .Z(n802) );
  XNOR U850 ( .A(\knn_comb_/min_val_out[0][15] ), .B(p_input[79]), .Z(n808) );
  XOR U851 ( .A(n799), .B(n807), .Z(n823) );
  XOR U852 ( .A(n824), .B(n804), .Z(n807) );
  XOR U853 ( .A(\knn_comb_/min_val_out[0][13] ), .B(p_input[77]), .Z(n804) );
  XOR U854 ( .A(\knn_comb_/min_val_out[0][14] ), .B(n647), .Z(n824) );
  IV U855 ( .A(p_input[78]), .Z(n647) );
  XOR U856 ( .A(\knn_comb_/min_val_out[0][9] ), .B(p_input[73]), .Z(n799) );
endmodule

