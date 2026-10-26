# Overclocking 

In 4IFIR, overclocking is achieved through deep optimizations of HOS components. The hardware efficiency per watt is approximately 3-5 times higher than at stock frequencies without overclocking. All this is due to breakthrough memory optimization (surpassing standard frequency and timing limits). 4IFIR implements deep CPU, GPU, and Memory undervolting, ensuring far more economical power consumption during overclocking compared to competitors.

1. [Description of 4IFIR overlay items](#description-of-4ifir-overlay-items)   
2. [Setting CPU/GPU/EMC(ram)/LCD](#setting-cpugpuemcramlcd)  
3. [Governors](#governors)  

---

## Description of 4IFIR overlay items

Overclocking is configured via the **4IFIR** overlay in **Ultrahand**, opened via the shortcut **`(L)+(R)+(▲)`**.

**Parameters in the header:**     
> **App ID** — TitleID of the currently running game   
> **Profile** — Synchronized with ReverseNX-RT, showing current operating mode (**Docked** vs **Handheld**)  
> **CPU** — Current CPU core frequency   
> **GPU** — Current GPU core frequency   
> **MEM** — Current DRAM frequency   
> **LCD** — Screen refresh rate (Hz)  
> **FPS** — Real-time frames per second  
> **EMC** — Memory bus bandwidth  
> **PCB** — Motherboard temperature   

**Edit app Profile** — Overclocking profile settings for the running game. Automatically applied on title launch (Medium priority).  
> **Other profiles are accessed via controller shortcuts:**  
> **"Y"** — **Temporary overrides** — Overclocking settings applied to all titles until reboot (Highest priority).  
> **"X"** — **Global profile** — Default baseline overclocking applied to all titles (Lowest priority).  
> **"+"** — Toggle overclocking ON/OFF.

**Advanced:**
* **Miscellaneous** — Advanced settings:
  * **Auto CPU Boost** — Dynamic boost layer boosting CPU frequency on background core spikes (asset streaming, scene loading). Recommended disabled on Erista for battery savings.
  * **Sync ReverseNX Mode** — Synchronizes sys-clk profile with ReverseNX mode (Handheld / Docked).
  * **Frequency Governor** — Enables governors in Edit app Profile.
  * **Charging current** — Custom charging current limit.
  * **Charging Limit** — Battery charging cutoff percentage.
  * **Force Disable Charging** — Bypasses battery charging while plugged in, running directly from the AC adapter.
  * **Screen Backlight** — Turns off display backlight (useful when streaming via SysDVR).
  * **Info** — Hardware power metrics (Charger type, Battery voltage, Current flow, CPU/GPU/DRAM voltages).
* **EMC Magician** — Real-time memory timing adjustments and auto-arbitration.

---

## Setting CPU/GPU/EMC(ram)/LCD

Overclocking works by establishing clock limits for CPU, GPU, EMC (Memory), and LCD (Display refresh rate) via **Temporary overrides** → **Edit app Profile** → **Global profile**.

Priority hierarchy:
1. **Temporary overrides** (Highest priority — active until reboot).
2. **Edit app Profile** (Specific per-game settings).
3. **Global profile** (System-wide fallback).
4. **Default** (Stock Horizon OS values).

### Profile Categories:
* **Docked**
* **Handheld**
* **Charging**
* **Official Charging**
* **USB Charger**

Priority: **Docked** > **Official Charging** / **USB Charger** > **Charging** > **Handheld**.

---

## Governors

* **CPU Freq Governor** — Dynamically adjusts CPU frequency according to real-time processor load.
* **GPU Freq Governor** — Dynamically scales GPU clock speed to maintain frame rate targets.
* **LCD Freq Governor** — Adjusts display refresh rate to match current FPS (VRR analog).

> [!TIP]
> If a game encounters micro-stutters when exiting pause menus or maps, consider disabling the GPU Governor for that specific title.

---

**For optimal tuning tailored to your specific console, configure parameters using [4IFIR Wizard](4IFIR_WIZARD.md).**
