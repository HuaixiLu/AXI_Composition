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
assume { variable_map_assume___m15__  }
assume { variable_map_assume___m17__  }
assume { variable_map_assume___m19__  }
assume { variable_map_assume___m21__  }
assume { invariant_assume__m37__  }
assume { invariant_assume__m38__  }
assume { invariant_assume__m39__  }
assume { additional_mapping_control_assume__m40__  }
assume { additional_mapping_control_assume__m41__  }
assume { issue_decode__m42__  }
assume { issue_valid__m43__  }
assert { (variable_map_assert__p23__ ) && (variable_map_assert__p25__ ) && (variable_map_assert__p27__ ) && (variable_map_assert__p29__ ) && (variable_map_assert__p31__ ) && (variable_map_assert__p32__ ) && (variable_map_assert__p34__ ) && (variable_map_assert__p36__ ) }
