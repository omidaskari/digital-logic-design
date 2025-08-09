# Digital Logic Design

This repository contains bachelor‑level digital logic design projects implemented in Verilog. The goal is to demonstrate simple combinational circuits and testbenches as might be used in a Computer Engineering curriculum.

## Contents

- **`full_adder.v`** – A single‑bit full adder that computes the sum and carry‑out from two input bits (`a`, `b`) and a carry‑in (`cin`).
- **`adder.v`** – A 4‑bit ripple‑carry adder that instantiates four full adders to add two 4‑bit numbers and propagate the carry.
- **`adder_tb.v`** – A testbench for the 4‑bit adder. It applies several input combinations, toggles the carry‑in, and uses `$display` statements to print the results to the console.

## Simulation

You can simulate these designs with an open‑source Verilog simulator such as [Icarus Verilog](https://iverilog.icarus.com/). Assuming you have Icarus installed, compile and run the testbench with:

```bash
# Compile the design and testbench
iverilog -o adder_tb adder_tb.v adder.v full_adder.v

# Run the simulation
vvp adder_tb
```

The testbench will display a table showing the input values (`a`, `b`, `cin`) and the resulting sum and carry‑out for each test case. Use the waveform viewer of your choice (e.g., GTKWave) if you want to inspect signal transitions.

## Notes

These modules are intentionally simple and are designed for educational purposes. Feel free to extend them with additional functionality, such as parameterized bit widths, subtractors, or an arithmetic logic unit (ALU).
