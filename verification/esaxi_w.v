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
wire     [11:0] bv_12_0_n56;
wire            bv_1_0_n0;
wire            bv_1_1_n5;
wire      [1:0] bv_2_0_n57;
wire      [1:0] bv_2_1_n118;
wire     [29:0] bv_30_1_n123;
wire     [31:0] bv_32_0_n115;
wire      [2:0] bv_3_0_n110;
wire      [7:0] bv_8_0_n98;
wire      [7:0] bv_8_1_n102;
wire            clk;
wire            n1;
wire            n10;
wire      [7:0] n100;
wire            n101;
wire      [7:0] n103;
wire      [7:0] n104;
wire            n105;
wire            n106;
wire      [7:0] n107;
wire      [7:0] n108;
wire      [7:0] n109;
wire            n11;
wire            n111;
wire      [2:0] n112;
wire            n113;
wire      [2:0] n114;
wire            n116;
wire     [31:0] n117;
wire            n119;
wire            n12;
wire            n120;
wire            n121;
wire     [29:0] n122;
wire     [29:0] n124;
wire     [31:0] n125;
wire     [31:0] n126;
wire            n127;
wire            n128;
wire            n129;
wire            n13;
wire            n130;
wire     [29:0] n131;
wire     [29:0] n132;
wire     [31:0] n133;
wire     [31:0] n134;
wire     [31:0] n135;
wire            n136;
wire      [1:0] n137;
wire            n138;
wire      [1:0] n139;
wire            n14;
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
wire            n58;
wire            n59;
wire            n6;
wire            n60;
wire      [1:0] n61;
wire            n62;
wire            n63;
wire            n64;
wire      [1:0] n65;
wire            n66;
wire            n67;
wire            n68;
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
assign n36 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n37 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n38 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n39 =  ( n37 ) & (n38 )  ;
assign n40 =  ( n39 ) ? ( bv_1_1_n5 ) : ( bv_1_0_n0 ) ;
assign n41 =  ( n36 ) ? ( bv_1_0_n0 ) : ( n40 ) ;
assign n42 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n43 =  ( n42 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n44 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n45 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n46 =  ( n45 ) ? ( bv_1_0_n0 ) : ( write_ready ) ;
assign n47 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n48 =  ( n47 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n49 =  ( n44 ) ? ( n46 ) : ( n48 ) ;
assign n50 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n51 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n52 =  ( n51 ) ? ( bv_1_0_n0 ) : ( write_ready ) ;
assign n53 =  ( tx_wactive ) == ( bv_1_1_n5 )  ;
assign n54 =  ( n53 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n55 =  ( n50 ) ? ( n52 ) : ( n54 ) ;
assign bv_12_0_n56 = 12'h0 ;
assign bv_2_0_n57 = 2'h0 ;
assign n58 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n59 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n60 =  ( n58 ) & (n59 )  ;
assign n61 =  ( n60 ) ? ( bv_2_0_n57 ) : ( s_axi_bresp ) ;
assign n62 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n63 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n64 =  ( n62 ) & (n63 )  ;
assign n65 =  ( n64 ) ? ( bv_2_0_n57 ) : ( s_axi_bresp ) ;
assign n66 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n67 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n68 =  ( n66 ) & (n67 )  ;
assign n69 =  ( n68 ) ? ( bv_1_1_n5 ) : ( s_axi_bvalid ) ;
assign n70 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n71 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n72 =  ( n70 ) & (n71 )  ;
assign n73 =  ( n72 ) ? ( bv_1_1_n5 ) : ( s_axi_bvalid ) ;
assign n74 =  ( s_axi_bvalid ) == ( bv_1_1_n5 )  ;
assign n75 =  ( n74 ) ? ( bv_1_0_n0 ) : ( s_axi_bvalid ) ;
assign n76 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n77 =  ( n76 ) ? ( bv_1_1_n5 ) : ( tx_wactive ) ;
assign n78 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n79 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n80 =  ( n78 ) & (n79 )  ;
assign n81 =  ( n80 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n82 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n83 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n84 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n85 =  ( n83 ) & (n84 )  ;
assign n86 =  ( n85 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n87 =  ( n82 ) ? ( bv_1_1_n5 ) : ( n86 ) ;
assign n88 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n89 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n90 =  ( n88 ) & (n89 )  ;
assign n91 =  ( n90 ) ? ( bv_1_1_n5 ) : ( tx_bwait ) ;
assign n92 =  ( s_axi_wlast ) == ( bv_1_1_n5 )  ;
assign n93 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n94 =  ( n92 ) & (n93 )  ;
assign n95 =  ( n94 ) ? ( bv_1_1_n5 ) : ( tx_bwait ) ;
assign n96 =  ( s_axi_bvalid ) == ( bv_1_1_n5 )  ;
assign n97 =  ( n96 ) ? ( bv_1_0_n0 ) : ( tx_bwait ) ;
assign bv_8_0_n98 = 8'h0 ;
assign n99 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n100 =  ( n99 ) ? ( s_axi_awlen ) : ( tx_awlen ) ;
assign n101 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign bv_8_1_n102 = 8'h1 ;
assign n103 =  ( tx_awlen ) - ( bv_8_1_n102 )  ;
assign n104 =  ( n101 ) ? ( n103 ) : ( tx_awlen ) ;
assign n105 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n106 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n107 =  ( tx_awlen ) - ( bv_8_1_n102 )  ;
assign n108 =  ( n106 ) ? ( n107 ) : ( tx_awlen ) ;
assign n109 =  ( n105 ) ? ( s_axi_awlen ) : ( n108 ) ;
assign bv_3_0_n110 = 3'h0 ;
assign n111 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n112 =  ( n111 ) ? ( s_axi_awsize ) : ( tx_awsize ) ;
assign n113 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n114 =  ( n113 ) ? ( s_axi_awsize ) : ( tx_awsize ) ;
assign bv_32_0_n115 = 32'h0 ;
assign n116 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n117 =  ( n116 ) ? ( s_axi_awaddr ) : ( tx_awaddr ) ;
assign bv_2_1_n118 = 2'h1 ;
assign n119 =  ( tx_awburst ) == ( bv_2_1_n118 )  ;
assign n120 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n121 =  ( n119 ) & (n120 )  ;
assign n122 = tx_awaddr[31:2] ;
assign bv_30_1_n123 = 30'h1 ;
assign n124 =  ( n122 ) + ( bv_30_1_n123 )  ;
assign n125 =  { ( n124 ) , ( bv_2_0_n57 ) }  ;
assign n126 =  ( n121 ) ? ( n125 ) : ( tx_awaddr ) ;
assign n127 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n128 =  ( tx_awburst ) == ( bv_2_1_n118 )  ;
assign n129 =  ( s_axi_wready ) == ( bv_1_1_n5 )  ;
assign n130 =  ( n128 ) & (n129 )  ;
assign n131 = tx_awaddr[31:2] ;
assign n132 =  ( n131 ) + ( bv_30_1_n123 )  ;
assign n133 =  { ( n132 ) , ( bv_2_0_n57 ) }  ;
assign n134 =  ( n130 ) ? ( n133 ) : ( tx_awaddr ) ;
assign n135 =  ( n127 ) ? ( s_axi_awaddr ) : ( n134 ) ;
assign n136 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n137 =  ( n136 ) ? ( s_axi_awburst ) : ( tx_awburst ) ;
assign n138 =  ( s_axi_awready ) == ( bv_1_1_n5 )  ;
assign n139 =  ( n138 ) ? ( s_axi_awburst ) : ( tx_awburst ) ;
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
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_awready <= n41;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ && __ILA_ILA_Slave_Write_grant__[1] ) begin
           s_axi_wready <= n43;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_wready <= n49;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_wready <= n55;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_bid <= bv_12_0_n56;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_bresp <= bv_2_0_n57;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_bresp <= n61;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_bresp <= n65;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           s_axi_bvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           s_axi_bvalid <= n69;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           s_axi_bvalid <= n73;
       end else if ( __ILA_ILA_Slave_Write_decode_of_B_Slave_Ready__ && __ILA_ILA_Slave_Write_grant__[5] ) begin
           s_axi_bvalid <= n75;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_wactive <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_wactive <= n77;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_wactive <= n81;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_wactive <= n87;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_bwait <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_bwait <= n91;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_bwait <= n95;
       end else if ( __ILA_ILA_Slave_Write_decode_of_B_Slave_Ready__ && __ILA_ILA_Slave_Write_grant__[5] ) begin
           tx_bwait <= n97;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awlen <= bv_8_0_n98;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awlen <= n100;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_awlen <= n104;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awlen <= n109;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awsize <= bv_3_0_n110;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awsize <= n112;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awsize <= n114;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awaddr <= bv_32_0_n115;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awaddr <= n117;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ && __ILA_ILA_Slave_Write_grant__[3] ) begin
           tx_awaddr <= n126;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awaddr <= n135;
       end
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ && __ILA_ILA_Slave_Write_grant__[0] ) begin
           tx_awburst <= bv_2_0_n57;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ && __ILA_ILA_Slave_Write_grant__[2] ) begin
           tx_awburst <= n137;
       end else if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ && __ILA_ILA_Slave_Write_grant__[4] ) begin
           tx_awburst <= n139;
       end
   end
end
endmodule
