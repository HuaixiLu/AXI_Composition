module ILA_Master_Write__DOT__Master_W_Update(
__START__,
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
__ILA_ILA_Master_Write_decode_of_Master_W_Update__,
__ILA_ILA_Master_Write_valid__,
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
tx_awlen,
__COUNTER_start__n6
);
input            __START__;
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
output            __ILA_ILA_Master_Write_decode_of_Master_W_Update__;
output            __ILA_ILA_Master_Write_valid__;
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
output reg      [7:0] __COUNTER_start__n6;
wire            __ILA_ILA_Master_Write_decode_of_Master_W_Update__;
wire            __ILA_ILA_Master_Write_valid__;
wire            __START__;
wire     [31:0] awaddr;
wire      [1:0] awburst;
wire      [7:0] awlen;
wire      [2:0] awsize;
wire            bready;
wire            bv_1_0_n15__$354;
wire            bv_1_1_n0__$321;
wire      [7:0] bv_8_1_n7__$357;
wire            clk;
wire            m_axi_aresetn;
(* keep *) wire     [31:0] m_axi_awaddr_randinit;
(* keep *) wire      [1:0] m_axi_awburst_randinit;
(* keep *) wire      [3:0] m_axi_awcache_randinit;
(* keep *) wire     [11:0] m_axi_awid_randinit;
(* keep *) wire      [7:0] m_axi_awlen_randinit;
(* keep *) wire            m_axi_awlock_randinit;
(* keep *) wire      [2:0] m_axi_awprot_randinit;
(* keep *) wire      [3:0] m_axi_awqos_randinit;
wire            m_axi_awready;
(* keep *) wire      [2:0] m_axi_awsize_randinit;
(* keep *) wire            m_axi_awvalid_randinit;
wire     [11:0] m_axi_bid;
(* keep *) wire            m_axi_bready_randinit;
wire      [1:0] m_axi_bresp;
wire            m_axi_bvalid;
(* keep *) wire     [63:0] m_axi_wdata_randinit;
(* keep *) wire     [11:0] m_axi_wid_randinit;
(* keep *) wire            m_axi_wlast_randinit;
wire            m_axi_wready;
(* keep *) wire      [7:0] m_axi_wstrb_randinit;
(* keep *) wire            m_axi_wvalid_randinit;
wire            n10__$365;
wire            n11__$368;
wire            n12__$347;
wire            n13__$351;
wire            n14__$353;
wire            n16__$356;
wire            n17__$339;
wire      [7:0] n18__$343;
wire      [7:0] n19__$344;
wire            n1__$323;
wire            n2__$327;
wire            n3__$329;
wire            n4__$332;
wire            n5__$334;
wire            n8__$359;
wire            n9__$363;
wire            rst;
(* keep *) wire      [7:0] tx_awlen_randinit;
(* keep *) wire            tx_bwait_randinit;
(* keep *) wire            tx_wactive_randinit;
wire     [63:0] wdata;
wire            write_addr_valid;
wire            write_valid;
wire      [7:0] wstrb;
assign __ILA_ILA_Master_Write_valid__ = 1'b1 ;
assign bv_1_1_n0__$321 = 1'h1 ;
assign n1__$323 =  ( write_valid ) == ( bv_1_1_n0__$321 )  ;
assign n2__$327 =  ( m_axi_wready ) == ( bv_1_1_n0__$321 )  ;
assign n3__$329 =  ( n1__$323 ) & (n2__$327 )  ;
assign n4__$332 =  ( m_axi_aresetn ) == ( bv_1_1_n0__$321 )  ;
assign n5__$334 =  ( n3__$329 ) & (n4__$332 )  ;
assign __ILA_ILA_Master_Write_decode_of_Master_W_Update__ = n5__$334 ;
assign bv_8_1_n7__$357 = 8'h1 ;
assign n8__$359 =  ( tx_awlen ) == ( bv_8_1_n7__$357 )  ;
assign n9__$363 =  ( m_axi_wvalid ) == ( bv_1_1_n0__$321 )  ;
assign n10__$365 =  ( n8__$359 ) & (n9__$363 )  ;
assign n11__$368 =  ( n10__$365 ) ? ( bv_1_1_n0__$321 ) : ( m_axi_wlast ) ;
assign n12__$347 =  ( tx_awlen ) == ( bv_8_1_n7__$357 )  ;
assign n13__$351 =  ( m_axi_wvalid ) == ( bv_1_1_n0__$321 )  ;
assign n14__$353 =  ( n12__$347 ) & (n13__$351 )  ;
assign bv_1_0_n15__$354 = 1'h0 ;
assign n16__$356 =  ( n14__$353 ) ? ( bv_1_0_n15__$354 ) : ( tx_wactive ) ;
assign n17__$339 =  ( m_axi_wvalid ) == ( bv_1_1_n0__$321 )  ;
assign n18__$343 =  ( tx_awlen ) - ( bv_8_1_n7__$357 )  ;
assign n19__$344 =  ( n17__$339 ) ? ( n18__$343 ) : ( tx_awlen ) ;
always @(posedge clk) begin
   if(rst) begin
       m_axi_awid <= m_axi_awid_randinit ;
       m_axi_awaddr <= m_axi_awaddr_randinit ;
       m_axi_awlen <= m_axi_awlen_randinit ;
       m_axi_awsize <= m_axi_awsize_randinit ;
       m_axi_awburst <= m_axi_awburst_randinit ;
       m_axi_awlock <= m_axi_awlock_randinit ;
       m_axi_awcache <= m_axi_awcache_randinit ;
       m_axi_awprot <= m_axi_awprot_randinit ;
       m_axi_awqos <= m_axi_awqos_randinit ;
       m_axi_awvalid <= m_axi_awvalid_randinit ;
       m_axi_wid <= m_axi_wid_randinit ;
       m_axi_wdata <= m_axi_wdata_randinit ;
       m_axi_wstrb <= m_axi_wstrb_randinit ;
       m_axi_wlast <= m_axi_wlast_randinit ;
       m_axi_wvalid <= m_axi_wvalid_randinit ;
       m_axi_bready <= m_axi_bready_randinit ;
       tx_wactive <= tx_wactive_randinit ;
       tx_bwait <= tx_bwait_randinit ;
       tx_awlen <= tx_awlen_randinit ;
       __COUNTER_start__n6 <= 0;
   end
   else if(__START__ && __ILA_ILA_Master_Write_valid__) begin
       if ( __ILA_ILA_Master_Write_decode_of_Master_W_Update__ ) begin 
           __COUNTER_start__n6 <= 1; end
       else if( (__COUNTER_start__n6 >= 1 ) && ( __COUNTER_start__n6 < 255 )) begin
           __COUNTER_start__n6 <= __COUNTER_start__n6 + 1; end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awid <= m_axi_awid ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awaddr <= m_axi_awaddr ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awlen <= m_axi_awlen ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awsize <= m_axi_awsize ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awburst <= m_axi_awburst ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awlock <= m_axi_awlock ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awcache <= m_axi_awcache ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awprot <= m_axi_awprot ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awqos <= m_axi_awqos ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_awvalid <= m_axi_awvalid ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_wid <= m_axi_wid ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_wdata <= wdata ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_wstrb <= wstrb ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_wlast <= n11__$368 ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_wvalid <= bv_1_1_n0__$321 ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           m_axi_bready <= m_axi_bready ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           tx_wactive <= n16__$356 ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           tx_bwait <= tx_bwait ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_W_Update__) begin
           tx_awlen <= n19__$344 ;
       end
   end
end
endmodule
