// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 6/1/2025 at 1:27:8
// Library Name: SHIFTER_LIB
// Block Name: shifter
// User Label: 
// Write Command: write_verilog ./results/shifter.routed.v
module shifter ( Clock , data_in , shift_amt , dir , data_out ) ;
input  Clock ;
input  [7:0] data_in ;
input  [2:0] shift_amt ;
input  dir ;
output [7:0] data_out ;

wire [7:0] shifted ;

DFFX1_RVT \data_out_reg[7] ( .D ( shifted[7] ) , .CLK ( Clock ) , 
    .Q ( data_out[7] ) ) ;
DFFX1_RVT \data_out_reg[6] ( .D ( shifted[6] ) , .CLK ( Clock ) , 
    .Q ( data_out[6] ) ) ;
DFFX1_RVT \data_out_reg[4] ( .D ( shifted[4] ) , .CLK ( Clock ) , 
    .Q ( data_out[4] ) ) ;
DFFX1_RVT \data_out_reg[3] ( .D ( shifted[3] ) , .CLK ( Clock ) , 
    .Q ( data_out[3] ) ) ;
DFFX1_RVT \data_out_reg[2] ( .D ( shifted[2] ) , .CLK ( Clock ) , 
    .Q ( data_out[2] ) ) ;
DFFX1_RVT \data_out_reg[1] ( .D ( shifted[1] ) , .CLK ( Clock ) , 
    .Q ( data_out[1] ) ) ;
DFFX1_RVT \data_out_reg[0] ( .D ( shifted[0] ) , .CLK ( Clock ) , 
    .Q ( data_out[0] ) ) ;
