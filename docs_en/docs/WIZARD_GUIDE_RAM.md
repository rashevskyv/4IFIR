# RAM Tuning Guide in 4IFIR WIZARD

1. [RAM](#ram)
2. [Additional Optimizations](#additional-optimizations) 
3. [EMC Profile: 4IFIR Optimized (ECO Mode)](#emc-profile-4ifir-optimized-eco-mode)

***
## Tips Before Setup
* Use **EmuNAND**.
* Make a backup of your game saves.
* Install test games (RDR, Zelda TOTK).
* Current settings configured in **4IFIR WIZARD** are stored in `/atmosphere/kips/loader.kip`.
* If the console fails to boot after changing any setting:
  * Use the built-in safe reset **`Service → Restore Factory Defaults`** or restore from **`Service → Backup manager`** (hold **`A`** to apply).
  * Boot into **Stock (semi-stock)** via Hekate and revert settings in 4IFIR Wizard.
  * Or use **KipTool** (`Hekate → Payloads → kiptool.bin → KIP Wizard`).
  * Backup profile snapshots are located at: `/atmosphere/kips/.bak/mariko/` (for Mariko) and `/atmosphere/kips/.bak/erista/` (for Erista). A clean `loader.kip` can always be extracted from the 4IFIR distribution zip.
* Launch HB Menu in application mode (by holding **`R`** while launching any game).
* For initial stability checks, run **MicroMemBench**.
* For heavy load testing, use the **Ultracam benchmark in Zelda TOTK** or Red Dead Redemption in docked mode via **ReverseNX-RT**. 15–20 minutes of active gameplay is sufficient per test.

***

### RAM

Usage Scenarios:
1. **Eco Mode (Optimized E):** For 30–60 FPS with minimal heat and power consumption (clocks 1600–2000 MHz).
2. **Balanced Mode:** 2100–2400 MHz — optimal for portable play in most games.
3. **Max Performance (Optimized S):** 2400–3000 MHz (for demanding titles and docked mode).

***

**Navigate to Advanced → RAM:**

* **Frequency** — Target RAM clock speed available in the `4IFIR Nextgen → 4IFIR Optimized S` profile.  
> 1. Select the desired clock frequency and reboot via `Reboot the console`.  
> 2. After boot, enable memory overclocking:  
> `Ultrahand → 4IFIR → Temporary overrides → Memory → 4IFIR Optimized S`.  
> 3. Verify frequency in the overlay header under `MEM: xxxx MHz`.  
> 4. Test in **MicroMemBench** and games (10–15 minutes). If the console freezes, reduce clock speed by one step.
* **EMC Balance (eBal)** — Balance between throughput and power consumption:  
  * `0 (eBamatic)` — Automatic smart dynamic selection.  
  * `1` — Maximum bus throughput (requires higher voltages).  
  * `2` — Power-efficient profile (stable on most consoles at frequencies above 2000 MHz).  
  * `3` — Default baseline profile.  
  * `4` — High-clock profile designed for docked play.
* **Vddq** — Memory chip supply voltage:  
  > Reduce one step at a time and test stability in games. Setting this too low risks filesystem corruption.
* **Vdd2** — Upper limit for memory controller voltage:  
  > Tune after calibrating timings, as subtimings are sensitive to Vdd2.
* **EBA-Shift** — Fine adjustment for eBal modes (setting to 2 allows increasing timing 8 `tWTP`).
* **EMC DVB Mode** — Internal adaptive memory controller voltage scaling (recommended to leave at eBamatic).
* **Core Timings (1–8)** — Manual base timing registers in KIP.  
  > For real-time on-the-fly timing adjustments, use the [**EMC Magician**](EMC_MAGICIAN.md) overlay.

***

### Additional Optimizations

* **eBAMATIC Stage** (located directly on the Wizard main menu) — Aggressiveness of adaptive memory tuning. Increase by one step and test stability.
* **4ekate** — Memory controller hardware optimization in Hekate (~200 MB/s). Enabled by default in 4IFIR 2.7.

***

### EMC Profile: 4IFIR Optimized (ECO Mode)

Settings for the energy-efficient profile are grouped under **`Advanced → RAM → Optimized Mode (1600 MHz)`**:
* **Efficiency Stages (`sMeh 8`)** — Performance stages for stage E. Setting this to **`2`** provides a substantial speed increase. (If screen tearing/striping occurs in docked mode, revert to `0`).
* **vMin Offset (`pMeh 19`)** — Fine GPU vMin voltage offset tailored for stage E.
* **VDDQ-VDD2 Voltage (`pMeh 20`)** — Rail voltage levels for stage E.
* **Optimized Target (`sMeh 16`)** — Base reference frequency for stage E (1600 MHz or 1331 MHz).
