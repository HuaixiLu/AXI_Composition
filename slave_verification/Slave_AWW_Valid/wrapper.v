/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_s_axi_aresetn,
__ILA_I_s_axi_awaddr,
__ILA_I_s_axi_awburst,
__ILA_I_s_axi_awcache,
__ILA_I_s_axi_awid,
__ILA_I_s_axi_awlen,
__ILA_I_s_axi_awlock,
__ILA_I_s_axi_awprot,
__ILA_I_s_axi_awqos,
__ILA_I_s_axi_awsize,
__ILA_I_s_axi_awvalid,
__ILA_I_s_axi_bready,
__ILA_I_s_axi_wdata,
__ILA_I_s_axi_wid,
__ILA_I_s_axi_wlast,
__ILA_I_s_axi_wstrb,
__ILA_I_s_axi_wvalid,
__ILA_I_write_ready,
__VLG_I_rd_wait,
__VLG_I_rr_access,
__VLG_I_rr_packet,
__VLG_I_s_axi_araddr,
__VLG_I_s_axi_arburst,
__VLG_I_s_axi_arcache,
__VLG_I_s_axi_arid,
__VLG_I_s_axi_arlen,
__VLG_I_s_axi_arlock,
__VLG_I_s_axi_arprot,
__VLG_I_s_axi_arqos,
__VLG_I_s_axi_arsize,
__VLG_I_s_axi_arvalid,
__VLG_I_s_axi_awcache,
__VLG_I_s_axi_awlock,
__VLG_I_s_axi_awprot,
__VLG_I_s_axi_awqos,
__VLG_I_s_axi_rready,
__VLG_I_s_axi_wdata,
__VLG_I_s_axi_wid,
__VLG_I_s_axi_wstrb,
__VLG_I_wr_wait,
clk,
dummy_reset,
rst,
__ILA_SO_s_axi_awready,
__ILA_SO_s_axi_bid,
__ILA_SO_s_axi_bresp,
__ILA_SO_s_axi_bvalid,
__ILA_SO_s_axi_wready,
__ILA_SO_tx_awaddr,
__ILA_SO_tx_awburst,
__ILA_SO_tx_awlen,
__ILA_SO_tx_awsize,
__ILA_SO_tx_bwait,
__ILA_SO_tx_wactive,
__VLG_O_rd_access,
__VLG_O_rd_packet,
__VLG_O_rr_wait,
__VLG_O_wr_access,
__VLG_O_wr_packet,
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
s_axi_arready,
s_axi_awready,
s_axi_bid,
s_axi_bresp,
s_axi_bvalid,
s_axi_rdata,
s_axi_rid,
s_axi_rlast,
s_axi_rresp,
s_axi_rvalid,
s_axi_wready,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__
);
input            __ILA_I_s_axi_aresetn;
input     [31:0] __ILA_I_s_axi_awaddr;
input      [1:0] __ILA_I_s_axi_awburst;
input      [3:0] __ILA_I_s_axi_awcache;
input     [11:0] __ILA_I_s_axi_awid;
input      [7:0] __ILA_I_s_axi_awlen;
input            __ILA_I_s_axi_awlock;
input      [2:0] __ILA_I_s_axi_awprot;
input      [3:0] __ILA_I_s_axi_awqos;
input      [2:0] __ILA_I_s_axi_awsize;
input            __ILA_I_s_axi_awvalid;
input            __ILA_I_s_axi_bready;
input     [31:0] __ILA_I_s_axi_wdata;
input     [11:0] __ILA_I_s_axi_wid;
input            __ILA_I_s_axi_wlast;
input      [3:0] __ILA_I_s_axi_wstrb;
input            __ILA_I_s_axi_wvalid;
input            __ILA_I_write_ready;
input            __VLG_I_rd_wait;
input            __VLG_I_rr_access;
input    [103:0] __VLG_I_rr_packet;
input     [31:0] __VLG_I_s_axi_araddr;
input      [1:0] __VLG_I_s_axi_arburst;
input      [3:0] __VLG_I_s_axi_arcache;
input     [11:0] __VLG_I_s_axi_arid;
input      [7:0] __VLG_I_s_axi_arlen;
input            __VLG_I_s_axi_arlock;
input      [2:0] __VLG_I_s_axi_arprot;
input      [3:0] __VLG_I_s_axi_arqos;
input      [2:0] __VLG_I_s_axi_arsize;
input            __VLG_I_s_axi_arvalid;
input      [3:0] __VLG_I_s_axi_awcache;
input            __VLG_I_s_axi_awlock;
input      [2:0] __VLG_I_s_axi_awprot;
input      [3:0] __VLG_I_s_axi_awqos;
input            __VLG_I_s_axi_rready;
input     [31:0] __VLG_I_s_axi_wdata;
input     [11:0] __VLG_I_s_axi_wid;
input      [3:0] __VLG_I_s_axi_wstrb;
input            __VLG_I_wr_wait;
input            clk;
input            dummy_reset;
input            rst;
output            __ILA_SO_s_axi_awready;
output     [11:0] __ILA_SO_s_axi_bid;
output      [1:0] __ILA_SO_s_axi_bresp;
output            __ILA_SO_s_axi_bvalid;
output            __ILA_SO_s_axi_wready;
output     [31:0] __ILA_SO_tx_awaddr;
output      [1:0] __ILA_SO_tx_awburst;
output      [7:0] __ILA_SO_tx_awlen;
output      [2:0] __ILA_SO_tx_awsize;
output            __ILA_SO_tx_bwait;
output            __ILA_SO_tx_wactive;
output            __VLG_O_rd_access;
output    [103:0] __VLG_O_rd_packet;
output            __VLG_O_rr_wait;
output            __VLG_O_wr_access;
output    [103:0] __VLG_O_wr_packet;
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
output            s_axi_arready;
output            s_axi_awready;
output     [11:0] s_axi_bid;
output      [1:0] s_axi_bresp;
output            s_axi_bvalid;
output     [31:0] s_axi_rdata;
output     [11:0] s_axi_rid;
output            s_axi_rlast;
output      [1:0] s_axi_rresp;
output            s_axi_rvalid;
output            s_axi_wready;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__;
(* keep *) wire            __ILA_ILA_Slave_Write_valid__;
(* keep *) wire            __ILA_I_s_axi_aresetn;
(* keep *) wire     [31:0] __ILA_I_s_axi_awaddr;
(* keep *) wire      [1:0] __ILA_I_s_axi_awburst;
(* keep *) wire      [3:0] __ILA_I_s_axi_awcache;
(* keep *) wire     [11:0] __ILA_I_s_axi_awid;
(* keep *) wire      [7:0] __ILA_I_s_axi_awlen;
(* keep *) wire            __ILA_I_s_axi_awlock;
(* keep *) wire      [2:0] __ILA_I_s_axi_awprot;
(* keep *) wire      [3:0] __ILA_I_s_axi_awqos;
(* keep *) wire      [2:0] __ILA_I_s_axi_awsize;
(* keep *) wire            __ILA_I_s_axi_awvalid;
(* keep *) wire            __ILA_I_s_axi_bready;
(* keep *) wire     [31:0] __ILA_I_s_axi_wdata;
(* keep *) wire     [11:0] __ILA_I_s_axi_wid;
(* keep *) wire            __ILA_I_s_axi_wlast;
(* keep *) wire      [3:0] __ILA_I_s_axi_wstrb;
(* keep *) wire            __ILA_I_s_axi_wvalid;
(* keep *) wire            __ILA_I_write_ready;
(* keep *) wire            __ILA_SO_s_axi_awready;
(* keep *) wire     [11:0] __ILA_SO_s_axi_bid;
(* keep *) wire      [1:0] __ILA_SO_s_axi_bresp;
(* keep *) wire            __ILA_SO_s_axi_bvalid;
(* keep *) wire            __ILA_SO_s_axi_wready;
(* keep *) wire     [31:0] __ILA_SO_tx_awaddr;
(* keep *) wire      [1:0] __ILA_SO_tx_awburst;
(* keep *) wire      [7:0] __ILA_SO_tx_awlen;
(* keep *) wire      [2:0] __ILA_SO_tx_awsize;
(* keep *) wire            __ILA_SO_tx_bwait;
(* keep *) wire            __ILA_SO_tx_wactive;
(* keep *) wire            __ISSUE__;
(* keep *) wire            __VLG_I_rd_wait;
(* keep *) wire            __VLG_I_rr_access;
(* keep *) wire    [103:0] __VLG_I_rr_packet;
(* keep *) wire     [31:0] __VLG_I_s_axi_araddr;
(* keep *) wire      [1:0] __VLG_I_s_axi_arburst;
(* keep *) wire      [3:0] __VLG_I_s_axi_arcache;
(* keep *) wire     [11:0] __VLG_I_s_axi_arid;
(* keep *) wire      [7:0] __VLG_I_s_axi_arlen;
(* keep *) wire            __VLG_I_s_axi_arlock;
(* keep *) wire      [2:0] __VLG_I_s_axi_arprot;
(* keep *) wire      [3:0] __VLG_I_s_axi_arqos;
(* keep *) wire      [2:0] __VLG_I_s_axi_arsize;
(* keep *) wire            __VLG_I_s_axi_arvalid;
(* keep *) wire      [3:0] __VLG_I_s_axi_awcache;
(* keep *) wire            __VLG_I_s_axi_awlock;
(* keep *) wire      [2:0] __VLG_I_s_axi_awprot;
(* keep *) wire      [3:0] __VLG_I_s_axi_awqos;
(* keep *) wire            __VLG_I_s_axi_rready;
(* keep *) wire     [31:0] __VLG_I_s_axi_wdata;
(* keep *) wire     [11:0] __VLG_I_s_axi_wid;
(* keep *) wire      [3:0] __VLG_I_s_axi_wstrb;
(* keep *) wire            __VLG_I_wr_wait;
(* keep *) wire            __VLG_O_rd_access;
(* keep *) wire    [103:0] __VLG_O_rd_packet;
(* keep *) wire            __VLG_O_rr_wait;
(* keep *) wire            __VLG_O_wr_access;
(* keep *) wire    [103:0] __VLG_O_wr_packet;
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
wire            rst;
(* keep *) wire            s_axi_arready;
(* keep *) wire            s_axi_awready;
(* keep *) wire     [11:0] s_axi_bid;
(* keep *) wire      [1:0] s_axi_bresp;
(* keep *) wire            s_axi_bvalid;
(* keep *) wire     [31:0] s_axi_rdata;
(* keep *) wire     [11:0] s_axi_rid;
(* keep *) wire            s_axi_rlast;
(* keep *) wire      [1:0] s_axi_rresp;
(* keep *) wire            s_axi_rvalid;
(* keep *) wire            s_axi_wready;
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
assign __m0__ = m1.s_axi_awready == __ILA_SO_s_axi_awready ;
assign __m1__ = m1.s_axi_bid == __ILA_SO_s_axi_bid ;
assign __m2__ = m1.s_axi_bresp == __ILA_SO_s_axi_bresp ;
assign __m3__ = m1.s_axi_bvalid == __ILA_SO_s_axi_bvalid ;
assign __m4__ = m1.s_axi_wready == __ILA_SO_s_axi_wready ;
assign __m5__ = m1.axi_awaddr == __ILA_SO_tx_awaddr ;
assign __m6__ = m1.axi_awburst == __ILA_SO_tx_awburst ;
assign __m7__ = m1.axi_awsize == __ILA_SO_tx_awsize ;
assign __m8__ = m1.b_wait == __ILA_SO_tx_bwait ;
assign __m9__ = m1.write_active == __ILA_SO_tx_wactive ;
assign __m10__ = m1.s_axi_awready == __ILA_SO_s_axi_awready ;
assign __m11__ = m1.s_axi_bresp == __ILA_SO_s_axi_bresp ;
assign __m12__ = m1.s_axi_bvalid == __ILA_SO_s_axi_bvalid ;
assign __m13__ = m1.s_axi_wready == __ILA_SO_s_axi_wready ;
assign __m14__ = m1.axi_awaddr == __ILA_SO_tx_awaddr ;
assign __m15__ = m1.axi_awburst == __ILA_SO_tx_awburst ;
assign __m16__ = m1.axi_awsize == __ILA_SO_tx_awsize ;
assign __m17__ = m1.b_wait == __ILA_SO_tx_bwait ;
assign __m18__ = m1.write_active == __ILA_SO_tx_wactive ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign __ISSUE__ = 1 ;

