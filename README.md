# 4x1 Multiplexer: RTL-to-GDSII with OpenLane

This repository contains the RTL-to-GDSII flow for a 4x1 Multiplexer designed using OpenLane and SkyWater 130nm PDK. The project demonstrates synthesis, place-and-route, timing analysis, and verification (DRC/LVS) for a compact VLSI design.

## Project Overview
- **Design**: 4x1 Multiplexer (structural Verilog with NOT, AND, OR gates).
- **Tools**: OpenLane 1.1.1, SkyWater 130nm PDK.
- **Key Metrics**:
  - **Area**: ~50-100 µm² (~5-10 cells, awaiting confirmation).
  - **Delay**: ~0.7-1.5 ns (post-routing, awaiting confirmation).
  - **Power**: ~µW range (awaiting confirmation).
  - **DRC/LVS**: Clean (no violations).
- **Run**: `RUN_2025.05.05_06.42.46`.

## Directory Structure
- `src/`: Verilog RTL (`mux4x1.v`).
- `config.json`: OpenLane configuration.
- `results/final/gds/`: GDSII layout (`mux4x1.gds`).
- `reports/`: Synthesis, timing, DRC, LVS, and wire length reports.
- `screenshots/`: GDSII layout visualization (`mux4x1_layout.png`).

## How to Use
1. **Prerequisites**:
   - Install [OpenLane](https://openlane.readthedocs.io/en/latest/getting_started/installation/index.html) and SkyWater 130nm PDK via Volare.
   - Ubuntu 20.04+ with Docker.
2. **Clone Repository**:
   ```bash
   git clone https://github.com/AmitVLSI-PD/mux4x1-OpenLane.git
   cd mux4x1-OpenLane