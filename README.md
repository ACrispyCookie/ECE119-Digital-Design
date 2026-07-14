# ECE119 — Digital Design

Coursework repository for ECE119 Digital Design. It contains Multisim circuit files and Verilog exercises covering basic logic gates, Boolean algebra, combinational circuits, adders/subtractors, latches, flip-flops, and midterm practice designs.

## Contents

| Folder | Description |
|---|---|
| `LAB01/` | Introductory Multisim circuits for basic logic gates. |
| `LAB02/` | Boolean theorem and textbook-figure circuits, plus a small Verilog implementation. |
| `LAB03/` | Product-of-sums / sum-of-products circuit implementations using Boolean expressions, gates, and UDP-style Verilog. |
| `LAB04/` | Combinational logic exercises, NAND-only construction, seven-segment display logic, and Verilog gate-expression examples. |
| `LAB05/` | Half adder, full adder, and 4-bit add/subtract circuit implementations with a Verilog testbench. |
| `LAB08/` | SR/D latch circuits and Verilog D-latch simulation. |
| `LAB09/` | D, T, JK, and master-slave flip-flop exercises with Verilog examples and timing diagrams. |
| `Midterm/` | Midterm practice/exam-style Verilog and Multisim exercises. |

## Requirements

- Multisim or a compatible tool for `.ms14` circuit files
- Icarus Verilog (`iverilog` and `vvp`) for Verilog simulations
- Optional waveform viewer such as GTKWave for `.vcd` files generated locally

## Verilog examples

Compile and run the 4-bit add/subtract testbench:

```bash
cd LAB05
iverilog -g2012 -o /tmp/ece119-addsub t_add_sub_4_bit.v
vvp /tmp/ece119-addsub
```

Compile and run the D-latch testbench:

```bash
cd LAB08
iverilog -g2012 -o /tmp/ece119-dlatch t_D_latch.v
vvp /tmp/ece119-dlatch
```

Compile and run a midterm example:

```bash
iverilog -g2012 -o /tmp/ece119-exam3 Midterm/exam3.v
vvp /tmp/ece119-exam3
```

Some simulations create waveform files such as `.vcd`; those files are generated locally and are intentionally not tracked.
