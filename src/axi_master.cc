/// \file the ila example of EMESH-AXI-Bridge
///  Hongce Zhang (hongcez@princeton.edu)
///

#include "emesh_axi_master.h"


EmeshAxiMasterBridge::EmeshAxiMasterBridge()
    : // construct the model
  wmodel("ILA_Master_write"),
  // global reset
  m_axi_aresetn_w (wmodel.NewBvInput("m_axi_aresetn",1)),

  // AXI -- Write address
  m_axi_awid   (wmodel.NewBvState("m_axi_awid",   M_IDW)),    // output
  m_axi_awaddr (wmodel.NewBvState("m_axi_awaddr", 32)),  // output
  m_axi_awlen  (wmodel.NewBvState("m_axi_awlen",  8)),   // output
  m_axi_awsize (wmodel.NewBvState("m_axi_awsize", 3)),  // output
  m_axi_awburst(wmodel.NewBvState("m_axi_awburst",2)), // output
  m_axi_awlock (wmodel.NewBvState("m_axi_awlock", 1)),  // output
  m_axi_awcache(wmodel.NewBvState("m_axi_awcache",4)), // output
  m_axi_awprot (wmodel.NewBvState("m_axi_awprot", 3)),  // output
  m_axi_awqos  (wmodel.NewBvState("m_axi_awqos",  4)),   // output
  m_axi_awvalid(wmodel.NewBvState("m_axi_awvalid",1)), // output
  m_axi_awready(wmodel.NewBvInput("m_axi_awready",1)),

  // AXI -- Write data
  m_axi_wid   (wmodel.NewBvState("m_axi_wid",     M_IDW)),     // output
  m_axi_wdata (wmodel.NewBvState("m_axi_wdata",   DATA_LEN)),   // output
  m_axi_wstrb (wmodel.NewBvState("m_axi_wstrb",   8)),   // output
  m_axi_wlast (wmodel.NewBvState("m_axi_wlast",   1)),   // output
  m_axi_wvalid(wmodel.NewBvState("m_axi_wvalid",  1)),  // output
  m_axi_wready(wmodel.NewBvInput("m_axi_wready",  1)),  

  // AXI -- Write response
  m_axi_bid   (wmodel.NewBvInput("m_axi_bid",    M_IDW)),     
  m_axi_bresp (wmodel.NewBvInput("m_axi_bresp",  2)),   
  m_axi_bvalid(wmodel.NewBvInput("m_axi_bvalid", 1)),  
  m_axi_bready(wmodel.NewBvState("m_axi_bready", 1)),  // output

  m_axi_aresetn_r (rmodel.NewBvInput("m_axi_aresetn",1)),

  // ------------------------------------------------------------------
  
  rmodel("EmeshAxiMasterBridge_read"),
  // AXI -- Read address
  m_axi_arid   (rmodel.NewBvState("m_axi_arid",    M_IDW)),    // output
  m_axi_araddr (rmodel.NewBvState("m_axi_araddr",  32)),  // output
  m_axi_arlen  (rmodel.NewBvState("m_axi_arlen",   8)),   // output
  m_axi_arsize (rmodel.NewBvState("m_axi_arsize",  3)),  // output
  m_axi_arburst(rmodel.NewBvState("m_axi_arburst", 2)), // output
  m_axi_arlock (rmodel.NewBvState("m_axi_arlock",  1)),  // output
  m_axi_arcache(rmodel.NewBvState("m_axi_arcache", 4)), // output
  m_axi_arprot (rmodel.NewBvState("m_axi_arprot",  3)),  // output
  m_axi_arqos  (rmodel.NewBvState("m_axi_arqos",   4)),   // output
  m_axi_arvalid(rmodel.NewBvState("m_axi_arvalid", 1)), // output
  m_axi_arready(rmodel.NewBvInput("m_axi_arready", 1)),

  // AXI -- Read data
  m_axi_rid   (rmodel.NewBvInput("m_axi_rid",    M_IDW)),     
  m_axi_rdata (rmodel.NewBvInput("m_axi_rdata",  DATA_LEN)),   
  m_axi_rresp (rmodel.NewBvInput("m_axi_rresp",  2)),   
  m_axi_rlast (rmodel.NewBvInput("m_axi_rlast",  1)),   
  m_axi_rvalid(rmodel.NewBvInput("m_axi_rvalid", 1)),  
  m_axi_rready(rmodel.NewBvState("m_axi_rready", 1)),  // output

  // internal states -- may not have matches with the Verilog state
  // but necessary for modeling
  tx_wactive(wmodel.NewBvState("tx_wactive", 1)),
  tx_bwait(wmodel.NewBvState("tx_bwait", 1)),
  tx_awlen(wmodel.NewBvState("tx_awlen", 8)),

  write_addr_valid(wmodel.NewBvInput("write_addr_valid", 1)),
  write_valid(wmodel.NewBvInput("write_valid", 1)),
  awlen(wmodel.NewBvInput("awlen", 8)),
  awaddr(wmodel.NewBvInput("awaddr", 32)),
  awsize(wmodel.NewBvInput("awsize", 3)),
  awburst(wmodel.NewBvInput("awburst", 2)),

  wdata(wmodel.NewBvInput("wdata", DATA_LEN)),
  wstrb(wmodel.NewBvInput("wstrb", 8)),

  bready(wmodel.NewBvInput("bready", 1)),

  read_valid(rmodel.NewBvInput("read_valid", 1)),
  arlen(rmodel.NewBvInput("arlen", 8)),
  araddr(rmodel.NewBvInput("araddr", 32)),
  arsize(rmodel.NewBvInput("arsize", 3)),
  arburst(rmodel.NewBvInput("arburst", 2)),
  read_ready(rmodel.NewBvInput("read_ready", 1))

