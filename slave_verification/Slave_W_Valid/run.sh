#!/bin/bash
source /ibuild/ilang-env/bin/activate
/ibuild/CoSA/CoSA.py --problem problem.txt --solver-name=z3 --vcd 
