# ELL316 Assignment 1.pdf


The first assignment was based on the simple chain of inverters.
Starting from a minimum sized inverter, we need to drive a 1024x sized inverter. Evaluate different fan-out ratios to figure out which gives the best performance.
With ngspice (or LTspice) simulations we need to come up with a graph with x-axis as N(Number of inverters in the chain) and y-axis as the delay.(Using TSMC 0.18um Technology)

# ELL316 Assignment 2.pdf

The second assignment was also based on the simple chain of inverters.
Starting from a minimum sized inverter, we need to drive a 1024x sized inverter. Evaluate different fan-out ratios to figure out which gives the best performance.
With ngspice (or LTspice) simulations we need to come up with a graph with x-axis as N(Number of inverters in the chain) and y-axis as the Power Consumed.(Using TSMC 0.18um Technology)
With an input before the first inverter has a rise and fall time of 10 ps, the pulse width is 1 ns and the period is 2 ns.


![invchain](https://user-images.githubusercontent.com/119739544/213428964-612fe5d2-b320-4e39-9078-742fa35128f3.svg)
Image for Assignment 1 and 2


# ELL316 Assignment 3.pdf

Optimized the following chain of logic for delay.

## $\overline{Y} = (\overline{C}+\overline{B})(\overline{A}B+A\overline{B})$

Instructions for the logic.
1. You will need to use inverters to generate complements of A, B.
2. You will need a two-input NAND and a two-input XOR to generate the two terms.
3. Lastly you will need another two-input NAND.

Design and size the gates such that your delay is minimum. The final load of the entire logic circuit, at Y, is a minimum sized inverter.
Use the TSMC18 models. The minimum sized inverter is 0.2um/0.18um for the pMOS, 0.6um/0.18um for the nMOS.
