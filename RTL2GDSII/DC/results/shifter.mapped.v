/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Sun Jun  1 02:26:51 2025
/////////////////////////////////////////////////////////////


module shifter ( Clock, data_in, shift_amt, dir, data_out );
  input [7:0] data_in;
  input [2:0] shift_amt;
  output [7:0] data_out;
  input Clock, dir;
  wire   n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n183, n184;
  wire   [7:0] shifted;

  DFFX1_RVT \data_out_reg[7]  ( .D(shifted[7]), .CLK(Clock), .Q(data_out[7])
         );
  DFFX1_RVT \data_out_reg[6]  ( .D(shifted[6]), .CLK(Clock), .Q(data_out[6])
         );
  DFFX1_RVT \data_out_reg[4]  ( .D(shifted[4]), .CLK(Clock), .Q(data_out[4])
         );
  DFFX1_RVT \data_out_reg[3]  ( .D(shifted[3]), .CLK(Clock), .Q(data_out[3])
         );
  DFFX1_RVT \data_out_reg[2]  ( .D(shifted[2]), .CLK(Clock), .Q(data_out[2])
         );
  DFFX1_RVT \data_out_reg[1]  ( .D(shifted[1]), .CLK(Clock), .Q(data_out[1])
         );
  DFFX1_RVT \data_out_reg[0]  ( .D(shifted[0]), .CLK(Clock), .Q(data_out[0])
         );
  DFFSSRX1_RVT \data_out_reg[5]  ( .D(n184), .SETB(1'b1), .RSTB(n183), .CLK(
        Clock), .QN(data_out[5]) );
  INVX0_RVT U86 ( .A(data_in[2]), .Y(n76) );
  INVX0_RVT U87 ( .A(n76), .Y(n77) );
  INVX0_RVT U88 ( .A(data_in[5]), .Y(n78) );
  INVX0_RVT U89 ( .A(n78), .Y(n79) );
  INVX0_RVT U90 ( .A(data_in[3]), .Y(n80) );
  INVX0_RVT U91 ( .A(n80), .Y(n81) );
  INVX0_RVT U92 ( .A(data_in[4]), .Y(n82) );
  INVX0_RVT U93 ( .A(n82), .Y(n83) );
  INVX0_RVT U94 ( .A(data_in[7]), .Y(n84) );
  INVX0_RVT U95 ( .A(n84), .Y(n85) );
  INVX0_RVT U96 ( .A(n97), .Y(n178) );
  INVX0_RVT U97 ( .A(n96), .Y(n97) );
  INVX1_RVT U98 ( .A(n99), .Y(n159) );
  INVX0_RVT U99 ( .A(n101), .Y(n149) );
  INVX0_RVT U100 ( .A(n103), .Y(n153) );
  INVX1_RVT U101 ( .A(n98), .Y(n99) );
  NBUFFX2_RVT U102 ( .A(shift_amt[1]), .Y(n103) );
  INVX0_RVT U103 ( .A(data_in[1]), .Y(n86) );
  INVX0_RVT U104 ( .A(n86), .Y(n87) );
  INVX0_RVT U105 ( .A(n77), .Y(n88) );
  INVX0_RVT U106 ( .A(n79), .Y(n89) );
  INVX0_RVT U107 ( .A(data_in[6]), .Y(n90) );
  INVX0_RVT U108 ( .A(n90), .Y(n91) );
  INVX0_RVT U109 ( .A(data_in[0]), .Y(n92) );
  INVX0_RVT U110 ( .A(n92), .Y(n93) );
  INVX0_RVT U111 ( .A(n81), .Y(n94) );
  INVX0_RVT U112 ( .A(n83), .Y(n95) );
  INVX0_RVT U113 ( .A(dir), .Y(n96) );
  INVX0_RVT U114 ( .A(shift_amt[2]), .Y(n98) );
  INVX0_RVT U115 ( .A(shift_amt[0]), .Y(n100) );
  INVX0_RVT U116 ( .A(n100), .Y(n101) );
  INVX0_RVT U117 ( .A(n149), .Y(n102) );
  MUX21X1_RVT U118 ( .A1(n91), .A2(n85), .S0(n102), .Y(n119) );
  MUX21X1_RVT U119 ( .A1(n77), .A2(n87), .S0(n102), .Y(n140) );
  MUX21X1_RVT U120 ( .A1(n79), .A2(n91), .S0(n101), .Y(n131) );
  NAND4X0_RVT U122 ( .A1(n81), .A2(n101), .A3(n103), .A4(n159), .Y(n165) );
  MUX41X1_RVT U123 ( .A1(n83), .A3(n79), .A2(n91), .A4(n85), .S0(n101), .S1(
        n103), .Y(n146) );
  NAND2X0_RVT U124 ( .A1(n99), .A2(n146), .Y(n106) );
  AND3X1_RVT U125 ( .A1(n101), .A2(n153), .A3(n159), .Y(n171) );
  NAND2X0_RVT U126 ( .A1(n87), .A2(n171), .Y(n105) );
  AND3X1_RVT U127 ( .A1(n103), .A2(n149), .A3(n159), .Y(n172) );
  NAND2X0_RVT U128 ( .A1(n77), .A2(n172), .Y(n104) );
  NAND4X0_RVT U129 ( .A1(n165), .A2(n106), .A3(n105), .A4(n104), .Y(n107) );
  NAND2X0_RVT U130 ( .A1(n97), .A2(n107), .Y(n109) );
  AND2X1_RVT U131 ( .A1(n149), .A2(n153), .Y(n139) );
  AND2X1_RVT U132 ( .A1(n139), .A2(n159), .Y(n179) );
  NAND2X0_RVT U133 ( .A1(n93), .A2(n179), .Y(n108) );
  NAND2X0_RVT U134 ( .A1(n109), .A2(n108), .Y(shifted[0]) );
  NAND2X0_RVT U135 ( .A1(n87), .A2(n179), .Y(n118) );
  NAND4X0_RVT U136 ( .A1(n103), .A2(n102), .A3(n83), .A4(n159), .Y(n176) );
  NAND2X0_RVT U137 ( .A1(n81), .A2(n172), .Y(n114) );
  NAND2X0_RVT U138 ( .A1(n171), .A2(n77), .Y(n113) );
  NAND2X0_RVT U139 ( .A1(n153), .A2(n131), .Y(n111) );
  NAND3X0_RVT U140 ( .A1(n103), .A2(n85), .A3(n149), .Y(n110) );
  NAND2X0_RVT U141 ( .A1(n111), .A2(n110), .Y(n160) );
  NAND2X0_RVT U142 ( .A1(n99), .A2(n160), .Y(n112) );
  NAND4X0_RVT U143 ( .A1(n176), .A2(n114), .A3(n113), .A4(n112), .Y(n115) );
  NAND2X0_RVT U144 ( .A1(n115), .A2(n97), .Y(n117) );
  NAND3X0_RVT U145 ( .A1(n171), .A2(n93), .A3(n178), .Y(n116) );
  NAND3X0_RVT U146 ( .A1(n118), .A2(n117), .A3(n116), .Y(shifted[1]) );
  NAND3X0_RVT U147 ( .A1(n103), .A2(n101), .A3(n89), .Y(n126) );
  NAND2X0_RVT U148 ( .A1(n171), .A2(n94), .Y(n125) );
  NAND2X0_RVT U149 ( .A1(n179), .A2(n88), .Y(n123) );
  NAND3X0_RVT U150 ( .A1(n103), .A2(n149), .A3(n95), .Y(n122) );
  NAND2X0_RVT U151 ( .A1(n119), .A2(n153), .Y(n120) );
  NAND2X0_RVT U152 ( .A1(n99), .A2(n120), .Y(n121) );
  AND3X1_RVT U153 ( .A1(n123), .A2(n122), .A3(n121), .Y(n124) );
  NAND4X0_RVT U154 ( .A1(n97), .A2(n126), .A3(n125), .A4(n124), .Y(n130) );
  NAND2X0_RVT U155 ( .A1(n153), .A2(n140), .Y(n128) );
  NAND3X0_RVT U156 ( .A1(n103), .A2(n93), .A3(n149), .Y(n127) );
  NAND2X0_RVT U157 ( .A1(n128), .A2(n127), .Y(n161) );
  NAND3X0_RVT U158 ( .A1(n159), .A2(n161), .A3(n178), .Y(n129) );
  NAND2X0_RVT U159 ( .A1(n130), .A2(n129), .Y(shifted[2]) );
  NAND2X0_RVT U160 ( .A1(n83), .A2(n171), .Y(n135) );
  NAND2X0_RVT U161 ( .A1(n81), .A2(n179), .Y(n134) );
  NAND3X0_RVT U162 ( .A1(n99), .A2(n85), .A3(n139), .Y(n133) );
  NAND3X0_RVT U163 ( .A1(n103), .A2(n159), .A3(n131), .Y(n132) );
  NAND4X0_RVT U164 ( .A1(n135), .A2(n134), .A3(n133), .A4(n132), .Y(n136) );
  NAND2X0_RVT U165 ( .A1(n97), .A2(n136), .Y(n138) );
  MUX41X1_RVT U166 ( .A1(n81), .A3(n77), .A2(n87), .A4(n93), .S0(n102), .S1(
        n103), .Y(n170) );
  NAND3X0_RVT U167 ( .A1(n159), .A2(n170), .A3(n178), .Y(n137) );
  NAND2X0_RVT U168 ( .A1(n138), .A2(n137), .Y(shifted[3]) );
  NAND2X0_RVT U169 ( .A1(n81), .A2(n171), .Y(n144) );
  NAND2X0_RVT U170 ( .A1(n83), .A2(n179), .Y(n143) );
  NAND3X0_RVT U171 ( .A1(n99), .A2(n139), .A3(n93), .Y(n142) );
  NAND3X0_RVT U172 ( .A1(n103), .A2(n159), .A3(n140), .Y(n141) );
  NAND4X0_RVT U173 ( .A1(n144), .A2(n143), .A3(n142), .A4(n141), .Y(n145) );
  NAND2X0_RVT U174 ( .A1(n178), .A2(n145), .Y(n148) );
  NAND3X0_RVT U175 ( .A1(n146), .A2(n97), .A3(n159), .Y(n147) );
  NAND2X0_RVT U176 ( .A1(n148), .A2(n147), .Y(shifted[4]) );
  NAND3X0_RVT U177 ( .A1(n103), .A2(n149), .A3(n94), .Y(n152) );
  NAND2X0_RVT U178 ( .A1(n171), .A2(n95), .Y(n151) );
  NAND2X0_RVT U179 ( .A1(n179), .A2(n89), .Y(n150) );
  AND3X1_RVT U180 ( .A1(n152), .A2(n151), .A3(n150), .Y(n158) );
  MUX21X1_RVT U181 ( .A1(n87), .A2(n93), .S0(n102), .Y(n154) );
  NAND2X0_RVT U182 ( .A1(n154), .A2(n153), .Y(n155) );
  NAND2X0_RVT U183 ( .A1(n99), .A2(n155), .Y(n157) );
  NAND3X0_RVT U184 ( .A1(n103), .A2(n102), .A3(n88), .Y(n156) );
  NAND4X0_RVT U185 ( .A1(n158), .A2(n178), .A3(n157), .A4(n156), .Y(n184) );
  NAND3X0_RVT U186 ( .A1(n160), .A2(n97), .A3(n159), .Y(n183) );
  NAND3X0_RVT U187 ( .A1(n97), .A2(n85), .A3(n171), .Y(n169) );
  NAND2X0_RVT U188 ( .A1(n83), .A2(n172), .Y(n164) );
  NAND2X0_RVT U189 ( .A1(n79), .A2(n171), .Y(n163) );
  NAND2X0_RVT U190 ( .A1(n99), .A2(n161), .Y(n162) );
  NAND4X0_RVT U191 ( .A1(n165), .A2(n164), .A3(n163), .A4(n162), .Y(n166) );
  NAND2X0_RVT U192 ( .A1(n178), .A2(n166), .Y(n168) );
  NAND2X0_RVT U193 ( .A1(n91), .A2(n179), .Y(n167) );
  NAND3X0_RVT U194 ( .A1(n169), .A2(n168), .A3(n167), .Y(shifted[6]) );
  NAND2X0_RVT U195 ( .A1(n99), .A2(n170), .Y(n175) );
  NAND2X0_RVT U196 ( .A1(n91), .A2(n171), .Y(n174) );
  NAND2X0_RVT U197 ( .A1(n79), .A2(n172), .Y(n173) );
  NAND4X0_RVT U198 ( .A1(n176), .A2(n175), .A3(n174), .A4(n173), .Y(n177) );
  NAND2X0_RVT U199 ( .A1(n178), .A2(n177), .Y(n181) );
  NAND2X0_RVT U200 ( .A1(n85), .A2(n179), .Y(n180) );
  NAND2X0_RVT U201 ( .A1(n181), .A2(n180), .Y(shifted[7]) );
endmodule