DFFSSRX1_RVT \data_out_reg[5] ( .D ( n184 ) , .SETB ( 1'b1 ) , 
    .RSTB ( n183 ) , .CLK ( Clock ) , .QN ( data_out[5] ) ) ;
INVX2_RVT HFSINV_40_0 ( .A ( data_in[2] ) , .Y ( HFSNET_0 ) ) ;
INVX2_RVT HFSINV_253_1 ( .A ( data_in[5] ) , .Y ( HFSNET_1 ) ) ;
INVX2_RVT HFSINV_226_2 ( .A ( data_in[3] ) , .Y ( HFSNET_2 ) ) ;
INVX2_RVT HFSINV_185_3 ( .A ( data_in[4] ) , .Y ( HFSNET_3 ) ) ;
IBUFFX2_RVT HFSINV_432_4 ( .A ( dir ) , .Y ( HFSNET_4 ) ) ;
IBUFFX2_RVT HFSINV_649_5 ( .A ( shift_amt[0] ) , .Y ( HFSNET_5 ) ) ;
IBUFFX2_RVT HFSINV_384_6 ( .A ( shift_amt[1] ) , .Y ( HFSNET_6 ) ) ;
IBUFFX2_RVT HFSINV_892_7 ( .A ( shift_amt[2] ) , .Y ( HFSNET_7 ) ) ;
NBUFFX2_RVT ZBUF_2617_inst_9 ( .A ( dir ) , .Y ( ZBUF_2617_0 ) ) ;
INVX0_RVT ctmTdsLR_1_121 ( .A ( tmp_net0 ) , .Y ( ZBUF_2_6 ) ) ;
AND4X1_RVT ctmTdsLR_2_122 ( .A1 ( data_in[3] ) , .A2 ( shift_amt[0] ) , 
    .A3 ( shift_amt[1] ) , .A4 ( HFSNET_7 ) , .Y ( tmp_net0 ) ) ;
INVX0_RVT ctmTdsLR_1_123 ( .A ( tmp_net1 ) , .Y ( ZBUF_2_5 ) ) ;
AND4X1_RVT ctmTdsLR_2_124 ( .A1 ( HFSNET_7 ) , .A2 ( shift_amt[0] ) , 
    .A3 ( data_in[4] ) , .A4 ( shift_amt[1] ) , .Y ( tmp_net1 ) ) ;
MUX21X1_RVT U118 ( .A1 ( data_in[6] ) , .A2 ( data_in[7] ) , 
    .S0 ( shift_amt[0] ) , .Y ( n119 ) ) ;
MUX21X1_RVT U119 ( .A1 ( data_in[2] ) , .A2 ( data_in[1] ) , 
    .S0 ( shift_amt[0] ) , .Y ( n140 ) ) ;
MUX21X1_RVT U120 ( .A1 ( data_in[5] ) , .A2 ( data_in[6] ) , 
    .S0 ( shift_amt[0] ) , .Y ( n131 ) ) ;
MUX41X1_RVT U123 ( .A1 ( data_in[4] ) , .A3 ( data_in[5] ) , 
    .A2 ( data_in[6] ) , .A4 ( data_in[7] ) , .S0 ( shift_amt[0] ) , 
    .S1 ( shift_amt[1] ) , .Y ( n146 ) ) ;
NAND2X0_RVT U124 ( .A1 ( shift_amt[2] ) , .A2 ( n146 ) , .Y ( n106 ) ) ;
AND3X2_RVT U125 ( .A1 ( shift_amt[0] ) , .A2 ( HFSNET_7 ) , .A3 ( HFSNET_6 ) , 
    .Y ( n171 ) ) ;
NAND2X0_RVT U126 ( .A1 ( data_in[1] ) , .A2 ( n171 ) , .Y ( n105 ) ) ;
AND3X1_RVT U127 ( .A1 ( shift_amt[1] ) , .A2 ( HFSNET_5 ) , .A3 ( HFSNET_7 ) , 
    .Y ( n172 ) ) ;
NAND2X0_RVT U128 ( .A1 ( data_in[2] ) , .A2 ( n172 ) , .Y ( n104 ) ) ;
NAND4X0_RVT U129 ( .A1 ( ZBUF_2_6 ) , .A2 ( n106 ) , .A3 ( n105 ) , 
    .A4 ( n104 ) , .Y ( n107 ) ) ;
NAND2X0_RVT U130 ( .A1 ( dir ) , .A2 ( n107 ) , .Y ( n109 ) ) ;
AND2X1_RVT U131 ( .A1 ( HFSNET_5 ) , .A2 ( HFSNET_6 ) , .Y ( n139 ) ) ;
AND2X1_RVT U132 ( .A1 ( HFSNET_7 ) , .A2 ( n139 ) , .Y ( n179 ) ) ;
NAND2X0_RVT U133 ( .A1 ( data_in[0] ) , .A2 ( n179 ) , .Y ( n108 ) ) ;
NAND2X0_RVT U134 ( .A1 ( n109 ) , .A2 ( n108 ) , .Y ( shifted[0] ) ) ;
NAND2X0_RVT U135 ( .A1 ( data_in[1] ) , .A2 ( n179 ) , .Y ( n118 ) ) ;
NAND2X0_RVT U137 ( .A1 ( data_in[3] ) , .A2 ( n172 ) , .Y ( n114 ) ) ;
NAND2X0_RVT U138 ( .A1 ( n171 ) , .A2 ( data_in[2] ) , .Y ( n113 ) ) ;
NAND2X0_RVT U139 ( .A1 ( HFSNET_6 ) , .A2 ( n131 ) , .Y ( n111 ) ) ;
NAND3X0_RVT U140 ( .A1 ( shift_amt[1] ) , .A2 ( data_in[7] ) , 
    .A3 ( HFSNET_5 ) , .Y ( n110 ) ) ;
NAND2X0_RVT U141 ( .A1 ( n111 ) , .A2 ( n110 ) , .Y ( n160 ) ) ;
NAND2X0_RVT U142 ( .A1 ( shift_amt[2] ) , .A2 ( n160 ) , .Y ( n112 ) ) ;
NAND4X0_RVT U143 ( .A1 ( ZBUF_2_5 ) , .A2 ( n114 ) , .A3 ( n113 ) , 
    .A4 ( n112 ) , .Y ( n115 ) ) ;
NAND2X0_RVT U144 ( .A1 ( n115 ) , .A2 ( dir ) , .Y ( n117 ) ) ;
NAND3X0_RVT U145 ( .A1 ( n171 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_4 ) , 
    .Y ( n116 ) ) ;
NAND3X0_RVT U146 ( .A1 ( n118 ) , .A2 ( n117 ) , .A3 ( n116 ) , 
    .Y ( shifted[1] ) ) ;
NAND3X0_RVT U147 ( .A1 ( shift_amt[1] ) , .A2 ( shift_amt[0] ) , 
    .A3 ( HFSNET_1 ) , .Y ( n126 ) ) ;
NAND2X0_RVT U148 ( .A1 ( n171 ) , .A2 ( HFSNET_2 ) , .Y ( n125 ) ) ;
NAND2X0_RVT U149 ( .A1 ( n179 ) , .A2 ( HFSNET_0 ) , .Y ( n123 ) ) ;
NAND3X0_RVT U150 ( .A1 ( shift_amt[1] ) , .A2 ( HFSNET_5 ) , 
    .A3 ( HFSNET_3 ) , .Y ( n122 ) ) ;
NAND2X0_RVT U151 ( .A1 ( n119 ) , .A2 ( HFSNET_6 ) , .Y ( n120 ) ) ;
NAND2X0_RVT U152 ( .A1 ( shift_amt[2] ) , .A2 ( n120 ) , .Y ( n121 ) ) ;
AND3X1_RVT U153 ( .A1 ( n123 ) , .A2 ( n122 ) , .A3 ( n121 ) , .Y ( n124 ) ) ;
NAND4X0_RVT U154 ( .A1 ( ZBUF_2617_0 ) , .A2 ( n126 ) , .A3 ( n125 ) , 
    .A4 ( n124 ) , .Y ( n130 ) ) ;
NAND2X0_RVT U155 ( .A1 ( HFSNET_6 ) , .A2 ( n140 ) , .Y ( n128 ) ) ;
NAND3X0_RVT U156 ( .A1 ( shift_amt[1] ) , .A2 ( data_in[0] ) , 
    .A3 ( HFSNET_5 ) , .Y ( n127 ) ) ;
NAND2X0_RVT U157 ( .A1 ( n128 ) , .A2 ( n127 ) , .Y ( n161 ) ) ;
NAND3X0_RVT U158 ( .A1 ( HFSNET_7 ) , .A2 ( n161 ) , .A3 ( HFSNET_4 ) , 
    .Y ( n129 ) ) ;
NAND2X0_RVT U159 ( .A1 ( n130 ) , .A2 ( n129 ) , .Y ( shifted[2] ) ) ;
NAND2X0_RVT U160 ( .A1 ( data_in[4] ) , .A2 ( n171 ) , .Y ( n135 ) ) ;
NAND2X0_RVT U161 ( .A1 ( data_in[3] ) , .A2 ( n179 ) , .Y ( n134 ) ) ;
NAND3X0_RVT U162 ( .A1 ( shift_amt[2] ) , .A2 ( data_in[7] ) , .A3 ( n139 ) , 
    .Y ( n133 ) ) ;
NAND3X0_RVT U163 ( .A1 ( shift_amt[1] ) , .A2 ( HFSNET_7 ) , .A3 ( n131 ) , 
    .Y ( n132 ) ) ;
NAND4X0_RVT U164 ( .A1 ( n135 ) , .A2 ( n134 ) , .A3 ( n133 ) , .A4 ( n132 ) , 
    .Y ( n136 ) ) ;
NAND2X0_RVT U165 ( .A1 ( dir ) , .A2 ( n136 ) , .Y ( n138 ) ) ;
MUX41X1_RVT U166 ( .A1 ( data_in[3] ) , .A3 ( data_in[2] ) , 
    .A2 ( data_in[1] ) , .A4 ( data_in[0] ) , .S0 ( shift_amt[0] ) , 
    .S1 ( shift_amt[1] ) , .Y ( n170 ) ) ;
NAND3X0_RVT U167 ( .A1 ( HFSNET_7 ) , .A2 ( n170 ) , .A3 ( HFSNET_4 ) , 
    .Y ( n137 ) ) ;
NAND2X0_RVT U168 ( .A1 ( n138 ) , .A2 ( n137 ) , .Y ( shifted[3] ) ) ;
NAND2X0_RVT U169 ( .A1 ( data_in[3] ) , .A2 ( n171 ) , .Y ( n144 ) ) ;
NAND2X0_RVT U170 ( .A1 ( data_in[4] ) , .A2 ( n179 ) , .Y ( n143 ) ) ;
NAND3X0_RVT U171 ( .A1 ( shift_amt[2] ) , .A2 ( n139 ) , .A3 ( data_in[0] ) , 
    .Y ( n142 ) ) ;
NAND3X0_RVT U172 ( .A1 ( shift_amt[1] ) , .A2 ( HFSNET_7 ) , .A3 ( n140 ) , 
    .Y ( n141 ) ) ;
NAND4X0_RVT U173 ( .A1 ( n144 ) , .A2 ( n143 ) , .A3 ( n142 ) , .A4 ( n141 ) , 
    .Y ( n145 ) ) ;
NAND2X0_RVT U174 ( .A1 ( HFSNET_4 ) , .A2 ( n145 ) , .Y ( n148 ) ) ;
NAND3X0_RVT U175 ( .A1 ( n146 ) , .A2 ( dir ) , .A3 ( HFSNET_7 ) , 
    .Y ( n147 ) ) ;
NAND2X0_RVT U176 ( .A1 ( n148 ) , .A2 ( n147 ) , .Y ( shifted[4] ) ) ;
NAND3X0_RVT U177 ( .A1 ( shift_amt[1] ) , .A2 ( HFSNET_5 ) , 
    .A3 ( HFSNET_2 ) , .Y ( n152 ) ) ;
NAND2X0_RVT U178 ( .A1 ( n171 ) , .A2 ( HFSNET_3 ) , .Y ( n151 ) ) ;
NAND2X0_RVT U179 ( .A1 ( n179 ) , .A2 ( HFSNET_1 ) , .Y ( n150 ) ) ;
AND3X1_RVT U180 ( .A1 ( n152 ) , .A2 ( n151 ) , .A3 ( n150 ) , .Y ( n158 ) ) ;
MUX21X1_RVT U181 ( .A1 ( data_in[1] ) , .A2 ( data_in[0] ) , 
    .S0 ( shift_amt[0] ) , .Y ( n154 ) ) ;
NAND2X0_RVT U182 ( .A1 ( n154 ) , .A2 ( HFSNET_6 ) , .Y ( n155 ) ) ;
NAND2X0_RVT U183 ( .A1 ( shift_amt[2] ) , .A2 ( n155 ) , .Y ( n157 ) ) ;
NAND3X0_RVT U184 ( .A1 ( shift_amt[1] ) , .A2 ( shift_amt[0] ) , 
    .A3 ( HFSNET_0 ) , .Y ( n156 ) ) ;
NAND4X0_RVT U185 ( .A1 ( n158 ) , .A2 ( HFSNET_4 ) , .A3 ( n157 ) , 
    .A4 ( n156 ) , .Y ( n184 ) ) ;
NAND3X0_RVT U186 ( .A1 ( n160 ) , .A2 ( dir ) , .A3 ( HFSNET_7 ) , 
    .Y ( n183 ) ) ;
NAND3X0_RVT U187 ( .A1 ( dir ) , .A2 ( data_in[7] ) , .A3 ( n171 ) , 
    .Y ( n169 ) ) ;
NAND2X0_RVT U188 ( .A1 ( data_in[4] ) , .A2 ( n172 ) , .Y ( n164 ) ) ;
NAND2X0_RVT U189 ( .A1 ( data_in[5] ) , .A2 ( n171 ) , .Y ( n163 ) ) ;
NAND2X0_RVT U190 ( .A1 ( shift_amt[2] ) , .A2 ( n161 ) , .Y ( n162 ) ) ;
NAND4X0_RVT U191 ( .A1 ( ZBUF_2_6 ) , .A2 ( n164 ) , .A3 ( n163 ) , 
    .A4 ( n162 ) , .Y ( n166 ) ) ;
NAND2X0_RVT U192 ( .A1 ( HFSNET_4 ) , .A2 ( n166 ) , .Y ( n168 ) ) ;
NAND2X0_RVT U193 ( .A1 ( data_in[6] ) , .A2 ( n179 ) , .Y ( n167 ) ) ;
NAND3X0_RVT U194 ( .A1 ( n169 ) , .A2 ( n168 ) , .A3 ( n167 ) , 
    .Y ( shifted[6] ) ) ;
NAND2X0_RVT U195 ( .A1 ( shift_amt[2] ) , .A2 ( n170 ) , .Y ( n175 ) ) ;
NAND2X0_RVT U196 ( .A1 ( data_in[6] ) , .A2 ( n171 ) , .Y ( n174 ) ) ;
NAND2X0_RVT U197 ( .A1 ( data_in[5] ) , .A2 ( n172 ) , .Y ( n173 ) ) ;
NAND4X0_RVT U198 ( .A1 ( ZBUF_2_5 ) , .A2 ( n175 ) , .A3 ( n174 ) , 
    .A4 ( n173 ) , .Y ( n177 ) ) ;
NAND2X0_RVT U199 ( .A1 ( HFSNET_4 ) , .A2 ( n177 ) , .Y ( n181 ) ) ;
NAND2X0_RVT U200 ( .A1 ( data_in[7] ) , .A2 ( n179 ) , .Y ( n180 ) ) ;
NAND2X0_RVT U201 ( .A1 ( n181 ) , .A2 ( n180 ) , .Y ( shifted[7] ) ) ;
endmodule


