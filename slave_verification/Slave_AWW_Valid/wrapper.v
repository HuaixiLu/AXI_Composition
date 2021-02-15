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
__m11__,
__m13__,
__m16__,
__m18__,
__m1__,
__m20__,
__m22__,
__m24__,
__m26__,
__m28__,
__m30__,
__m32__,
__m35__,
__m37__,
__m39__,
__m3__,
__m5__,
__m7__,
__m9__,
additional_mapping_control_assume__m44__,
additional_mapping_control_assume__m45__,
invariant_assume__m41__,
invariant_assume__m42__,
invariant_assume__m43__,
issue_decode__m46__,
issue_valid__m47__,
m1__DOT__axi_awaddr,
m1__DOT__axi_awburst,
m1__DOT__axi_awsize,
m1__DOT__b_wait,
m1__DOT__s_axi_aresetn,
m1__DOT__s_axi_awready,
m1__DOT__s_axi_bid,
m1__DOT__s_axi_bresp,
m1__DOT__s_axi_bvalid,
m1__DOT__s_axi_wready,
m1__DOT__wr_wait,
m1__DOT__write_active,
noreset__m0__,
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
variable_map_assert__p23__,
variable_map_assert__p25__,
variable_map_assert__p27__,
variable_map_assert__p29__,
variable_map_assert__p31__,
variable_map_assert__p33__,
variable_map_assert__p34__,
variable_map_assert__p36__,
variable_map_assert__p38__,
variable_map_assert__p40__,
variable_map_assume___m10__,
variable_map_assume___m12__,
variable_map_assume___m14__,
variable_map_assume___m15__,
variable_map_assume___m17__,
variable_map_assume___m19__,
variable_map_assume___m21__,
variable_map_assume___m2__,
variable_map_assume___m4__,
variable_map_assume___m6__,
variable_map_assume___m8__,
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
output            __m11__;
output            __m13__;
output            __m16__;
output            __m18__;
output            __m1__;
output            __m20__;
output            __m22__;
output            __m24__;
output            __m26__;
output            __m28__;
output            __m30__;
output            __m32__;
output            __m35__;
output            __m37__;
output            __m39__;
output            __m3__;
output            __m5__;
output            __m7__;
output            __m9__;
output            additional_mapping_control_assume__m44__;
output            additional_mapping_control_assume__m45__;
output            invariant_assume__m41__;
output            invariant_assume__m42__;
output            invariant_assume__m43__;
output            issue_decode__m46__;
output            issue_valid__m47__;
output     [31:0] m1__DOT__axi_awaddr;
output      [1:0] m1__DOT__axi_awburst;
output      [2:0] m1__DOT__axi_awsize;
output            m1__DOT__b_wait;
output            m1__DOT__s_axi_aresetn;
output            m1__DOT__s_axi_awready;
output     [11:0] m1__DOT__s_axi_bid;
output      [1:0] m1__DOT__s_axi_bresp;
output            m1__DOT__s_axi_bvalid;
output            m1__DOT__s_axi_wready;
output            m1__DOT__wr_wait;
output            m1__DOT__write_active;
output            noreset__m0__;
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
output            variable_map_assert__p23__;
output            variable_map_assert__p25__;
output            variable_map_assert__p27__;
output            variable_map_assert__p29__;
output            variable_map_assert__p31__;
output            variable_map_assert__p33__;
output            variable_map_assert__p34__;
output            variable_map_assert__p36__;
output            variable_map_assert__p38__;
output            variable_map_assert__p40__;
output            variable_map_assume___m10__;
output            variable_map_assume___m12__;
output            variable_map_assume___m14__;
output            variable_map_assume___m15__;
output            variable_map_assume___m17__;
output            variable_map_assume___m19__;
output            variable_map_assume___m21__;
output            variable_map_assume___m2__;
output            variable_map_assume___m4__;
output            variable_map_assume___m6__;
output            variable_map_assume___m8__;
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
(* keep *) wire            __m11__;
(* keep *) wire            __m13__;
(* keep *) wire            __m16__;
(* keep *) wire            __m18__;
(* keep *) wire            __m1__;
(* keep *) wire            __m20__;
(* keep *) wire            __m22__;
(* keep *) wire            __m24__;
(* keep *) wire            __m26__;
(* keep *) wire            __m28__;
(* keep *) wire            __m30__;
(* keep *) wire            __m32__;
(* keep *) wire            __m35__;
(* keep *) wire            __m37__;
(* keep *) wire            __m39__;
(* keep *) wire            __m3__;
(* keep *) wire            __m5__;
(* keep *) wire            __m7__;
(* keep *) wire            __m9__;
(* keep *) wire            additional_mapping_control_assume__m44__;
(* keep *) wire            additional_mapping_control_assume__m45__;
wire            clk;
(* keep *) wire            dummy_reset;
(* keep *) wire            invariant_assume__m41__;
(* keep *) wire            invariant_assume__m42__;
(* keep *) wire            invariant_assume__m43__;
(* keep *) wire            issue_decode__m46__;
(* keep *) wire            issue_valid__m47__;
(* keep *) wire     [31:0] m1__DOT__axi_awaddr;
(* keep *) wire      [1:0] m1__DOT__axi_awburst;
(* keep *) wire      [2:0] m1__DOT__axi_awsize;
(* keep *) wire            m1__DOT__b_wait;
(* keep *) wire            m1__DOT__s_axi_aresetn;
(* keep *) wire            m1__DOT__s_axi_awready;
(* keep *) wire     [11:0] m1__DOT__s_axi_bid;
(* keep *) wire      [1:0] m1__DOT__s_axi_bresp;
(* keep *) wire            m1__DOT__s_axi_bvalid;
(* keep *) wire            m1__DOT__s_axi_wready;
(* keep *) wire            m1__DOT__wr_wait;
(* keep *) wire            m1__DOT__write_active;
(* keep *) wire            noreset__m0__;
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
(* keep *) wire            variable_map_assert__p23__;
(* keep *) wire            variable_map_assert__p25__;
(* keep *) wire            variable_map_assert__p27__;
(* keep *) wire            variable_map_assert__p29__;
(* keep *) wire            variable_map_assert__p31__;
(* keep *) wire            variable_map_assert__p33__;
(* keep *) wire            variable_map_assert__p34__;
(* keep *) wire            variable_map_assert__p36__;
(* keep *) wire            variable_map_assert__p38__;
(* keep *) wire            variable_map_assert__p40__;
(* keep *) wire            variable_map_assume___m10__;
(* keep *) wire            variable_map_assume___m12__;
(* keep *) wire            variable_map_assume___m14__;
(* keep *) wire            variable_map_assume___m15__;
(* keep *) wire            variable_map_assume___m17__;
(* keep *) wire            variable_map_assume___m19__;
(* keep *) wire            variable_map_assume___m21__;
(* keep *) wire            variable_map_assume___m2__;
(* keep *) wire            variable_map_assume___m4__;
(* keep *) wire            variable_map_assume___m6__;
(* keep *) wire            variable_map_assume___m8__;
assign noreset__m0__ =  (~__RESETED__) || (dummy_reset == 0)  ;
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
assign __m1__ = m1__DOT__s_axi_awready == __ILA_SO_s_axi_awready ;
assign variable_map_assume___m2__ = (~ __START__ )|| (__m1__) ;
assign __m3__ = m1__DOT__s_axi_bid == __ILA_SO_s_axi_bid ;
assign variable_map_assume___m4__ = (~ __START__ )|| (__m3__) ;
assign __m5__ = m1__DOT__s_axi_bresp == __ILA_SO_s_axi_bresp ;
assign variable_map_assume___m6__ = (~ __START__ )|| (__m5__) ;
assign __m7__ = m1__DOT__s_axi_bvalid == __ILA_SO_s_axi_bvalid ;
assign variable_map_assume___m8__ = (~ __START__ )|| (__m7__) ;
assign __m9__ = m1__DOT__s_axi_wready == __ILA_SO_s_axi_wready ;
assign variable_map_assume___m10__ = (~ __START__ )|| (__m9__) ;
assign __m11__ = m1__DOT__axi_awaddr == __ILA_SO_tx_awaddr ;
assign variable_map_assume___m12__ = (~ __START__ )|| (__m11__) ;
assign __m13__ = m1__DOT__axi_awburst == __ILA_SO_tx_awburst ;
assign variable_map_assume___m14__ = (~ __START__ )|| (__m13__) ;
assign variable_map_assume___m15__ = (~ __START__ )|| (`true) ;
assign __m16__ = m1__DOT__axi_awsize == __ILA_SO_tx_awsize ;
assign variable_map_assume___m17__ = (~ __START__ )|| (__m16__) ;
assign __m18__ = m1__DOT__b_wait == __ILA_SO_tx_bwait ;
assign variable_map_assume___m19__ = (~ __START__ )|| (__m18__) ;
assign __m20__ = m1__DOT__write_active == __ILA_SO_tx_wactive ;
assign variable_map_assume___m21__ = (~ __START__ )|| (__m20__) ;
assign __m22__ = m1__DOT__s_axi_awready == __ILA_SO_s_axi_awready ;
assign variable_map_assert__p23__ = (~ __IEND__) || (__m22__) ;
assign __m24__ = m1__DOT__s_axi_bresp == __ILA_SO_s_axi_bresp ;
assign variable_map_assert__p25__ = (~ __IEND__) || (__m24__) ;
assign __m26__ = m1__DOT__s_axi_bvalid == __ILA_SO_s_axi_bvalid ;
assign variable_map_assert__p27__ = (~ __IEND__) || (__m26__) ;
assign __m28__ = m1__DOT__s_axi_wready == __ILA_SO_s_axi_wready ;
assign variable_map_assert__p29__ = (~ __IEND__) || (__m28__) ;
assign __m30__ = m1__DOT__axi_awaddr == __ILA_SO_tx_awaddr ;
assign variable_map_assert__p31__ = (~ __IEND__) || (__m30__) ;
assign __m32__ = m1__DOT__axi_awburst == __ILA_SO_tx_awburst ;
assign variable_map_assert__p33__ = (~ __IEND__) || (__m32__) ;
assign variable_map_assert__p34__ = (~ __IEND__) || (`true) ;
assign __m35__ = m1__DOT__axi_awsize == __ILA_SO_tx_awsize ;
assign variable_map_assert__p36__ = (~ __IEND__) || (__m35__) ;
assign __m37__ = m1__DOT__b_wait == __ILA_SO_tx_bwait ;
assign variable_map_assert__p38__ = (~ __IEND__) || (__m37__) ;
assign __m39__ = m1__DOT__write_active == __ILA_SO_tx_wactive ;
assign variable_map_assert__p40__ = (~ __IEND__) || (__m39__) ;
assign invariant_assume__m41__ = (m1__DOT__write_active || ~m1__DOT__s_axi_wready) == 1 ;
assign invariant_assume__m42__ = (~m1__DOT__write_active || ~m1__DOT__s_axi_awready) == 1 ;
assign invariant_assume__m43__ = (~m1__DOT__write_active || ~m1__DOT__s_axi_bvalid) == 1 ;
assign additional_mapping_control_assume__m44__ = __ILA_I_s_axi_aresetn == m1__DOT__s_axi_aresetn ;
assign additional_mapping_control_assume__m45__ = __ILA_I_write_ready == ~m1__DOT__wr_wait ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign issue_decode__m46__ = (~ __START__) || (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) ;
assign issue_valid__m47__ = (~ __START__) || (__ILA_ILA_Slave_Write_valid__) ;
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
    .m1__DOT__axi_awaddr(m1__DOT__axi_awaddr),
    .m1__DOT__axi_awburst(m1__DOT__axi_awburst),
    .m1__DOT__axi_awsize(m1__DOT__axi_awsize),
    .m1__DOT__b_wait(m1__DOT__b_wait),
    .m1__DOT__s_axi_aresetn(m1__DOT__s_axi_aresetn),
    .m1__DOT__s_axi_awready(m1__DOT__s_axi_awready),
    .m1__DOT__s_axi_bid(m1__DOT__s_axi_bid),
    .m1__DOT__s_axi_bresp(m1__DOT__s_axi_bresp),
    .m1__DOT__s_axi_bvalid(m1__DOT__s_axi_bvalid),
    .m1__DOT__s_axi_wready(m1__DOT__s_axi_wready),
    .m1__DOT__wr_wait(m1__DOT__wr_wait),
    .m1__DOT__write_active(m1__DOT__write_active),
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
module ILA_Slave_Write__DOT__Slave_AWW_Valid(
__START__,
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
__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__,
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
tx_awburst,
__COUNTER_start__n6
);
input            __START__;
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
output            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__;
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
output reg      [7:0] __COUNTER_start__n6;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__;
wire            __ILA_ILA_Slave_Write_valid__;
wire            __START__;
wire            bv_1_0_n8__$1102;
wire            bv_1_1_n0__$1000;
wire      [1:0] bv_2_0_n23__$1178;
wire      [1:0] bv_2_1_n63__$1074;
wire     [29:0] bv_30_1_n68__$1085;
wire      [7:0] bv_8_1_n54__$1060;
wire            clk;
wire            n10__$1110;
wire            n11__$1112;
wire            n12__$1117;
wire            n13__$1118;
wire            n14__$1183;
wire            n15__$1187;
wire            n16__$1191;
wire            n17__$1194;
wire            n18__$1196;
wire            n19__$1197;
wire            n1__$1002;
wire            n20__$1171;
wire            n21__$1175;
wire            n22__$1177;
wire      [1:0] n24__$1180;
wire            n25__$1151;
wire            n26__$1155;
wire            n27__$1159;
wire            n28__$1161;
wire            n29__$1164;
wire            n2__$1006;
wire            n30__$1016;
wire            n31__$1020;
wire            n32__$1022;
wire            n33__$1167;
wire            n34__$1168;
wire            n35__$1025;
wire            n36__$1029;
wire            n37__$1031;
wire            n38__$1036;
wire            n39__$1040;
wire            n3__$1008;
wire            n40__$1042;
wire            n41__$1045;
wire            n42__$1046;
wire            n43__$1131;
wire            n44__$1135;
wire            n45__$1139;
wire            n46__$1141;
wire            n47__$1144;
wire            n48__$1147;
wire            n49__$1148;
wire            n4__$1011;
wire            n50__$1049;
wire            n51__$1053;
wire            n52__$1055;
wire            n53__$1058;
wire      [7:0] n55__$1062;
wire      [7:0] n56__$1063;
wire      [7:0] n57__$1064;
wire            n58__$1121;
wire      [2:0] n59__$1123;
wire            n5__$1013;
wire            n60__$1067;
wire            n61__$1071;
wire            n62__$1073;
wire            n64__$1076;
wire            n65__$1080;
wire            n66__$1082;
wire     [29:0] n67__$1083;
wire     [29:0] n69__$1087;
wire     [31:0] n70__$1094;
wire     [31:0] n71__$1096;
wire     [31:0] n72__$1097;
wire            n73__$1126;
wire      [1:0] n74__$1128;
wire            n7__$1100;
wire            n9__$1106;
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
(* keep *) wire            s_axi_awready_randinit;
wire      [2:0] s_axi_awsize;
wire            s_axi_awvalid;
(* keep *) wire     [11:0] s_axi_bid_randinit;
wire            s_axi_bready;
(* keep *) wire      [1:0] s_axi_bresp_randinit;
(* keep *) wire            s_axi_bvalid_randinit;
wire     [31:0] s_axi_wdata;
wire     [11:0] s_axi_wid;
wire            s_axi_wlast;
(* keep *) wire            s_axi_wready_randinit;
wire      [3:0] s_axi_wstrb;
wire            s_axi_wvalid;
(* keep *) wire     [31:0] tx_awaddr_randinit;
(* keep *) wire      [1:0] tx_awburst_randinit;
(* keep *) wire      [7:0] tx_awlen_randinit;
(* keep *) wire      [2:0] tx_awsize_randinit;
(* keep *) wire            tx_bwait_randinit;
(* keep *) wire            tx_wactive_randinit;
wire            write_ready;
assign __ILA_ILA_Slave_Write_valid__ = 1'b1 ;
assign bv_1_1_n0__$1000 = 1'h1 ;
assign n1__$1002 =  ( s_axi_awvalid ) == ( bv_1_1_n0__$1000 )  ;
assign n2__$1006 =  ( s_axi_wvalid ) == ( bv_1_1_n0__$1000 )  ;
assign n3__$1008 =  ( n1__$1002 ) & (n2__$1006 )  ;
assign n4__$1011 =  ( s_axi_aresetn ) == ( bv_1_1_n0__$1000 )  ;
assign n5__$1013 =  ( n3__$1008 ) & (n4__$1011 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ = n5__$1013 ;
assign n7__$1100 =  ( s_axi_awready ) == ( bv_1_1_n0__$1000 )  ;
assign bv_1_0_n8__$1102 = 1'h0 ;
assign n9__$1106 =  ( tx_wactive ) == ( bv_1_0_n8__$1102 )  ;
assign n10__$1110 =  ( tx_bwait ) == ( bv_1_0_n8__$1102 )  ;
assign n11__$1112 =  ( n9__$1106 ) & (n10__$1110 )  ;
assign n12__$1117 =  ( n11__$1112 ) ? ( bv_1_1_n0__$1000 ) : ( bv_1_0_n8__$1102 ) ;
assign n13__$1118 =  ( n7__$1100 ) ? ( bv_1_0_n8__$1102 ) : ( n12__$1117 ) ;
assign n14__$1183 =  ( s_axi_wready ) == ( bv_1_1_n0__$1000 )  ;
assign n15__$1187 =  ( s_axi_wlast ) == ( bv_1_1_n0__$1000 )  ;
assign n16__$1191 =  ( n15__$1187 ) ? ( bv_1_0_n8__$1102 ) : ( write_ready ) ;
assign n17__$1194 =  ( tx_wactive ) == ( bv_1_1_n0__$1000 )  ;
assign n18__$1196 =  ( n17__$1194 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n19__$1197 =  ( n14__$1183 ) ? ( n16__$1191 ) : ( n18__$1196 ) ;
assign n20__$1171 =  ( s_axi_wlast ) == ( bv_1_1_n0__$1000 )  ;
assign n21__$1175 =  ( s_axi_wready ) == ( bv_1_1_n0__$1000 )  ;
assign n22__$1177 =  ( n20__$1171 ) & (n21__$1175 )  ;
assign bv_2_0_n23__$1178 = 2'h0 ;
assign n24__$1180 =  ( n22__$1177 ) ? ( bv_2_0_n23__$1178 ) : ( s_axi_bresp ) ;
assign n25__$1151 =  ( tx_bwait ) == ( bv_1_0_n8__$1102 )  ;
assign n26__$1155 =  ( s_axi_wlast ) == ( bv_1_1_n0__$1000 )  ;
assign n27__$1159 =  ( s_axi_wready ) == ( bv_1_1_n0__$1000 )  ;
assign n28__$1161 =  ( n26__$1155 ) & (n27__$1159 )  ;
assign n29__$1164 =  ( n28__$1161 ) ? ( bv_1_1_n0__$1000 ) : ( s_axi_bvalid ) ;
assign n30__$1016 =  ( s_axi_bvalid ) == ( bv_1_1_n0__$1000 )  ;
assign n31__$1020 =  ( s_axi_bready ) == ( bv_1_1_n0__$1000 )  ;
assign n32__$1022 =  ( n30__$1016 ) & (n31__$1020 )  ;
assign n33__$1167 =  ( n32__$1022 ) ? ( bv_1_0_n8__$1102 ) : ( s_axi_bvalid ) ;
assign n34__$1168 =  ( n25__$1151 ) ? ( n29__$1164 ) : ( n33__$1167 ) ;
assign n35__$1025 =  ( s_axi_awready ) == ( bv_1_1_n0__$1000 )  ;
assign n36__$1029 =  ( tx_wactive ) == ( bv_1_0_n8__$1102 )  ;
assign n37__$1031 =  ( n35__$1025 ) & (n36__$1029 )  ;
assign n38__$1036 =  ( s_axi_wlast ) == ( bv_1_1_n0__$1000 )  ;
assign n39__$1040 =  ( s_axi_wready ) == ( bv_1_1_n0__$1000 )  ;
assign n40__$1042 =  ( n38__$1036 ) & (n39__$1040 )  ;
assign n41__$1045 =  ( n40__$1042 ) ? ( bv_1_0_n8__$1102 ) : ( tx_wactive ) ;
assign n42__$1046 =  ( n37__$1031 ) ? ( bv_1_1_n0__$1000 ) : ( n41__$1045 ) ;
assign n43__$1131 =  ( tx_bwait ) == ( bv_1_0_n8__$1102 )  ;
assign n44__$1135 =  ( s_axi_wlast ) == ( bv_1_1_n0__$1000 )  ;
assign n45__$1139 =  ( s_axi_wready ) == ( bv_1_1_n0__$1000 )  ;
assign n46__$1141 =  ( n44__$1135 ) & (n45__$1139 )  ;
assign n47__$1144 =  ( n46__$1141 ) ? ( bv_1_1_n0__$1000 ) : ( tx_bwait ) ;
assign n48__$1147 =  ( n32__$1022 ) ? ( bv_1_0_n8__$1102 ) : ( tx_bwait ) ;
assign n49__$1148 =  ( n43__$1131 ) ? ( n47__$1144 ) : ( n48__$1147 ) ;
assign n50__$1049 =  ( s_axi_awready ) == ( bv_1_1_n0__$1000 )  ;
assign n51__$1053 =  ( tx_wactive ) == ( bv_1_0_n8__$1102 )  ;
assign n52__$1055 =  ( n50__$1049 ) & (n51__$1053 )  ;
assign n53__$1058 =  ( s_axi_wready ) == ( bv_1_1_n0__$1000 )  ;
assign bv_8_1_n54__$1060 = 8'h1 ;
assign n55__$1062 =  ( tx_awlen ) - ( bv_8_1_n54__$1060 )  ;
assign n56__$1063 =  ( n53__$1058 ) ? ( n55__$1062 ) : ( tx_awlen ) ;
assign n57__$1064 =  ( n52__$1055 ) ? ( s_axi_awlen ) : ( n56__$1063 ) ;
assign n58__$1121 =  ( s_axi_awready ) == ( bv_1_1_n0__$1000 )  ;
assign n59__$1123 =  ( n58__$1121 ) ? ( s_axi_awsize ) : ( tx_awsize ) ;
assign n60__$1067 =  ( s_axi_awready ) == ( bv_1_1_n0__$1000 )  ;
assign n61__$1071 =  ( tx_wactive ) == ( bv_1_0_n8__$1102 )  ;
assign n62__$1073 =  ( n60__$1067 ) & (n61__$1071 )  ;
assign bv_2_1_n63__$1074 = 2'h1 ;
assign n64__$1076 =  ( tx_awburst ) == ( bv_2_1_n63__$1074 )  ;
assign n65__$1080 =  ( s_axi_wready ) == ( bv_1_1_n0__$1000 )  ;
assign n66__$1082 =  ( n64__$1076 ) & (n65__$1080 )  ;
assign n67__$1083 = tx_awaddr[31:2] ;
assign bv_30_1_n68__$1085 = 30'h1 ;
assign n69__$1087 =  ( n67__$1083 ) + ( bv_30_1_n68__$1085 )  ;
assign n70__$1094 =  { ( n69__$1087 ) , ( bv_2_0_n23__$1178 ) }  ;
assign n71__$1096 =  ( n66__$1082 ) ? ( n70__$1094 ) : ( tx_awaddr ) ;
assign n72__$1097 =  ( n62__$1073 ) ? ( s_axi_awaddr ) : ( n71__$1096 ) ;
assign n73__$1126 =  ( s_axi_awready ) == ( bv_1_1_n0__$1000 )  ;
assign n74__$1128 =  ( n73__$1126 ) ? ( s_axi_awburst ) : ( tx_awburst ) ;
always @(posedge clk) begin
   if(rst) begin
       s_axi_awready <= s_axi_awready_randinit ;
       s_axi_wready <= s_axi_wready_randinit ;
       s_axi_bid <= s_axi_bid_randinit ;
       s_axi_bresp <= s_axi_bresp_randinit ;
       s_axi_bvalid <= s_axi_bvalid_randinit ;
       tx_wactive <= tx_wactive_randinit ;
       tx_bwait <= tx_bwait_randinit ;
       tx_awlen <= tx_awlen_randinit ;
       tx_awsize <= tx_awsize_randinit ;
       tx_awaddr <= tx_awaddr_randinit ;
       tx_awburst <= tx_awburst_randinit ;
       __COUNTER_start__n6 <= 0;
   end
   else if(__START__ && __ILA_ILA_Slave_Write_valid__) begin
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__ ) begin 
           __COUNTER_start__n6 <= 1; end
       else if( (__COUNTER_start__n6 >= 1 ) && ( __COUNTER_start__n6 < 255 )) begin
           __COUNTER_start__n6 <= __COUNTER_start__n6 + 1; end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           s_axi_awready <= n13__$1118 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           s_axi_wready <= n19__$1197 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           s_axi_bid <= s_axi_bid ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           s_axi_bresp <= n24__$1180 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           s_axi_bvalid <= n34__$1168 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           tx_wactive <= n42__$1046 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           tx_bwait <= n49__$1148 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           tx_awlen <= n57__$1064 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           tx_awsize <= n59__$1123 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           tx_awaddr <= n72__$1097 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__) begin
           tx_awburst <= n74__$1128 ;
       end
   end
