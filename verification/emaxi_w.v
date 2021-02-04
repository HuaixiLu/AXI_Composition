module ILA_Master_write(
__ILA_ILA_Master_write_grant__,
awaddr,
awburst,
awlen,
awsize,
bready,
clk,
m_axi_aresetn,
m_axi_awready,
m_axi_bid,
m_axi_bresp,
m_axi_bvalid,
m_axi_wready,
rst,
wdata,
write_addr_valid,
write_valid,
wstrb,
__ILA_ILA_Master_write_acc_decode__,
__ILA_ILA_Master_write_decode_of_Master_AW_New__,
__ILA_ILA_Master_write_decode_of_Master_AW_Ready__,
__ILA_ILA_Master_write_decode_of_Master_AW_Update__,
__ILA_ILA_Master_write_decode_of_Master_B_Ready__,
__ILA_ILA_Master_write_decode_of_Master_W_New__,
__ILA_ILA_Master_write_decode_of_Master_W_Ready__,
__ILA_ILA_Master_write_decode_of_Master_W_Reset__,
__ILA_ILA_Master_write_decode_of_Master_W_Update__,
__ILA_ILA_Master_write_valid__,
m_axi_awid,
m_axi_awaddr,
m_axi_awlen,
m_axi_awsize,
m_axi_awburst,
m_axi_awlock,
m_axi_awcache,
m_axi_awprot,
m_axi_awqos,
m_axi_awvalid,
m_axi_wid,
m_axi_wdata,
m_axi_wstrb,
m_axi_wlast,
m_axi_wvalid,
m_axi_bready,
tx_wactive,
tx_bwait,
tx_awlen
);
input      [7:0] __ILA_ILA_Master_write_grant__;
input     [31:0] awaddr;
input      [1:0] awburst;
input      [7:0] awlen;
input      [2:0] awsize;
input            bready;
input            clk;
input            m_axi_aresetn;
input            m_axi_awready;
input     [11:0] m_axi_bid;
input      [1:0] m_axi_bresp;
input            m_axi_bvalid;
input            m_axi_wready;
input            rst;
input     [63:0] wdata;
input            write_addr_valid;
input            write_valid;
input      [7:0] wstrb;
output      [7:0] __ILA_ILA_Master_write_acc_decode__;
output            __ILA_ILA_Master_write_decode_of_Master_AW_New__;
output            __ILA_ILA_Master_write_decode_of_Master_AW_Ready__;
output            __ILA_ILA_Master_write_decode_of_Master_AW_Update__;
output            __ILA_ILA_Master_write_decode_of_Master_B_Ready__;
output            __ILA_ILA_Master_write_decode_of_Master_W_New__;
output            __ILA_ILA_Master_write_decode_of_Master_W_Ready__;
output            __ILA_ILA_Master_write_decode_of_Master_W_Reset__;
output            __ILA_ILA_Master_write_decode_of_Master_W_Update__;
output            __ILA_ILA_Master_write_valid__;
output reg     [11:0] m_axi_awid;
output reg     [31:0] m_axi_awaddr;
output reg      [7:0] m_axi_awlen;
output reg      [2:0] m_axi_awsize;
output reg      [1:0] m_axi_awburst;
output reg            m_axi_awlock;
output reg      [3:0] m_axi_awcache;
output reg      [2:0] m_axi_awprot;
output reg      [3:0] m_axi_awqos;
output reg            m_axi_awvalid;
output reg     [11:0] m_axi_wid;
output reg     [63:0] m_axi_wdata;
output reg      [7:0] m_axi_wstrb;
output reg            m_axi_wlast;
output reg            m_axi_wvalid;
output reg            m_axi_bready;
output reg            tx_wactive;
output reg            tx_bwait;
output reg      [7:0] tx_awlen;
wire      [7:0] __ILA_ILA_Master_write_acc_decode__;
wire            __ILA_ILA_Master_write_decode_of_Master_AW_New__;
wire            __ILA_ILA_Master_write_decode_of_Master_AW_Ready__;
wire            __ILA_ILA_Master_write_decode_of_Master_AW_Update__;
wire            __ILA_ILA_Master_write_decode_of_Master_B_Ready__;
wire            __ILA_ILA_Master_write_decode_of_Master_W_New__;
wire            __ILA_ILA_Master_write_decode_of_Master_W_Ready__;
wire            __ILA_ILA_Master_write_decode_of_Master_W_Reset__;
wire            __ILA_ILA_Master_write_decode_of_Master_W_Update__;
wire      [7:0] __ILA_ILA_Master_write_grant__;
wire            __ILA_ILA_Master_write_valid__;
wire     [31:0] awaddr;
wire      [1:0] awburst;
wire      [7:0] awlen;
wire      [2:0] awsize;
wire            bready;
wire            bv_1_0_n0;
wire            bv_1_1_n2;
wire      [7:0] bv_8_0_n48;
wire      [7:0] bv_8_1_n57;
wire            clk;
wire            m_axi_aresetn;
wire            m_axi_awready;
wire     [11:0] m_axi_bid;
wire      [1:0] m_axi_bresp;
wire            m_axi_bvalid;
wire            m_axi_wready;
wire            n1;
wire            n10;
wire            n11;
wire            n12;
wire            n13;
wire            n14;
wire            n15;
wire            n16;
wire            n17;
wire            n18;
wire            n19;
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
wire     [31:0] n35;
wire            n36;
wire      [7:0] n37;
wire            n38;
wire      [2:0] n39;
wire            n4;
wire            n40;
wire      [1:0] n41;
wire            n42;
wire            n43;
wire            n44;
wire     [63:0] n45;
wire            n46;
wire      [7:0] n47;
wire            n49;
wire            n5;
wire            n50;
wire            n51;
wire            n52;
wire            n53;
wire            n54;
wire            n55;
wire            n56;
wire            n58;
wire            n59;
wire            n6;
wire            n60;
wire            n61;
wire            n62;
wire            n63;
wire            n64;
wire            n65;
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
wire      [7:0] n81;
wire            n82;
wire      [7:0] n83;
wire            n84;
wire      [7:0] n85;
wire      [7:0] n86;
wire            n87;
wire      [7:0] n88;
wire      [7:0] n89;
wire            n9;
wire            rst;
wire     [63:0] wdata;
wire            write_addr_valid;
wire            write_valid;
wire      [7:0] wstrb;
assign __ILA_ILA_Master_write_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( m_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_ILA_Master_write_decode_of_Master_W_Reset__ = n1 ;
assign __ILA_ILA_Master_write_acc_decode__[0] = __ILA_ILA_Master_write_decode_of_Master_W_Reset__ ;
assign bv_1_1_n2 = 1'h1 ;
assign n3 =  ( write_addr_valid ) == ( bv_1_1_n2 )  ;
assign n4 =  ( m_axi_awready ) == ( bv_1_0_n0 )  ;
assign n5 =  ( n3 ) & (n4 )  ;
assign n6 =  ( m_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n7 =  ( n5 ) & (n6 )  ;
assign __ILA_ILA_Master_write_decode_of_Master_AW_New__ = n7 ;
assign __ILA_ILA_Master_write_acc_decode__[1] = __ILA_ILA_Master_write_decode_of_Master_AW_New__ ;
assign n8 =  ( write_addr_valid ) == ( bv_1_1_n2 )  ;
assign n9 =  ( m_axi_awready ) == ( bv_1_1_n2 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign n11 =  ( m_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n12 =  ( n10 ) & (n11 )  ;
assign __ILA_ILA_Master_write_decode_of_Master_AW_Update__ = n12 ;
assign __ILA_ILA_Master_write_acc_decode__[2] = __ILA_ILA_Master_write_decode_of_Master_AW_Update__ ;
assign n13 =  ( write_addr_valid ) == ( bv_1_0_n0 )  ;
assign n14 =  ( m_axi_awready ) == ( bv_1_1_n2 )  ;
assign n15 =  ( n13 ) & (n14 )  ;
assign n16 =  ( m_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n17 =  ( n15 ) & (n16 )  ;
assign __ILA_ILA_Master_write_decode_of_Master_AW_Ready__ = n17 ;
assign __ILA_ILA_Master_write_acc_decode__[3] = __ILA_ILA_Master_write_decode_of_Master_AW_Ready__ ;
assign n18 =  ( write_valid ) == ( bv_1_1_n2 )  ;
assign n19 =  ( m_axi_wready ) == ( bv_1_0_n0 )  ;
assign n20 =  ( n18 ) & (n19 )  ;
assign n21 =  ( m_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n22 =  ( n20 ) & (n21 )  ;
assign __ILA_ILA_Master_write_decode_of_Master_W_New__ = n22 ;
assign __ILA_ILA_Master_write_acc_decode__[4] = __ILA_ILA_Master_write_decode_of_Master_W_New__ ;
assign n23 =  ( write_valid ) == ( bv_1_1_n2 )  ;
assign n24 =  ( m_axi_wready ) == ( bv_1_1_n2 )  ;
assign n25 =  ( n23 ) & (n24 )  ;
assign n26 =  ( m_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n27 =  ( n25 ) & (n26 )  ;
assign __ILA_ILA_Master_write_decode_of_Master_W_Update__ = n27 ;
assign __ILA_ILA_Master_write_acc_decode__[5] = __ILA_ILA_Master_write_decode_of_Master_W_Update__ ;
assign n28 =  ( write_valid ) == ( bv_1_0_n0 )  ;
assign n29 =  ( m_axi_wready ) == ( bv_1_1_n2 )  ;
assign n30 =  ( n28 ) & (n29 )  ;
assign n31 =  ( m_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n32 =  ( n30 ) & (n31 )  ;
assign __ILA_ILA_Master_write_decode_of_Master_W_Ready__ = n32 ;
assign __ILA_ILA_Master_write_acc_decode__[6] = __ILA_ILA_Master_write_decode_of_Master_W_Ready__ ;
assign n33 =  ( m_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign __ILA_ILA_Master_write_decode_of_Master_B_Ready__ = n33 ;
assign __ILA_ILA_Master_write_acc_decode__[7] = __ILA_ILA_Master_write_decode_of_Master_B_Ready__ ;
assign n34 =  ( m_axi_awvalid ) == ( bv_1_0_n0 )  ;
assign n35 =  ( n34 ) ? ( awaddr ) : ( m_axi_awaddr ) ;
assign n36 =  ( m_axi_awvalid ) == ( bv_1_0_n0 )  ;
assign n37 =  ( n36 ) ? ( awlen ) : ( m_axi_awlen ) ;
assign n38 =  ( m_axi_awvalid ) == ( bv_1_0_n0 )  ;
assign n39 =  ( n38 ) ? ( awsize ) : ( m_axi_awsize ) ;
assign n40 =  ( m_axi_awvalid ) == ( bv_1_0_n0 )  ;
assign n41 =  ( n40 ) ? ( awburst ) : ( m_axi_awburst ) ;
assign n42 =  ( m_axi_awvalid ) == ( bv_1_0_n0 )  ;
assign n43 =  ( n42 ) ? ( bv_1_1_n2 ) : ( bv_1_0_n0 ) ;
assign n44 =  ( m_axi_wvalid ) == ( bv_1_0_n0 )  ;
assign n45 =  ( n44 ) ? ( wdata ) : ( m_axi_wdata ) ;
assign n46 =  ( m_axi_wvalid ) == ( bv_1_0_n0 )  ;
assign n47 =  ( n46 ) ? ( wstrb ) : ( m_axi_wstrb ) ;
assign bv_8_0_n48 = 8'h0 ;
assign n49 =  ( m_axi_awlen ) == ( bv_8_0_n48 )  ;
assign n50 =  ( m_axi_awvalid ) == ( bv_1_1_n2 )  ;
assign n51 =  ( n49 ) & (n50 )  ;
assign n52 =  ( n51 ) ? ( bv_1_1_n2 ) : ( bv_1_0_n0 ) ;
assign n53 =  ( m_axi_awlen ) == ( bv_8_0_n48 )  ;
assign n54 =  ( m_axi_awvalid ) == ( bv_1_1_n2 )  ;
assign n55 =  ( n53 ) & (n54 )  ;
assign n56 =  ( n55 ) ? ( bv_1_1_n2 ) : ( bv_1_0_n0 ) ;
assign bv_8_1_n57 = 8'h1 ;
assign n58 =  ( tx_awlen ) == ( bv_8_1_n57 )  ;
assign n59 =  ( m_axi_wvalid ) == ( bv_1_1_n2 )  ;
assign n60 =  ( n58 ) & (n59 )  ;
assign n61 =  ( n60 ) ? ( bv_1_1_n2 ) : ( m_axi_wlast ) ;
assign n62 =  ( tx_awlen ) == ( bv_8_1_n57 )  ;
assign n63 =  ( m_axi_wvalid ) == ( bv_1_1_n2 )  ;
assign n64 =  ( n62 ) & (n63 )  ;
assign n65 =  ( n64 ) ? ( bv_1_1_n2 ) : ( m_axi_wlast ) ;
assign n66 =  ( m_axi_wvalid ) == ( bv_1_0_n0 )  ;
assign n67 =  ( n66 ) ? ( bv_1_1_n2 ) : ( m_axi_wvalid ) ;
assign n68 =  ( m_axi_awvalid ) == ( bv_1_1_n2 )  ;
assign n69 =  ( n68 ) ? ( bv_1_1_n2 ) : ( tx_wactive ) ;
assign n70 =  ( m_axi_awvalid ) == ( bv_1_1_n2 )  ;
assign n71 =  ( n70 ) ? ( bv_1_1_n2 ) : ( tx_wactive ) ;
assign n72 =  ( tx_awlen ) == ( bv_8_1_n57 )  ;
assign n73 =  ( m_axi_wvalid ) == ( bv_1_1_n2 )  ;
assign n74 =  ( n72 ) & (n73 )  ;
assign n75 =  ( n74 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n76 =  ( tx_awlen ) == ( bv_8_1_n57 )  ;
assign n77 =  ( m_axi_wvalid ) == ( bv_1_1_n2 )  ;
assign n78 =  ( n76 ) & (n77 )  ;
assign n79 =  ( n78 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n80 =  ( m_axi_awvalid ) == ( bv_1_1_n2 )  ;
assign n81 =  ( n80 ) ? ( m_axi_awlen ) : ( tx_awlen ) ;
assign n82 =  ( m_axi_awvalid ) == ( bv_1_1_n2 )  ;
assign n83 =  ( n82 ) ? ( m_axi_awlen ) : ( tx_awlen ) ;
assign n84 =  ( m_axi_wvalid ) == ( bv_1_1_n2 )  ;
assign n85 =  ( tx_awlen ) - ( bv_8_1_n57 )  ;
assign n86 =  ( n84 ) ? ( n85 ) : ( tx_awlen ) ;
assign n87 =  ( m_axi_wvalid ) == ( bv_1_1_n2 )  ;
assign n88 =  ( tx_awlen ) - ( bv_8_1_n57 )  ;
assign n89 =  ( n87 ) ? ( n88 ) : ( tx_awlen ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_ILA_Master_write_valid__) begin
       if ( __ILA_ILA_Master_write_decode_of_Master_AW_New__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awaddr <= n35;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_AW_Update__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awaddr <= awaddr;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_AW_New__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awlen <= n37;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_AW_Update__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awlen <= awlen;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_AW_New__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awsize <= n39;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_AW_Update__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awsize <= awsize;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_AW_New__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awburst <= n41;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_AW_Update__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awburst <= awburst;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_W_Reset__ && __ILA_ILA_Master_write_grant__[0] ) begin
           m_axi_awvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_AW_New__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awvalid <= n43;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_AW_Update__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awvalid <= bv_1_1_n2;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_W_New__ && __ILA_ILA_Master_write_grant__[4] ) begin
           m_axi_wdata <= n45;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_Update__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wdata <= wdata;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_W_New__ && __ILA_ILA_Master_write_grant__[4] ) begin
           m_axi_wstrb <= n47;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_Update__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wstrb <= wstrb;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_AW_Update__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_wlast <= n52;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_AW_Ready__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_wlast <= n56;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_Update__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wlast <= n61;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_Ready__ && __ILA_ILA_Master_write_grant__[6] ) begin
           m_axi_wlast <= n65;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_W_Reset__ && __ILA_ILA_Master_write_grant__[0] ) begin
           m_axi_wvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_New__ && __ILA_ILA_Master_write_grant__[4] ) begin
           m_axi_wvalid <= n67;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_Update__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wvalid <= bv_1_1_n2;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_B_Ready__ && __ILA_ILA_Master_write_grant__[7] ) begin
           m_axi_bready <= bready;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_AW_Update__ && __ILA_ILA_Master_write_grant__[2] ) begin
           tx_wactive <= n69;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_AW_Ready__ && __ILA_ILA_Master_write_grant__[3] ) begin
           tx_wactive <= n71;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_Update__ && __ILA_ILA_Master_write_grant__[5] ) begin
           tx_wactive <= n75;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_Ready__ && __ILA_ILA_Master_write_grant__[6] ) begin
           tx_wactive <= n79;
       end
       if ( __ILA_ILA_Master_write_decode_of_Master_AW_Update__ && __ILA_ILA_Master_write_grant__[2] ) begin
           tx_awlen <= n81;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_AW_Ready__ && __ILA_ILA_Master_write_grant__[3] ) begin
           tx_awlen <= n83;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_Update__ && __ILA_ILA_Master_write_grant__[5] ) begin
           tx_awlen <= n86;
       end else if ( __ILA_ILA_Master_write_decode_of_Master_W_Ready__ && __ILA_ILA_Master_write_grant__[6] ) begin
           tx_awlen <= n89;
       end
   end
end
endmodule