ILA_Slave_Write__DOT__Slave_AWW_Valid m0 (
   .__START__(__START__),
   .clk(clk),
   .rst(rst),
   .s_axi_aresetn(__ILA_I_s_axi_aresetn),
   .s_axi_awaddr(__ILA_I_s_axi_awaddr),
   .s_axi_awburst(__ILA_I_s_axi_awburst),
   .s_axi_awcache(__ILA_I_s_axi_awcache),
   .s_axi_awid(__ILA_I_s_axi_awid),
   .s_axi_awlen(__ILA_I_s_axi_awlen),
   .s_axi_awlock(__ILA_I_s_axi_awlock),
   .s_axi_awprot(__ILA_I_s_axi_awprot),
   .s_axi_awqos(__ILA_I_s_axi_awqos),
   .s_axi_awsize(__ILA_I_s_axi_awsize),
   .s_axi_awvalid(__ILA_I_s_axi_awvalid),
   .s_axi_bready(__ILA_I_s_axi_bready),
   .s_axi_wdata(__ILA_I_s_axi_wdata),
   .s_axi_wid(__ILA_I_s_axi_wid),
   .s_axi_wlast(__ILA_I_s_axi_wlast),
   .s_axi_wstrb(__ILA_I_s_axi_wstrb),
   .s_axi_wvalid(__ILA_I_s_axi_wvalid),
   .write_ready(__ILA_I_write_ready),
   .__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__(__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__),
   .__ILA_ILA_Slave_Write_valid__(__ILA_ILA_Slave_Write_valid__),
   .s_axi_awready(__ILA_SO_s_axi_awready),
   .s_axi_wready(__ILA_SO_s_axi_wready),
   .s_axi_bid(__ILA_SO_s_axi_bid),
   .s_axi_bresp(__ILA_SO_s_axi_bresp),
   .s_axi_bvalid(__ILA_SO_s_axi_bvalid),
   .tx_wactive(__ILA_SO_tx_wactive),
   .tx_bwait(__ILA_SO_tx_bwait),
   .tx_awlen(__ILA_SO_tx_awlen),
   .tx_awsize(__ILA_SO_tx_awsize),
   .tx_awaddr(__ILA_SO_tx_awaddr),
   .tx_awburst(__ILA_SO_tx_awburst),
   .__COUNTER_start__n6()
);
esaxi m1(
    .rd_access(__VLG_O_rd_access),
    .rd_packet(__VLG_O_rd_packet),
    .rd_wait(__VLG_I_rd_wait),
    .rr_access(__VLG_I_rr_access),
    .rr_packet(__VLG_I_rr_packet),
    .rr_wait(__VLG_O_rr_wait),
    .s_axi_aclk(clk),
    .s_axi_araddr(__VLG_I_s_axi_araddr),
    .s_axi_arburst(__VLG_I_s_axi_arburst),
    .s_axi_arcache(__VLG_I_s_axi_arcache),
    .s_axi_aresetn(~dummy_reset),
    .s_axi_arid(__VLG_I_s_axi_arid),
    .s_axi_arlen(__VLG_I_s_axi_arlen),
    .s_axi_arlock(__VLG_I_s_axi_arlock),
    .s_axi_arprot(__VLG_I_s_axi_arprot),
    .s_axi_arqos(__VLG_I_s_axi_arqos),
    .s_axi_arready(s_axi_arready),
    .s_axi_arsize(__VLG_I_s_axi_arsize),
    .s_axi_arvalid(__VLG_I_s_axi_arvalid),
    .s_axi_awaddr(__ILA_I_s_axi_awaddr),
    .s_axi_awburst(__ILA_I_s_axi_awburst),
    .s_axi_awcache(__VLG_I_s_axi_awcache),
    .s_axi_awid(__ILA_I_s_axi_awid),
    .s_axi_awlen(__ILA_I_s_axi_awlen),
    .s_axi_awlock(__VLG_I_s_axi_awlock),
    .s_axi_awprot(__VLG_I_s_axi_awprot),
    .s_axi_awqos(__VLG_I_s_axi_awqos),
    .s_axi_awready(s_axi_awready),
    .s_axi_awsize(__ILA_I_s_axi_awsize),
    .s_axi_awvalid(__ILA_I_s_axi_awvalid),
    .s_axi_bid(s_axi_bid),
    .s_axi_bready(__ILA_I_s_axi_bready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rid(s_axi_rid),
    .s_axi_rlast(s_axi_rlast),
    .s_axi_rready(__VLG_I_s_axi_rready),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_wdata(__VLG_I_s_axi_wdata),
    .s_axi_wid(__VLG_I_s_axi_wid),
    .s_axi_wlast(__ILA_I_s_axi_wlast),
    .s_axi_wready(s_axi_wready),
    .s_axi_wstrb(__VLG_I_s_axi_wstrb),
    .s_axi_wvalid(__ILA_I_s_axi_wvalid),
    .wr_access(__VLG_O_wr_access),
    .wr_packet(__VLG_O_wr_packet),
    .wr_wait(__VLG_I_wr_wait)
);
endmodule
