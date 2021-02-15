module ILA_Slave_Write__DOT__Slave_W_Valid(
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
__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__,
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
output            __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__;
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
wire            __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__;
wire            __ILA_ILA_Slave_Write_valid__;
wire            __START__;
wire            bv_1_0_n2__$854;
wire            bv_1_1_n0__$850;
wire      [1:0] bv_2_0_n21__$965;
wire      [1:0] bv_2_1_n48__$976;
wire     [29:0] bv_30_1_n53__$987;
wire      [7:0] bv_8_1_n45__$972;
wire            clk;
wire            n10__$881;
wire            n11__$886;
wire            n12__$889;
wire            n13__$893;
wire            n14__$897;
wire            n15__$900;
wire            n16__$902;
wire            n17__$903;
wire            n18__$958;
wire            n19__$962;
wire            n1__$852;
wire            n20__$964;
wire      [1:0] n22__$967;
wire            n23__$938;
wire            n24__$942;
wire            n25__$946;
wire            n26__$948;
wire            n27__$951;
wire            n28__$866;
wire            n29__$870;
wire            n30__$872;
wire            n31__$954;
wire            n32__$955;
wire            n33__$906;
wire            n34__$910;
wire            n35__$912;
wire            n36__$915;
wire            n37__$918;
wire            n38__$922;
wire            n39__$926;
wire            n3__$856;
wire            n40__$928;
wire            n41__$931;
wire            n42__$934;
wire            n43__$935;
wire            n44__$970;
wire      [7:0] n46__$974;
wire      [7:0] n47__$975;
wire            n49__$978;
wire            n4__$858;
wire            n50__$982;
wire            n51__$984;
wire     [29:0] n52__$985;
wire     [29:0] n54__$989;
wire     [31:0] n55__$996;
wire     [31:0] n56__$998;
wire            n5__$861;
wire            n6__$863;
wire            n8__$875;
wire            n9__$879;
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
assign bv_1_1_n0__$850 = 1'h1 ;
assign n1__$852 =  ( s_axi_wvalid ) == ( bv_1_1_n0__$850 )  ;
assign bv_1_0_n2__$854 = 1'h0 ;
assign n3__$856 =  ( s_axi_awvalid ) == ( bv_1_0_n2__$854 )  ;
assign n4__$858 =  ( n1__$852 ) & (n3__$856 )  ;
assign n5__$861 =  ( s_axi_aresetn ) == ( bv_1_1_n0__$850 )  ;
assign n6__$863 =  ( n4__$858 ) & (n5__$861 )  ;
assign __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ = n6__$863 ;
assign n8__$875 =  ( tx_wactive ) == ( bv_1_0_n2__$854 )  ;
assign n9__$879 =  ( tx_bwait ) == ( bv_1_0_n2__$854 )  ;
assign n10__$881 =  ( n8__$875 ) & (n9__$879 )  ;
assign n11__$886 =  ( n10__$881 ) ? ( bv_1_1_n0__$850 ) : ( bv_1_0_n2__$854 ) ;
assign n12__$889 =  ( s_axi_wready ) == ( bv_1_1_n0__$850 )  ;
assign n13__$893 =  ( s_axi_wlast ) == ( bv_1_1_n0__$850 )  ;
assign n14__$897 =  ( n13__$893 ) ? ( bv_1_0_n2__$854 ) : ( write_ready ) ;
assign n15__$900 =  ( tx_wactive ) == ( bv_1_1_n0__$850 )  ;
assign n16__$902 =  ( n15__$900 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n17__$903 =  ( n12__$889 ) ? ( n14__$897 ) : ( n16__$902 ) ;
assign n18__$958 =  ( s_axi_wlast ) == ( bv_1_1_n0__$850 )  ;
assign n19__$962 =  ( s_axi_wready ) == ( bv_1_1_n0__$850 )  ;
assign n20__$964 =  ( n18__$958 ) & (n19__$962 )  ;
assign bv_2_0_n21__$965 = 2'h0 ;
assign n22__$967 =  ( n20__$964 ) ? ( bv_2_0_n21__$965 ) : ( s_axi_bresp ) ;
assign n23__$938 =  ( tx_bwait ) == ( bv_1_0_n2__$854 )  ;
assign n24__$942 =  ( s_axi_wlast ) == ( bv_1_1_n0__$850 )  ;
assign n25__$946 =  ( s_axi_wready ) == ( bv_1_1_n0__$850 )  ;
assign n26__$948 =  ( n24__$942 ) & (n25__$946 )  ;
assign n27__$951 =  ( n26__$948 ) ? ( bv_1_1_n0__$850 ) : ( s_axi_bvalid ) ;
assign n28__$866 =  ( s_axi_bvalid ) == ( bv_1_1_n0__$850 )  ;
assign n29__$870 =  ( s_axi_bready ) == ( bv_1_1_n0__$850 )  ;
assign n30__$872 =  ( n28__$866 ) & (n29__$870 )  ;
assign n31__$954 =  ( n30__$872 ) ? ( bv_1_0_n2__$854 ) : ( s_axi_bvalid ) ;
assign n32__$955 =  ( n23__$938 ) ? ( n27__$951 ) : ( n31__$954 ) ;
assign n33__$906 =  ( s_axi_wlast ) == ( bv_1_1_n0__$850 )  ;
assign n34__$910 =  ( s_axi_wready ) == ( bv_1_1_n0__$850 )  ;
assign n35__$912 =  ( n33__$906 ) & (n34__$910 )  ;
assign n36__$915 =  ( n35__$912 ) ? ( bv_1_0_n2__$854 ) : ( tx_wactive ) ;
assign n37__$918 =  ( tx_bwait ) == ( bv_1_0_n2__$854 )  ;
assign n38__$922 =  ( s_axi_wlast ) == ( bv_1_1_n0__$850 )  ;
assign n39__$926 =  ( s_axi_wready ) == ( bv_1_1_n0__$850 )  ;
assign n40__$928 =  ( n38__$922 ) & (n39__$926 )  ;
assign n41__$931 =  ( n40__$928 ) ? ( bv_1_1_n0__$850 ) : ( tx_bwait ) ;
assign n42__$934 =  ( n30__$872 ) ? ( bv_1_0_n2__$854 ) : ( tx_bwait ) ;
assign n43__$935 =  ( n37__$918 ) ? ( n41__$931 ) : ( n42__$934 ) ;
assign n44__$970 =  ( s_axi_wready ) == ( bv_1_1_n0__$850 )  ;
assign bv_8_1_n45__$972 = 8'h1 ;
assign n46__$974 =  ( tx_awlen ) - ( bv_8_1_n45__$972 )  ;
assign n47__$975 =  ( n44__$970 ) ? ( n46__$974 ) : ( tx_awlen ) ;
assign bv_2_1_n48__$976 = 2'h1 ;
assign n49__$978 =  ( tx_awburst ) == ( bv_2_1_n48__$976 )  ;
assign n50__$982 =  ( s_axi_wready ) == ( bv_1_1_n0__$850 )  ;
assign n51__$984 =  ( n49__$978 ) & (n50__$982 )  ;
assign n52__$985 = tx_awaddr[31:2] ;
assign bv_30_1_n53__$987 = 30'h1 ;
assign n54__$989 =  ( n52__$985 ) + ( bv_30_1_n53__$987 )  ;
assign n55__$996 =  { ( n54__$989 ) , ( bv_2_0_n21__$965 ) }  ;
assign n56__$998 =  ( n51__$984 ) ? ( n55__$996 ) : ( tx_awaddr ) ;
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
       if ( __ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__ ) begin 
           __COUNTER_start__n7 <= 1; end
       else if( (__COUNTER_start__n7 >= 1 ) && ( __COUNTER_start__n7 < 255 )) begin
           __COUNTER_start__n7 <= __COUNTER_start__n7 + 1; end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           s_axi_awready <= n11__$886 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           s_axi_wready <= n17__$903 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           s_axi_bid <= s_axi_bid ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           s_axi_bresp <= n22__$967 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           s_axi_bvalid <= n32__$955 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           tx_wactive <= n36__$915 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           tx_bwait <= n43__$935 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           tx_awlen <= n47__$975 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           tx_awsize <= tx_awsize ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           tx_awaddr <= n56__$998 ;
       end
       if (__ILA_ILA_Slave_Write_decode_of_Slave_W_Valid__) begin
           tx_awburst <= tx_awburst ;
       end
   end
end
endmodule
