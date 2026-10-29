# Basic 4IFIR WIZARD Setup Guide

1. [CPU](#cpu)  
2. [GPU](#gpu)  
3. [Additional Optimizations](#additional-optimizations) 

*** 

## Tips Before Setup
* Use **EmuNAND**.
* Make a backup of your game saves.
* Install test games for stability validation (RDR, Zelda: Tears of the Kingdom, No Man's Sky).
* Active parameters configured in **4IFIR WIZARD** are stored in the system module `atmosphere/kips/loader.kip`.
* If the console fails to boot after altering a setting:
  * In-wizard safety rollback: **`Service → Restore Factory Defaults`** or apply a saved working profile via **`Service → Backup manager`** (applied by **holding `(A)`**).
  * Boot into **Stock (semi-stock)** via Hekate and revert the setting in 4IFIR Wizard.
  * Or use **KipTool** (`Hekate → Payloads → kiptool.bin → KIP Wizard`) to edit parameters in `loader.kip` directly from bootloader.
  * Backup profiles are stored by hardware revision: `/atmosphere/kips/.bak/mariko/` (for Mariko) and `/atmosphere/kips/.bak/erista/` (for Erista).
* Run **MicroMemBench** for initial RAM stability checks.
* For maximal load testing, switch the console to docked mode using **ReverseNX-RT** in Ultrahand. 10–15 minutes of active gameplay is sufficient per test.

***

## Configuration via 4IFIR WIZARD

Open the **Ultrahand** overlay by pressing **`(L) + (R) + (▲)`**, press **`(►)`** to navigate to the packages section, and select **4IFIR Wizard**.

### CPU
> All tests in this section should be conducted with the active memory profile **EMC: 4IFIR Optimized S**.  
> If a parameter is pushed too far ("over-twisted"), the console will freeze during boot. In that case, boot into Semi-Stock or KipTool and roll back the setting by one step.

**Navigate to Advanced → CPU:**

* **Min Voltage (CPUv)** — Lower voltage floor for the processor.  
  *(Lower voltage / higher stage results in reduced power consumption)*  
1. Default is set to **ECO ST1** (or the safe factory baseline).  
2. Increase it by one step (**ST 2** or lower the voltage by one step).  
3. Reboot the system via **Reboot the console** at the bottom of the menu and run tests.  
  > Conduct tests in games while locking minimum CPU frequency via:  
  > **Ultrahand → 4IFIR → Temporary overrides → CPU** *(settings persist until reboot)*.  
4. If the system remains stable, optimize further.  
5. Lock in the last stable value.

* **Low MHz Undervolt** — Undervolting level for CPU frequencies <= 15xx MHz.  
  *(Higher level reduces power draw on low clocks more aggressively)*  
1. Default is set to **0**.  
2. Increase the value by one step (**Level 1**).  
3. Reboot the system and test in-game at frequencies below 1500 MHz (with CPU Governor disabled in Edit app Profile).  
4. If no freezes occur, continue increasing the level until the stability boundary is reached.

***

### GPU
> Conduct all tests with the active memory profile **EMC: 4IFIR Optimized S**.

**Navigate to Advanced → GPU:**

* **Min Voltage (GPUv)** — Minimum operational voltage threshold for the GPU core.  
  *(Higher stage / lower voltage results in better energy efficiency)*  
1. Default is set to the factory baseline.  
2. Increase the value by one step and reboot.  
3. Launch a demanding game (RDR, Hogwarts Legacy, Zelda TOTK).  
4. Disable GPU Governor: **Ultrahand → 4IFIR → Edit app Profile → GPU Freq Governor → Off**.  
5. Lock GPU clock: **Ultrahand → 4IFIR → Temporary overrides → GPU → 691 MHz**.  
6. Check stability for 10 minutes. In case of crashes or visual artifacts, revert one step.

* **Undervolt Mode (GPU Eco Mode)** — Undervolt curve level across all GPU clock states.  
  > Tuning is similar to the previous item, but testing should be conducted at high GPU frequencies (above 768 MHz).

***

### Additional Optimizations

* **eBAMATIC Stage** (located directly on the Wizard main menu) — Aggressiveness of adaptive memory tuning:  
  Increment the value one step at a time and test stability in MicroMemBench and games.
* **4ekate:**  
  Enabling ST2 in Hekate provides an additional memory bandwidth boost of ~200 MB/s. In 4IFIR 2.7, 4ekate optimizations are included by default. If your console has issues waking from sleep, revert 4ekate mode to ST1.
