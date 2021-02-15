module ILA_Slave_Write__DOT__Slave_AW_Valid(
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
__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__,
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
output            __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__;
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
wire            __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__;
wire            __ILA_ILA_Slave_Write_valid__;
wire            __START__;
wire            bv_1_0_n2__$761;
wire            bv_1_1_n0__$757;
wire            clk;
wire            n10__$792;
wire            n11__$794;
wire            n12__$799;
wire            n13__$800;
wire            n14__$830;
wire            n15__$832;
wire            n16__$843;
wire            n17__$773;
wire            n18__$777;
wire            n19__$779;
wire            n1__$759;
wire            n20__$845;
wire            n21__$848;
wire            n22__$803;
wire            n23__$807;
wire            n24__$835;
wire            n25__$837;
wire            n26__$840;
wire            n27__$810;
wire      [7:0] n28__$812;
wire            n29__$815;
wire      [2:0] n30__$817;
wire            n31__$820;
wire     [31:0] n32__$822;
wire            n33__$825;
wire      [1:0] n34__$827;
wire            n3__$763;
wire            n4__$765;
wire            n5__$768;
wire            n6__$770;
wire            n8__$782;
wire            n9__$788;
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
assign bv_1_1_n0__$757 = 1'h1 ;
assign n1__$759 =  ( s_axi_awvalid ) == ( bv_1_1_n0__$757 )  ;
assign bv_1_0_n2__$761 = 1'h0 ;
assign n3__$763 =  ( s_axi_wvalid ) == ( bv_1_0_n2__$761 )  ;
assign n4__$765 =  ( n1__$759 ) & (n3__$763 )  ;
assign n5__$768 =  ( s_axi_aresetn ) == ( bv_1_1_n0__$757 )  ;
assign n6__$770 =  ( n4__$765 ) & (n5__$768 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ = n6__$770 ;
assign n8__$782 =  ( s_axi_awready ) == ( bv_1_1_n0__$757 )  ;
assign n9__$788 =  ( tx_wactive ) == ( bv_1_0_n2__$761 )  ;
assign n10__$792 =  ( tx_bwait ) == ( bv_1_0_n2__$761 )  ;
assign n11__$794 =  ( n9__$788 ) & (n10__$792 )  ;
assign n12__$799 =  ( n11__$794 ) ? ( bv_1_1_n0__$757 ) : ( bv_1_0_n2__$761 ) ;
assign n13__$800 =  ( n8__$782 ) ? ( bv_1_0_n2__$761 ) : ( n12__$799 ) ;
assign n14__$830 =  ( tx_wactive ) == ( bv_1_1_n0__$757 )  ;
assign n15__$832 =  ( n14__$830 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n16__$843 =  ( tx_bwait ) == ( bv_1_1_n0__$757 )  ;
assign n17__$773 =  ( s_axi_bvalid ) == ( bv_1_1_n0__$757 )  ;
assign n18__$777 =  ( s_axi_bready ) == ( bv_1_1_n0__$757 )  ;
assign n19__$779 =  ( n17__$773 ) & (n18__$777 )  ;
assign n20__$845 =  ( n16__$843 ) & (n19__$779 )  ;
assign n21__$848 =  ( n20__$845 ) ? ( bv_1_0_n2__$761 ) : ( s_axi_bvalid ) ;
assign n22__$803 =  ( s_axi_awready ) == ( bv_1_1_n0__$757 )  ;
assign n23__$807 =  ( n22__$803 ) ? ( bv_1_1_n0__$757 ) : ( tx_wactive ) ;
assign n24__$835 =  ( tx_bwait ) == ( bv_1_1_n0__$757 )  ;
assign n25__$837 =  ( n24__$835 ) & (n19__$779 )  ;
assign n26__$840 =  ( n25__$837 ) ? ( bv_1_0_n2__$761 ) : ( tx_bwait ) ;
assign n27__$810 =  ( s_axi_awready ) == ( bv_1_1_n0__$757 )  ;
assign n28__$812 =  ( n27__$810 ) ? ( s_axi_awlen ) : ( tx_awlen ) ;
assign n29__$815 =  ( s_axi_awready ) == ( bv_1_1_n0__$757 )  ;
assign n30__$817 =  ( n29__$815 ) ? ( s_axi_awsize ) : ( tx_awsize ) ;
assign n31__$820 =  ( s_axi_awready ) == ( bv_1_1_n0__$757 )  ;
assign n32__$822 =  ( n31__$820 ) ? ( s_axi_awaddr ) : ( tx_awaddr ) ;
assign n33__$825 =  ( s_axi_awready ) == ( bv_1_1_n0__$757 )  ;
assign n34__$827 =  ( n33__$825 ) ? ( s_axi_awburst ) : ( tx_awburst ) ;
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
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__ ) begin 
           __COUNTER_start__n7 <= 1; end
       else if( (__COUNTER_start__n7 >= 1 ) && ( __COUNTER_start__n7 < 255 )) begin
           __COUNTER_start__n7 <= __COUNTER_start__n7 + 1; end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           s_axi_awready <= n13__$800 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           s_axi_wready <= n15__$832 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           s_axi_bid <= s_axi_bid ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           s_axi_bresp <= s_axi_bresp ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           s_axi_bvalid <= n21__$848 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           tx_wactive <= n23__$807 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           tx_bwait <= n26__$840 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           tx_awlen <= n28__$812 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           tx_awsize <= n30__$817 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           tx_awaddr <= n32__$822 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_AW_Valid__) begin
           tx_awburst <= n34__$827 ;
       end
   end
end
endmodule