end
endmodule
/*
 ########################################################################
 Epiphany eLink AXI Master Module
 ######################################################################## 

  NOTES:
 --write channels: write address, write data, write response
 --read channels: read address, read data channel
 --'valid' source signal used to show valid address,data,control is available
 --'ready' destination  ready signal indicates readyness to accept information
 --'last' signal indicates the transfer of final data item
 --read and write have separate address channels
 --read data channel carries read data from slave to master
 --write channel includes a byte lane strobe signal for every eight data bits
 --there is no acknowledge on write, treated as buffered 
 --channels are unidirectional
 --valid is asserted uncondotionally
 --ready occurs cycle after valid
 --there can be no combinatorial path between input and output of interface
 --destination is permitted to wait for valud before asserting READY
 --source is not allowed to wait for READY to assert VALID
 --AWVALID must remain asserted until the rising clock edge after slave asserts AWREADY??
 --The default state of AWREADY can be either HIGH or LOW. This specification recommends a default state of HIGH.
 --During a write burst, the master can assert the WVALID signal only when it drives valid write data.
 --The default state of WREADY can be HIGH, but only if the slave can always accept write data in a single cycle.
 --The master must assert the WLAST signal while it is driving the final write transfer in the burst.

 --_aw=write address channel
 --_ar=read address channel
 --_r=read data channel
 --_w=write data channel
 --_b=write response channel

  */

