# Exercise 10 – Moving Average FIR Filters

This repo shows the 5-point and 9-point Moving Average Filters (FIR).

## Tasks
- Compute frequency response with `freqz`.
- Convert to zero–pole form with `tf2zpk`.
- Plot magnitude responses and pole–zero diagrams.

## How to run
- Open `exercise10_maf.m` in MATLAB.
- Run the script. You will get **two figures**:
  - Fig 1: 5-point MAF (magnitude + pole–zero)
  - Fig 2: 9-point MAF (magnitude + pole–zero)

## Notes
- Moving Average Filters are **FIR** (no feedback; always stable; finite impulse).
- **IIR** filters use feedback (sharper responses with lower order, but stability depends on poles inside unit circle).
