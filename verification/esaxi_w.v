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
__ILA_ILA_Slave_Write_decode_of_B_Slave_Ready__,
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
input      [5:0] __ILA_ILA_Slave_Write_grant__;
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
output      [5:0] __ILA_ILA_Slave_Write_acc_decode__;
output            __ILA_ILA_Slave_Write_decode_of_B_Slave_Ready__;
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
wire      [5:0] __ILA_ILA_Slave_Write_acc_decode__;
wire            __ILA_ILA_Slave_Write_decode_of_B_Slave_Ready__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__;
wire      [5:0] __ILA_ILA_Slave_Write_grant__;
wire            __ILA_ILA_Slave_Write_valid__;
wire     [11:0] bv_12_0_n62;
wire            bv_1_0_n0;
wire            bv_1_1_n5;
wire      [1:0] bv_2_0_n63;
wire      [1:0] bv_2_1_n124;
wire     [29:0] bv_30_1_n129;
wire     [31:0] bv_32_0_n121;
wire      [2:0] bv_3_0_n116;
wire      [7:0] bv_8_0_n104;
wire      [7:0] bv_8_1_n108;
wire            clk;
wire            n1;
wire            n10;
wire            n100;
wire            n101;
wire            n102;
wire            n103;
wire            n105;
wire      [7:0] n106;
wire            n107;
wire      [7:0] n109;
wire            n11;
wire      [7:0] n110;
wire            n111;
wire            n112;
wire      [7:0] n113;
wire      [7:0] n114;
wire      [7:0] n115;
wire            n117;
wire      [2:0] n118;
wire            n119;
wire            n12;
wire      [2:0] n120;
wire            n122;
wire     [31:0] n123;
wire            n125;
wire            n126;
wire            n127;
wire     [29:0] n128;
wire            n13;
wire     [29:0] n130;
wire     [31:0] n131;
wire     [31:0] n132;
wire            n133;
wire            n134;
wire            n135;
wire            n136;
wire     [29:0] n137;
wire     [29:0] n138;
wire     [31:0] n139;
wire            n14;
wire     [31:0] n140;
wire     [31:0] n141;
wire            n142;
wire      [1:0] n143;
wire            n144;
wire      [1:0] n145;
wire            n15;
wire            n16;
wire            n17;
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
wire            n59;
wire            n6;
wire            n60;
wire            n61;
wire            n64;
wire            n65;
wire            n66;
wire      [1:0] n67;
wire            n68;
wire            n69;
wire            n7;
wire            n70;
wire      [1:0] n71;
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
assign n23 =  ( s_axi_bready ) == ( bv_1_1_n5 )  ;
assign n24 =  ( s_axi_aresetn ) == ( bv_1_1_n5 )  ;
assign n25 =  ( n23 ) & (n24 )  ;
assign __ILA_ILA_Slave_Write_decode_of_B_Slave_Ready__ = n25 ;
assign __ILA_ILA_Slave_Write_acc_decode__[5] = __ILA_ILA_Slave_Write_decode_of_B_Slave_Ready__ ;
assign n26 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n27 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n28 =  ( n26 ) & (n27 )  ;
assign n29 =  ( n28 ) ? ( bv_1_1_n5 ) : ( bv_1_0_n0 ) ;
assign n30 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n31 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n32 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n33 =  ( n31 ) & (n32 )  ;
assign n34 =  ( n33 ) ? ( bv_1_1_n5 ) : ( bv_1_0_n0 ) ;
assign n35 =  ( n30 ) ? ( bv_1_0_n0 ) : ( n34 ) ;
assign n36 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n37 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n38 =  ( n36 ) & (n37 )  ;
assign n39 =  ( n38 ) ? ( bv_1_1_n5 ) : ( bv_1_0_n0 ) ;
assign n40 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n41 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n42 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n43 =  ( n41 ) & (n42 )  ;
assign n44 =  ( n43 ) ? ( bv_1_1_n5 ) : ( bv_1_0_n0 ) ;
assign n45 =  ( n40 ) ? ( bv_1_0_n0 ) : ( n44 ) ;
assign n46 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n47 =  ( n46 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n48 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n49 =  ( n48 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n50 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n51 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n52 =  ( n51 ) ? ( bv_1_0_n0 ) : ( write_ready ) ;
assign n53 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n54 =  ( n53 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n55 =  ( n50 ) ? ( n52 ) : ( n54 ) ;
assign n56 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n57 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n58 =  ( n57 ) ? ( bv_1_0_n0 ) : ( write_ready ) ;
assign n59 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n60 =  ( n59 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n61 =  ( n56 ) ? ( n58 ) : ( n60 ) ;
assign bv_12_0_n62 = 12'h0 ;
assign bv_2_0_n63 = 2'h0 ;
assign n64 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n65 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n66 =  ( n64 ) & (n65 )  ;
assign n67 =  ( n66 ) ? ( bv_2_0_n63 ) : ( s_axi_bresp ) ;
assign n68 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n69 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n70 =  ( n68 ) & (n69 )  ;
assign n71 =  ( n70 ) ? ( bv_2_0_n63 ) : ( s_axi_bresp ) ;
assign n72 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n73 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n74 =  ( n72 ) & (n73 )  ;
assign n75 =  ( n74 ) ? ( bv_1_1_n5 ) : ( s_axi_bvalid ) ;
assign n76 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n77 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n78 =  ( n76 ) & (n77 )  ;
assign n79 =  ( n78 ) ? ( bv_1_1_n5 ) : ( s_axi_bvalid ) ;
assign n80 =  ( s_axi_bvalid ) == ( bv_1_1_n5 )  ;
assign n81 =  ( n80 ) ? ( bv_1_0_n0 ) : ( s_axi_bvalid ) ;
assign n82 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n83 =  ( n82 ) ? ( bv_1_1_n5 ) : ( tx_wactive ) ;
assign n84 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n85 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n86 =  ( n84 ) & (n85 )  ;
assign n87 =  ( n86 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n88 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n89 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n90 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n91 =  ( n89 ) & (n90 )  ;
assign n92 =  ( n91 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n93 =  ( n88 ) ? ( bv_1_1_n5 ) : ( n92 ) ;
assign n94 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n95 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n96 =  ( n94 ) & (n95 )  ;
assign n97 =  ( n96 ) ? ( bv_1_1_n5 ) : ( tx_bwait ) ;
assign n98 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n99 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n100 =  ( n98 ) & (n99 )  ;
assign n101 =  ( n100 ) ? ( bv_1_1_n5 ) : ( tx_bwait ) ;
assign n102 =  ( s_axi_bvalid ) == ( bv_1_1_n5 )  ;
assign n103 =  ( n102 ) ? ( bv_1_0_n0 ) : ( tx_bwait ) ;
assign bv_8_0_n104 = 8'h0 ;
assign n105 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n106 =  ( n105 ) ? ( s_axi_awlen ) : ( tx_awlen ) ;
assign n107 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign bv_8_1_n108 = 8'h1 ;
assign n109 =  ( tx_awlen ) - ( bv_8_1_n108 )  ;
assign n110 =  ( n107 ) ? ( n109 ) : ( tx_awlen ) ;
assign n111 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n112 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n113 =  ( tx_awlen ) - ( bv_8_1_n108 )  ;
assign n114 =  ( n112 ) ? ( n113 ) : ( tx_awlen ) ;
assign n115 =  ( n111 ) ? ( s_axi_awlen ) : ( n114 ) ;
assign bv_3_0_n116 = 3'h0 ;
assign n117 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n118 =  ( n117 ) ? ( s_axi_awsize ) : ( tx_awsize ) ;
assign n119 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n120 =  ( n119 ) ? ( s_axi_awsize ) : ( tx_awsize ) ;
assign bv_32_0_n121 = 32'h0 ;
assign n122 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n123 =  ( n122 ) ? ( s_axi_awaddr ) : ( tx_awaddr ) ;
assign bv_2_1_n124 = 2'h1 ;
assign n125 =  ( tx_awburst ) == ( bv_2_1_n124 )  ;
assign n126 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n127 =  ( n125 ) & (n126 )  ;
assign n128 = tx_awaddr[31:2] ;
assign bv_30_1_n129 = 30'h1 ;
assign n130 =  ( n128 ) + ( bv_30_1_n129 )  ;
assign n131 =  { ( n130 ) , ( bv_2_0_n63 ) }  ;
assign n132 =  ( n127 ) ? ( n131 ) : ( tx_awaddr ) ;
assign n133 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n134 =  ( tx_awburst ) == ( bv_2_1_n124 )  ;
assign n135 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n136 =  ( n134 ) & (n135 )  ;
assign n137 = tx_awaddr[31:2] ;
assign n138 =  ( n137 ) + ( bv_30_1_n129 )  ;
assign n139 =  { ( n138 ) , ( bv_2_0_n63 ) }  ;
assign n140 =  ( n136 ) ? ( n139 ) : ( tx_awaddr ) ;
assign n141 =  ( n133 ) ? ( s_axi_awaddr ) : ( n140 ) ;
assign n142 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n143 =  ( n142 ) ? ( s_axi_awburst ) : ( tx_awburst ) ;
assign n144 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n145 =  ( n144 ) ? ( s_axi_awburst ) : ( tx_awburst ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_ILA_Slave_Write_valid__) begin
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_awready <= bv_1_1_n5;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ && __ILA_ILA_Slave_Write_grant__[1] ) begin
           s_axi_awready <= n29;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           s_axi_awready <= n35;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_awready <= n39;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_awready <= n45;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ && __ILA_ILA_Slave_Write_grant__[1] ) begin
           s_axi_wready <= n47;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           s_axi_wready <= n49;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_wready <= n55;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_wready <= n61;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_bid <= bv_12_0_n62;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_bresp <= bv_2_0_n63;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_bresp <= n67;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_bresp <= n71;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_bvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_bvalid <= n75;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_bvalid <= n79;
       end else if ( __ILA_ILA_Slave_Write_decode_of_B_Slave_Ready__ && __ILA_ILA_Slave_Write_grant__[5] ) begin
           s_axi_bvalid <= n81;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_wactive <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_wactive <= n83;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_wactive <= n87;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_wactive <= n93;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_bwait <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_bwait <= n97;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_bwait <= n101;
       end else if ( __ILA_ILA_Slave_Write_decode_of_B_Slave_Ready__ && __ILA_ILA_Slave_Write_grant__[5] ) begin
           tx_bwait <= n103;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awlen <= bv_8_0_n104;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awlen <= n106;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_awlen <= n110;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awlen <= n115;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awsize <= bv_3_0_n116;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awsize <= n118;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awsize <= n120;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awaddr <= bv_32_0_n121;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awaddr <= n123;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_awaddr <= n132;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awaddr <= n141;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awburst <= bv_2_0_n63;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awburst <= n143;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awburst <= n145;
       end
   end
end
endmodule
