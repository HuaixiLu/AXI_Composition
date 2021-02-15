/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_awaddr,
__ILA_I_awburst,
__ILA_I_awlen,
__ILA_I_awsize,
__ILA_I_bready,
__ILA_I_m_axi_aresetn,
__ILA_I_m_axi_awready,
__ILA_I_m_axi_bid,
__ILA_I_m_axi_bresp,
__ILA_I_m_axi_bvalid,
__ILA_I_m_axi_wready,
__ILA_I_wdata,
__ILA_I_write_addr_valid,
__ILA_I_write_valid,
__ILA_I_wstrb,
__VLG_I_m_axi_arready,
__VLG_I_m_axi_rdata,
__VLG_I_m_axi_rid,
__VLG_I_m_axi_rlast,
__VLG_I_m_axi_rresp,
__VLG_I_m_axi_rvalid,
__VLG_I_rd_access,
__VLG_I_rd_packet,
__VLG_I_rr_wait,
__VLG_I_wr_access,
__VLG_I_wr_packet,
clk,
dummy_reset,
rst,
__ILA_SO_m_axi_awaddr,
__ILA_SO_m_axi_awburst,
__ILA_SO_m_axi_awcache,
__ILA_SO_m_axi_awid,
__ILA_SO_m_axi_awlen,
__ILA_SO_m_axi_awlock,
__ILA_SO_m_axi_awprot,
__ILA_SO_m_axi_awqos,
__ILA_SO_m_axi_awsize,
__ILA_SO_m_axi_awvalid,
__ILA_SO_m_axi_bready,
__ILA_SO_m_axi_wdata,
__ILA_SO_m_axi_wid,
__ILA_SO_m_axi_wlast,
__ILA_SO_m_axi_wstrb,
__ILA_SO_m_axi_wvalid,
__ILA_SO_tx_awlen,
__ILA_SO_tx_bwait,
__ILA_SO_tx_wactive,
__VLG_O_rd_wait,
__VLG_O_rr_access,
__VLG_O_rr_packet,
__VLG_O_wr_wait,
__m0__,
__m10__,
__m11__,
__m12__,
__m13__,
__m14__,
__m15__,
__m16__,
__m17__,
__m18__,
__m1__,
__m2__,
__m3__,
__m4__,
__m5__,
__m6__,
__m7__,
__m8__,
__m9__,
m_axi_araddr,
m_axi_arburst,
m_axi_arcache,
m_axi_arid,
m_axi_arlen,
m_axi_arlock,
m_axi_arprot,
m_axi_arqos,
m_axi_arsize,
m_axi_arvalid,
m_axi_awaddr,
m_axi_awburst,
m_axi_awcache,
m_axi_awid,
m_axi_awlen,
m_axi_awlock,
m_axi_awprot,
m_axi_awqos,
m_axi_awsize,
m_axi_awvalid,
m_axi_bready,
m_axi_rready,
m_axi_wdata,
m_axi_wid,
m_axi_wlast,
m_axi_wstrb,
m_axi_wvalid,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__
);
input     [31:0] __ILA_I_awaddr;
input      [1:0] __ILA_I_awburst;
input      [7:0] __ILA_I_awlen;
input      [2:0] __ILA_I_awsize;
input            __ILA_I_bready;
input            __ILA_I_m_axi_aresetn;
input            __ILA_I_m_axi_awready;
input     [11:0] __ILA_I_m_axi_bid;
input      [1:0] __ILA_I_m_axi_bresp;
input            __ILA_I_m_axi_bvalid;
input            __ILA_I_m_axi_wready;
input     [63:0] __ILA_I_wdata;
input            __ILA_I_write_addr_valid;
input            __ILA_I_write_valid;
input      [7:0] __ILA_I_wstrb;
input            __VLG_I_m_axi_arready;
input     [63:0] __VLG_I_m_axi_rdata;
input     [11:0] __VLG_I_m_axi_rid;
input            __VLG_I_m_axi_rlast;
input      [1:0] __VLG_I_m_axi_rresp;
input            __VLG_I_m_axi_rvalid;
input            __VLG_I_rd_access;
input    [103:0] __VLG_I_rd_packet;
input            __VLG_I_rr_wait;
input            __VLG_I_wr_access;
input    [103:0] __VLG_I_wr_packet;
input            clk;
input            dummy_reset;
input            rst;
output     [31:0] __ILA_SO_m_axi_awaddr;
output      [1:0] __ILA_SO_m_axi_awburst;
output      [3:0] __ILA_SO_m_axi_awcache;
output     [11:0] __ILA_SO_m_axi_awid;
output      [7:0] __ILA_SO_m_axi_awlen;
output            __ILA_SO_m_axi_awlock;
output      [2:0] __ILA_SO_m_axi_awprot;
output      [3:0] __ILA_SO_m_axi_awqos;
output      [2:0] __ILA_SO_m_axi_awsize;
output            __ILA_SO_m_axi_awvalid;
output            __ILA_SO_m_axi_bready;
output     [63:0] __ILA_SO_m_axi_wdata;
output     [11:0] __ILA_SO_m_axi_wid;
output            __ILA_SO_m_axi_wlast;
output      [7:0] __ILA_SO_m_axi_wstrb;
output            __ILA_SO_m_axi_wvalid;
output      [7:0] __ILA_SO_tx_awlen;
output            __ILA_SO_tx_bwait;
output            __ILA_SO_tx_wactive;
output            __VLG_O_rd_wait;
output            __VLG_O_rr_access;
output    [103:0] __VLG_O_rr_packet;
output            __VLG_O_wr_wait;
output            __m0__;
output            __m10__;
output            __m11__;
output            __m12__;
output            __m13__;
output            __m14__;
output            __m15__;
output            __m16__;
output            __m17__;
output            __m18__;
output            __m1__;
output            __m2__;
output            __m3__;
output            __m4__;
output            __m5__;
output            __m6__;
output            __m7__;
output            __m8__;
output            __m9__;
output     [31:0] m_axi_araddr;
output      [1:0] m_axi_arburst;
output      [3:0] m_axi_arcache;
output     [11:0] m_axi_arid;
output      [7:0] m_axi_arlen;
output            m_axi_arlock;
output      [2:0] m_axi_arprot;
output      [3:0] m_axi_arqos;
output      [2:0] m_axi_arsize;
output            m_axi_arvalid;
output     [31:0] m_axi_awaddr;
output      [1:0] m_axi_awburst;
output      [3:0] m_axi_awcache;
output     [11:0] m_axi_awid;
output      [7:0] m_axi_awlen;
output            m_axi_awlock;
output      [2:0] m_axi_awprot;
output      [3:0] m_axi_awqos;
output      [2:0] m_axi_awsize;
output            m_axi_awvalid;
output            m_axi_bready;
output            m_axi_rready;
output     [63:0] m_axi_wdata;
output     [11:0] m_axi_wid;
output            m_axi_wlast;
output      [7:0] m_axi_wstrb;
output            m_axi_wvalid;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_ILA_Master_Write_decode_of_Master_W_New__;
(* keep *) wire            __ILA_ILA_Master_Write_valid__;
(* keep *) wire     [31:0] __ILA_I_awaddr;
(* keep *) wire      [1:0] __ILA_I_awburst;
(* keep *) wire      [7:0] __ILA_I_awlen;
(* keep *) wire      [2:0] __ILA_I_awsize;
(* keep *) wire            __ILA_I_bready;
(* keep *) wire            __ILA_I_m_axi_aresetn;
(* keep *) wire            __ILA_I_m_axi_awready;
(* keep *) wire     [11:0] __ILA_I_m_axi_bid;
(* keep *) wire      [1:0] __ILA_I_m_axi_bresp;
(* keep *) wire            __ILA_I_m_axi_bvalid;
(* keep *) wire            __ILA_I_m_axi_wready;
(* keep *) wire     [63:0] __ILA_I_wdata;
(* keep *) wire            __ILA_I_write_addr_valid;
(* keep *) wire            __ILA_I_write_valid;
(* keep *) wire      [7:0] __ILA_I_wstrb;
(* keep *) wire     [31:0] __ILA_SO_m_axi_awaddr;
(* keep *) wire      [1:0] __ILA_SO_m_axi_awburst;
(* keep *) wire      [3:0] __ILA_SO_m_axi_awcache;
(* keep *) wire     [11:0] __ILA_SO_m_axi_awid;
(* keep *) wire      [7:0] __ILA_SO_m_axi_awlen;
(* keep *) wire            __ILA_SO_m_axi_awlock;
(* keep *) wire      [2:0] __ILA_SO_m_axi_awprot;
(* keep *) wire      [3:0] __ILA_SO_m_axi_awqos;
(* keep *) wire      [2:0] __ILA_SO_m_axi_awsize;
(* keep *) wire            __ILA_SO_m_axi_awvalid;
(* keep *) wire            __ILA_SO_m_axi_bready;
(* keep *) wire     [63:0] __ILA_SO_m_axi_wdata;
(* keep *) wire     [11:0] __ILA_SO_m_axi_wid;
(* keep *) wire            __ILA_SO_m_axi_wlast;
(* keep *) wire      [7:0] __ILA_SO_m_axi_wstrb;
(* keep *) wire            __ILA_SO_m_axi_wvalid;
(* keep *) wire      [7:0] __ILA_SO_tx_awlen;
(* keep *) wire            __ILA_SO_tx_bwait;
(* keep *) wire            __ILA_SO_tx_wactive;
(* keep *) wire            __ISSUE__;
(* keep *) wire            __VLG_I_m_axi_arready;
(* keep *) wire     [63:0] __VLG_I_m_axi_rdata;
(* keep *) wire     [11:0] __VLG_I_m_axi_rid;
(* keep *) wire            __VLG_I_m_axi_rlast;
(* keep *) wire      [1:0] __VLG_I_m_axi_rresp;
(* keep *) wire            __VLG_I_m_axi_rvalid;
(* keep *) wire            __VLG_I_rd_access;
(* keep *) wire    [103:0] __VLG_I_rd_packet;
(* keep *) wire            __VLG_I_rr_wait;
(* keep *) wire            __VLG_I_wr_access;
(* keep *) wire    [103:0] __VLG_I_wr_packet;
(* keep *) wire            __VLG_O_rd_wait;
(* keep *) wire            __VLG_O_rr_access;
(* keep *) wire    [103:0] __VLG_O_rr_packet;
(* keep *) wire            __VLG_O_wr_wait;
(* keep *) wire            __m0__;
(* keep *) wire            __m10__;
(* keep *) wire            __m11__;
(* keep *) wire            __m12__;
(* keep *) wire            __m13__;
(* keep *) wire            __m14__;
(* keep *) wire            __m15__;
(* keep *) wire            __m16__;
(* keep *) wire            __m17__;
(* keep *) wire            __m18__;
(* keep *) wire            __m1__;
(* keep *) wire            __m2__;
(* keep *) wire            __m3__;
(* keep *) wire            __m4__;
(* keep *) wire            __m5__;
(* keep *) wire            __m6__;
(* keep *) wire            __m7__;
(* keep *) wire            __m8__;
(* keep *) wire            __m9__;
wire            clk;
(* keep *) wire            dummy_reset;
(* keep *) wire     [31:0] m_axi_araddr;
(* keep *) wire      [1:0] m_axi_arburst;
(* keep *) wire      [3:0] m_axi_arcache;
(* keep *) wire     [11:0] m_axi_arid;
(* keep *) wire      [7:0] m_axi_arlen;
(* keep *) wire            m_axi_arlock;
(* keep *) wire      [2:0] m_axi_arprot;
(* keep *) wire      [3:0] m_axi_arqos;
(* keep *) wire      [2:0] m_axi_arsize;
(* keep *) wire            m_axi_arvalid;
(* keep *) wire     [31:0] m_axi_awaddr;
(* keep *) wire      [1:0] m_axi_awburst;
(* keep *) wire      [3:0] m_axi_awcache;
(* keep *) wire     [11:0] m_axi_awid;
(* keep *) wire      [7:0] m_axi_awlen;
(* keep *) wire            m_axi_awlock;
(* keep *) wire      [2:0] m_axi_awprot;
(* keep *) wire      [3:0] m_axi_awqos;
(* keep *) wire      [2:0] m_axi_awsize;
(* keep *) wire            m_axi_awvalid;
(* keep *) wire            m_axi_bready;
(* keep *) wire            m_axi_rready;
(* keep *) wire     [63:0] m_axi_wdata;
(* keep *) wire     [11:0] m_axi_wid;
(* keep *) wire            m_axi_wlast;
(* keep *) wire      [7:0] m_axi_wstrb;
(* keep *) wire            m_axi_wvalid;
wire            rst;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 6) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end
always @(posedge clk) begin
if (rst) __START__ <= 0;
else if (__START__ || __STARTED__) __START__ <= 0;
else if (__ISSUE__) __START__ <= 1;
end
always @(posedge clk) begin
if (rst) __STARTED__ <= 0;
else if (__START__) __STARTED__ <= 1;
end
always @(posedge clk) begin
if (rst) __ENDED__ <= 0;
else if (__IEND__) __ENDED__ <= 1;
end
always @(posedge clk) begin
if (rst) __2ndENDED__ <= 1'b0;
else if (__ENDED__ && __EDCOND__ && ~__2ndENDED__)  __2ndENDED__ <= 1'b1; end
assign __2ndIEND__ = __ENDED__ && __EDCOND__ && ~__2ndENDED__ ;
always @(posedge clk) begin
if (rst) __RESETED__ <= 1;
end
assign __m0__ = m1.m_axi_awaddr == __ILA_SO_m_axi_awaddr ;
assign __m1__ = m1.m_axi_awburst == __ILA_SO_m_axi_awburst ;
assign __m2__ = m1.m_axi_awcache == __ILA_SO_m_axi_awcache ;
assign __m3__ = m1.m_axi_awid == __ILA_SO_m_axi_awid ;
assign __m4__ = m1.m_axi_awlen == __ILA_SO_m_axi_awlen ;
assign __m5__ = m1.m_axi_awlock == __ILA_SO_m_axi_awlock ;
assign __m6__ = m1.m_axi_awprot == __ILA_SO_m_axi_awprot ;
assign __m7__ = m1.m_axi_awqos == __ILA_SO_m_axi_awqos ;
assign __m8__ = m1.m_axi_awsize == __ILA_SO_m_axi_awsize ;
assign __m9__ = m1.m_axi_awvalid == __ILA_SO_m_axi_awvalid ;
assign __m10__ = m1.m_axi_bready == __ILA_SO_m_axi_bready ;
assign __m11__ = m1.m_axi_wdata == __ILA_SO_m_axi_wdata ;
assign __m12__ = m1.m_axi_wid == __ILA_SO_m_axi_wid ;
assign __m13__ = m1.m_axi_wlast == __ILA_SO_m_axi_wlast ;
assign __m14__ = m1.m_axi_wstrb == __ILA_SO_m_axi_wstrb ;
assign __m15__ = m1.m_axi_wvalid == __ILA_SO_m_axi_wvalid ;
assign __m16__ = m1.m_axi_wdata == __ILA_SO_m_axi_wdata ;
assign __m17__ = m1.m_axi_wstrb == __ILA_SO_m_axi_wstrb ;
assign __m18__ = m1.m_axi_wvalid == __ILA_SO_m_axi_wvalid ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign __ISSUE__ = 1 ;

