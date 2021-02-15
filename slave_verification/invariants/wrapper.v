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
invariant_assert__p0__,
invariant_assert__p1__,
invariant_assert__p2__,
m1__DOT__s_axi_awready,
m1__DOT__s_axi_bvalid,
m1__DOT__s_axi_wready,
m1__DOT__write_active,
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
output            invariant_assert__p0__;
output            invariant_assert__p1__;
output            invariant_assert__p2__;
output            m1__DOT__s_axi_awready;
output            m1__DOT__s_axi_bvalid;
output            m1__DOT__s_axi_wready;
output            m1__DOT__write_active;
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
(* keep *) wire            invariant_assert__p0__;
(* keep *) wire            invariant_assert__p1__;
(* keep *) wire            invariant_assert__p2__;
(* keep *) wire            m1__DOT__s_axi_awready;
(* keep *) wire            m1__DOT__s_axi_bvalid;
(* keep *) wire            m1__DOT__s_axi_wready;
(* keep *) wire            m1__DOT__write_active;
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
assign invariant_assert__p0__ = ((m1__DOT__write_active || ~m1__DOT__s_axi_wready) == 1) ;
assign invariant_assert__p1__ = ((~m1__DOT__write_active || ~m1__DOT__s_axi_awready) == 1) ;
assign invariant_assert__p2__ = ((~m1__DOT__write_active || ~m1__DOT__s_axi_bvalid) == 1) ;

esaxi m1(
    .m1__DOT__s_axi_awready(m1__DOT__s_axi_awready),
    .m1__DOT__s_axi_bvalid(m1__DOT__s_axi_bvalid),
    .m1__DOT__s_axi_wready(m1__DOT__s_axi_wready),
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
   , output wire  m1__DOT__s_axi_awready, output wire  m1__DOT__s_axi_bvalid, output wire  m1__DOT__s_axi_wready, output wire  m1__DOT__write_active);
   
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
 assign m1__DOT__s_axi_wready = s_axi_wready;
 assign m1__DOT__s_axi_bvalid = s_axi_bvalid;
 assign m1__DOT__s_axi_awready = s_axi_awready;
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



