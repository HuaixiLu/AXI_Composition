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
assume { additional_mapping_control_assume__m50__  }
assume { additional_mapping_control_assume__m51__  }
assume { additional_mapping_control_assume__m52__  }
assume { additional_mapping_control_assume__m53__  }
assume { additional_mapping_control_assume__m54__  }
assume { additional_mapping_control_assume__m55__  }
assume { additional_mapping_control_assume__m56__  }
assume { additional_mapping_control_assume__m57__  }
assume { additional_mapping_control_assume__m58__  }
assume { issue_decode__m59__  }
assume { issue_valid__m60__  }
assert { (variable_map_assert__p37__ ) && (variable_map_assert__p39__ ) && (variable_map_assert__p41__ ) && (variable_map_assert__p43__ ) && (variable_map_assert__p45__ ) && (variable_map_assert__p47__ ) && (variable_map_assert__p48__ ) && (variable_map_assert__p49__ ) }
