# 4IFIR WIZARD Setup Guide

1. [CPU](#cpu)  
2. [GPU](#gpu)  
3. [RAM](#ram)
4. [Additional Optimizations](#additional-optimizations) 
5. [EMC Profile: 4IFIR Optimized (ECO Mode)](#emc-profile-4ifir-optimized-eco-mode)

***

## Tips Before Setup
* Use **EmuNAND**.
* Make a backup of your game saves.
* Install test games for stability validation (RDR, Zelda TOTK, No Man's Sky).
* Active parameters configured in **4IFIR WIZARD** are stored in the system module `atmosphere/kips/loader.kip`.
* If the console fails to boot after changing any parameter:
  * In-wizard safety rollback: **`Service → Restore Factory Defaults`** or **`Service → Backup manager`** (applied by **holding `(A)`**).
  * If normal boot fails: hold `(VOL-)` during power-on, select **Stock (semi-stock)** in Hekate, open Ultrahand (`L + R + ▲`) → Packages (`►`) → **4IFIR Wizard**, and revert the parameter.
  * Alternatively, launch **KipTool** (`Hekate → Payloads → kiptool.bin → KIP Wizard`) to edit parameters in `loader.kip` directly from bootloader.
  * Backup profiles are stored by hardware revision: `/atmosphere/kips/.bak/mariko/` (for Mariko) and `/atmosphere/kips/.bak/erista/` (for Erista). Clean `loader.kip` can always be extracted from the 4IFIR distribution zip.
* Launch HB Menu in application mode (hold **R** while opening any game) for full RAM access.
* Run **MicroMemBench** for initial stability checks.
* For docked stress testing in handheld, use **ReverseNX-RT** via Ultrahand. 15–20 minutes of active gameplay is sufficient per test stage.

***

## 4IFIR WIZARD

### CPU
> All items in this section should be tested with the memory profile set to **EMC: 4IFIR Optimized S**.

CPU calibration is independent of GPU and RAM. The two primary settings to adjust are **Min Voltage** and **Low MHz Undervolt**. Parameters defaulted to *eBamatic* provide optimal automatic scaling.  
> Detailed step-by-step CPU & GPU undervolting guide: [**Undervolting Guide**](WIZARD_GUIDE_UV.md).

***

**Navigate to Advanced → CPU:**

* **Min Voltage (CPUv)** — Lower voltage floor for the processor:  
  Lower voltage reduces power consumption. Lower it by one step (e.g. from 620 to 590 mV), reboot via **Reboot the console**, and test in games setting minimum CPU clocks via:  
  `Ultrahand → 4IFIR → Temporary overrides → CPU` *(persists until reboot)*.  
  Continue lowering until the silicon stability limit is found, then lock in the last stable value.
* **Low MHz Undervolt** — Undervolting for frequencies <= 15xx MHz:  
  Increase the level by one step, test in games at clocks under 15xx MHz with Governor disabled:  
  `Ultrahand → 4IFIR → Edit app Profile → CPU Freq Governor → Off`.  
  Increase step-by-step until stable.
* **Max Voltage (CPU Maximum Voltage)** — Upper CPU voltage ceiling:  
  Recommended to leave at **eBamatic**.
* **dCPUv** — Voltage offset across the 12xx–18xx MHz range:  
  Recommended to leave at **eBamatic**. Before manual adjustments, create a backup in `Service → Backup manager`.
* **Boost Clock** — Loading screen CPU clock boost (default is eBamatic).
* **High MHz Undervolt** — Undervolting for high CPU clocks (> 15xx MHz, default eBamatic).
* **Speed Shift** — Power reduction for secondary SoC components (default eBamatic).

***

### GPU
> Test with **EMC: 4IFIR Optimized S** enabled. Disable **GPU Freq Governor** during tests.

GPU instability appears as texture artifacts, flashing dots, or orange screen crashes.

***

**Navigate to Advanced → GPU:**

* **Min Voltage (GPUv)** — Minimum operational voltage for the GPU core:  
  1. Increase the stage (lowering voltage) by one step and reboot.  
  2. Launch a GPU-intensive game (RDR, No Man's Sky, Hogwarts Legacy).  
  3. Disable GPU Governor: `Ultrahand → 4IFIR → Edit app Profile → GPU Freq Governor → Off`.  
  4. Lock GPU clock: `Ultrahand → 4IFIR → Temporary overrides → GPU → 460 MHz`.  
  5. Monitor live voltage via `InfoNX` or `Status Monitor PRO`.  
  6. Test for 10 minutes. If no artifacts occur, proceed to optimize further.
* **Undervolt Mode (GPU Eco Mode)** — Global undervolt level across the full GPU clock curve:  
  Tune and test on higher GPU frequencies (768 MHz and above).
* **vMin Offset (`pMeh 19`) & vMin Offset (max RAM) (`pMeh 21`)**:  
  Fine-tuning of GPU vMin in 5 mV increments:  
  * `vMin Offset` — for Optimized E memory stage.  
  * `vMin Offset (max RAM)` — for Optimized S memory stage at peak clocks.

***

### RAM
Usage scenarios:
1. **Eco Mode (Optimized E):** Energy-efficient gaming up to 1600–2000 MHz.
2. **Balanced Mode:** 2100–2400 MHz for stable 60 FPS in handheld mode.
3. **Max Performance (Optimized S):** 2400–3000 MHz (docked and demanding games).
> Detailed memory overclocking guide: [**RAM Tuning Guide**](WIZARD_GUIDE_RAM.md).

***

**Navigate to Advanced → RAM:**

* **Frequency** — Target clock exposed in `4IFIR Nextgen` overlay under `4IFIR Optimized S`.  
  Reboot to apply, then activate temporarily via:  
  `Ultrahand → 4IFIR → Temporary overrides → Memory → 4IFIR Optimized S`.  
  Test in **MicroMemBench** and games.
* **EMC Balance (eBal)** — Curated power/performance balance:  
  * `0 (eBamatic)` — Automatic dynamic calibration.  
  * `1` — Maximum throughput (requires higher voltages).  
  * `2` — Optimal power efficiency for clocks > 2000 MHz.  
  * `3` — Default baseline profile.  
  * `4` — Extreme docked clocks.
* **Vddq / Vdd2** — Memory rail voltages (lower values reduce heat and power draw).
* **EBA-Shift** — Mode offset (value 2 allows raising timing 8 `tWTP`).
* **EMC DVB Mode** — Internal adaptive memory controller logic.
* **Core Timings** — Base memory timing registers in KIP.  
  For real-time on-the-fly timing adjustments, use [**EMC Magician**](EMC_MAGICIAN.md).

***

### Additional Optimizations

* **eBAMATIC Stage** (in the Wizard main menu) — Aggressiveness of adaptive memory tuning. Increase one step at a time and test stability in MemBench and games.
* **4ekate** — Hardware memory bus optimization in Hekate (~200 MB/s bandwidth boost). Enabled in 4IFIR 2.7 by default. If your console has issues waking from sleep, revert 4ekate mode to ST1.

***

### EMC Profile: 4IFIR Optimized (ECO Mode)

Settings for the energy-efficient profile are in **`Advanced → RAM → Optimized Mode (1600 MHz)`**:
* **Efficiency Stages (`sMeh 8`)** — Efficiency stages for stage E. Value **`2`** provides a substantial performance boost. (Revert to `0` if screen striping appears in dock).
* **vMin Offset (`pMeh 19`)** — Fine GPU vMin offset for stage E.
* **VDDQ-VDD2 Voltage (`pMeh 20`)** — VDDQ/VDD2 voltage rail levels for stage E.
* **Optimized Target (`sMeh 16`)** — Base target clock for stage E (1600 MHz or 1331 MHz).
