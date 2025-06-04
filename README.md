# 8_BIT_SHIFTER_RTL_TO_GDS

##  Abstract

This README provides a complete overview of the backend ASIC design flow for an 8-bit bidirectional shifter using Synopsys EDA tools. It integrates RTL design, simulation, logic synthesis, physical implementation, signoff checks, and GDSII generation. The goal is to understand the methodology of achieving a timing-closed, power-optimized, and fabrication-ready layout from Verilog RTL using the industry-standard SAED 32nm library.


##  Table of Contents

- [Introduction](#1-introduction)
- [Problem Statement](#2-problem-statement)
- [RTL Design and Verification](#3-rtl-design-and-verification)
- [Logic Synthesis](#4-logic-synthesis)
- [Physical Implementation](#5-physical-implementation)
  - [Floorplanning](#51-floorplanning)
  - [Power Planning](#52-power-planning)
  - [Placement](#53-placement)
  - [Clock Tree Synthesis](#54-clock-tree-synthesis)
  - [Routing](#55-routing)
- [Physical Verification (DRC/LVS)](#6-physical-verification-drclvs)
- [Static Timing Analysis (STA)](#7-static-timing-analysis-sta)
- [GDSII Generation](#8-gdsii-generation)
- [Key Scripts and File Structure](#9-key-scripts-and-file-structure)
- [Summary of Results](#10-summary-of-results)
- [Learning and Outcomes](#11-learning-and-outcomes)


## 1. Introduction

This project demonstrates an RTL-to-GDSII backend implementation of an 8-bit shifter. The design flow includes RTL design, synthesis with Design Compiler, physical design using IC Compiler II, and signoff analysis using PrimeTime. The final layout is exported as a GDSII file for fabrication.

**Technology Node**: SAED 32nm  
**Library**: `saed32rvt_tt0p78vn40c.db`


## 2. Problem Statement

### (a) RTL Design Objective

- 8-bit logical shifter with:
  - Input: `data_in[7:0]`
  - Output: `data_out[7:0]`
  - Control signals: `dir` (shift direction), `shift_amt[2:0]` (shift amount)
- Synchronous design, synthesizable Verilog.

### (b) Physical Design Objective

- Use Synopsys flow to generate GDSII.
- Report:
  - Design Area
  - Max Clock Frequency (positive slack < 1 ns)
  - Total Power Consumption


## 3. RTL Design and Verification

### 3.1 Shifter Design Specification

```verilog
module shifter (
  input Clock,
  input [7:0] data_in,
  input [2:0] shift_amt,
  input dir,
  output reg [7:0] data_out
);
  reg [7:0] shifted;
  always @(*) begin
    if (dir == 1'b0)
      shifted = data_in << shift_amt;
    else
      shifted = data_in >> shift_amt;
  end

  always @(posedge Clock) begin
    data_out <= shifted;
  end
endmodule
```

### 3.2 RTL Verification

- Testbench: `shifter_tb.v`
- Tool: Synopsys VCS
- Commands:

```bash
vcs -full64 shifter_rtl.v shifter_tb.v -debug_access+all -lca -kdb
./simv
verdi -ssf novas.fsdb -nologo
```


## 4. Logic Synthesis

- Tool: Synopsys Design Compiler
- Library: `saed32rvt_tt0p78vn40c.db`
- Script: `run_dc.tcl`
- Constraint File: `shifter.sdc`

### Results:
- Slack: 0.25 ns
- Power: 15.27 µW
- Leaf Cells: 32 (preliminary)


## 5. Physical Implementation

### 5.1 Floorplanning

- Script: `floorplan.tcl`
- Shape: L
- Offset: 2
- Post-Floorplan Results:
  - Slack: 1.21 ns
  - Leaf Cells: 123
  - Power: 317 µW

### 5.2 Power Planning

- Script: `power_planning.tcl`
- No changes made from floorplanning metrics.

### 5.3 Placement

- Script: `placement.tcl`
- Block: `shifter_placement`
- Slack: 1.23 ns
- Power: 328 µW

### 5.4 Clock Tree Synthesis (CTS)

- Script: `clock.tcl`
- Block: `shifter_cts_CCD`
- Slack: 1.23 ns
- Power: 351 µW

### 5.5 Routing

- Script: `route.tcl`
- Post-Routing Results:
  - Slack: 1.23 ns
  - Power: 349 µW


## 6. Physical Verification (DRC/LVS)

- Tools: IC Validator (implied)
- Checks:
  - DRC (Design Rule Check)
  - LVS (Layout vs Schematic)
  - Antenna Rule Check


## 7. Static Timing Analysis (STA)

- Tool: Synopsys PrimeTime
- Script: `run_p1.tcl`
- Slack: +0.4083 ns
- Clock Period: 2.5 ns
- Frequency: 400 MHz


## 8. GDSII Generation

- Final GDSII file generated post-routing and verification.
- File: `shifter.gds`


## 9. Key Scripts and File Structure

```bash
RTL2GDSII_Project/
├── RTL/
│   └── shifter_rtl.v
├── TESTBENCH/
│   └── shifter_tb.v
├── CONSTRAINTS/
│   └── shifter.sdc
├── DC/
│   ├── run_dc.tcl
│   └── results/shifter.mapped.v
├── ICC2/
│   └── scripts/
│       ├── floorplan.tcl
│       ├── power_planning.tcl
│       ├── placement.tcl
│       ├── clock.tcl
│       └── route.tcl
├── PT/
│   └── run_p1.tcl
├── LIB/
│   └── saed32rvt_tt0p78vn40c.db
├── RESULTS/
│   ├── shifter.routed.v
│   ├── shifter.routed.sdc
│   ├── shifter.spef
│   └── shifter.gds
```


## 10. Summary of Results

| Metric             | Value              |
|--------------------|--------------------|
| Frequency          | 400 MHz            |
| Slack              | +0.4083 ns         |
| Total Power        | 349 µW             |
| Leaf Cells         | 123                |
| Buffer Cells       | 32                 |
| GDSII Generated    | ✅ Yes             |


## 11. Learning and Outcomes

- Mastered RTL to GDSII flow using Synopsys tools.
- Learned debugging of TCL scripts and tool constraints.
- Gained hands-on experience in power, area, and timing optimization.
- Developed reusable scripting skills for VLSI projects.
