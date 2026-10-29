# Overclocking 

In 4IFIR, overclocking is achieved through deep optimizations of HOS components. Hardware efficiency per watt is approximately 3–5 times higher than at stock frequencies without overclocking. This breakthrough is driven by deep memory optimization (surpassing standard frequency and timing limits). 4IFIR implements aggressive CPU, GPU, and Memory undervolting, ensuring far more economical power consumption during overclocking compared to competitors.

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
  * **Force Disable Charging** — Bypasses battery charging while plugged in, running directly from the AC adapter to prevent battery desynchronization.
  * **Screen Backlight** — Turns off display backlight (useful when streaming via SysDVR).
  * **Info** — Hardware power metrics (Charger type, Battery voltage, Current flow, CPU/GPU/DRAM voltages).
* **EMC Magician** — Real-time memory timing adjustments and auto-arbitration:
  * **Active MC Arbitration** — Dynamic memory controller arbitration tuning.
  * **Adaptive EMC Priority** — Adaptive memory controller arbitration priority allocation.
  * **EMC Magician** — Adjust memory timings on the fly without rebooting.
> For detailed instructions on memory timing adjustments: [**EMC Magician**](EMC_MAGICIAN.md).

---

## Setting CPU/GPU/EMC(ram)/LCD

Overclocking works by establishing clock limits for CPU, GPU, EMC (Memory), and LCD (Display refresh rate) via **Temporary overrides** → **Edit app Profile** → **Global profile**.

Settings are applied according to priority (**Temporary overrides** → **Edit app Profile** → **Global profile**):
* **Temporary overrides** has highest priority; if not set, the system checks **Edit app Profile**; if not set, it falls back to **Global profile**; if empty, stock system defaults are applied (**Default**).

**Global profile** and **Edit app Profile** contain distinct operating profiles:
* **Docked**
* **Handheld**
* **Charging**
* **Official Charging**
* **USB Charger**

> Profiles also follow a strict priority hierarchy:  
> **Docked** → **Official Charging** / **USB Charger** → **Charging** → **Handheld**.  
> The **Docked** profile has the highest priority and overrides profiles below it. **Official Charging** and **USB Charger** share priority and override standard **Charging** and **Handheld**, etc.

Each profile contains individual overclocking targets for **CPU**, **GPU**, **EMC (RAM)**, and **LCD**. In each field, the **Default** option inherits the setting from the next highest priority profile. Operating frequencies must be selected individually for each specific title and console.

The **Docked** and **Handheld** profiles synchronize with ReverseNX-RT (can be toggled in **Miscellaneous**). The **Charging** profile engages when any charger is connected. **Official Charging** activates when an official charger (or USB Power Delivery adapter) is detected. **USB Charger** engages on standard 5V USB chargers.

---

## Governors

**Edit app Profile** provides dynamic hardware frequency governors:

A governor monitors real-time load and dynamically modulates clock speeds to optimize power consumption and performance.

* **CPU Freq Governor** — Dynamically adjusts CPU frequency according to processor core load.
* **GPU Freq Governor** — Dynamically scales GPU clock speed to maintain frame rate targets.
* **LCD Freq Governor** — Adjusts display refresh rate to match current FPS (VRR analog).

> [!NOTE]
> Governor controls become available only when **Frequency Governor** is enabled in **Miscellaneous**.

> [!TIP]
> If a game encounters micro-stutters when exiting pause menus or maps (e.g. Metroid Prime Remastered), consider disabling the GPU Governor for that specific title.

---

**For optimal tuning tailored to your specific console, configure hardware parameters using [4IFIR Wizard](4IFIR_WIZARD.md).**
