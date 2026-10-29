# EMC Magician

**EMC Magician** allows tuning memory timings in real time, as well as refining the baseline timings configured in **4IFIR Wizard**.
* Timings are calibrated per active **RAM frequency** and **EMC Balance (eBal)** mode.
* All timings adjusted in **EMC Magician** are stored in **/config/4IFIR/emc_timings.ini**.
* For each combination of **RAM MHz** + **EMC Balance (eBal)**, an individual profile is saved in **/config/4IFIR/emc_timings.ini**.
* Updating **4IFIR** preserves timings configured in **EMC Magician**.
* Install **HB Menu** as an application (NSP) for full system RAM access. Launch it by holding **`R`** while opening any installed game.

---

### Core Principles
> This tuning guide assumes familiarity with basic 4IFIR memory concepts.

---

### Timing Adjustment Instructions
> **To simplify timing stability validation, consider using** [Ultracam for Zelda TOTK](https://t.me/kf4fr/48074/765475) or MicroMemBench.

1. In the 4IFIR overlay, open **EMC Magician** and enable all 3 available toggles:
   * **Active MC Arbitration**
   * **Adaptive EMC Priority**
   * **EMC Magician**
2. Launch **Homebrew Menu → MicroMemBench**; ensure CPU is set to `4IFIR Maximized`.
3. Wait until the memory controller fully transitions into `Optimized S`.
4. Without closing MicroMemBench, open the 4IFIR overlay and enter **EMC Magician**.
5. Start adjusting timings: shift the first slider by 1 step to the right. If throughput does not increase, begin shifting left (pausing for several seconds after each increment) until benchmark scores start decreasing or the system freezes.
6. Note down the stable parameter value (shown inside the white circle) or save it directly by pressing **`X` (Save)**.
7. Verify stability in **Homebrew Menu → MicroMemTest** (10 loops with CPU set to `4IFIR Optimised`).
8. Verify timing stability in-game:
   * A great test is RDR in Docked mode or running the Ultracam benchmark in Zelda TOTK (Docked mode, CPU 1963, GPU 1305, EMC Optimised S).
9. Repeat the process from step 2 for each individual slider.
   * After tuning all timings, run a final validation pass in MicroMemTest and in-game.
10. Return to MicroMemBench with CPU clock returned to `4IFIR Optimised`.
11. In EMC Magician, use **`L`** and **`R`** to find the optimal "Arbiter" (MC) value for each timing where throughput peaks. Save changes with **`X`**.
    * `x | x | arbiter` — modifying the arbiter does not affect hardware stability, only performance scaling (performance drops if under- or over-tuned).
    * Typically, the optimal value is close to what 4IFIR calculates automatically.

---

### Resetting Timings
1. Disable Magician.
2. Set EMC profile to `Optimized S`.
3. Disable overclocking with **`+`** on `Edit app profile`.
4. Enable Magician.
5. Reset desired toggles with **`Y`**.
6. Re-enable overclocking with **`A`** on `Edit app profile`.
7. Commit changes by switching to `Optimized` or cycling sleep mode.
> Alternatively, delete the section corresponding to the current RAM profile in `/config/4IFIR/emc_timings.ini` and reboot.
