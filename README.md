# Least Frequently Used Module

A SystemVerilog description on a LFU

## How a LFU works

It counts the times a input was used and then, after a limit, when a new input is pressed it erases (in the case of this description, it becomes 0) the least used and put the new one in it.

## PINs in this description

- clk : Clock
- rst : Reset
- b1, b2, b3, b4, b5 : The inputs, here represented as 5 buttons
- l1, l2, l3, l4, l5 : LEDs to show if a input is active or not, if a LED is off then it means that it is not active

