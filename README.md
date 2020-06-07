# Booth-Multiplier

This is something I worked on while learning to code in Verilog.
The steps to implement Booth Algorithm are:
1.Inspect two bits of multiplier (Q1, Q-1).
  a.If bits are same (00 or 11), shift partial product.
  b.If bits are 01, add and then shift.
  c.If bits are 10, subtract and shift.
2.Q-1 is assumed to be 0.

This method significantly reduces the number of additions and subtractions

There are total 6 modules in data path:
1. Booth
2. Shift Register
3. Parallel In Parallel Out Register
4. D flip flop
5. Arithmetic and Logic Unit
7. Counter

There is 1 module in control path i.e. Controller.
