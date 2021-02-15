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
assume -name variable_map_assume_8 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_9 {(~ __START__ )|| (__m7__)}
assume -name variable_map_assume_10 {(~ __START__ )|| (__m8__)}
assume -name variable_map_assume_11 {(~ __START__ )|| (__m9__)}
assume -name invariant_assume12 {(m1.write_active || ~m1.s_axi_wready) == 1}
assume -name invariant_assume13 {(~m1.write_active || ~m1.s_axi_awready) == 1}
assume -name invariant_assume14 {(~m1.write_active || ~m1.s_axi_bvalid) == 1}
assume -name additional_mapping_control_assume15 {__ILA_I_s_axi_aresetn == m1.s_axi_aresetn}
assume -name additional_mapping_control_assume16 {__ILA_I_write_ready == ~m1.wr_wait}
assume -name issue_decode17 {(~ __START__) || (__ILA_ILA_Slave_Write_decode_of_Slave_AWW_Valid__)}
assume -name issue_valid18 {(~ __START__) || (__ILA_ILA_Slave_Write_valid__)}
assert -name variable_map_assert0 {(~ __IEND__) || (__m10__)}
assert -name variable_map_assert1 {(~ __IEND__) || (__m11__)}
assert -name variable_map_assert2 {(~ __IEND__) || (__m12__)}
assert -name variable_map_assert3 {(~ __IEND__) || (__m13__)}
assert -name variable_map_assert4 {(~ __IEND__) || (__m14__)}
assert -name variable_map_assert5 {(~ __IEND__) || (__m15__)}
assert -name variable_map_assert6 {(~ __IEND__) || (`true)}
assert -name variable_map_assert7 {(~ __IEND__) || (__m16__)}
assert -name variable_map_assert8 {(~ __IEND__) || (__m17__)}
assert -name variable_map_assert9 {(~ __IEND__) || (__m18__)}
