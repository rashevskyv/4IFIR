# Problems and Solutions

1. [Problems related to 4IFIR](#problems-related-to-4ifir)
2. [Problems with Latitude UI & 2.7 System Features](#problems-with-latitude-ui--27-system-features)
3. [Battery problems](#battery-problems)
4. [Other problems](#other-problems)
5. [FAQ](#faq)

---

## Problems related to 4IFIR

* #### The console freezes after 10-15 minutes of gameplay:    
  > **Ultrahand → 4IFIR Wizard → Advanced → CPU → Low MHz Undervolt** — set to 1 (or reduce undervolt aggressiveness).  
  > If that doesn't help: **Advanced → CPU → Speed Shift → ECO ST1**.

* #### The console freezes almost immediately after startup: 
  > Insufficient initial operating voltage.  
  > Boot into **Stock (semi-stock)** or use **KipTool**:  
  > **Advanced → RAM → Optimized Mode (1600 MHz) → VDDQ-VDD2 Voltage** (or `Advanced → Micro-Enhance Logic → pMeh 20`) — set to 4.

* #### The console freezes after selecting EMC: 4IFIR Optimized S: 
  > Unstable target memory frequency:  
  > **Advanced → RAM → Frequency** — pick a lower frequency (e.g. 2400 or 2133 MHz) and reboot.

* #### Black screen after Nintendo logo:  
  > 1. In 4IFIR Wizard, use `Service → Restore Factory Defaults` (hold `(A)`) or restore a working `.ini` snapshot from `/atmosphere/kips/.bak/mariko/` (or `erista/`).  
  > 2. Or launch **KipTool** (`Hekate → Payloads → kiptool.bin`), go to **KIP Wizard → CPU → SpeedShift**, set **25** or **100** instead of 0, and select `Apply changes`.  
  > 3. If issues persist, perform a [clean installation](INSTAL_4IFIR.md#clean-installation-recommended).

* #### When playing in dock, stripes appear on the TV screen:
  > Related to memory efficiency stages (**sMeh 8**).  
  > Navigate to **Advanced → RAM → Optimized Mode (1600 MHz) → Efficiency Stages** (or `sMeh 8`) and reset it to **0**.

---

## Problems with Latitude UI & 2.7 System Features

* #### PC does not detect the console over USB (Background MTP):
  > 1. Verify you are using a quality USB-C data cable (not charge-only).  
  > 2. Connect directly to the motherboard ports on the rear of your PC rather than unpowered USB hubs.  
  > 3. On Windows, check Device Manager: if an exclamation mark is shown, update or reinstall the standard MTP USB Device driver.

* #### Failure during automatic update from `Settings → System`:
  > 1. Check Wi-Fi connectivity.  
  > 2. Ensure custom DNS rules do not block the 4IFIR update servers.  
  > 3. Use the [fallback offline update via Daybreak or manual archive extraction](OTHER_INSTRUCTION.md#2-offline-hos-firmware-update-via-daybreak-fallback-method).

* #### Latitude UI blur or panels seem too dense/transparent:
  > Adjust blur intensity and underlay opacity in `System Settings → Themes`.

---

## Battery problems 

* #### Battery drops from 100% to 1% in minutes, but runs for hours at 1%:
  > The power controller peak capacity threshold was triggered (~15W). Protection triggers can desynchronize battery gauge calibration by 1% per event. Restore battery calibration using [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx).

* #### Empty battery icon appears during intensive overclocked gaming:
  > System power consumption exceeded peak controller thresholds. Lower CPU/GPU frequencies or adjust voltage steps in 4IFIR Wizard.

---

## Other problems 

* #### The Witcher 3 / Resident Evil Revelations won't start:
  > Open **HB Menu → SysDVR → DVR-Patches → Uninstall → Reboot**.

* #### FPS always shows 0/254 or ReverseNX does not toggle modes:
  > Game is incompatible with **SaltyNX**. See the [SaltyNX compatibility list](https://github.com/masagrator/SaltyNX#list-of-titles-not-compatible-with-pluginspatches).

---

## FAQ 

**Q: Does 4IFIR degrade battery life?**  
**A:** No. Batteries degrade from sustained high temperatures and charge cycles, not instantaneous current draw. Hardware PMIC limiters safely disconnect the circuit before dangerous temperatures can be reached.

**Q: Switch turns off under overclock?**  
**A:** Your specific hardware cannot sustain that frequency at the current voltage. Lower the clocks or increase voltage by one step in Wizard.

**Q: Where are the governors?**  
**A:** In **Ultrahand → 4IFIR → Miscellaneous**, enable **Frequency Governor**.

**Q: Why do frequencies fluctuate in real time?**  
**A:** This is standard governor behavior, matching clock frequencies to real-time render loads.
