module ILA_Slave_Write__DOT__Slave_AWW_Wait(
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
__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__,
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
__COUNTER_start__n7
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
output            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__;
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
output reg      [7:0] __COUNTER_start__n7;
wire            __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__;
wire            __ILA_ILA_Slave_Write_valid__;
wire            __START__;
wire            bv_1_0_n0__$698;
wire            bv_1_1_n4__$707;
wire            clk;
wire            n10__$729;
wire            n11__$734;
wire            n12__$737;
wire            n13__$739;
wire            n14__$750;
wire            n15__$714;
wire            n16__$718;
wire            n17__$720;
wire            n18__$752;
wire            n19__$755;
wire            n1__$700;
wire            n20__$742;
wire            n21__$744;
wire            n22__$747;
wire            n2__$704;
wire            n3__$706;
wire            n5__$709;
wire            n6__$711;
wire            n8__$723;
wire            n9__$727;
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
assign bv_1_0_n0__$698 = 1'h0 ;
assign n1__$700 =  ( s_axi_awvalid ) == ( bv_1_0_n0__$698 )  ;
assign n2__$704 =  ( s_axi_wvalid ) == ( bv_1_0_n0__$698 )  ;
assign n3__$706 =  ( n1__$700 ) & (n2__$704 )  ;
assign bv_1_1_n4__$707 = 1'h1 ;
assign n5__$709 =  ( s_axi_aresetn ) == ( bv_1_1_n4__$707 )  ;
assign n6__$711 =  ( n3__$706 ) & (n5__$709 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ = n6__$711 ;
assign n8__$723 =  ( tx_wactive ) == ( bv_1_0_n0__$698 )  ;
assign n9__$727 =  ( tx_bwait ) == ( bv_1_0_n0__$698 )  ;
assign n10__$729 =  ( n8__$723 ) & (n9__$727 )  ;
assign n11__$734 =  ( n10__$729 ) ? ( bv_1_1_n4__$707 ) : ( bv_1_0_n0__$698 ) ;
assign n12__$737 =  ( tx_wactive ) == ( bv_1_1_n4__$707 )  ;
assign n13__$739 =  ( n12__$737 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n14__$750 =  ( tx_bwait ) == ( bv_1_1_n4__$707 )  ;
assign n15__$714 =  ( s_axi_bvalid ) == ( bv_1_1_n4__$707 )  ;
assign n16__$718 =  ( s_axi_bready ) == ( bv_1_1_n4__$707 )  ;
assign n17__$720 =  ( n15__$714 ) & (n16__$718 )  ;
assign n18__$752 =  ( n14__$750 ) & (n17__$720 )  ;
assign n19__$755 =  ( n18__$752 ) ? ( bv_1_0_n0__$698 ) : ( s_axi_bvalid ) ;
assign n20__$742 =  ( tx_bwait ) == ( bv_1_1_n4__$707 )  ;
assign n21__$744 =  ( n20__$742 ) & (n17__$720 )  ;
assign n22__$747 =  ( n21__$744 ) ? ( bv_1_0_n0__$698 ) : ( tx_bwait ) ;
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
       __COUNTER_start__n7 <= 0;
   end
   else if(__START__ && __ILA_ILA_Slave_Write_valid__) begin
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__ ) begin 
           __COUNTER_start__n7 <= 1; end
       else if( (__COUNTER_start__n7 >= 1 ) && ( __COUNTER_start__n7 < 255 )) begin
           __COUNTER_start__n7 <= __COUNTER_start__n7 + 1; end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           s_axi_awready <= n11__$734 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           s_axi_wready <= n13__$739 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           s_axi_bid <= s_axi_bid ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           s_axi_bresp <= s_axi_bresp ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           s_axi_bvalid <= n19__$755 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           tx_wactive <= tx_wactive ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           tx_bwait <= n22__$747 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           tx_awlen <= tx_awlen ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           tx_awsize <= tx_awsize ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           tx_awaddr <= tx_awaddr ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Wait__) begin
           tx_awburst <= tx_awburst ;
       end
   end
end
endmodule
