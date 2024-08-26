## 4IFIR Wizard Configurator

**4IFIR Wizard** - is a package that allows you to fine-tune the parameters for your console. In case of unstable work of 4IFIR or if you want to increase console performance, 4IFIR Wizard is your indispensable assistant.

***

**NOTICE**: if something went wrong and the system does not boot, go to Hekate and select the semi-stock mode. There you can go to 4IFIR Wizard and change the value that caused the crash.

  - If you are unable to go to semi-stock and the console does not start after configuring anything **4IFIR Wizard**, you can replace the file `atmosphere/kips/loader.kip` with a backup of your previous kip, *do not forget to rename the backup file to `loader.kip`*. Kip backups are located in the `atmosphere/kips/.bak` folder (enable invisible folders in Explorer). If there are no backups, you can get the standard `loader.kip` from your version of 4IFIR in the `atmosphere/kips/loader.kip` folder.

**WARNING!!!** If at any stage of testing there is a freeze, the game hangs, artifacts appear on the screen, or any unexpected behavior of the console is observed, the selected parameter does not suit the console. Try selecting another value.

***


To access **4IFIR Wizard** - open **Underhand** with combination **(L)+(R)+(▲)**, then press **(►)** to access the package menu, and select **4IFIR Wizard**.

The following menus are available inside:
* **Dashboard** -  a menu for creating and managing backups, also containing information about the package and the current configuration. 
* [**SmartMode**](#SmartMode) - setting up the main parameters of CPU/GPU/RAM/eBamatic  
* [**4Advanced**](#4Advanced) - a menu for more precise and individual configuration of each parameter. 

In some sections, help is available at the bottom of the screen  **🅨 Help** - a short description of the purpose .

## **SmartMode** 
### **QuickTune** – setting up the main parameters of CPU/GPU/RAM:
#### **CPU** - processor configuration.
* CPU Boost Mode – selects the frequency to which the game will overclock on loading screens. 
* CPU VMAX Mode – maximum possible processor power consumption (by default, set to eBamatic; can be left as is).
* CPU Low Undervolt Mode – levels of undervolting for processor frequencies below <=15хх Mhz. The higher the level, the more aggressively the consumption is reduced.
* CPU High Undervolt Mode – levels of undervolting for processor frequencies above >15хх Mhz. The higher the level, the more aggressively the consumption is reduced.
* CPUv Mode - minimum possible processor power consumption.
* dCPUv - voltage adjustment in the frequency range from 12хх to 18хх MHz
#### **GPU** - graphics card configuration. 
* Gpu Eco Mode – selects the level of undervolting across the entire frequency range of the graphics card (the higher the level, the more aggressive the undervolting).
* GPUv Mode – levels of the minimum power consumption of the graphics card. The higher the number, the lower the minimum power consumption.\
#### **RAM** – memory configuration.
* 4IFIR RAM Mode – selects the memory frequency, which will be available in the overclocking menu of the console 4IFIR Gamechanger>Edit app profile/Temporary overrides/Global profile>Memory>4IFIR Optimized S.
* VDD2 Mode – Maximum memory power consumption. The lower the value, the lower the power consumption.
* VDDQ Mode – Memory power supply voltage. The lower the value, the lower the power consumption.
* RAM DVB Mode - Controls the internal adaptive mechanism of the memory controller. The higher the number, the lower the power consumption.
* Timings Orchestrator – configures memory timings from presets prepared by the developer. There are seven presets Timings Preset 1–7. Presets do not affect each other. Configure each parameter separately to achieve maximum stable performance. The higher the value of each timing, the higher the performance.
#### **eBamatic** – configuration of eBamatic optimization levels:
* e.BAMATIC - soon.
* e.BAMATIC Stage -  selects the level of eBamatic optimizations. The higher the value, the more aggressive the optimization.
## **4Advanced** 
### **CPU - processor configuration.**
* CPU Minimal Voltage – selects the lower power consumption limit of the processor.      
* CPU Maximum Voltage – selects the upper power consumption limit of the processor.  
* dCPUv - voltage adjustment in the frequency range from 12хх to 18хх MHz  
* CPU Boost Clock – selects the frequency to which the game will overclock on loading screens. 
* Low Mhz Undervolt – levels of undervolting for processor frequencies below <=15хх Mhz.   
* High Mhz Undervolt – levels of undervolting for processor frequencies above >15хх Mhz.   
* Speed Shift - reduces the voltage (power consumption) of secondary console components. The higher the value, the lower the power consumption.  
***

### **GPU** - graphics card configuration.  
**GPU settings should be made in [SmartMode-QuckTune-GPU](#SmartMode)**
* Gpu Undervolt Mode –  selects the level of undervolting across the entire frequency range of the graphics card. The higher the level, the more aggressive the undervolting, Manual – values from the table in Advanced Settings.
* GPU Minimal Voltage – selects the lower threshold of video card consumption.
* GPU Overvolt - levels of maximum power consumption of the graphics card.

***

### **RAM** – memory configuration.
* RAM Mhz – selects the memory frequency, which will be available in the overclocking menu of the console 4IFIR Gamechanger>Edit app profile/Temporary overrides/Global profile>Memory>4IFIR Optimized S. \
* RAM Vddq – Memory power supply voltage. The lower the value, the lower the power consumption.
* RAM Vdd2 – Selects the maximum memory power consumption limit. The lower the value, the lower the power consumption. 
* Ebalance – a set of memory optimizations in the ratio of energy efficiency to performance. There is a list of 5 values. 0(eBamatic) – smart mode, automatically selects the appropriate eBal for the selected frequency. 1 – adds performance, requires higher RAM voltages (try on low frequencies), 2 – loses performance (relative to eBal 1) but reduces consumption (try, usually stable on most consoles), 3 – Default , 4 – for high frequencies (for docked mode gaming).    
* Eba-shift - adjusts the eBal mode; setting it to 2 allows raising the 8th timing value
* EMC DVB Mode - controls the internal adaptive mechanism of the memory controller. Selecting a more accurate consumption value.
* Core Timings – Setting memory timings. There are eight timings Core Timings 1–8. Timings do not affect each other. Adjust each parameter separately to achieve maximum stable performance. The higher the value of each timing, the higher the performance.  
* **More about timings and their dependencies** - [**Timings**](TIMINGS.md)   

#### **pMeh**
* pMeh 0 _eBAS Sub-Zero_ - Derived from eBAL: **eBAS**, eBAW and eBAR.
eBAS can be increased using the [eba-shift] option. The only way to decrease it is by using — pMeh[0] and only by 1 (when set to pmeh[0]=1)  
>eBAL[=1] + eba-shift[=0] +pMeh[0][=1] = LIMBO  
>nWR = eBAL + 2 - eBAS + pMEH[0];  
>nWR — is a constant in timing calculation formulas.  
>timing 8: WTP = 47 - 2*drochr08 + pMEH[7] + (nWR-5)*4;  
* pMeh 1 _divMB Supressor_ - Affects the stability of the frequency step if it is unstable without clear reasons. Remember those non-working frequencies like 2800? They are probably gone, but if you find any, try toggling this switch. It can also help in a situation when at a certain memory frequency, the console stops trying to boot into HOS, giving a black screen without identification marks. Also unlikely. 
It also slightly affects the overall stability of the frequency mode - generally. The value 3 is magical; it is more stable in most scenarios I have tested. On ERISTA, other than the value 3, 4IFIR treats as 0. On MARIKO, at frequencies above 3.0 GHz, the regulator value is excluded from the formula, as using values above 2 will drastically reduce stability or make the mode inoperable.
* pMeh 2 _1333>1065>800_ -  Lowers the effective RAM frequency value on MARIKO for the Optimized E step. For maximum compatibility, the Target frequency and the frequency used for calculating timings and other dependent parameters remain unchanged (1331). It may be useful to reduce the working vMin for the E step of memory. In the future, it is very likely that the 800 MHz will improve in performance to stock level, replacing the 2XX MHz step.
* pMeh 3 _eBAW Shift_ - Derived from eBAL: eBAS, **eBAW** and eBAR.
>nWL = eBAL + pMEH[3]  
>nWL — is a constant in timing calculation formulas.  
>timing 6: WTR = 35 - 2*drochr06 + pMEH[6] + (nWL-5)*4;  
* pMeh 4 _eBAR Shift_ - Derived from eBAL: eBAS, eBAW and **eBAR**.   
>Basic values ​​of e_bar for different eBAL:  
>eBAL=0: e_bar[0] = -3  
>eBAL=1: e_bar[1] = -2  
>eBAL=2: e_bar[2] = -1  
>eBAL=3: e_bar[3] = 0  
>eBAL=4: e_bar[4] = 1  
>eBAL=5: e_bar[5] = 2  
>nRL = eBAL + pMEH[4]  
>nRL — is a constant in timing calculation formulas.  
>timing 7: RTW = 43 - 2*drochr07 + pMEH[5] + (nRL-5)*2;  
>timing 1: tRCD = tRCD_val[ONE] + e_bar[eBAL] - pMEH[8]  
>timing 2: tRP = tRP_val[ONE] + e_bar[eBAL] - pMEH[9]  
>timing 3: tRAS = tRAS_val[ONE] + e_bar[eBAL]*2 - pMEH[10]  
* pMeh 5 _eBAW Crement_ - affects the 7th timing  
> const u32 RTW = 43 - 2*C.drochr07 + C.pMEH[5] + (nRL-5)*2;  
* pMeh 6 _eBAR Crement_ - affects the 6th timing  
>const u32 WTR = 35 - 2*C.drochr06 + C.pMEH[6] + (nWL-5)*4;
* pMeh 7 _eBAS Crement_ - affects the 8th timing    
>const u32 WTP = 47 - 2*C.drochr08 + C.pMEH[7] + (nWR-5)*4;  
* pMeh 8-10 _RCD, RP, RAS Decret_- pMEH[8], pMEH[9] and pMEH[10] are used in the formulas for tRCD, tRP and tRAS (1, 2 and 3 timings, respectively). Increasing these values will reduce the corresponding timings, which may improve performance but could reduce stability.  
>tRCD = tRCD_val[ONE] + e_bar[eBAL] - C.pMEH[8]    
>tRP = tRP_val[ONE] + e_bar[eBAL] - C.pMEH[9]    
>tRAS = tRAS_val[ONE] + e_bar[eBAL]*2 - C.pMEH[10]    
>tRCD_val[ONE], tRP_val[ONE] and tRAS_val[ONE] - are the base values of the timings from the respective arrays.  
>e_bar[eBAL] - is a correction depending on the eBAL mode.  
>C.pMEH[8], C.pMEH[9] and C.pMEH[10] - are additional adjustments from the pMEH array.
* pMeh 11 _SRPD_ - soon
* pMeh 12 _E-Enhance P_ - soon
* pMeh 13 _DR Debug_ - Disables 4ifir optimizations. In the first mode, it eliminates the least critical optimizations from the list of potential culprits for all problems. In the second mode - more critical ones, etc. By identifying the stage at which the problem disappears and including this information in a report when contacting Cooler, you can significantly simplify debugging.
* pMeh 14 _GameChanger_ - soon   
* pMeh 15 _eFOS MK_ - increases the delay that occurs when switching from one memory mode to another (e.g., switching from **EMC - 4ifir optimised** to **EMC - 4ifir optimised S**).
* pMeh 16 _lovec_ - Reduces system timings performance
* pMeh 17 - soon  
* pMeh 18 _eBAMATIC ST_ - selects the eBamatic optimization level. The higher the value, the more aggressive the optimization. (Duplicate of item **QuickTune > eBAMATIC > e.BAMATIC Stage**  
* pMeh 19 _vMINetune_ - GPU vMin for 4ifir Optimised (The higher the value, the lower the minimum voltage)
* pMeh 20 _rVDDick_ - VDDQ/VDD2 for 4ifir Optimised (The higher the value, the higher the voltage)
* pMeh 21 _gVMINDick_ - GPU vMin for 4ifir Optimised S (The higher the value, the lower the minimum voltage)
#### **sMeh**
* sMeh 0 _ARB-Boost_ - Provides more performance; try increasing it by a couple of steps.
* sMEH 1 - 5 - allow without affecting stability, in certain combinations of timings, eBALs and frequencies, where 4IFIR did not match algorithmically 100% in arbitration timings by memory controllers, adjust them manually. If there was a shortfall from the algorithm, it allows for a slight increase in performance. If there was an excess (if a significant drop in performance is observed at certain frequency steps for no apparent reason, which, theoretically, should not occur, but 4IFIR might miss it somewhere), this is the most suitable.Most obviously, eBAL1 SYK-LOH at 1600, in my tests, precisely from adjusting these regulators gave the last 400MB, which fell without objective reasons. Often, with their help, it is possible to make a particular timing work at the upper stable value if it is, for some reason, slower than the penultimate one, making it functional, i.e., the last one being the fastest, as it should be logically. Usually 4IFIR solves this for you, but sometimes you can get a hundred or two MB out of the blue with correction, and in some cases even more, where there is an abnormal drop.
* sMeh 6 _eZQ Override_ - on the value 1, it usually gives a free boost. No observed effect on stability. Gaming performance changes proportionally.
* sMeh 7 _trDVFS_ - soon
* sMeh 8 _E-Boost_ - Memory efficiency stages in Optimized E mode. The higher the value, the more performance. Because of sMeh 8, the screen may start to stripe in the dock. To solve this problem, reset sMeh 8 to 0.
* sMeh 9 _SSC Logic_ - switches between two modes of operation of the RAM clock generator noise suppressor. It can help if something wireless at certain RAM frequencies behaves strangely.
* sMeh 10-11 - soon
* sMeh 12 _Clatok_ - Switches between algorithms for scaling technical, engineering parameters and memory timings, between two principles. Mode 1, in most cases, should give a gain of a couple of FPS under equal conditions.  At low frequencies, it may not be compatible with certain memory chips, like eBAL1 on Micron at a frequency of 1600, possibly higher.  
* sMeh 13 _CPriora_ - CPU priority. Reduces performance per megahertz for GPU in favor of CPU. Ideal for emulators.
* sMeh 14 - 15 _GetLow/GetHigh_  - Control the degree of aggressiveness of the zero-jump algorithm, also known as 4VOLTSHIFT. The more aggressive, the faster the memory will switch to the upper or lower mode, at the cost of an increased risk of not making it.
In particularly tough cases, when you want to combine 300mV/900mV for the middle memory step (EMC - 4ifir Optimised) with 750/1400 for the upper (EMC - 4ifir Optimised S), you can try activating pMeh 15 eFOS MK. There will be a delay of two to three seconds when switching, but the probability of a successful transition is higher.
* sMeh 16 _SYK-LOH_ - Sets the value RAM Optimized E - 1600 МГц.

***

### **4ekate** – A free boost (about 200 mb/s) when choosing ST2. (Works not for everyone, there may be problems with the console waking up from sleep)

***

### **System Setting** – Console fan and video capture settings:
* **Fan Control** - Fan operation settings.
* **Video Capture Settings** – it is clear what it is responsible for.
    * Bitrate – Video bitrate.
    * FPS - Frames per second.
  * Reset to Base – Reset to default values.
* **Complete [Reboot]** – Apply parameters and reboot the console.
**IMPORTANT:** To apply changes, select Complete [Reboot] in the Manual Configuration menu or reboot the console.

***

4IFIR Wizard offers a backup mechanism for your configurations. To manage backups, select Dashboard - Backup in the main menu. Inside, there are two options:
*--KIP Backup JSON
* Create Backup to JSON - Allows you to create a new backup from the current configuration in JSON format. Backups are located at /atmosphere/kips/.bak-json. The new backup replaces the previous one.
* Manage Backups JSON – Allows you to apply or delete a created backup.
*--Old KIP Backup
* Create backup - Allows you to create a new backup from the current configuration. Backups are located at /atmosphere/kips/.bak. The new backup replaces the previous one.
* Manage Backups – Allows you to apply or delete a created backup.