module emaxi(/*autoarg*/
   // Outputs
   wr_wait, rd_wait, rr_access, rr_packet, m_axi_awid, m_axi_awaddr,
   m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awlock,
   m_axi_awcache, m_axi_awprot, m_axi_awqos, m_axi_awvalid, m_axi_wid,
   m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, m_axi_bready,
   m_axi_arid, m_axi_araddr, m_axi_arlen, m_axi_arsize, m_axi_arburst,
   m_axi_arlock, m_axi_arcache, m_axi_arprot, m_axi_arqos,
   m_axi_arvalid, m_axi_rready,
   // Inputs
   wr_access, wr_packet, rd_access, rd_packet, rr_wait, m_axi_aclk,
   m_axi_aresetn, m_axi_awready, m_axi_wready, m_axi_bid, m_axi_bresp,
   m_axi_bvalid, m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp,
   m_axi_rlast, m_axi_rvalid
   );

   parameter M_IDW  = 12;
   parameter PW     = 104;
   parameter AW     = 32;
   parameter DW     = 32;

   //########################
   //EMESH INTERFACE
   //########################

   //Write request
   input               wr_access;
   input [PW-1:0]      wr_packet;   
   output              wr_wait;
   
   //Read request
   input               rd_access;
   input [PW-1:0]      rd_packet;
   output              rd_wait;
   
   //Read response
   output              rr_access;
   output [PW-1:0]     rr_packet;
   input               rr_wait;

   //########################
   //AXI MASTER INTERFACE
   //########################

   input               m_axi_aclk;    // global clock signal.
   input               m_axi_aresetn; // global reset singal.

   //Write address channel
   output [M_IDW-1:0]  m_axi_awid;    // write address ID
   output [31 : 0]     m_axi_awaddr;  // master interface write address   
   output [7 : 0]      m_axi_awlen;   // burst length.
   output [2 : 0]      m_axi_awsize;  // burst size.
   output [1 : 0]      m_axi_awburst; // burst type.
   output              m_axi_awlock;  // lock type   
   output [3 : 0]      m_axi_awcache; // memory type.
   output [2 : 0]      m_axi_awprot;  // protection type.
   output [3 : 0]      m_axi_awqos;   // quality of service
   output              m_axi_awvalid; // write address valid
   input               m_axi_awready; // write address ready

   //Write data channel
   output [M_IDW-1:0]  m_axi_wid;     
   output [63 : 0]     m_axi_wdata;   // master interface write data.
   output [7 : 0]      m_axi_wstrb;   // byte write strobes
   output              m_axi_wlast;   // last transfer in a write burst.
   output              m_axi_wvalid;  // indicates data is ready to go
   input               m_axi_wready;  // slave is ready for data

   // property on losing information ? (could be correct wrt the spec)
   //Write response channel ---- write response is not used (ordering information not passed)
   input [M_IDW-1:0]   m_axi_bid;
   input [1 : 0]       m_axi_bresp;   // status of the write transaction.
   input               m_axi_bvalid;  // channel is a valid write response
   output              m_axi_bready;  // master can accept write response.

   //Read address channel
   output [M_IDW-1:0]  m_axi_arid;    // read address ID
   output [31 : 0]     m_axi_araddr;  // initial address of a read burst
   output [7 : 0]      m_axi_arlen;   // burst length
   output [2 : 0]      m_axi_arsize;  // burst size
   output [1 : 0]      m_axi_arburst; // burst type
   output              m_axi_arlock;  // lock type   
   output [3 : 0]      m_axi_arcache; // memory type
   output [2 : 0]      m_axi_arprot;  // protection type
   output [3 : 0]      m_axi_arqos;   // quality of service info
   output              m_axi_arvalid; // valid read address
   input               m_axi_arready; // slave is ready to accept an address

   //Read data channel   
   input [M_IDW-1:0]   m_axi_rid;     // read data ID
   input [63 : 0]      m_axi_rdata;   // master read data
   input [1 : 0]       m_axi_rresp;   // status of the read transfer
   input               m_axi_rlast;   // last transfer in a read burst
   input               m_axi_rvalid;  // signaling the required read data
   output              m_axi_rready;  // master can accept the readback data
  

   //#########################################################################
   //REGISTER/WIRE DECLARATIONS
   //#########################################################################
   reg [31 : 0]        m_axi_awaddr;
   reg [7:0]           m_axi_awlen;
   reg [2:0]           m_axi_awsize;
   reg                 m_axi_awvalid;
   reg [63 : 0]        m_axi_wdata;
   reg [63 : 0]        m_axi_rdata_reg;
   reg [7 : 0]         m_axi_wstrb;
   reg                 m_axi_wlast;
   reg                 m_axi_wvalid;
   reg                 awvalid_b;
   reg [31:0]          awaddr_b;
   reg [2:0]           awsize_b;
   reg [7:0]           awlen_b;
   reg                 wvalid_b;
   reg [63:0]          wdata_b;
   reg [7:0]           wstrb_b;
   reg [63 : 0]        wdata_aligned;
   reg [7 : 0]         wstrb_aligned;
   
   reg                 rr_access;
   reg [31:0]          rr_data;
   reg [31:0]          rr_srcaddr;
   reg [3:0]           rr_datamode;
   reg [3:0]           rr_ctrlmode;
   reg [31:0]          rr_dstaddr;
   reg [63:0]          m_axi_rdata_fifo;
   reg                 rr_access_fifo;
  
   
   //wires
   wire                aw_go;
   wire                w_go;
   wire                readinfo_wren;
   wire                readinfo_full;
   wire [40:0]         readinfo_out;
   wire [40:0]         readinfo_in;
   wire                awvalid_in;
   
   wire [1:0]          wr_datamode;
   wire [AW-1:0]       wr_dstaddr;
   wire [DW-1:0]       wr_data;
   wire [AW-1:0]       wr_srcaddr;

   wire [1:0]          rd_datamode;
   wire [4:0]          rd_ctrlmode;
   wire [AW-1:0]       rd_dstaddr;
   wire [AW-1:0]       rd_srcaddr;

   wire [1:0]          rr_datamode_fifo;
   wire [3:0]          rr_ctrlmode_fifo;
   wire [31:0]         rr_dstaddr_fifo;
   wire [2:0]          rr_alignaddr_fifo;
   wire [103:0]        packet_out;   
   wire                fifo_prog_full;
   wire                fifo_full;       
   wire                fifo_rd_en;
   wire                fifo_wr_en;
   
   //#########################################################################
   //EMESH 2 PACKET CONVERSION
   //#########################################################################

   //RXWR
   packet2emesh p2e_rxwr (
                          // Outputs
                          .write_in             (),
                          .datamode_in          (wr_datamode[1:0]),
                          .ctrlmode_in          (),
                          .dstaddr_in           (wr_dstaddr[AW-1:0]),
                          .data_in              (wr_data[DW-1:0]),
                          .srcaddr_in           (wr_srcaddr[AW-1:0]),
                          // Inputs
                          .packet_in            (wr_packet[PW-1:0])
                          );
   
   //RXRD
   packet2emesh p2e_rxrd (
                          // Outputs
                          .write_in             (),
                          .datamode_in          (rd_datamode[1:0]),
                          .ctrlmode_in          (rd_ctrlmode[4:0]),
                          .dstaddr_in           (rd_dstaddr[AW-1:0]),
                          .data_in              (),
                          .srcaddr_in           (rd_srcaddr[AW-1:0]),
                          // Inputs
                          .packet_in            (rd_packet[PW-1:0])
                          );

   //RR
   emesh2packet e2p (
                     // Outputs
                     .packet_out        (rr_packet[PW-1:0]),
                     // Inputs
                     .write_out         (1'b1),
                     .datamode_out      (rr_datamode[1:0]),
                     .ctrlmode_out      ({1'b0,rr_ctrlmode[3:0]}),
                     .dstaddr_out       (rr_dstaddr[AW-1:0]),
                     .data_out          (rr_data[DW-1:0]),
                     .srcaddr_out       (rr_srcaddr[AW-1:0])
                     );
                            
   //#########################################################################
   //AXI unimplemented constants
   //#########################################################################

   //AW
   assign m_axi_awid[M_IDW-1:0]  = {(M_IDW){1'b0}};
   assign m_axi_awburst[1:0]    = 2'b01; //only increment burst supported
   assign m_axi_awcache[3:0]    = 4'b0000; //TODO: should this be 0000 or 0010???
   assign m_axi_awprot[2:0]     = 3'b000;
   assign m_axi_awqos[3:0]      = 4'b0000;
   assign m_axi_awlock          = 1'b0;

   //AR
   assign m_axi_arid[M_IDW-1:0] = {(M_IDW){1'b0}};
   assign m_axi_arburst[1:0]    = 2'b01; //only increment burst supported
   assign m_axi_arcache[3:0]    = 4'b0000;
   assign m_axi_arprot[2:0]     = 3'h0;
   assign m_axi_arqos[3:0]      = 4'h0;
   assign m_axi_arlock          = 1'b0;
    
   //B
   assign m_axi_bready          = 1'b1;//TODO: tie to wait signal????   

   //W
   assign m_axi_wid[M_IDW-1:0]  = {(M_IDW){1'b0}};

   //#########################################################################
   //Write address channel
   //#########################################################################

   assign aw_go       = m_axi_awvalid & m_axi_awready;
   assign w_go        = m_axi_wvalid  & m_axi_wready;
   assign wr_wait     = awvalid_b | wvalid_b;
   assign awvalid_in  = wr_access & ~awvalid_b & ~wvalid_b;
   
   // generate write-address signals
   always @( posedge m_axi_aclk )     
     if(!m_axi_aresetn) 
       begin
          m_axi_awvalid      <= 1'b0;
          m_axi_awaddr[31:0] <= 32'd0;
          m_axi_awlen[7:0]   <= 8'd0;
          m_axi_awsize[2:0]  <= 3'd0;     
          awvalid_b          <= 1'b0;
          awaddr_b           <= 'd0;
          awlen_b[7:0]       <= 'd0;
          awsize_b[2:0]      <= 'd0;
       end 
     else 
       begin
          if( ~m_axi_awvalid | aw_go ) 
            begin
               if( awvalid_b ) 
                 begin
                    m_axi_awvalid       <= 1'b1;
                    m_axi_awaddr[31:0]  <= awaddr_b[31:0];
                    m_axi_awlen[7:0]    <= awlen_b[7:0];
                    m_axi_awsize[2:0]   <= awsize_b[2:0];
                 end 
              else 
                begin
                   m_axi_awvalid       <= awvalid_in;
                   m_axi_awaddr[31:0]  <= wr_dstaddr[31:0];
                   m_axi_awlen[7:0]    <= 8'b0;  // potential Bug!
                   m_axi_awsize[2:0]   <= { 1'b0, wr_datamode[1:0]};
                end
            end
          if( awvalid_in & m_axi_awvalid & ~aw_go )
            awvalid_b <= 1'b1;
          else if( aw_go )
            awvalid_b <= 1'b0; // potential BUG!: which let valid signal to be asserted for one more cycle(ILA), but may just preseve the next info(buffer)
          
         //Pipeline stage
         if( awvalid_in )
           begin
              awaddr_b[31:0]  <= wr_dstaddr[31:0];
              awlen_b[7:0]    <= 8'b0;
              awsize_b[2:0]   <= { 1'b0, wr_datamode[1:0] };
         end        
       end // else: !if(~m_axi_aresetn)
   
   //#########################################################################
   //Write data alignment circuit
   //#########################################################################

   always @*
     case( wr_datamode[1:0] )        
       2'b00:    wdata_aligned[63:0] = { 8{wr_data[7:0]}};
       2'b01:    wdata_aligned[63:0] = { 4{wr_data[15:0]}};
       2'b10:    wdata_aligned[63:0] = { 2{wr_data[31:0]}};
       default: wdata_aligned[63:0]  = { wr_srcaddr[31:0], wr_data[31:0]};
     endcase

   always @*
     begin
        case(wr_datamode[1:0])
          2'd0: // byte
            case(wr_dstaddr[2:0])
              3'd0:    wstrb_aligned[7:0] = 8'h01;
              3'd1:    wstrb_aligned[7:0] = 8'h02;
              3'd2:    wstrb_aligned[7:0] = 8'h04;
              3'd3:    wstrb_aligned[7:0] = 8'h08;
              3'd4:    wstrb_aligned[7:0] = 8'h10;
              3'd5:    wstrb_aligned[7:0] = 8'h20;
              3'd6:    wstrb_aligned[7:0] = 8'h40;
              default: wstrb_aligned[7:0] = 8'h80;
            endcase
          2'd1: // 16b hword
            case(wr_dstaddr[2:1])
              2'd0:    wstrb_aligned[7:0] = 8'h03; // 0011 -- looks like a mask
              2'd1:    wstrb_aligned[7:0] = 8'h0c; // 1100
              2'd2:    wstrb_aligned[7:0] = 8'h30; //
              default: wstrb_aligned[7:0] = 8'hc0;
            endcase
          2'd2: // 32b word
            if(wr_dstaddr[2])
              wstrb_aligned[7:0] = 8'hf0;
            else
              wstrb_aligned[7:0] = 8'h0f;
          2'd3: 
            wstrb_aligned[7:0] = 8'hff;
        endcase // case (emwr_datamode[1:0])
     end // always @ *

   //#########################################################################
   //Write data channel
   //#########################################################################

   always @ (posedge m_axi_aclk )
     if(~m_axi_aresetn) 
       begin      
          m_axi_wvalid      <= 1'b0;
          m_axi_wdata[63:0] <= 64'b0;
          m_axi_wstrb[7:0]  <= 8'b0;
          m_axi_wlast       <= 1'b1; // TODO:bursts!! --- currently no (potential bug!: wlast is never updated!!)
          wvalid_b          <= 1'b0;
          wdata_b[63:0]     <= 64'b0;
          wstrb_b[7:0]      <= 8'b0;         
       end 
     else 
       begin
          if( ~m_axi_wvalid | w_go ) 
            begin
            if( wvalid_b ) 
              begin
                 m_axi_wvalid       <= 1'b1;
                 m_axi_wdata[63:0]  <= wdata_b[63:0];
                 m_axi_wstrb[7:0]   <= wstrb_b[7:0];
              end 
            else 
              begin
                 m_axi_wvalid       <= awvalid_in;
                 m_axi_wdata[63:0]  <= wdata_aligned[63:0];
                 m_axi_wstrb[7:0]   <= wstrb_aligned[7:0];
              end
            end // if ( ~axi_wvalid | w_go )

         if( wr_access & m_axi_wvalid & ~w_go )
           wvalid_b <= 1'b1;
         else if( w_go )
           wvalid_b <= 1'b0; // potential BUG!: valid may not be asserted for one more cycle! but the aim maybe preserve the next transaction!
          
          if( awvalid_in ) 
            begin
               wdata_b[63:0] <= wdata_aligned[63:0];
               wstrb_b[7:0]  <= wstrb_aligned[7:0];
            end
       end // else: !if(~m_axi_aresetn)
   
   
   //#########################################################################
   //Read request channel
   //#########################################################################
   //1. read request comes in on ar channel
   //2. use src address to match with writes coming back
   //3. Assumes in order returns
   
   assign  readinfo_in[40:0] = {rd_srcaddr[31:0],//40:9
                                rd_dstaddr[2:0], //8:6
                                rd_ctrlmode[3:0],//5:2
                                rd_datamode[1:0] //1:0
                                };
   

   //Rest synchronization (for safety, assume incoming reset is async)
   // wire sync_nreset;   
   // oh_dsync dsync(.dout (sync_nreset),
   //             .clk     (m_axi_aclk),
   //             .nreset       (1'b1),
   //             .din     (m_axi_aresetn)
   //             );
   
   //Synchronous FIFO for read transactions      

   oh_fifo_sync #(.DW(104), 
                   .DEPTH(32)) 
   fifo_async (.full            (fifo_full),
               .prog_full       (fifo_prog_full),
               .dout            (packet_out[103:0]),
               .empty           (),
               // Inputs
               .nreset          (m_axi_aresetn),
               .clk             (m_axi_aclk),
               .wr_en           (fifo_wr_en),
               .din             ({63'b0,readinfo_in[40:0]}),
               .rd_en           (fifo_rd_en)
               ); 

   assign  rr_datamode_fifo[1:0]  = packet_out[1:0];
   assign  rr_ctrlmode_fifo[3:0]  = packet_out[5:2];
   assign  rr_alignaddr_fifo[2:0] = packet_out[8:6];
   assign  rr_dstaddr_fifo[31:0]  = packet_out[40:9];
   
   //###################################################################
   //Read address channel
   //###################################################################
   
   assign    m_axi_araddr[31:0]   = rd_dstaddr[31:0];
   assign    m_axi_arsize[2:0]    = {1'b0, rd_datamode[1:0]};
   assign    m_axi_arlen[7:0]     = 8'd0;  
   assign    m_axi_arvalid        = rd_access & ~fifo_prog_full; //BUG& ~rr_wait & ~fifo_prog_full; //remove 
   assign    fifo_wr_en           = m_axi_arvalid & m_axi_arready ;
   assign    rd_wait              = ~m_axi_arready | fifo_prog_full;//BUG| rr_wait
   assign    fifo_rd_en           =  m_axi_rvalid & m_axi_rready;//BUG & ~rr_wait
                                      
   //#################################################################
   //Read response channel
   //#################################################################
   assign    m_axi_rready         = ~rr_wait; //BUG!: 1'b1

   //Pipeline axi transaction to account for FIFO read latency   
   always @ (posedge m_axi_aclk)
     if(!m_axi_aresetn) 
       begin
          rr_access_fifo  <= 1'b0;        
          rr_access       <= 1'b0;        
       end
     else        
       begin
          rr_access_fifo   <= fifo_rd_en;
          rr_access        <= rr_access_fifo;     
       end

   //Alignment Mux (one cycle)
   always @ (posedge m_axi_aclk)    
     begin        
        m_axi_rdata_fifo[63:0] <= m_axi_rdata[63:0];              
        rr_datamode[1:0]       <= rr_datamode_fifo[1:0];
        rr_ctrlmode[3:0]       <= rr_ctrlmode_fifo[3:0];
        rr_dstaddr[31:0]       <= rr_dstaddr_fifo[31:0];          
        //all data needs to be right aligned
        //(this is due to the Epiphany right aligning all words)
        case(rr_datamode_fifo[1:0])//datamode
          2'd0:  // byte read
            case(rr_alignaddr_fifo[2:0])
              3'd0:     rr_data[31:0] <= {24'b0,m_axi_rdata_fifo[7:0]};
              3'd1:     rr_data[31:0] <= {24'b0,m_axi_rdata_fifo[15:8]};
              3'd2:     rr_data[31:0] <= {24'b0,m_axi_rdata_fifo[23:16]};
              3'd3:     rr_data[31:0] <= {24'b0,m_axi_rdata_fifo[31:24]};
              3'd4:     rr_data[31:0] <= {24'b0,m_axi_rdata_fifo[39:32]};
              3'd5:     rr_data[31:0] <= {24'b0,m_axi_rdata_fifo[47:40]};
              3'd6:     rr_data[31:0] <= {24'b0,m_axi_rdata_fifo[55:48]};
              3'd7:     rr_data[31:0] <= {24'b0,m_axi_rdata_fifo[63:56]};
              default:  rr_data[31:0] <= {24'b0,m_axi_rdata_fifo[7:0]};
            endcase         
          2'd1:  // 16b hword
            case(rr_alignaddr_fifo[2:1])
              2'd0:    rr_data[31:0] <= {16'b0,m_axi_rdata_fifo[15:0]};
              2'd1:    rr_data[31:0] <= {16'b0,m_axi_rdata_fifo[31:16]};
              2'd2:    rr_data[31:0] <= {16'b0,m_axi_rdata_fifo[47:32]};
              2'd3:    rr_data[31:0] <= {16'b0,m_axi_rdata_fifo[63:48]};
              default: rr_data[31:0] <= {16'b0,m_axi_rdata_fifo[15:0]};
            endcase
          2'd2:  // 32b word
            begin
               if(rr_alignaddr_fifo[2])
                 rr_data[31:0] <= m_axi_rdata_fifo[63:32];
               else
                 rr_data[31:0] <= m_axi_rdata_fifo[31:0];
            end
          // 64b word already defined by defaults above
          2'd3: 
            begin // 64b dword
               rr_data[31:0]     <= m_axi_rdata_fifo[31:0];
               rr_srcaddr[31:0]  <= m_axi_rdata_fifo[63:32];
            end
        endcase         
     end // always @ (posedge m_axi_aclk1 )
   
endmodule // emaxi
// Local Variables:
// verilog-library-directories:("." "../../emesh/hdl" "../../memory/hdl" "../../common/hdl"  )
// End:

//#############################################################################
//# Function: Maps Emesh Signals to Packet                                    #
//#############################################################################
//# Author:   Andreas Olofsson                                                #
//# License:  MIT (see LICENSE file in OH! repository)                        # 
//#############################################################################
module emesh2packet #(parameter AW = 32,   // address width 
		      parameter PW = 104)  // packet width
   (
    //Emesh signal bundle
    input 	    write_out, 
    input [1:0]     datamode_out,
    input [4:0]     ctrlmode_out,
    input [AW-1:0]  dstaddr_out,
    input [AW-1:0]  data_out, 
    input [AW-1:0]  srcaddr_out, 
    //Output packet
    output [PW-1:0] packet_out
    );
   
   // ---- FORMAT -----
   //
   // [0]  =write bit
   // [2:1]=datamode
   // [7:3]=ctrlmode
   // [39:8]=dstaddr(lo)
   //
   // ---- 32-BIT ADDRESS ----
   // [71:40]   data (lo)   | xxxx
   // [103:72]  srcaddr(lo) | data (hi)
   //
   // ---- 64-BIT ADDRESS ----
   // [71:40]   D0 | srcaddr(hi)
   // [103:72]  D1 | srcaddr(lo)
   // [135:104] dstaddr(hi)
   
   assign packet_out[0]       = write_out;   
   assign packet_out[2:1]     = datamode_out[1:0];
   assign packet_out[7:3]     = ctrlmode_out[4:0];
     

	   assign packet_out[39:8]    = dstaddr_out[31:0];
	   assign packet_out[71:40]   = data_out[31:0];
	   assign packet_out[103:72]  = srcaddr_out[31:0];
     
endmodule // emesh2packet

/// \file this is the concept of putting two models together and do the checking on the outer level

module esaxi (/*autoarg*/
   // Outputs
   wr_access, wr_packet, rd_access, rd_packet, rr_wait, s_axi_arready,
   s_axi_awready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_rid,
   s_axi_rdata, s_axi_rlast, s_axi_rresp, s_axi_rvalid, s_axi_wready,
   // Inputs
   wr_wait, rd_wait, rr_access, rr_packet, s_axi_aclk, s_axi_aresetn,
   s_axi_arid, s_axi_araddr, s_axi_arburst, s_axi_arcache,
   s_axi_arlock, s_axi_arlen, s_axi_arprot, s_axi_arqos, s_axi_arsize,
   s_axi_arvalid, s_axi_awid, s_axi_awaddr, s_axi_awburst,
   s_axi_awcache, s_axi_awlock, s_axi_awlen, s_axi_awprot,
   s_axi_awqos, s_axi_awsize, s_axi_awvalid, s_axi_bready,
   s_axi_rready, s_axi_wid, s_axi_wdata, s_axi_wlast, s_axi_wstrb,
   s_axi_wvalid
   , output wire [31:0] m1__DOT__axi_awaddr, output wire [1:0] m1__DOT__axi_awburst, output wire [2:0] m1__DOT__axi_awsize, output wire  m1__DOT__b_wait, output wire  m1__DOT__s_axi_aresetn, output wire  m1__DOT__s_axi_awready, output wire [11:0] m1__DOT__s_axi_bid, output wire [1:0] m1__DOT__s_axi_bresp, output wire  m1__DOT__s_axi_bvalid, output wire  m1__DOT__s_axi_wready, output wire  m1__DOT__wr_wait, output wire  m1__DOT__write_active);
   
   parameter          S_IDW               = 12;
   parameter          PW                  = 104;
   parameter [AW-1:0] RETURN_ADDR         = 0;
   parameter          AW                  = 32;
   parameter          DW                  = 32;

`ifdef TARGET_SIM
   parameter         TW                  = 16;   //timeout counter width
`else
   parameter         TW                  = 16;  //timeout counter width
`endif
 
   //#############################
   //# Write request
   //#############################
   output 	   wr_access;   
   output [PW-1:0] wr_packet;
   input 	   wr_wait;
   
   //#############################
   //# Read request
   //#############################
   output 	   rd_access;   
   output [PW-1:0] rd_packet;
   input 	   rd_wait;
   
   //#############################
   //# Read response
   //#############################
   input 	   rr_access;         
   input [PW-1:0]  rr_packet;
   output 	   rr_wait;

   //#############################
   //# AXI Slave Interface
   //#############################
 
   //Clock and reset
   input 	  s_axi_aclk;
   input 	  s_axi_aresetn;
   
   //Read address channel
   input [S_IDW-1:0] s_axi_arid;    //write address ID
   input [31:0]    s_axi_araddr;
   input [1:0] 	   s_axi_arburst;
   input [3:0] 	   s_axi_arcache;
   input  	   s_axi_arlock;
   input [7:0] 	   s_axi_arlen;
   input [2:0] 	   s_axi_arprot;
   input [3:0] 	   s_axi_arqos;
   output 	   s_axi_arready;
   input [2:0] 	   s_axi_arsize;
   input 	   s_axi_arvalid;
   
   //Write address channel
   input [S_IDW-1:0] s_axi_awid;    //write address ID
   input [31:0]    s_axi_awaddr;
   input [1:0] 	   s_axi_awburst;
   input [3:0] 	   s_axi_awcache;
   input  	   s_axi_awlock;
   input [7:0] 	   s_axi_awlen;
   input [2:0] 	   s_axi_awprot;
   input [3:0] 	   s_axi_awqos;   
   input [2:0] 	   s_axi_awsize;
   input 	   s_axi_awvalid;
   output 	   s_axi_awready;
   
   //Buffered write response channel
   output [S_IDW-1:0] s_axi_bid;    //write address ID
   output [1:0]     s_axi_bresp;
   output 	    s_axi_bvalid;
   input 	    s_axi_bready;
   
   //Read channel
   output [S_IDW-1:0] s_axi_rid;    //write address ID
   output [31:0]      s_axi_rdata;
   output 	      s_axi_rlast;   
   output [1:0]       s_axi_rresp;
   output 	      s_axi_rvalid;
   input 	      s_axi_rready;

   //Write channel
   input [S_IDW-1:0]  s_axi_wid;    //write address ID
   input [31:0]       s_axi_wdata;
   input 	      s_axi_wlast;   
   input [3:0] 	      s_axi_wstrb;
   input 	      s_axi_wvalid;
   output 	      s_axi_wready;

   //###################################################
   //#WIRE/REG DECLARATIONS
   //###################################################

   reg 		      s_axi_awready;
   reg 		      s_axi_wready;
   reg 		      s_axi_bvalid;
   reg [1:0] 	      s_axi_bresp;
   reg 		      s_axi_arready;
   
   reg [31:0] 	      axi_awaddr;  // 32b for epiphany addr
   reg [1:0] 	      axi_awburst;
   reg [2:0] 	      axi_awsize;
   reg [S_IDW-1:0]    axi_bid;     //what to do with this?
 
   reg [31:0] 	      axi_araddr;
   reg [7:0] 	      axi_arlen;
   reg [1:0] 	      axi_arburst;
   reg [2:0] 	      axi_arsize;
   
   reg [31:0] 	      s_axi_rdata;
   reg [1:0] 	      s_axi_rresp;
   reg 		      s_axi_rlast;
   reg 		      s_axi_rvalid;
   reg [S_IDW-1:0]      s_axi_rid;
   
   reg 		      read_active;
   reg [31:0] 	      read_addr;
   reg 		      write_active;
   reg 		      b_wait;      // waiting to issue write response (unlikely?)
   
   reg 		      wr_access;
   reg [1:0] 	      wr_datamode;
   reg [31:0] 	      wr_dstaddr;
   reg [31:0] 	      wr_data;

   reg [31:0] 	      wr_data_reg;
   reg [31:0] 	      wr_dstaddr_reg;
   reg [1:0] 	      wr_datamode_reg;
   
   reg 		      rd_access;
   reg [1:0] 	      rd_datamode;
   reg [31:0] 	      rd_dstaddr;
   reg [31:0] 	      rd_srcaddr;  //read reaspne address
   
   reg 		      pre_wr_en;    // delay for data alignment
   
   reg 		      ractive_reg;  // need leading edge of active for 1st req
   reg 		      rnext;
        
   wire 	      last_wr_beat;
   wire 	      last_rd_beat;
  
   wire [31:0] 	      rr_mux_data;
   wire [DW-1:0]      rr_data;
   wire [31:0] 	      rr_return_data;
   wire rr_return_access;
   wire rr_timeout_access;
   reg [TW-1:0]       timeout_counter;
   
   //###################################################
   //#PACKET TO MESH
   //###################################################

   //WR
   emesh2packet e2p_wr (
		     // Outputs
		     .packet_out	(wr_packet[PW-1:0]),
		     // Inputs
		     .write_out		(1'b1),
		     .datamode_out	(wr_datamode[1:0]),
		     .ctrlmode_out	(5'b0),
		     .dstaddr_out	(wr_dstaddr[AW-1:0]),
		     .data_out		(wr_data[DW-1:0]),
		     .srcaddr_out	(32'b0)//only 32b slave write supported
		     );

   //RD
   emesh2packet e2p_rd (
		     // Outputs
		     .packet_out	(rd_packet[PW-1:0]),
		     // Inputs
		     .write_out		(1'b0),
		     .datamode_out	(rd_datamode[1:0]),
		     .ctrlmode_out	(5'b0),
		     .dstaddr_out	(rd_dstaddr[AW-1:0]),
		     .data_out		(32'b0),
		     .srcaddr_out	(rd_srcaddr[AW-1:0])
		     );   
   //RR
   packet2emesh p2e_rr (
			  // Outputs
			  .write_in		(),
			  .datamode_in		(),
			  .ctrlmode_in		(),
			  .dstaddr_in		(),
			  .data_in		(rr_data[DW-1:0]),
			  .srcaddr_in		(),
			  // Inputs
			  .packet_in		(rr_packet[PW-1:0])
			  );

   //###################################################
   //#WRITE ADDRESS CHANNEL
   //###################################################

   assign  last_wr_beat = s_axi_wready & s_axi_wvalid & s_axi_wlast;
   
   // axi_awready is asserted when there is no write transfer in progress

   always @(posedge s_axi_aclk ) 
     begin
      if(~s_axi_aresetn)  
	begin
           s_axi_awready <= 1'b1; //TODO: why not set default as 1?
           write_active  <= 1'b0;           
	end 
      else 
	begin
           // we're always ready for an address cycle if we're not doing something else
           // note: might make this faster by going ready on last beat instead of after,
           // but if we want the very best each channel should be fifo'd.
           if( ~s_axi_awready & ~write_active & ~b_wait )
             s_axi_awready <= 1'b1;
           else if( s_axi_awvalid )
             s_axi_awready <= 1'b0;
	   
           // the write cycle is "active" as soon as we capture an address, it
           // ends on the last beat.
           if( s_axi_awready & s_axi_awvalid )
             write_active <= 1'b1;
           else if( last_wr_beat )
             write_active <= 1'b0;         
	end // else: !if(~s_axi_aresetn)
     end // always @ (posedge s_axi_aclk )
        
   always @( posedge s_axi_aclk ) 
     if (~s_axi_aresetn)  
       begin
          axi_bid[S_IDW-1:0] <= 'd0;  // capture for write response
          axi_awaddr[31:0]   <= 32'd0;
          axi_awsize[2:0]    <= 3'd0;
          axi_awburst[1:0]   <= 2'd0;         
       end 
     else 
       begin	  
          if( s_axi_awready & s_axi_awvalid ) 
	    begin	     
	       axi_bid[S_IDW-1:0] <= s_axi_awid[S_IDW-1:0];
               axi_awaddr[31:0]   <= s_axi_awaddr[31:0];
               axi_awsize[2:0]    <= s_axi_awsize[2:0];  // 0=byte, 1=16b, 2=32b
               axi_awburst[1:0]   <= s_axi_awburst[1:0]; // type, 0=fixed, 1=incr, 2=wrap
            end 
	  else if( s_axi_wvalid & s_axi_wready ) 
            if( axi_awburst == 2'b01 ) 
	      begin //incremental burst
		 //TODOL FIX This, this is not right (double bug canceling!!)
		 axi_awaddr[31:2] <= axi_awaddr[31:2] + 32'd1;
		 axi_awaddr[1:0]  <= 2'b0;		 
	      end 
       end // else: !if(~s_axi_aresetn)
   
   //###################################################
   //#WRITE RESPONSE CHANNEL
   //###################################################
    assign s_axi_bid = axi_bid;
   
   always @ (posedge s_axi_aclk)
     if(~s_axi_aresetn) 
       s_axi_wready <= 1'b0;      
     else
       begin
	  if( last_wr_beat )
	    s_axi_wready <= 1'b0;
	  else if( write_active )
	    s_axi_wready <= ~wr_wait;
       end                             
   
   always @( posedge s_axi_aclk )
     if (~s_axi_aresetn) 
       begin
          s_axi_bvalid      <= 1'b0;
          s_axi_bresp[1:0]  <= 2'b0;
          b_wait            <= 1'b0;         
       end 
     else 
       begin       
        if( last_wr_beat )  // Bug: what if there is no write transaction but there is some write data trying to be written?
	   begin
              s_axi_bvalid      <= 1'b1;
              s_axi_bresp[1:0]  <= 2'b0;           // 'okay' response
              b_wait <= 1'b1;
              //b_wait            <= ~s_axi_bready;  // note: assumes bready will not drop without valid?       possible bug!    
         end 
	 else if (s_axi_bready & s_axi_bvalid) 
	   begin	    
              s_axi_bvalid <= 1'b0;
              b_wait       <= 1'b0;            
           end
       end // else: !if( s_axi_aresetn == 1'b0 )

   //###################################################
   //#READ REQUEST CHANNEL
   //###################################################  

   //No
   assign  last_rd_beat = s_axi_rvalid & s_axi_rlast & s_axi_rready;

   always @( posedge s_axi_aclk ) 
     if (~s_axi_aresetn) 
       begin	  
         //s_axi_arready <= 1'b0; // One possible BUG: specs recommend this to be high!
         s_axi_arready <= 1'b1;
         read_active   <= 1'b0;         
       end 
     else 
       begin    
	  //arready
          if( ~s_axi_arready & ~read_active )
            s_axi_arready <= 1'b1;
          else if( s_axi_arvalid )
            s_axi_arready <= 1'b0;

	  //read_active
          if( s_axi_arready & s_axi_arvalid )
            read_active <= 1'b1;
          else if( last_rd_beat )
            read_active <= 1'b0;         
       end // else: !if( s_axi_aresetn == 1'b0 )
   
   //Read address channel state machine
   always @( posedge s_axi_aclk ) 
      if (~s_axi_aresetn) 
	begin
           axi_araddr[31:0]   <= 0;
           axi_arlen          <= 8'd0;
           axi_arburst        <= 2'd0;
           axi_arsize[2:0]    <= 3'b0;
           s_axi_rlast        <= 1'b0;
           s_axi_rid[S_IDW-1:0] <= 'd0;         
	end
      else 
	begin         
         if( s_axi_arready & s_axi_arvalid ) 
	   begin	      
              axi_araddr[31:0]   <= s_axi_araddr[31:0]; //NOTE: upper 2 bits get chopped by Zynq
              axi_arlen[7:0]     <= s_axi_arlen[7:0];
              axi_arburst        <= s_axi_arburst;
              axi_arsize         <= s_axi_arsize;
              s_axi_rlast        <= ~(|s_axi_arlen[7:0]);
              s_axi_rid[S_IDW-1:0] <= s_axi_arid[S_IDW-1:0];              
         end 
	 else if( s_axi_rvalid & s_axi_rready) 
	   begin	      
              axi_arlen[7:0] <= axi_arlen[7:0] - 1;
              if(axi_arlen[7:0] == 8'd1)
		s_axi_rlast <= 1'b1;              
              if( axi_arburst == 2'b01) // BUG!: should be axi_burst
		begin //incremental burst
		   axi_araddr[31:2] <= axi_araddr[31:2] + 1;
		   axi_araddr[1:0]  <= 2'b0;   
		end
           end // if ( s_axi_rvalid & s_axi_rready)
	end // else: !if( s_axi_aresetn == 1'b0 )
   

   //###################################################
   //#WRITE REQUEST
   //###################################################  
   
   always @( posedge s_axi_aclk ) 
     if (~s_axi_aresetn) 
       begin
          wr_data_reg[31:0]     <= 32'd0;	  
          wr_dstaddr_reg[31:0]  <= 32'd0;	 
          wr_datamode_reg[1:0]  <= 2'd0;
          wr_access             <= 1'b0;
          pre_wr_en               <= 1'b0;
       end 
     else 
       begin
	  pre_wr_en                 <= s_axi_wready & s_axi_wvalid;
          wr_access               <= pre_wr_en;
	  wr_datamode_reg[1:0]    <= axi_awsize[1:0];	
          wr_dstaddr_reg[31:2]    <= axi_awaddr[31:2]; //set lsbs of address based on write strobes	 
	  //What is up with this logic??
	  if(s_axi_wstrb[0])//| (axi_awsize[1:0]==2'b10)32-bits
	    begin
	       wr_data_reg[31:0]   <= s_axi_wdata[31:0];
	       wr_dstaddr_reg[1:0] <= 2'd0;
	    end
	  else if(s_axi_wstrb[1])
	    begin
	       wr_data_reg[31:0]   <= {8'd0, s_axi_wdata[31:8]};
	       wr_dstaddr_reg[1:0] <= 2'd1;
	    end
	  else if(s_axi_wstrb[2])
	    begin
	       wr_data_reg[31:0]   <= {16'd0, s_axi_wdata[31:16]};
	       wr_dstaddr_reg[1:0] <= 2'd2;
	    end
	  else
	    begin
	       wr_data_reg[31:0]   <= {24'd0, s_axi_wdata[31:24]};
	       wr_dstaddr_reg[1:0] <= 2'd3;
	    end
       end // else: !if(~s_axi_aresetn)

   //Pipeline stage!
   always @( posedge s_axi_aclk )     
     begin
        wr_data[31:0]     <= wr_data_reg[31:0];	  
        wr_dstaddr[31:0]  <= wr_dstaddr_reg[31:0];	  
        wr_datamode[1:0]  <= wr_datamode_reg[1:0];	  
     end
   
   //###################################################
   //#READ REQUEST (DATA CHANNEL)
   //###################################################  
   // -- reads are performed by sending a read
   // -- request out the tx port and waiting for
   // -- data to come back through the rx read response port.
   // --
   // -- because elink reads are not generally 
   // -- returned in order, we will only allow
   // -- one at a time.
   //Need to look at rd_wait signal
   
   always @( posedge s_axi_aclk )
     if (~s_axi_aresetn) 
       begin
	  rd_access         <= 1'b0;      
	  rd_datamode[1:0]  <= 2'd0;
	  rd_dstaddr[31:0]  <= 32'd0;
	  rd_srcaddr[31:0]  <= 32'd0;	 
          ractive_reg       <= 1'b0;
          rnext             <= 1'b0;          
      end 
     else
       begin
          ractive_reg       <= read_active;
          rnext             <= s_axi_rvalid & s_axi_rready & ~s_axi_rlast;    
          rd_access         <= ( ~ractive_reg & read_active ) | rnext;       
	  rd_datamode[1:0]  <= axi_arsize[1:0];
	  rd_dstaddr[31:0]  <= axi_araddr[31:0];
	  rd_srcaddr[31:0]  <= RETURN_ADDR;
	  //TODO: use arid+srcaddr for out of order ?
       end

   //###################################################
   //#READ RESPONSE (DATA CHANNEL)
   //###################################################  
   //Read response AXI state machine
   //Only one outstanding read

   assign rr_wait = 1'b0;


   assign rr_return_access     = rr_access | rr_timeout_access;
   assign rr_return_data[31:0] = rr_timeout_access ? 32'hDEADBEEF :
				                         rr_data[31:0];
   
   always @( posedge s_axi_aclk ) 
      if (!s_axi_aresetn) 
	begin
           s_axi_rvalid       <= 1'b0;
           s_axi_rdata[31:0]  <= 32'd0;
           s_axi_rresp        <= 2'd0;	   
	end 
      else 
	begin
         if( rr_return_access ) 
	   begin
              s_axi_rvalid <= 1'b1; // (valid signal must be asseted after both arready and arvalid signal is asserted!)
              s_axi_rresp  <= rr_timeout_access ? 2'b10 : 2'b00;
            case( axi_arsize[1:0] ) // potential BUG!: rdata should be asserted and stable when valid signal is asserted!
              2'b00:   s_axi_rdata[31:0] <= {4{rr_return_data[7:0]}};  //8-bit
              2'b01:   s_axi_rdata[31:0] <= {2{rr_return_data[15:0]}}; //16-bit
              default: s_axi_rdata[31:0] <= rr_return_data[31:0];      //32-bit
            endcase // case ( axi_arsize[1:0] )
           end 
	 else if( s_axi_rready ) 
           s_axi_rvalid <= 1'b0;
	end // else: !if( s_axi_aresetn == 1'b0 )

   //###################################################
   //#TIMEOUT CIRCUIT
   //###################################################  

   reg [1:0] timeout_state;     
`define TIMEOUT_IDLE    2'b00
`define TIMEOUT_ARMED   2'b01
`define TIMEOUT_EXPIRED 2'b10
  
   always @ (posedge s_axi_aclk)
     if(!s_axi_aresetn)
       timeout_state[1:0] <= `TIMEOUT_IDLE;
     else
       case(timeout_state[1:0])
	 `TIMEOUT_IDLE    : timeout_state[1:0] <= (s_axi_arvalid & s_axi_arready ) ? `TIMEOUT_ARMED : 
						                                     `TIMEOUT_IDLE;
	 `TIMEOUT_ARMED   : timeout_state[1:0] <=  rr_access     ? `TIMEOUT_IDLE    :
						   counter_expired ? `TIMEOUT_EXPIRED : 
						                     `TIMEOUT_ARMED;
	 `TIMEOUT_EXPIRED : timeout_state[1:0] <= `TIMEOUT_IDLE;	 
	 default : timeout_state[1:0]          <= `TIMEOUT_IDLE;
       endcase // case (timeout_state[1:0])
   	   
   //release bus after 64K clock cycles (seems reasonable?)   
   always @ (posedge s_axi_aclk)
     if(timeout_state[1:0]==`TIMEOUT_IDLE)
       timeout_counter[TW-1:0] <= {(TW){1'b1}};   
     else if (timeout_state[1:0]==`TIMEOUT_ARMED)  //decrement while counter > 0
       timeout_counter[TW-1:0] <= timeout_counter[TW-1:0] - 1'b1;

   assign counter_expired     = ~(|timeout_counter[TW-1:0]);
   assign rr_timeout_access = (timeout_state[1:0]==`TIMEOUT_EXPIRED);
        
 assign m1__DOT__write_active = write_active;
 assign m1__DOT__wr_wait = wr_wait;
 assign m1__DOT__s_axi_wready = s_axi_wready;
 assign m1__DOT__s_axi_bvalid = s_axi_bvalid;
 assign m1__DOT__s_axi_bresp = s_axi_bresp;
 assign m1__DOT__s_axi_bid = s_axi_bid;
 assign m1__DOT__s_axi_awready = s_axi_awready;
 assign m1__DOT__s_axi_aresetn = s_axi_aresetn;
 assign m1__DOT__b_wait = b_wait;
 assign m1__DOT__axi_awsize = axi_awsize;
 assign m1__DOT__axi_awburst = axi_awburst;
 assign m1__DOT__axi_awaddr = axi_awaddr;
endmodule // esaxi


//#############################################################################
//# Function: Clock synchronizer                                              #
//#############################################################################
//# Author:   Andreas Olofsson                                                #
//# License:  MIT (see LICENSE file in OH! repository)                        # 
//#############################################################################

module oh_dsync  #(parameter PS    = 2,        // number of sync stages
		   parameter DELAY = 0        // random delay
		   )
   (
    input  clk, // clock
    input  nreset, // clock
    input  din, // input data
    output dout    // synchronized data
    );
   
	   reg [PS:0]   sync_pipe; 
	   always @ (posedge clk or negedge nreset)		 
	     if(!nreset)
	       sync_pipe[PS:0] <= 1'b0;
	     else
	       sync_pipe[PS:0] <= {sync_pipe[PS-1:0],din};	      	      
	   // drive randomize delay from testbench
	   assign dout = (DELAY & sync_pipe[PS]) |  //extra cycle
			 (~DELAY & sync_pipe[PS-1]); //default
   
endmodule // oh_dsync


//#############################################################################
//# Function: Synchronous FIFO                                                #
//#############################################################################
//# Author:   Andreas Olofsson                                                #
//# License:  MIT (see LICENSE file in OH! repository)                        # 
//#############################################################################

module oh_fifo_sync #(parameter DW        = 104,      //FIFO width
		      parameter DEPTH     = 32,       //FIFO depth
		      parameter PROG_FULL = (DEPTH/2),//prog_full threshold  
		      parameter AW = 5    //rd_count width
		      ) 
(
   input 	       clk, // clock
   input 	       nreset, // active high async reset 
   input [DW-1:0]      din, // data to write
   input 	       wr_en, // write fifo
   input 	       rd_en, // read fifo
   output [DW-1:0]     dout, // output data (next cycle)
   output 	       full, // fifo full
   output 	       prog_full, // fifo is almost full
   output 	       empty, // fifo is empty  
   output reg [AW-1:0] rd_count     // valid entries in fifo
 );
   
   reg [AW-1:0]        wr_addr;
   reg [AW-1:0]        rd_addr;
   wire 	       fifo_read;
   wire 	       fifo_write;
   
   assign empty       = (rd_count[AW-1:0] == 0);   
   assign prog_full   = (rd_count[AW-1:0] >= PROG_FULL);   
   assign full        = (rd_count[AW-1:0] == (DEPTH-1));
   assign fifo_read   = rd_en & ~empty;
   assign fifo_write  = wr_en & ~full;
   
   always @ ( posedge clk ) 
     if(!nreset) 
       begin	   
          wr_addr[AW-1:0]   <= 'd0;
          rd_addr[AW-1:0]   <= 'b0;
          rd_count[AW-1:0]  <= 'b0;
       end 
     else if(fifo_write & fifo_read) 
       begin
	  wr_addr[AW-1:0] <= wr_addr[AW-1:0] + 'd1;
	  rd_addr[AW-1:0] <= rd_addr[AW-1:0] + 'd1;	      
       end 
     else if(fifo_write) 
       begin
	  wr_addr[AW-1:0] <= wr_addr[AW-1:0]  + 'd1;
	  rd_count[AW-1:0]<= rd_count[AW-1:0] + 'd1;	
       end 
     else if(fifo_read) 
       begin	      
          rd_addr[AW-1:0] <= rd_addr[AW-1:0]  + 'd1;
          rd_count[AW-1:0]<= rd_count[AW-1:0] - 'd1;
       end
   
   // GENERIC DUAL PORTED MEMORY
   oh_memory_dp 
     #(.DW(DW),
       .DEPTH(DEPTH))
   mem (// read port
	.rd_dout	(dout[DW-1:0]),
	.rd_clk		(clk),
	.rd_en		(fifo_read),
	.rd_addr	(rd_addr[AW-1:0]),
	// write port
	.wr_clk		(clk),
	.wr_en		(fifo_write),
  	.wr_wem		({(DW){1'b1}}),
	.wr_addr	(wr_addr[AW-1:0]),
	.wr_din	        (din[DW-1:0]));

endmodule // oh_fifo_sync
//#############################################################################
//# Function: Dual Port Memory                                                #
//#############################################################################
//# Author:   Andreas Olofsson                                                #
//# License:  MIT (see LICENSE file in OH! repository)                        # 
//#############################################################################

module oh_memory_dp # (parameter DW    = 104,      //memory width
		       parameter DEPTH = 32,       //memory depth
		       parameter PROJ  = "",       //project name
		       parameter MCW   = 8,         //repair/config vector width
		       parameter AW    = 5 // address bus width
		       ) 
   (// Memory interface (dual port)
    input 	    wr_clk, //write clock
    input 	    wr_en, //write enable
    input [DW-1:0]  wr_wem, //per bit write enable
    input [AW-1:0]  wr_addr,//write address
    input [DW-1:0]  wr_din, //write data
    input 	    rd_clk, //read clock
    input 	    rd_en, //read enable
    input [AW-1:0]  rd_addr,//read address
    output [DW-1:0] rd_dout,//read output data
    // Power/repair (ASICs)
    input 	    shutdown, // shutdown signal from always on domain   
    input [MCW-1:0] memconfig, // generic memory config      
    input [MCW-1:0] memrepair, // repair vector
    // BIST interface (ASICs)
    input 	    bist_en, // bist enable
    input 	    bist_we, // write enable global signal   
    input [DW-1:0]  bist_wem, // write enable vector
    input [AW-1:0]  bist_addr, // address
    input [DW-1:0]  bist_din  // data input
    );

	   oh_memory_ram #(.DW(DW),
			   .DEPTH(DEPTH))	     
	   memory_dp (//read port
		      .rd_dout	(rd_dout[DW-1:0]),
		      .rd_clk	(rd_clk),
		      .rd_en	(rd_en),
		      .rd_addr	(rd_addr[AW-1:0]),
		      //write port
		      .wr_en	(wr_en),
		      .wr_clk	(wr_clk),
		      .wr_addr	(wr_addr[AW-1:0]),
		      .wr_wem	(wr_wem[DW-1:0]),
		      .wr_din	(wr_din[DW-1:0]));
      
endmodule // oh_memory_dp



//#############################################################################
//# Function: Generic RAM memory                                              #
//#############################################################################
//# Author:   Andreas Olofsson                                                #
//# License:  MIT  (see LICENSE file in OH! repository)                       # 
//#############################################################################

module oh_memory_ram  # (parameter DW    = 104,           //memory width
			 parameter DEPTH = 32,            //memory depth
			 parameter AW    = 5  // address width  
			 ) 
   (// read-port
    input 		rd_clk,// rd clock
    input 		rd_en, // memory access
    input [AW-1:0] 	rd_addr, // address
    output reg [DW-1:0] rd_dout, // data output   
    // write-port
    input 		wr_clk,// wr clock
    input 		wr_en, // memory access
    input [AW-1:0] 	wr_addr, // address
    input [DW-1:0] 	wr_wem, // write enable vector    
    input [DW-1:0] 	wr_din // data input
    );
   
   reg [DW-1:0]        ram    [DEPTH-1:0];  
   integer 	       i;
      
   //registered read port
   always @ (posedge rd_clk)
     if(rd_en)       
       rd_dout[DW-1:0] <= ram[rd_addr[AW-1:0]];
   
   //write port with vector enable
   always @(posedge wr_clk)    
     for (i=0;i<DW;i=i+1)
       if (wr_en & wr_wem[i]) 
         ram[wr_addr[AW-1:0]][i] <= wr_din[i];
  
