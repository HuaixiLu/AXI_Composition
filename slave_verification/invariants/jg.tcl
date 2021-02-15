analyze -sva wrapper.v
elaborate -top wrapper
clock clk
reset rst
assert { (invariant_assert__p0__ ) && (invariant_assert__p1__ ) && (invariant_assert__p2__ ) }
