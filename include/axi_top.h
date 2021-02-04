/// \file the top ila of the AXI Protocol 
///  Huaixi Lu (huaixil@princeton.edu)
///

#ifndef AXI_TOP_H__
#define AXI_TOP_H__

#include <ilang/ilang++.h>
#include <vector>

using namespace ilang;

#define M_IDW 12
#define DATA_LEN 64
#define PW 104
#define AW 32
#define DW 32
#define BURST_FIXED BvConst(0,2)
#define BURST_INCR  BvConst(1,2)
#define BURST_WRAP  BvConst(2,2)

/// \brief the class of emesh-axi-master ila
class TopAXI {

public:
  // --------------- CONSTRUCTOR ------ //
  /// add state, add instructions, add child
  TopAXI ();
  // --------------- MEMBERS ----------- //
  /// the ila model for write channels
  Ila wmodel;
  /// the ila model for read channels
  /// Ila rmodel;

protected:
  // --------------- HELPERS -------- //
  /// a nondeterministic choice of a or b
  static ExprRef unknown_choice(const ExprRef& a, const ExprRef& b);
  /// a nondeterminstic bitvector const of width
  static FuncRef unknown(unsigned width);
  static ExprRef unknownVal(unsigned width);
  /// a helper function to concat a vector of express
  static ExprRef lConcat(const std::vector<ExprRef> & l);


protected:
  // ------------ STATE ------------ //
  // reset
  ExprRef rst;

  //Input
  ExprRef aw_valid;
  ExprRef w_valid;
  ExprRef w_ready;
  ExprRef b_ready;
  
  ExprRef awlen;
  ExprRef awaddr;
  ExprRef awsize;
  ExprRef awburst;
  ExprRef wdata;
  ExprRef wstrb;
  ExprRef bready;

  // AXI Interface Internal States
  ExprRef axi_awid;    // output
  ExprRef axi_awaddr;  // output
  ExprRef axi_awlen;   // output
  ExprRef axi_awsize;  // output
  ExprRef axi_awburst;  // output
  ExprRef axi_awvalid; // output
  ExprRef axi_awready; 

  // AXI -- Write data
  ExprRef axi_wid;     // output
  ExprRef axi_wdata;   // output
  ExprRef axi_wstrb;   // output
  ExprRef axi_wlast;   // output
  ExprRef axi_wvalid;  // output
  ExprRef axi_wready;  

  // AXI -- Write response
  ExprRef m_axi_bid;     
  ExprRef m_axi_bresp;   
  ExprRef m_axi_bvalid;  
  ExprRef m_axi_bready;  // output
  
  // internal state
  ExprRef tx_wactive;
  ExprRef tx_bwait;
  ExprRef tx_awlen;

}; // class TopAXI


#endif // AXI_TOP_H__