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
s_axi_wready
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
wire            clk;
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
    .s_axi_aresetn(~rst),
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
