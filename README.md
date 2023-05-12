# Least Frequently Used Module

A SystemVerilog description on a LFU

## States

```mermaid
stateDiagram-v2
	q0 : Initial State
	q1 : Add 1 to counter

	[*] --> q0
	q0 --> q1 : input
	q1 --> q0 : counter_updated
```

## How a LFU works

It counts the times a input was used and then, after a limit, when a new input is pressed it erases (in the case of this description, it becomes 0) the least used and put the new one in it.

## PINs in this description

- clk : Clock
- rst : Reset
- b1, b2, b3, b4, b5 : The inputs, here represented as 5 buttons
- l1, l2, l3, l4, l5 : LEDs to show if a input is active or not, if a LED is off then it means that it is not active

# IMPORTANT IF YOU WANT TO TEST!

Because this LFU waits for 1 second in a 50MHz clock, you will have to wait quite some time, to prevent this you can change the constant variable used in the file timer.sv

- Use the constant TIME_50MHz for the 1 sec time
- Use the constant TIME_SIM for 5 clock cycles (the used for simulation)
