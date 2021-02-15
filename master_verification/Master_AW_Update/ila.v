module ILA_Master_Write__DOT__Master_AW_Update(
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
__ILA_ILA_Master_Write_decode_of_Master_AW_Update__,
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
output            __ILA_ILA_Master_Write_decode_of_Master_AW_Update__;
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
wire            __ILA_ILA_Master_Write_decode_of_Master_AW_Update__;
wire            __ILA_ILA_Master_Write_valid__;
wire            __START__;
wire     [31:0] awaddr;
wire      [1:0] awburst;
wire      [7:0] awlen;
wire      [2:0] awsize;
wire            bready;
wire            bv_1_0_n11__$242;
wire            bv_1_1_n0__$203;
wire      [7:0] bv_8_0_n7__$231;
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
wire            n10__$239;
wire            n12__$244;
wire            n13__$226;
wire            n14__$230;
wire            n15__$221;
wire      [7:0] n16__$223;
wire            n1__$205;
wire            n2__$209;
wire            n3__$211;
wire            n4__$214;
wire            n5__$216;
wire            n8__$233;
wire            n9__$237;
wire            rst;
(* keep *) wire      [7:0] tx_awlen_randinit;
(* keep *) wire            tx_bwait_randinit;
(* keep *) wire            tx_wactive_randinit;
wire     [63:0] wdata;
wire            write_addr_valid;
wire            write_valid;
wire      [7:0] wstrb;
assign __ILA_ILA_Master_Write_valid__ = 1'b1 ;
assign bv_1_1_n0__$203 = 1'h1 ;
assign n1__$205 =  ( write_addr_valid ) == ( bv_1_1_n0__$203 )  ;
assign n2__$209 =  ( m_axi_awready ) == ( bv_1_1_n0__$203 )  ;
assign n3__$211 =  ( n1__$205 ) & (n2__$209 )  ;
assign n4__$214 =  ( m_axi_aresetn ) == ( bv_1_1_n0__$203 )  ;
assign n5__$216 =  ( n3__$211 ) & (n4__$214 )  ;
assign __ILA_ILA_Master_Write_decode_of_Master_AW_Update__ = n5__$216 ;
assign bv_8_0_n7__$231 = 8'h0 ;
assign n8__$233 =  ( m_axi_awlen ) == ( bv_8_0_n7__$231 )  ;
assign n9__$237 =  ( m_axi_awvalid ) == ( bv_1_1_n0__$203 )  ;
assign n10__$239 =  ( n8__$233 ) & (n9__$237 )  ;
assign bv_1_0_n11__$242 = 1'h0 ;
assign n12__$244 =  ( n10__$239 ) ? ( bv_1_1_n0__$203 ) : ( bv_1_0_n11__$242 ) ;
assign n13__$226 =  ( m_axi_awvalid ) == ( bv_1_1_n0__$203 )  ;
assign n14__$230 =  ( n13__$226 ) ? ( bv_1_1_n0__$203 ) : ( tx_wactive ) ;
assign n15__$221 =  ( m_axi_awvalid ) == ( bv_1_1_n0__$203 )  ;
assign n16__$223 =  ( n15__$221 ) ? ( m_axi_awlen ) : ( tx_awlen ) ;
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
       if ( __ILA_ILA_Master_Write_decode_of_Master_AW_Update__ ) begin 
           __COUNTER_start__n6 <= 1; end
       else if( (__COUNTER_start__n6 >= 1 ) && ( __COUNTER_start__n6 < 255 )) begin
           __COUNTER_start__n6 <= __COUNTER_start__n6 + 1; end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awid <= m_axi_awid ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awaddr <= awaddr ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awlen <= awlen ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awsize <= awsize ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awburst <= awburst ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awlock <= m_axi_awlock ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awcache <= m_axi_awcache ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awprot <= m_axi_awprot ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awqos <= m_axi_awqos ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_awvalid <= bv_1_1_n0__$203 ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_wid <= m_axi_wid ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_wdata <= m_axi_wdata ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_wstrb <= m_axi_wstrb ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_wlast <= n12__$244 ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_wvalid <= m_axi_wvalid ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           m_axi_bready <= m_axi_bready ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           tx_wactive <= n14__$230 ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           tx_bwait <= tx_bwait ;
       end
       if (__ILA_ILA_Master_Write_decode_of_Master_AW_Update__) begin
           tx_awlen <= n16__$223 ;
       end
   end
end
endmodule
