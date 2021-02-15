analyze -sva  \
  emaxi.v \
  emesh2packet.v \
  em_se.v \
  esaxi.v \
  oh_dsync.v \
  oh_fifo_sync.v \
  oh_memory_dp.v \
  oh_memory_ram.v \
  packet2emesh.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume_2 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume_3 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume_4 {(~ __START__ )|| (__m3__)}
assume -name variable_map_assume_5 {(~ __START__ )|| (__m4__)}
assume -name variable_map_assume_6 {(~ __START__ )|| (__m5__)}
assume -name variable_map_assume_7 {(~ __START__ )|| (__m6__)}
assume -name variable_map_assume_8 {(~ __START__ )|| (__m7__)}
assume -name variable_map_assume_9 {(~ __START__ )|| (__m8__)}
assume -name variable_map_assume_10 {(~ __START__ )|| (__m9__)}
assume -name variable_map_assume_11 {(~ __START__ )|| (__m10__)}
assume -name variable_map_assume_12 {(~ __START__ )|| (__m11__)}
assume -name variable_map_assume_13 {(~ __START__ )|| (__m12__)}
assume -name variable_map_assume_14 {(~ __START__ )|| (__m13__)}
assume -name variable_map_assume_15 {(~ __START__ )|| (__m14__)}
assume -name variable_map_assume_16 {(~ __START__ )|| (__m15__)}
assume -name variable_map_assume_17 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_18 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_19 {(~ __START__ )|| (`true)}
assume -name additional_mapping_control_assume20 {__ILA_I_write_addr_valid == (m1.awvalid_in || m1.awvalid_b)}
assume -name additional_mapping_control_assume21 {__ILA_I_write_valid == (m1.awvalid_in || m1.wvalid_b)}
assume -name additional_mapping_control_assume22 {__ILA_I_awlen == (m1.awvalid_b ? m1.awlen_b : 8'b0)}
assume -name additional_mapping_control_assume23 {__ILA_I_awaddr == (m1.awvalid_b ? m1.awaddr_b : m1.wr_dstaddr[31:0])}
assume -name additional_mapping_control_assume24 {__ILA_I_awsize == (m1.awvalid_b ? m1.awsize_b : { 1'b0, m1.wr_datamode[1:0] })}
assume -name additional_mapping_control_assume25 {__ILA_I_awburst == 2'b01}
assume -name additional_mapping_control_assume26 {__ILA_I_wdata == (m1.wvalid_b ? m1.wdata_b[63:0] : m1.wdata_aligned[63:0])}
assume -name additional_mapping_control_assume27 {__ILA_I_wstrb == (m1.wvalid_b ? m1.wstrb_b[7:0] : m1.wstrb_aligned[7:0])}
assume -name additional_mapping_control_assume28 {__ILA_I_bready == 1'b1}
assume -name issue_decode29 {(~ __START__) || (__ILA_ILA_Master_Write_decode_of_Master_B_Ready__)}
assume -name issue_valid30 {(~ __START__) || (__ILA_ILA_Master_Write_valid__)}
assert -name variable_map_assert0 {(~ __IEND__) || (__m16__)}
