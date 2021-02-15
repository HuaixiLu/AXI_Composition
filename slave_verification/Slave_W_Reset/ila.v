module ILA_Slave_Write__DOT__Slave_W_Reset(
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
__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__,
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
__COUNTER_start__n2
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
output            __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__;
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
output reg      [7:0] __COUNTER_start__n2;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__;
wire            __ILA_ILA_Slave_Write_valid__;
wire            __START__;
wire     [11:0] bv_12_0_n4__$681;
wire            bv_1_0_n0__$673;
wire            bv_1_1_n3__$677;
wire      [1:0] bv_2_0_n5__$693;
wire     [31:0] bv_32_0_n8__$687;
wire      [2:0] bv_3_0_n7__$685;
wire      [7:0] bv_8_0_n6__$683;
wire            clk;
wire            n1__$675;
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
assign bv_1_0_n0__$673 = 1'h0 ;
assign n1__$675 =  ( s_axi_aresetn ) == ( bv_1_0_n0__$673 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ = n1__$675 ;
assign bv_1_1_n3__$677 = 1'h1 ;
assign bv_12_0_n4__$681 = 12'h0 ;
assign bv_2_0_n5__$693 = 2'h0 ;
assign bv_8_0_n6__$683 = 8'h0 ;
assign bv_3_0_n7__$685 = 3'h0 ;
assign bv_32_0_n8__$687 = 32'h0 ;
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
       __COUNTER_start__n2 <= 0;
   end
   else if(__START__ && __ILA_ILA_Slave_Write_valid__) begin
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__ ) begin 
           __COUNTER_start__n2 <= 1; end
       else if( (__COUNTER_start__n2 >= 1 ) && ( __COUNTER_start__n2 < 255 )) begin
           __COUNTER_start__n2 <= __COUNTER_start__n2 + 1; end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           s_axi_awready <= bv_1_1_n3__$677 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           s_axi_wready <= s_axi_wready ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           s_axi_bid <= bv_12_0_n4__$681 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           s_axi_bresp <= bv_2_0_n5__$693 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           s_axi_bvalid <= bv_1_0_n0__$673 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           tx_wactive <= bv_1_0_n0__$673 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           tx_bwait <= bv_1_0_n0__$673 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           tx_awlen <= bv_8_0_n6__$683 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           tx_awsize <= bv_3_0_n7__$685 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           tx_awaddr <= bv_32_0_n8__$687 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Reset__) begin
           tx_awburst <= bv_2_0_n5__$693 ;
       end
   end
end
endmodule