ILA_Master_Write__DOT__Master_W_New m0 (
   .__START__(__START__),
   .awaddr(__ILA_I_awaddr),
   .awburst(__ILA_I_awburst),
   .awlen(__ILA_I_awlen),
   .awsize(__ILA_I_awsize),
   .bready(__ILA_I_bready),
   .clk(clk),
   .m_axi_aresetn(__ILA_I_m_axi_aresetn),
   .m_axi_awready(__ILA_I_m_axi_awready),
   .m_axi_bid(__ILA_I_m_axi_bid),
   .m_axi_bresp(__ILA_I_m_axi_bresp),
   .m_axi_bvalid(__ILA_I_m_axi_bvalid),
   .m_axi_wready(__ILA_I_m_axi_wready),
   .rst(rst),
   .wdata(__ILA_I_wdata),
   .write_addr_valid(__ILA_I_write_addr_valid),
   .write_valid(__ILA_I_write_valid),
   .wstrb(__ILA_I_wstrb),
   .__ILA_ILA_Master_Write_decode_of_Master_W_New__(__ILA_ILA_Master_Write_decode_of_Master_W_New__),
   .__ILA_ILA_Master_Write_valid__(__ILA_ILA_Master_Write_valid__),
   .m_axi_awid(__ILA_SO_m_axi_awid),
   .m_axi_awaddr(__ILA_SO_m_axi_awaddr),
   .m_axi_awlen(__ILA_SO_m_axi_awlen),
   .m_axi_awsize(__ILA_SO_m_axi_awsize),
   .m_axi_awburst(__ILA_SO_m_axi_awburst),
   .m_axi_awlock(__ILA_SO_m_axi_awlock),
   .m_axi_awcache(__ILA_SO_m_axi_awcache),
   .m_axi_awprot(__ILA_SO_m_axi_awprot),
   .m_axi_awqos(__ILA_SO_m_axi_awqos),
   .m_axi_awvalid(__ILA_SO_m_axi_awvalid),
   .m_axi_wid(__ILA_SO_m_axi_wid),
   .m_axi_wdata(__ILA_SO_m_axi_wdata),
   .m_axi_wstrb(__ILA_SO_m_axi_wstrb),
   .m_axi_wlast(__ILA_SO_m_axi_wlast),
   .m_axi_wvalid(__ILA_SO_m_axi_wvalid),
   .m_axi_bready(__ILA_SO_m_axi_bready),
   .tx_wactive(__ILA_SO_tx_wactive),
   .tx_bwait(__ILA_SO_tx_bwait),
   .tx_awlen(__ILA_SO_tx_awlen),
   .__COUNTER_start__n7()
);
emaxi m1(
    .m_axi_aclk(clk),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_aresetn(__ILA_I_m_axi_aresetn),
    .m_axi_arid(m_axi_arid),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arqos(m_axi_arqos),
    .m_axi_arready(__VLG_I_m_axi_arready),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_awid(m_axi_awid),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awqos(m_axi_awqos),
    .m_axi_awready(__ILA_I_m_axi_awready),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_bid(__ILA_I_m_axi_bid),
    .m_axi_bready(m_axi_bready),
    .m_axi_bresp(__ILA_I_m_axi_bresp),
    .m_axi_bvalid(__ILA_I_m_axi_bvalid),
    .m_axi_rdata(__VLG_I_m_axi_rdata),
    .m_axi_rid(__VLG_I_m_axi_rid),
    .m_axi_rlast(__VLG_I_m_axi_rlast),
    .m_axi_rready(m_axi_rready),
    .m_axi_rresp(__VLG_I_m_axi_rresp),
    .m_axi_rvalid(__VLG_I_m_axi_rvalid),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wid(m_axi_wid),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wready(__ILA_I_m_axi_wready),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wvalid(m_axi_wvalid),
    .rd_access(__VLG_I_rd_access),
    .rd_packet(__VLG_I_rd_packet),
    .rd_wait(__VLG_O_rd_wait),
    .rr_access(__VLG_O_rr_access),
    .rr_packet(__VLG_O_rr_packet),
    .rr_wait(__VLG_I_rr_wait),
    .wr_access(__VLG_I_wr_access),
    .wr_packet(__VLG_I_wr_packet),
    .wr_wait(__VLG_O_wr_wait)
);
endmodule