{

  // write data buffers

  // Write channel interface -- what corresponds to instruction
  wmodel.SetFetch( lConcat({m_axi_aresetn_w, m_axi_awready, write_addr_valid, m_axi_wready, write_valid}) );
  // Valid instruction: what means to have valid command (valid = 1)
  wmodel.SetValid( /*always true*/ BoolConst(true) );

  { // reset instruction
    auto instr = wmodel.NewInstr("Master_W_Reset");
    instr.SetDecode( m_axi_aresetn_w == 0 );
    instr.SetUpdate(m_axi_awvalid, BvConst(0,1));
    instr.SetUpdate(m_axi_wvalid,  BvConst(0,1));

    // instr.SetUpdate(tx_valid, BvConst(0,1)); this is not guaranteed
    // ready signals not specified and thus won't be checked
  }


  { // Master_AW_New
    auto instr = wmodel.NewInstr("Master_AW_New");
    instr.SetDecode( (write_addr_valid == 1) & ( m_axi_awready == 0 ) & ( m_axi_aresetn_w == 1 ) );

    instr.SetUpdate(m_axi_awvalid, Ite(m_axi_awvalid == 0, BvConst(1,1), BvConst(0,1)));
    instr.SetUpdate(m_axi_awaddr,  Ite(m_axi_awvalid == 0, awaddr, m_axi_awaddr));
    instr.SetUpdate(m_axi_awlen,   Ite(m_axi_awvalid == 0, awlen, m_axi_awlen));
    instr.SetUpdate(m_axi_awsize,  Ite(m_axi_awvalid == 0, awsize, m_axi_awsize));
    instr.SetUpdate(m_axi_awburst, Ite(m_axi_awvalid == 0, awburst, m_axi_awburst));
  }

  { // Mater_AW_Update
    auto instr = wmodel.NewInstr("Master_AW_Update"); // then it should keep the old value
    instr.SetDecode( (write_addr_valid == 1) & ( m_axi_awready == 1) & ( m_axi_aresetn_w == 1 ) ); // should keep its old value

    instr.SetUpdate(m_axi_awvalid, BvConst(1,1));
    instr.SetUpdate(m_axi_awaddr,  awaddr);
    instr.SetUpdate(m_axi_awlen,   awlen);
    instr.SetUpdate(m_axi_awsize,  awsize);
    instr.SetUpdate(m_axi_awburst, awburst);
    
    instr.SetUpdate(tx_awlen,   Ite(m_axi_awvalid == 1, m_axi_awlen, tx_awlen)); // TODO: how to deal with the shared states
    instr.SetUpdate(tx_wactive, Ite(m_axi_awvalid == 1, BvConst(1,1), tx_wactive));
    instr.SetUpdate(m_axi_wlast, Ite(m_axi_awlen == BvConst(0,8) & m_axi_awvalid == 1, BvConst(1,1), BvConst(0,1)) );
  }

  { // Master_AW_Ready
    auto instr = wmodel.NewInstr("Master_AW_Ready"); 
    instr.SetDecode( (write_addr_valid == 0) & ( m_axi_awready == 1) & ( m_axi_aresetn_w == 1 ) );
    
    instr.SetUpdate(tx_awlen,   Ite(m_axi_awvalid == 1, m_axi_awlen, tx_awlen));
    instr.SetUpdate(tx_wactive, Ite(m_axi_awvalid == 1, BvConst(1,1), tx_wactive));
    instr.SetUpdate(m_axi_wlast, Ite(m_axi_awlen == BvConst(0,8) & m_axi_awvalid == 1, BvConst(1,1), BvConst(0,1)) );
  }

  { // Master_W_New
    auto instr = wmodel.NewInstr("Master_W_New");
    instr.SetDecode( (write_valid == 1) & (m_axi_wready == 0) & (m_axi_aresetn_w == 1) );

    instr.SetUpdate( m_axi_wdata,  Ite(m_axi_wvalid == 0, wdata, m_axi_wdata));
    instr.SetUpdate( m_axi_wstrb,  Ite(m_axi_wvalid == 0, wstrb, m_axi_wstrb));
    instr.SetUpdate( m_axi_wvalid, Ite(m_axi_wvalid == 0, BvConst(1,1), m_axi_wvalid));
  }

  { // Master_W_Update
    auto instr = wmodel.NewInstr("Master_W_Update");
    instr.SetDecode( (write_valid == 1) & (m_axi_wready == 1) & (m_axi_aresetn_w == 1) );

    instr.SetUpdate( m_axi_wvalid, BvConst(1,1));
    instr.SetUpdate( m_axi_wdata,  wdata);
    instr.SetUpdate( m_axi_wstrb,  wstrb);

    instr.SetUpdate( tx_awlen,   Ite(m_axi_wvalid == 1, tx_awlen - BvConst(1,8), tx_awlen));
    instr.SetUpdate( tx_wactive, Ite(tx_awlen == BvConst(1,8) & m_axi_wvalid == 1, BvConst(0,1), tx_wactive));
    instr.SetUpdate( m_axi_wlast, Ite(tx_awlen == BvConst(1,8) & m_axi_wvalid == 1, BvConst(1,1), m_axi_wlast));

  }

  { // Master_W_Ready
    auto instr = wmodel.NewInstr("Master_W_Ready");
    instr.SetDecode( (write_valid == 0) & (m_axi_wready == 1) & (m_axi_aresetn_w == 1) );

    instr.SetUpdate( tx_awlen,   Ite(m_axi_wvalid == 1, tx_awlen - BvConst(1,8), tx_awlen));
    instr.SetUpdate( tx_wactive, Ite(tx_awlen == BvConst(1,8) & m_axi_wvalid == 1, BvConst(0,1), tx_wactive));
    instr.SetUpdate( m_axi_wlast, Ite(tx_awlen == BvConst(1,8) & m_axi_wvalid == 1, BvConst(1,1), m_axi_wlast));
  }

  { // Master_B_Ready
    auto instr = wmodel.NewInstr("Master_B_Ready");

    instr.SetDecode( m_axi_aresetn_w == 1 );

    instr.SetUpdate (m_axi_bready, bready);

  }

  // ----------------------------------------------------------------------------

  // Write channel interface -- what corresponds to instruction
  rmodel.SetFetch( lConcat({m_axi_aresetn_r, m_axi_arready, m_axi_rready }) );
  // Valid instruction: what means to have valid command (valid = 1)
  rmodel.SetValid( /*always true*/ BoolConst(true) );

  {// reset instruction
    auto instr = rmodel.NewInstr("R_Master_Reset");
    instr.SetDecode( m_axi_aresetn_r == 0 );
    instr.SetUpdate(m_axi_arvalid, BvConst(0,1));
    instr.SetUpdate(m_axi_rready,  BvConst(0,1));
  }

{ // AR_Master_Prepare
    auto instr = rmodel.NewInstr("AR_Master_Prepare");
    instr.SetDecode( (m_axi_arvalid == 0) & (read_valid == 1) & ( m_axi_aresetn_w == 1 ) );

    instr.SetUpdate(m_axi_arvalid, BvConst(1,1));
    instr.SetUpdate(m_axi_araddr,  araddr);
    instr.SetUpdate(m_axi_arlen,   arlen);
    instr.SetUpdate(m_axi_arsize,  arsize);
    instr.SetUpdate(m_axi_arburst, arburst);
  }

  { // AR_Mater_Asserted
    auto instr = rmodel.NewInstr("AR_Master_Asserted"); // then it should keep the old value
    instr.SetDecode( (m_axi_arvalid == 1) & ( m_axi_arready == 0 ) & ( m_axi_aresetn_w == 1 ) ); // should keep its old value

    instr.SetUpdate(m_axi_arvalid, m_axi_arvalid);
    instr.SetUpdate(m_axi_arid,   m_axi_arid  );
    instr.SetUpdate(m_axi_araddr, m_axi_araddr);
    instr.SetUpdate(m_axi_arlen,  m_axi_arlen );
    instr.SetUpdate(m_axi_arsize, m_axi_arsize);
    instr.SetUpdate(m_axi_arburst,m_axi_arburst);
  }

  { // AR_Master_Commit
    auto instr = rmodel.NewInstr("AR_Master_Commit"); 
    instr.SetDecode( (m_axi_arvalid == 1) & ( m_axi_arready == 1 ) & ( m_axi_aresetn_w == 1 ) );

    instr.SetUpdate(m_axi_arvalid, Ite(read_valid == 1, BvConst(1,1), BvConst(0,1)));
    instr.SetUpdate(m_axi_araddr,  Ite(read_valid == 1, araddr, unknownVal(32)));
    instr.SetUpdate(m_axi_arlen,   Ite(read_valid == 1, arlen, unknownVal(8)));
    instr.SetUpdate(m_axi_arsize,  Ite(read_valid == 1, arsize, unknownVal(3)));
    instr.SetUpdate(m_axi_arburst, Ite(read_valid == 1, arburst, unknownVal(2)));
  }

  { // R_Master_Wait
    auto instr = rmodel.NewInstr("R_Master_Wait");
    instr.SetDecode( (m_axi_aresetn_r == 1) );
    instr.SetUpdate(m_axi_rready, read_ready);
  }

}