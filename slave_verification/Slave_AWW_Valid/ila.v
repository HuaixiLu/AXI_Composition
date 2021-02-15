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
