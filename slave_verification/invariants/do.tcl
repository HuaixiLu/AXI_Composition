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
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assert -name invariant_assert0 {((m1.write_active || ~m1.s_axi_wready) == 1)}
assert -name invariant_assert1 {((~m1.write_active || ~m1.s_axi_awready) == 1)}
assert -name invariant_assert2 {((~m1.write_active || ~m1.s_axi_bvalid) == 1)}
