# 4IFIR Wizard Configurator

**4IFIR Wizard** is an interactive configuration package for the **Ultrahand Overlay**, designed for hardware calibration and tuning of consoles running 4IFIR firmware: CPU/GPU undervolting, frequency boundaries, operating voltages, RAM timings, and eBamatic optimizations.  
Official project repository: **[qret/Ultrahand-4IFIR-Wizard](https://github.com/qret/Ultrahand-4IFIR-Wizard)**.

All modifications are written directly into the kernel module: **`/atmosphere/kips/loader.kip`** (updating the custom configuration segment inside the kip without replacing the system files).

---

### Safety & Crash Recovery

> [!WARNING]
> If testing results in freezes, crashes, visual artifacts, or unexpected console behavior at any stage, the selected parameter value is unstable for your specific SoC silicon. Revert to previous stable values.

If the console fails to boot into Horizon (HOS):

1. **In-Wizard Recovery (if HOS boots):**
   * **`Service → Restore Factory Defaults`** — restores the stock 4IFIR firmware baseline (applied by **holding `(A)`**).
   * **`Service → Backup manager`** — loads and applies a previously saved working backup (applied by **holding `(A)`**).
2. **Semi-Stock Mode:**
   * Hold **`(VOL-)`** during boot to enter the Hekate menu.
   * Select **`Stock (semi-stock)`**. Ultrahand and the Wizard function here too: press **`(L) + (R) + (▲)`**, navigate to packages (`►`), open **4IFIR Wizard**, and revert the offending setting.
3. **Recovery via KipTool (in Hekate):**
   * In Hekate, launch **`Payloads → kiptool.bin → KIP Wizard`**.
   * Locate the setting changed most recently (by number or name), revert its value, choose **Apply changes**, and reboot.
4. **Manual Backup Restoration from SD Card:**
   * Backups are organized by console SoC revision:  
     `/atmosphere/kips/.bak/mariko/` (for Mariko / V2 / OLED / Lite)  
     `/atmosphere/kips/.bak/erista/` (for Erista / V1)
   * You can also restore a stock `loader.kip` from the official 4IFIR release archive into `/atmosphere/kips/loader.kip`.

---

## File and Path Layout on SD Card

* **Wizard Package Location:** `switch/.packages/4IFIR Wizard/`
* **Ultrahand Engine Configuration:**
  * `/config/ultrahand/config.ini` — hotkeys, theme styling, tab order
  * `/config/ultrahand/overlays.ini` — overlay ordering and visibility
  * `/config/ultrahand/downloads/4IFIR-Wizard.zip` — temporary directory for in-app updates
* **4IFIR Overclock & Timing Settings:**
  * `/config/4IFIR/config.ini` — overclock profiles and overlay settings
  * `/config/4IFIR/emc_timings.ini` — live RAM timings and voltages managed by EMC Magician
* **Kernel Module & Backups:**
  * `/atmosphere/kips/loader.kip` — active bootloader KIP module
  * `/atmosphere/kips/.bak/mariko/*.ini` — Mariko backup snapshots
  * `/atmosphere/kips/.bak/erista/*.ini` — Erista backup snapshots
  * `/atmosphere/kips/kip-json/*.json` — legacy JSON profiles (used by the import tool)

> [!IMPORTANT]
> **When migrating from older releases, remove obsolete directories from your SD card:**
> * `config\uberhand\`
> * `switch\.packages\4IFIR Wizard\` (legacy folder)
> * `switch\.packages\config.ini`

---

## Launch & Navigation

Open the **Ultrahand Overlay** by pressing **`(L) + (R) + (▲)`** (or your hotkey configured in `/config/ultrahand/config.ini`), press **`(►)` (Right)** to navigate to the **Packages** menu, and select **4IFIR Wizard**.

Context help is available via **`🅨 Help`** at the bottom of the screen for parameters that support it.

---

## Ultrahand 4IFIR Wizard Menu Structure

### 1. `eBAMATIC Stage`
Top-level selector for adaptive memory optimization:
* Automatically selects optimal RAM parameters for active clocks. Higher stages represent more aggressive optimizations. (Mirrors `pMeh 18 eBAMATIC ST`).

---

### 2. `Advanced`
Deep hardware tuning across individual subsystems:

#### **CPU**
* **Boost Clock** — Target clock frequency during game loading screens.
* **Min Voltage (CPUv)** — Lower voltage floor for the CPU.
* **Max Voltage (CPU VMAX)** — Upper voltage ceiling for the CPU.
* **Voltage Limit** — Absolute hardware voltage cap.
* **dCPUv** — Fine voltage adjustment across the 12xx–18xx MHz range.
* **Low MHz Undervolt** — Undervolt profile for CPU clocks <= 15xx MHz.
* **High MHz Undervolt** — Undervolt profile for CPU clocks > 15xx MHz.
* **Speed Shift** — Secondary SoC component power reduction (higher values reduce overall system consumption).

#### **GPU**
* **Undervolt Mode (GPU Eco Mode)** — Global undervolt curve level across all GPU clock states.
* **Min Voltage (GPUv)** — Minimum operational voltage threshold for the GPU core.
* **Max Voltage (GPU Overvolt)** — Upper voltage threshold for the GPU core.
* **vMin Offset** — Voltage offset for the Optimized E memory stage (mirrors `pMeh 19 vMINetune ST`, 5 mV steps).
* **vMin Offset (max RAM)** — Voltage offset for the Optimized S memory stage at maximum frequency (mirrors `pMeh 21 gVMINDick`, 5 mV steps).
* **GPU Voltage Table** — Direct per-frequency voltage table editing.

#### **RAM**
* **Frequency** — Target memory clock frequency exposed in `4IFIR Nextgen` overlay under `4IFIR Optimized S`.
* **EMC Balance (eBal 0–4)** — Curated power/performance profiles:
  * `0 (eBamatic)` — Dynamic adaptive tuning.
  * `1` — Maximum throughput (requires higher RAM voltage rails).
  * `2` — Power-efficient profile (stable on most consoles).
  * `3` — Default baseline profile.
  * `4` — High-clock profile designed for docked gaming.
* **EBA-Shift** — Fine-tuning offset for eBal modes (setting to 2 allows raising the 8th timing `tWTP`).
* **Vddq** — Memory chip rail voltage (lower values decrease power draw and temperatures).
* **Vdd2** — Maximum memory controller voltage rail.
* **EMC DVB Mode** — Internal adaptive memory controller voltage mechanism.
* **Optimized Mode (1600 MHz)** — Submenu for the Optimized E profile:
  * **Optimized Target** — Base clock for stage E: 1600 MHz or 1331 MHz (mirrors `sMeh 16 SYK-LOH`).
  * **VDDQ / VDD2** — Exact voltages for stage E in `/config/4IFIR/emc_timings.ini`.
  * **VDDQ-VDD2 Voltage** — Voltage level for stage E (mirrors `pMeh 20 rVDDick`).
  * **Efficiency Stages** — Performance stages for stage E (mirrors `sMeh 8 E-Boost`).
* **Core Timings (1–8)** — Granular adjustments for primary RAM timings. For real-time adjustments without rebooting, see [**EMC Magician**](EMC_MAGICIAN.md).

---

### Micro-Enhance Logic: pMeh & sMeh

Low-level registers controlling memory controller arbitration and timing equations. Accessible in:  
**`Advanced → Micro-Enhance Logic`** (split into `pMeh 0-22` and `sMeh 0-17`).

#### **pMeh (Primary Micro-Enhance, 0–22)**
* **pMeh 0 `eBAS Sub-Zero`** — eBAL derivative: **eBAS**, eBAW, and eBAR.  
  eBAS can be increased via `EBA-Shift`. The only way to decrease it is `pMeh[0]` by 1 (at `pMeh[0]=1`):  
  > `eBAL[=1] + eba-shift[=0] + pMeh[0][=1] = LIMBO`  
  > `nWR = eBAL + 2 - eBAS + pMEH[0];`  
  > `nWR` is a constant in timing calculation formulas.  
  > `timing 8: WTP = 47 - 2*drochr08 + pMEH[7] + (nWR-5)*4;`
* **pMeh 1 `divMB Supressor`** — Frequency step stability regulator. Helps when a memory clock is unstable without apparent cause or if the console shows a black screen on boot. Value `3` is the most stable. On Erista, other values are treated as 0. On Mariko at clocks above 3.0 GHz, this regulator is excluded from calculations.
* **pMeh 2 `1333-1065-800`** — Lowers effective RAM frequency on Mariko for the `Optimized E` step (timing base remains 1331). Effective only when `Optimized Target` (`sMeh 16`) is set to `0`.
* **pMeh 3 `eBAW Shift`** — eBAL derivative: eBAS, **eBAW**, and eBAR:  
  > `nWL = eBAL + pMEH[3]`  
  > `nWL` is a constant in timing calculation formulas.  
  > `timing 6: WTR = 35 - 2*drochr06 + pMEH[6] + (nWL-5)*4;`
* **pMeh 4 `eBAR Shift`** — eBAL derivative: eBAS, eBAW, and **eBAR**:  
  > Base `e_bar` values for different eBAL:  
  > `eBAL=0: e_bar[0] = -3`  
  > `eBAL=1: e_bar[1] = -2`  
  > `eBAL=2: e_bar[2] = -1`  
  > `eBAL=3: e_bar[3] = 0`  
  > `eBAL=4: e_bar[4] = 1`  
  > `eBAL=5: e_bar[5] = 2`  
  > `nRL = eBAL + pMEH[4]`  
  > `timing 7: RTW = 43 - 2*drochr07 + pMEH[5] + (nRL-5)*2;`  
  > `timing 1: tRCD = tRCD_val[ONE] + e_bar[eBAL] - pMEH[8]`  
  > `timing 2: tRP = tRP_val[ONE] + e_bar[eBAL] - pMEH[9]`  
  > `timing 3: tRAS = tRAS_val[ONE] + e_bar[eBAL]*2 - pMEH[10]`
* **pMeh 5 `eBAW Crement`** — Influences timing 7:  
  > `const u32 RTW = 43 - 2*C.drochr07 + C.pMEH[5] + (nRL-5)*2;`
* **pMeh 6 `eBAR Crement`** — Influences timing 6:  
  > `const u32 WTR = 35 - 2*C.drochr06 + C.pMEH[6] + (nWL-5)*4;`
* **pMeh 7 `eBAS Crement`** — Influences timing 8:  
  > `const u32 WTP = 47 - 2*C.drochr08 + C.pMEH[7] + (nWR-5)*4;`
* **pMeh 8–10 `RCD, RP, RAS Decret`** — Offsets for timings 1, 2, and 3:  
  > `tRCD = tRCD_val[ONE] + e_bar[eBAL] - C.pMEH[8]`  
  > `tRP = tRP_val[ONE] + e_bar[eBAL] - C.pMEH[9]`  
  > `tRAS = tRAS_val[ONE] + e_bar[eBAL]*2 - C.pMEH[10]`  
  Increasing these values lowers the respective timings, increasing throughput at the expense of stability margins.
* **pMeh 11 `SRPD`** — Memory power-saving mechanisms. On Mariko, disabled by default in Optimized S and enabled in Optimized E.
* **pMeh 12 `E-Enhance`** — Internal optimization flag.
* **pMeh 13 `DR Debug`** — Progressively disables 4IFIR optimizations to isolate instability causes.
* **pMeh 14 `GameChanger`** — Lowers effective EMC frequency relative to target:  
  > `EMC PLLMB divn = actual divn - pMEH[14]`
* **pMeh 15 `eFOS MK`** — High-frequency RAM mode transition stabilization.
* **pMeh 16 `lovec`** — Throttles system timings.
* **pMeh 17 `WL-Set`** — Internal write latency calibration (in earlier versions, DBI sat here; DBI was moved to `sMeh 17`).
* **pMeh 18 `eBAMATIC ST`** — eBamatic stage selection (mirrors `eBAMATIC Stage`).
* **pMeh 19 `vMINetune ST`** — GPU vMin offset for Optimized E (mirrors `Advanced → GPU → vMin Offset`).
* **pMeh 20 `rVDDick`** — VDDQ/VDD2 voltage level for Optimized E (mirrors `Advanced → RAM → Optimized Mode (1600 MHz) → VDDQ-VDD2 Voltage`).
* **pMeh 21 `gVMINDick`** — GPU vMin offset for Optimized S (mirrors `Advanced → GPU → vMin Offset (max RAM)`).
* **pMeh 22 `isKefir`** — Environment and compatibility flag.

#### **sMeh (Secondary Micro-Enhance, 0–17)**
* **sMeh 0 `ARB-Boost`** — Periodic refresh interval for memory controller cyclic timings.
* **sMeh 1–5 (`ARB-BCD`, `ARB-BRP`, `ARB-RTR`, `ARB-RTW`, `ARB-WTR`)** — Manual arbitration subtiming corrections to eliminate abnormal bandwidth drops.
* **sMeh 6 `eZQ Override`** — Memory performance parameter managed by 4IFIR.
* **sMeh 7 `trDVFS`** — Arbiter voltage logic; contextually improves RAM stability at extreme clocks.
* **sMeh 8 `E-Boost`** — Efficiency stages in Optimized E (mirrors `Efficiency Stages`). Value `2` yields maximum boost. (Reset to `0` if screen striping occurs in dock).
* **sMeh 9 `SSC Logic`** — Clock generator noise-reduction toggle (resolves wireless interference).
* **sMeh 10 `Latent`** — Positive offset for tertiary timings.
* **sMeh 11 `REF-NEH`** — Memory refresh solver parameters.
* **sMeh 12 `Clatok`** — Timing scaling method toggle (mode `1` typically yields 2–3 FPS).
* **sMeh 13 `CPriora`** — Prioritizes CPU cores over GPU throughput (ideal for emulators).
* **sMeh 14–15 `GetLow / GetHigh`** — Transition aggressiveness for 4VOLTSHIFT voltage transitions.
* **sMeh 16 `SYK-LOH`** — Base clock for stage E (1600 MHz vs 1331 MHz, mirrors `Optimized Target`).
* **sMeh 17 `DBI`** — Data Bus Inversion (error correction and signal integrity on high-frequency RAM).

---

#### **Fan Control**
Custom thermal activation steps for the cooling fan:
* Threshold steps: `16-35°C`, `36-40°C`, `41-46°C`, `47-57°C`, `58-100°C`.

---

### 3. `Profiles`
* **`Current Settings`** — Interactive 3-page summary of live settings inside `loader.kip` and `/config/4IFIR/emc_timings.ini`:
  * **Page 1:** Clocks, voltages, and stages across CPU, GPU, and RAM.
  * **Page 2:** Complete matrix of all `pMeh` and `sMeh` registers.
  * **Page 3:** Active memory controller timings from EMC Magician.

---

### 4. `Service`
* **`Backup manager`** — Comprehensive profile snapshot management:
  * **`Choose backup`** — Selects a saved `.ini` profile with a complete preview of all values before applying.
  * **`Create backup`** — Saves the current configuration into:
    * `/atmosphere/kips/.bak/mariko/<name>.ini` (for Mariko)
    * `/atmosphere/kips/.bak/erista/<name>.ini` (for Erista)
  * **`Apply this backup`** — Flashes the selected profile into `loader.kip` (**Hold `(A)`**).
* **`Restore Factory Defaults`** — Reverts all tuning settings in `loader.kip` to the firmware stock state (**Hold `(A)`**).
* **`Import old 4IFIR backup`** — Converts legacy `.json` backup profiles from `/atmosphere/kips/kip-json/*.json` into the new `.ini` structure.
* **`System Info`** — Hardware revisions and board identity.

---

### 5. `Check for updates` / `Update`
Built-in update utility. Downloads the latest release archive to `/config/ultrahand/downloads/4IFIR-Wizard.zip` and extracts it while protecting user-configured `config.ini` and `overlays.ini`.

---

### 6. `Reboot the console`
Commits all changes to `loader.kip` and restarts the Nintendo Switch. Any values adjusted in the configurator require a reboot to take effect.