endmodule // oh_memory_ram





  
     

//#############################################################################
//# Function: Maps Packet to Emesh Signals                                    #
//#############################################################################
//# Author:   Andreas Olofsson                                                #
//# License:  MIT (see LICENSE file in OH! repository)                        # 
//#############################################################################
module packet2emesh #(parameter AW = 32,   // address width 
		      parameter PW = 104)  // packet width
   (
    //Input packet
    input [PW-1:0]  packet_in,
    //Emesh signal bundle 
    output 	    write_in,   // write signal
    output [1:0]    datamode_in,// datasize
    output [4:0]    ctrlmode_in,// ctrlmode
    output [AW-1:0] dstaddr_in, // read/write address
    output [AW-1:0] srcaddr_in, // return address for reads
    output [AW-1:0] data_in // data
    );
      
   // ---- FORMAT -----
   //
   // [0]  =write bit
   // [2:1]=datamode
   // [7:3]=ctrlmode
   // [39:8]=dstaddr(lo)
   //
   // ---- 32-BIT ADDRESS ----
   // [71:40]   data (lo)   | xxxx
   // [103:72]  srcaddr(lo) | data (hi)
   //
   // ---- 64-BIT ADDRESS ----
   // [71:40]   D0 | srcaddr(hi)
   // [103:72]  D1 | srcaddr(lo)
   // [135:104] dstaddr(hi)
   
	   assign write_in           = packet_in[0];   
	   assign datamode_in[1:0]   = packet_in[2:1];   
	   assign ctrlmode_in[4:0]   = {1'b0,packet_in[6:3]};   
	   assign dstaddr_in[31:0]   = packet_in[39:8]; 	 
	   assign srcaddr_in[31:0]   = packet_in[103:72];  
	   assign data_in[31:0]      = packet_in[71:40]; 
   
endmodule // packet2emesh



