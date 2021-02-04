/// \file the ila example of AXI_Top
///  Huaixi Lu (huaixil@princeton.edu)
///

#include "axi_top.h"

TopAXI::TopAXI()
    : // construct the model
  wmodel("ILA_TOP_Write"),
  // global reset
  rst (wmodel.NewBvInput("rst", 1)),
  
  // AXI - Outside Input
  aw_valid(wmodel.NewBvInput("axi_awvalid", 1)),
  w_valid(wmodel.NewBvInput("write_valid", 1)),
  w_ready(wmodel.NewNBvInput("write_ready", 1)),
  b_ready(wmodel.NewBvInput("response_ready", 1)),

  awlen(wmodel.NewBvInput  ("awlen", 8)),
  awaddr(wmodel.NewBvInput ("awaddr", 32)),
  awsize(wmodel.NewBvInput ("awsize", 3)),
  awburst(wmodel.NewBvInput("awburst", 2)),

  wdata(wmodel.NewBvInput("wdata", DATA_LEN)),
  wstrb(wmodel.NewBvInput("wstrb", 8)),

  // AXI interface Internal state
  axi_awid   (wmodel.NewBvState("axi_awid",   M_IDW)),
  axi_awaddr (wmodel.NewBvState("axi_awaddr", 32)),  
  axi_awlen  (wmodel.NewBvState("axi_awlen",  8)),    
  axi_awsize (wmodel.NewBvState("axi_awsize", 3)),  
  axi_awburst(wmodel.NewBvState("axi_awburst",2)),  
  axi_awvalid(wmodel.NewBvState("axi_awvalid",1)),
  axi_awready(wmodel.NewBvState("axi_awready",1)),

  axi_wid   (wmodel.NewBvState("axi_wid",     M_IDW)),     
  axi_wdata (wmodel.NewBvState("axi_wdata",   DATA_LEN)),   
  axi_wstrb (wmodel.NewBvState("axi_wstrb",   8)),   
  axi_wlast (wmodel.NewBvState("axi_wlast",   1)),   
  axi_wvalid(wmodel.NewBvState("axi_wvalid",  1)),
  axi_wready(wmodel.NewBvInput("axi_wready",  1)),    

  // internal states
  tx_wactive(wmodel.NewBvState("tx_wactive", 1)),
  tx_bwait(wmodel.NewBvState("tx_bwait", 1)),
  tx_awlen(wmodel.NewBvState("tx_awlen", 8))

  {
    // Write channel interface -- what corresponds to instruction
    wmodel.SetFetch( lConcat({rst, aw_valid, w_valid, w_ready}) );
    // Valid instruction: what means to have valid command (valid = 1)
    wmodel.SetValid( /*always true*/ BoolConst(true) );
    {
        auto instr = wmodel.NewInstr("W_Reset");
        instr.SetDecode( rst == 0 );
        instr.SetUpdate(axi_awvalid, BvConst(0,1));
        instr.SetUpdate(axi_wvalid,  BvConst(0,1));
        instr.SetUpdate(axi_awready, BvConst(1,1));
        instr.SetUpdate(tx_wactive, BvConst(0,1));
    }

    {
        auto instr = wmodel.NewInstr("W_Addr");
        instr.SetDecode(aw_valid == 1);
        auto ready = (tx_wactive == 0) & (tx_bwait == 0);
        // Internal State Update
        instr.SetUpdate(axi_awaddr,  Ite(ready == 1, awaddr, axi_awaddr));
        instr.SetUpdate(axi_awlen,   Ite(ready == 1, awlen, axi_awlen));
        instr.SetUpdate(axi_awsize,  Ite(ready == 1, awsize, axi_awsize));
        instr.SetUpdate(axi_awburst, Ite(ready == 1, awburst, axi_awburst));
        instr.SetUpdate(tx_wactive,  Ite(ready == 1, BvConst(1,1), tx_wactive));
    }

    {
        auto instr = wmodel.NewInstr("W_Data");
        instr.SetDecode(w_valid == 1 & w_ready == 1);

        auto axi_wlast = (axi_awlen == BvConst(1,8));
        instr.SetUpdate(axi_awlen, axi_awlen - BvConst(1,8));
        instr.SetUpdate(axi_awaddr, Ite(axi_awburst == BURST_INCR, Concat(Extract(axi_awaddr,31,2) + BvConst(1,30) , BvConst(0,2)), axi_awaddr));
        instr.SetUpdate(tx_wactive, Ite(axi_wlast == 1, BvConst(0,1), tx_wactive));
        instr.SetUpdate(tx_bwait, Ite(axi_wlast == 1, BvConst(1, 1), tx_bwait));
    }

    {
        auto instr = wmodel.NewInstr("B_Commit");
        instr.SetDecode(b_ready == 1);

        instr.SetUpdate(tx_bwait, Ite(tx_bwait == 1, BvConst(0,1), tx_bwait));
    }
  }
