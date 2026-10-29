# 4IFIR WIZARD Undervolting Guide

1. [CPU](#cpu)  
2. [GPU](#gpu)  
3. [Fine vMin Offsets and Custom Voltage Table](#fine-vmin-offsets-and-custom-voltage-table)

***

## Tips Before Setup
* Use **EmuNAND**.
* Make a backup of your game saves.
* Install test games for stability validation (RDR, No Man's Sky, Hogwarts Legacy).
* Active settings are stored in `/atmosphere/kips/loader.kip`.
* If the console freezes during startup after changing a setting:
  * In-wizard safety rollback: **`Service → Restore Factory Defaults`** or **`Service → Backup manager`** (hold **`A`** to apply).
  * Boot into **Stock (semi-stock)** via Hekate and revert the setting in 4IFIR Wizard.
  * Or use **KipTool** (`Hekate → Payloads → kiptool.bin → KIP Wizard`).
  * Backup files are stored at: `/atmosphere/kips/.bak/mariko/` (for Mariko) and `/atmosphere/kips/.bak/erista/` (for Erista).
* Launch HB Menu with **`R`** held on any game title for full RAM access.
* Run MicroMemBench and demanding games for 15–20 minutes to verify stability.

***

## CPU
> Conduct all tests in this section with the memory profile set to **EMC: 4IFIR Optimized S**.  
> During tests, **CPU Freq Governor** must be disabled:  
> `Ultrahand → 4IFIR → Edit app Profile → CPU Freq Governor → Off`.

It is recommended to start with CPU tuning because the processor is independent of GPU and memory clocks.

***

**Navigate to Advanced → CPU:**

* **Min Voltage (CPUv)** — Lower voltage floor for the processor.  
  *(Lower voltage results in reduced heat and power consumption)*  
1. Set the value one step lower than safe baseline (e.g. 600 mV).  
2. Reboot the system via **Reboot the console**.  
3. Conduct a 5–10 minute in-game test at minimum CPU clock:  
   `Ultrahand → 4IFIR → Temporary overrides → CPU`.  
4. If stable, lower the voltage further until the hardware limit is reached.  
5. Lock in the last stable value.
* **Low MHz Undervolt** — Undervolting level for CPU clocks <= 15xx MHz:  
1. Increase the **Level** by one step.  
2. Reboot and test in games at clocks below 1500 MHz.  
3. If stable, continue raising the level until the stability boundary is found.
* **High MHz Undervolt** — Undervolting for CPU clocks above 15xx MHz:  
1. Increase by one step.  
2. Reboot and test in CPU-heavy scenes at maximum clock (`4IFIR Maximized`).
* **Max Voltage (CPU Maximum Voltage)** — Upper CPU voltage limit:  
  Recommended to leave at **eBamatic** or decrease one step at a time with rigorous testing.
* **dCPUv** — Voltage offset across the 12xx–18xx MHz range:  
  Recommended to leave at **eBamatic**. Proceed with caution; make a backup beforehand in `Service → Backup manager`.
* **Speed Shift** — Energy efficiency for secondary SoC rails:  
  Increase the power saving level one step at a time and check system responsiveness.

***

## GPU
> Conduct all tests with **EMC: 4IFIR Optimized S** enabled.  
> **GPU Freq Governor** must be disabled during testing:  
> `Ultrahand → 4IFIR → Edit app Profile → GPU Freq Governor → Off`.

**Preparing for GPU Calibration:**
1. Launch a GPU-intensive game (RDR, Hogwarts Legacy, No Man's Sky).  
2. Lock GPU clock: `Ultrahand → 4IFIR → Temporary overrides → GPU → 460 MHz`.  
3. Open `Ultrahand → 4IFIR → Miscellaneous` and record the current **GPU volt** readout.  
4. Gradually increase GPU clock step-by-step while watching the voltage in Miscellaneous until the voltage begins to climb. That frequency is your maximum clock at minimum voltage.

***

**Navigate to Advanced → GPU:**

* **Min Voltage (GPUv)** — Minimum operational voltage for the GPU core:  
1. Increase the stage (lowering voltage) by one step and reboot.  
2. Launch the game at the identified baseline frequency.  
3. Check stability for 10 minutes. If artifacts or crashes occur, revert one step.
* **Undervolt Mode (GPU Eco Mode)** — Undervolt level across the entire GPU frequency curve:  
  Testing is conducted similarly, but on higher GPU frequencies (768 MHz and above).

***

### Fine vMin Offsets and Custom Voltage Table

Fine vMin offsets are available directly in **`Advanced → GPU`** (and also under `Advanced → Micro-Enhance Logic`):

* **vMin Offset (`pMeh 19`)** — Automatic lower voltage floor offset for **EMC: 4IFIR Optimized** (5 mV steps).  
* **vMin Offset (max RAM) (`pMeh 21`)** — Voltage floor offset for **EMC: 4IFIR Optimized S** at maximum RAM clock (5 mV steps).

Live GPU voltage readouts can be tracked using **InfoNX** or **Status Monitor PRO**.

### Manual GPU Voltage Table Tuning

4IFIR Wizard allows direct per-frequency voltage calibration:
1. Navigate to **`Advanced → GPU → GPU Voltage Table`**.
2. Select the specific GPU frequency.
3. Adjust the mV value.
4. Reboot via **Reboot the console** and test stability in-game with locked GPU clock.
