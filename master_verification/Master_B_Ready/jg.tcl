analyze -sva wrapper.v
elaborate -top wrapper
clock clk
reset rst
assume { noreset__m0__  }
assume { variable_map_assume___m2__  }
assume { variable_map_assume___m4__  }
assume { variable_map_assume___m6__  }
assume { variable_map_assume___m8__  }
assume { variable_map_assume___m10__  }
assume { variable_map_assume___m12__  }
assume { variable_map_assume___m14__  }
assume { variable_map_assume___m16__  }
assume { variable_map_assume___m18__  }
assume { variable_map_assume___m20__  }
assume { variable_map_assume___m22__  }
assume { variable_map_assume___m24__  }
assume { variable_map_assume___m26__  }
assume { variable_map_assume___m28__  }
assume { variable_map_assume___m30__  }
assume { variable_map_assume___m32__  }
assume { variable_map_assume___m33__  }
assume { variable_map_assume___m34__  }
assume { variable_map_assume___m35__  }
assume { additional_mapping_control_assume__m38__  }
assume { additional_mapping_control_assume__m39__  }
assume { additional_mapping_control_assume__m40__  }
assume { additional_mapping_control_assume__m41__  }
assume { additional_mapping_control_assume__m42__  }
assume { additional_mapping_control_assume__m43__  }
assume { additional_mapping_control_assume__m44__  }
assume { additional_mapping_control_assume__m45__  }
assume { additional_mapping_control_assume__m46__  }
assume { issue_decode__m47__  }
assume { issue_valid__m48__  }
assert { (variable_map_assert__p37__ ) }
