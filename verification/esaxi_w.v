module ILA_Slave_Write(
__ILA_ILA_Slave_Write_grant__,
clk,
rst,
s_axi_aresetn,
s_axi_awaddr,
s_axi_awburst,
s_axi_awcache,
s_axi_awid,
s_axi_awlen,
s_axi_awlock,
s_axi_awprot,
s_axi_awqos,
s_axi_awsize,
s_axi_awvalid,
s_axi_bready,
s_axi_wdata,
s_axi_wid,
s_axi_wlast,
s_axi_wstrb,
s_axi_wvalid,
write_ready,
__ILA_ILA_Slave_Write_acc_decode__,
__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__,
__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__,
__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__,
__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__,
__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__,
__ILA_ILA_Slave_Write_valid__,
s_axi_awready,
s_axi_wready,
s_axi_bid,
s_axi_bresp,
s_axi_bvalid,
tx_wactive,
tx_bwait,
tx_awlen,
tx_awsize,
tx_awaddr,
tx_awburst
);
input      [4:0] __ILA_ILA_Slave_Write_grant__;
input            clk;
input            rst;
input            s_axi_aresetn;
input     [31:0] s_axi_awaddr;
input      [1:0] s_axi_awburst;
input      [3:0] s_axi_awcache;
input     [11:0] s_axi_awid;
input      [7:0] s_axi_awlen;
input            s_axi_awlock;
input      [2:0] s_axi_awprot;
input      [3:0] s_axi_awqos;
input      [2:0] s_axi_awsize;
input            s_axi_awvalid;
input            s_axi_bready;
input     [31:0] s_axi_wdata;
input     [11:0] s_axi_wid;
input            s_axi_wlast;
input      [3:0] s_axi_wstrb;
input            s_axi_wvalid;
input            write_ready;
output      [4:0] __ILA_ILA_Slave_Write_acc_decode__;
output            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__;
output            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__;
output            __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__;
output            __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__;
output            __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__;
output            __ILA_ILA_Slave_Write_valid__;
output reg            s_axi_awready;
output reg            s_axi_wready;
output reg     [11:0] s_axi_bid;
output reg      [1:0] s_axi_bresp;
output reg            s_axi_bvalid;
output reg            tx_wactive;
output reg            tx_bwait;
output reg      [7:0] tx_awlen;
output reg      [2:0] tx_awsize;
output reg     [31:0] tx_awaddr;
output reg      [1:0] tx_awburst;
wire      [4:0] __ILA_ILA_Slave_Write_acc_decode__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__;
wire      [4:0] __ILA_ILA_Slave_Write_grant__;
wire            __ILA_ILA_Slave_Write_valid__;
wire     [11:0] bv_12_0_n59;
wire            bv_1_0_n0;
wire            bv_1_1_n5;
wire      [1:0] bv_2_0_n60;
wire      [1:0] bv_2_1_n153;
wire     [29:0] bv_30_1_n158;
wire     [31:0] bv_32_0_n150;
wire      [2:0] bv_3_0_n145;
wire      [7:0] bv_8_0_n133;
wire      [7:0] bv_8_1_n137;
wire            clk;
wire            n1;
wire            n10;
wire            n100;
wire            n101;
wire            n102;
wire            n103;
wire            n104;
wire            n105;
wire            n106;
wire            n107;
wire            n108;
wire            n109;
wire            n11;
wire            n110;
wire            n111;
wire            n112;
wire            n113;
wire            n114;
wire            n115;
wire            n116;
wire            n117;
wire            n118;
wire            n119;
wire            n12;
wire            n120;
wire            n121;
wire            n122;
wire            n123;
wire            n124;
wire            n125;
wire            n126;
wire            n127;
wire            n128;
wire            n129;
wire            n13;
wire            n130;
wire            n131;
wire            n132;
wire            n134;
wire      [7:0] n135;
wire            n136;
wire      [7:0] n138;
wire      [7:0] n139;
wire            n14;
wire            n140;
wire            n141;
wire      [7:0] n142;
wire      [7:0] n143;
wire      [7:0] n144;
wire            n146;
wire      [2:0] n147;
wire            n148;
wire      [2:0] n149;
wire            n15;
wire            n151;
wire     [31:0] n152;
wire            n154;
wire            n155;
wire            n156;
wire     [29:0] n157;
wire     [29:0] n159;
wire            n16;
wire     [31:0] n160;
wire     [31:0] n161;
wire            n162;
wire            n163;
wire            n164;
wire            n165;
wire     [29:0] n166;
wire     [29:0] n167;
wire     [31:0] n168;
wire     [31:0] n169;
wire            n17;
wire     [31:0] n170;
wire            n171;
wire      [1:0] n172;
wire            n173;
wire      [1:0] n174;
wire            n18;
wire            n19;
wire            n2;
wire            n20;
wire            n21;
wire            n22;
wire            n23;
wire            n24;
wire            n25;
wire            n26;
wire            n27;
wire            n28;
wire            n29;
wire            n3;
wire            n30;
wire            n31;
wire            n32;
wire            n33;
wire            n34;
wire            n35;
wire            n36;
wire            n37;
wire            n38;
wire            n39;
wire            n4;
wire            n40;
wire            n41;
wire            n42;
wire            n43;
wire            n44;
wire            n45;
wire            n46;
wire            n47;
wire            n48;
wire            n49;
wire            n50;
wire            n51;
wire            n52;
wire            n53;
wire            n54;
wire            n55;
wire            n56;
wire            n57;
wire            n58;
wire            n6;
wire            n61;
wire            n62;
wire            n63;
wire      [1:0] n64;
wire            n65;
wire            n66;
wire            n67;
wire      [1:0] n68;
wire            n69;
wire            n7;
wire            n70;
wire            n71;
wire            n72;
wire            n73;
wire            n74;
wire            n75;
wire            n76;
wire            n77;
wire            n78;
wire            n79;
wire            n8;
wire            n80;
wire            n81;
wire            n82;
wire            n83;
wire            n84;
wire            n85;
wire            n86;
wire            n87;
wire            n88;
wire            n89;
wire            n9;
wire            n90;
wire            n91;
wire            n92;
wire            n93;
wire            n94;
wire            n95;
wire            n96;
wire            n97;
wire            n98;
wire            n99;
wire            rst;
wire            s_axi_aresetn;
wire     [31:0] s_axi_awaddr;
wire      [1:0] s_axi_awburst;
wire      [3:0] s_axi_awcache;
wire     [11:0] s_axi_awid;
wire      [7:0] s_axi_awlen;
wire            s_axi_awlock;
wire      [2:0] s_axi_awprot;
wire      [3:0] s_axi_awqos;
wire      [2:0] s_axi_awsize;
wire            s_axi_awvalid;
wire            s_axi_bready;
wire     [31:0] s_axi_wdata;
wire     [11:0] s_axi_wid;
wire            s_axi_wlast;
wire      [3:0] s_axi_wstrb;
wire            s_axi_wvalid;
wire            write_ready;
assign __ILA_ILA_Slave_Write_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( s_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ = n1 ;
assign __ILA_ILA_Slave_Write_acc_decode__[0] = __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ ;
assign n2 =  ( s_axi_awvalid ) == ( bv_1_0_n0 )  ;
assign n3 =  ( s_axi_wvalid ) == ( bv_1_0_n0 )  ;
assign n4 =  ( n2 ) & (n3 )  ;
assign bv_1_1_n5 = 1'h1 ;
assign n6 =  ( s_axi_aresetn ) == ( bv_1_1_n5 )  ;
assign n7 =  ( n4 ) & (n6 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ = n7 ;
assign __ILA_ILA_Slave_Write_acc_decode__[1] = __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ ;
assign n8 =  ( s_axi_awvalid ) == ( bv_1_1_n5 )  ;
assign n9 =  ( s_axi_wvalid ) == ( bv_1_0_n0 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign n11 =  ( s_axi_aresetn ) == ( bv_1_1_n5 )  ;
assign n12 =  ( n10 ) & (n11 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ = n12 ;
assign __ILA_ILA_Slave_Write_acc_decode__[2] = __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ ;
assign n13 =  ( s_axi_wvalid ) == ( bv_1_1_n5 )  ;
assign n14 =  ( s_axi_awvalid ) == ( bv_1_0_n0 )  ;
assign n15 =  ( n13 ) & (n14 )  ;
assign n16 =  ( s_axi_aresetn ) == ( bv_1_1_n5 )  ;
assign n17 =  ( n15 ) & (n16 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ = n17 ;
assign __ILA_ILA_Slave_Write_acc_decode__[3] = __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ ;
assign n18 =  ( s_axi_awvalid ) == ( bv_1_1_n5 )  ;
assign n19 =  ( s_axi_wvalid ) == ( bv_1_1_n5 )  ;
assign n20 =  ( n18 ) & (n19 )  ;
assign n21 =  ( s_axi_aresetn ) == ( bv_1_1_n5 )  ;
assign n22 =  ( n20 ) & (n21 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ = n22 ;
assign __ILA_ILA_Slave_Write_acc_decode__[4] = __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ ;
assign n23 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n24 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n25 =  ( n23 ) & (n24 )  ;
assign n26 =  ( n25 ) ? ( bv_1_1_n5 ) : ( bv_1_0_n0 ) ;
assign n27 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n28 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n29 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n30 =  ( n28 ) & (n29 )  ;
assign n31 =  ( n30 ) ? ( bv_1_1_n5 ) : ( bv_1_0_n0 ) ;
assign n32 =  ( n27 ) ? ( bv_1_0_n0 ) : ( n31 ) ;
assign n33 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n34 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n35 =  ( n33 ) & (n34 )  ;
assign n36 =  ( n35 ) ? ( bv_1_1_n5 ) : ( bv_1_0_n0 ) ;
assign n37 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n38 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n39 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n40 =  ( n38 ) & (n39 )  ;
assign n41 =  ( n40 ) ? ( bv_1_1_n5 ) : ( bv_1_0_n0 ) ;
assign n42 =  ( n37 ) ? ( bv_1_0_n0 ) : ( n41 ) ;
assign n43 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n44 =  ( n43 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n45 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n46 =  ( n45 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n47 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n48 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n49 =  ( n48 ) ? ( bv_1_0_n0 ) : ( write_ready ) ;
assign n50 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n51 =  ( n50 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n52 =  ( n47 ) ? ( n49 ) : ( n51 ) ;
assign n53 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n54 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n55 =  ( n54 ) ? ( bv_1_0_n0 ) : ( write_ready ) ;
assign n56 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n57 =  ( n56 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n58 =  ( n53 ) ? ( n55 ) : ( n57 ) ;
assign bv_12_0_n59 = 12'h0 ;
assign bv_2_0_n60 = 2'h0 ;
assign n61 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n62 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n63 =  ( n61 ) & (n62 )  ;
assign n64 =  ( n63 ) ? ( bv_2_0_n60 ) : ( s_axi_bresp ) ;
assign n65 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n66 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n67 =  ( n65 ) & (n66 )  ;
assign n68 =  ( n67 ) ? ( bv_2_0_n60 ) : ( s_axi_bresp ) ;
assign n69 =  ( tx_bwait ) == ( bv_1_1_n5 )  ;
assign n70 =  ( s_axi_bvalid ) == ( bv_1_1_n5 )  ;
assign n71 =  ( s_axi_bready ) == ( bv_1_1_n5 )  ;
assign n72 =  ( n70 ) & (n71 )  ;
assign n73 =  ( n69 ) & (n72 )  ;
assign n74 =  ( n73 ) ? ( bv_1_0_n0 ) : ( s_axi_bvalid ) ;
assign n75 =  ( tx_bwait ) == ( bv_1_1_n5 )  ;
assign n76 =  ( s_axi_bvalid ) == ( bv_1_1_n5 )  ;
assign n77 =  ( s_axi_bready ) == ( bv_1_1_n5 )  ;
assign n78 =  ( n76 ) & (n77 )  ;
assign n79 =  ( n75 ) & (n78 )  ;
assign n80 =  ( n79 ) ? ( bv_1_0_n0 ) : ( s_axi_bvalid ) ;
assign n81 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n82 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n83 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n84 =  ( n82 ) & (n83 )  ;
assign n85 =  ( n84 ) ? ( bv_1_1_n5 ) : ( s_axi_bvalid ) ;
assign n86 =  ( s_axi_bvalid ) == ( bv_1_1_n5 )  ;
assign n87 =  ( s_axi_bready ) == ( bv_1_1_n5 )  ;
assign n88 =  ( n86 ) & (n87 )  ;
assign n89 =  ( n88 ) ? ( bv_1_0_n0 ) : ( s_axi_bvalid ) ;
assign n90 =  ( n81 ) ? ( n85 ) : ( n89 ) ;
assign n91 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n92 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n93 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n94 =  ( n92 ) & (n93 )  ;
assign n95 =  ( n94 ) ? ( bv_1_1_n5 ) : ( s_axi_bvalid ) ;
assign n96 =  ( s_axi_bvalid ) == ( bv_1_1_n5 )  ;
assign n97 =  ( s_axi_bready ) == ( bv_1_1_n5 )  ;
assign n98 =  ( n96 ) & (n97 )  ;
assign n99 =  ( n98 ) ? ( bv_1_0_n0 ) : ( s_axi_bvalid ) ;
assign n100 =  ( n91 ) ? ( n95 ) : ( n99 ) ;
assign n101 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n102 =  ( n101 ) ? ( bv_1_1_n5 ) : ( tx_wactive ) ;
assign n103 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n104 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n105 =  ( n103 ) & (n104 )  ;
assign n106 =  ( n105 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n107 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n108 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n109 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n110 =  ( n108 ) & (n109 )  ;
assign n111 =  ( n110 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n112 =  ( n107 ) ? ( bv_1_1_n5 ) : ( n111 ) ;
assign n113 =  ( tx_bwait ) == ( bv_1_1_n5 )  ;
assign n114 =  ( n113 ) & (n72 )  ;
assign n115 =  ( n114 ) ? ( bv_1_0_n0 ) : ( tx_bwait ) ;
assign n116 =  ( tx_bwait ) == ( bv_1_1_n5 )  ;
assign n117 =  ( n116 ) & (n78 )  ;
assign n118 =  ( n117 ) ? ( bv_1_0_n0 ) : ( tx_bwait ) ;
assign n119 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n120 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n121 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n122 =  ( n120 ) & (n121 )  ;
assign n123 =  ( n122 ) ? ( bv_1_1_n5 ) : ( tx_bwait ) ;
assign n124 =  ( n88 ) ? ( bv_1_0_n0 ) : ( tx_bwait ) ;
assign n125 =  ( n119 ) ? ( n123 ) : ( n124 ) ;
assign n126 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n127 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n128 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n129 =  ( n127 ) & (n128 )  ;
assign n130 =  ( n129 ) ? ( bv_1_1_n5 ) : ( tx_bwait ) ;
assign n131 =  ( n98 ) ? ( bv_1_0_n0 ) : ( tx_bwait ) ;
assign n132 =  ( n126 ) ? ( n130 ) : ( n131 ) ;
assign bv_8_0_n133 = 8'h0 ;
assign n134 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n135 =  ( n134 ) ? ( s_axi_awlen ) : ( tx_awlen ) ;
assign n136 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign bv_8_1_n137 = 8'h1 ;
assign n138 =  ( tx_awlen ) - ( bv_8_1_n137 )  ;
assign n139 =  ( n136 ) ? ( n138 ) : ( tx_awlen ) ;
assign n140 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n141 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n142 =  ( tx_awlen ) - ( bv_8_1_n137 )  ;
assign n143 =  ( n141 ) ? ( n142 ) : ( tx_awlen ) ;
assign n144 =  ( n140 ) ? ( s_axi_awlen ) : ( n143 ) ;
assign bv_3_0_n145 = 3'h0 ;
assign n146 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n147 =  ( n146 ) ? ( s_axi_awsize ) : ( tx_awsize ) ;
assign n148 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n149 =  ( n148 ) ? ( s_axi_awsize ) : ( tx_awsize ) ;
assign bv_32_0_n150 = 32'h0 ;
assign n151 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n152 =  ( n151 ) ? ( s_axi_awaddr ) : ( tx_awaddr ) ;
assign bv_2_1_n153 = 2'h1 ;
assign n154 =  ( tx_awburst ) == ( bv_2_1_n153 )  ;
assign n155 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n156 =  ( n154 ) & (n155 )  ;
assign n157 = tx_awaddr[31:2] ;
assign bv_30_1_n158 = 30'h1 ;
assign n159 =  ( n157 ) + ( bv_30_1_n158 )  ;
assign n160 =  { ( n159 ) , ( bv_2_0_n60 ) }  ;
assign n161 =  ( n156 ) ? ( n160 ) : ( tx_awaddr ) ;
assign n162 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n163 =  ( tx_awburst ) == ( bv_2_1_n153 )  ;
assign n164 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n165 =  ( n163 ) & (n164 )  ;
assign n166 = tx_awaddr[31:2] ;
assign n167 =  ( n166 ) + ( bv_30_1_n158 )  ;
assign n168 =  { ( n167 ) , ( bv_2_0_n60 ) }  ;
assign n169 =  ( n165 ) ? ( n168 ) : ( tx_awaddr ) ;
assign n170 =  ( n162 ) ? ( s_axi_awaddr ) : ( n169 ) ;
assign n171 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n172 =  ( n171 ) ? ( s_axi_awburst ) : ( tx_awburst ) ;
assign n173 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n174 =  ( n173 ) ? ( s_axi_awburst ) : ( tx_awburst ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_ILA_Slave_Write_valid__) begin
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_awready <= bv_1_1_n5;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ && __ILA_ILA_Slave_Write_grant__[1] ) begin
           s_axi_awready <= n26;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           s_axi_awready <= n32;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_awready <= n36;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_awready <= n42;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ && __ILA_ILA_Slave_Write_grant__[1] ) begin
           s_axi_wready <= n44;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           s_axi_wready <= n46;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_wready <= n52;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_wready <= n58;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_bid <= bv_12_0_n59;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_bresp <= bv_2_0_n60;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_bresp <= n64;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_bresp <= n68;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_bvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ && __ILA_ILA_Slave_Write_grant__[1] ) begin
           s_axi_bvalid <= n74;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           s_axi_bvalid <= n80;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_bvalid <= n90;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_bvalid <= n100;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_wactive <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_wactive <= n102;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_wactive <= n106;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_wactive <= n112;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_bwait <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ && __ILA_ILA_Slave_Write_grant__[1] ) begin
           tx_bwait <= n115;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_bwait <= n118;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_bwait <= n125;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_bwait <= n132;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awlen <= bv_8_0_n133;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awlen <= n135;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_awlen <= n139;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awlen <= n144;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awsize <= bv_3_0_n145;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awsize <= n147;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awsize <= n149;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awaddr <= bv_32_0_n150;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awaddr <= n152;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_awaddr <= n161;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awaddr <= n170;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awburst <= bv_2_0_n60;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awburst <= n172;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awburst <= n174;
       end
   end
end
endmodule
