# 4IFIR WIZARD Setup Guide

1. [CPU](#CPU)  
1. [GPU](#GPU)  
1. [RAM](#RAM)  
1. [4ifir Optimised](#profile-emc-4ifir-optimised)  

## Tips before setup
* Use EMUNAND
* Make a backup of your saves 
* Install games to test the stability of your settings
* The current parameters that you set in 4IFIR WIZARD are stored in the file  atmosphere\kips\loader.kip
* If the console stops turning on after changing a parameter, revert to the previous value through safe-mode
* If you can't roll back the changes via safe-mode, use KipTool - a payload-based tool that allows you to edit the value of the parameters in your `loader.kip` file.
Installation and usage instructions can be found on the [project page](https://github.com/kawaii-flesh/KipTool)
* If you are unable to go to semi-stock and the console does not start after configuring anything in **4IFIR Wizard**, you can replace the file `atmosphere/kips/loader.kip` with a backup of your previous kip, *do not forget to rename the backup file to `loader.kip`*. Kip backups are located in the `atmosphere/kips/.bak` folder (enable invisible folders in Explorer). If there are no backups, you can get the standard `loader.kip` from your version of 4IFIR in the `atmosphere/kips/loader.kip` folder.  
* You should install HB Menu as an application [.nsp file from the link](https://t.me/kf4fr/48074/547847). Then, perform all manipulations and tests within it.
* To check parameters for stability, start by running MicroMemBench. If everything is OK, proceed with in-game tests, such as Red Dead Redemption, which puts a heavy load on the console.
For more load, you can switch the console to docked mode using ReversNX. Each test should last about 15-20 minutes.

## 4IFIR WIZARD

### CPU
I recommend starting with the CPU settings, as the CPU is independent of RAM and GPU. This means even if you want to create a new kip in the future (more power-efficient or higher-performing), you won't need to reconfigure the CPU section.    
If any of the parameters are "twisted", the console will most likely just freeze after the atmosphere logo. In this case, boot into Safe Mode and revert the parameter to its previous value.  
`Ideally, only two parameters in this section need adjusting: **CPU Minimal Voltage and Low Mhz Undervolt**  
Those parameters that have the default value - eBamatic can be left as they are, as you won't gain noticeable benefits, but you will waste your time`
***
**Go to 4advanced - CPU**
* CPU Minimal Voltage – select the lower threshold of processor consumption.   
>The lower the voltage, the less power consumption. Lower it by one step (e.g., from 620 to 590 mV), restart the system, and run tests.  
>Test in games by setting the minimum frequency via    
>4IFIR Gamechanger -> Temporary overrides (once overclocking is set in this menu, it will persist until the console is restarted) -> CPU  
>If everything is stable, lower the voltage further and continue testing until the system remains stable.     
>Fix the final stable value.
* Low Mhz Undervolt – undervolting levels for CPU frequencies below <=15хх Mhz.  
>The higher the value, the lower the power consumption at frequencies up to 15ххMHz. Increase it by one step, test in games at frequencies up to 15ххMHz with Governor disabled    
>4IFIR Gamechanger -> Edit app Profile -> CPU Freq Governor -> Off    
>Increase until stability is maintained.     
	* CPU Maximum Voltage – set the upper threshold of processor power consumption.  
**It is recommended to leave this value at eBamatic**    
>Set the value to 1150, test in CPU-intensive games (RDR, Hogwarts Legacy, No Man's Sky)  in 4IFIR Maximized mode for CPU. Continue decreasing until stability is maintained. `
* dCPUv - adjusts voltages in the frequency range from 12хх to 18хх MHz  
**It is recommended to leave this value at eBamatic**
>You should act with caution and at your own risk. While catastrophic consequences are unlikely, game and HOS errors may occur.
  It is recommended to back up the configuration before editing to avoid recreating it from scratch, as changes cannot be undone in the configurator.
  You can start with a voltage of 780mV, then decrease or increase it by one step as testing continues (lower voltage means lower power consumption).
  Be sure to test with RAM overclocked and the CPU Freq Governor turned off in the 12хх-18ххMHz frequency range in CPU-intensive games!
* CPU Boost Clock – selects the frequency to which the game will overclock on loading screens.  
**It is recommended to leave this value at eBamatic**
>You can set the maximum value, but eBamatic is more stable 
* High Mhz Undervolt – undervolting levels for proccesor frequencies above >15хх Mhz.    
**It is recommended to leave this value at eBamatic**  
>The higher the value, the lower the power consumption at frequencies above 15xxMhz. 
>Increase it by one step, test in CPU-intensive games (Metro, Hogwarts Legacy, No Man's sky) at frequencies above 15xx MHz with the Governor disabled. Continue increasing until stability is maintained. It is recommended to test in 4IFIR MAXIMIZED mode:  
>4IFIR Gamechanger -> Temporary overrides -> CPU -> 4IFIR MAXIMIZED
* Speed Shift -  reduces the voltage (power consumption) of secondary console components. The higher the value, the lower the power consumption.  
 **It is recommended to leave this value at eBamatic**
>The higher the value, the lower the power consumption 
>Increase it by one step, test

### GPU
Now, you can proceed to GPU configuration   
Tests should only be conducted in games since MemBench does not utilize the GPU
Principle of GPU Voltage Operations:
GPUv Min - depends on the current RAM frequency. However, since this parameter is now adaptive, there is no need to worry about it.
GPU voltages are affected by 2 parameters - GPUv Min (1й приоритет) and Gpu Eco Mode (2й приоритет);  
From the minimum GPU frequency up to *xxx*MHz (a frequency that needs to be determined experimentally) GPUv Min voltages are used
For all other GPU frequencies, voltages from the Gpu Eco Mode table are used
Errors related to "twisted" GPU settings, typically manifest as artifacts in games (texture corruption, random sparkling dots, texture changes). They can also cause an orange screen.
***
**Go to the SmartMode-QuickTune-GPU section**
* GPUv Mode –  levels of the minimum power consumption of the graphics card.   
>The higher the Stage, the lower the voltage and the lower the power consumption.    
>Increase the value by one step and reboot. Does the system work? Great!  
>Launch GPU-intensive games (RDR, No Man's Sky, Hogwarts Legacy).  
>Now that we are in-game, we need to find out, up to what frequency our GPU operates at the minimum voltage we set in this item. But first, for testing, you need to turn off the GPU Freq Governor: 4IFIR Gamechanger -> Edit app Profile -> GPU Freq Governor -> Off;  
>Set the GPU frequency: 4IFIR Gamechanger -> Temporary overrides -> GPU -> *xxx*MHz;  
>You can start with a value of 460MHz. Set it, now go to 4IFIR Gamechanger -> Miscellaneous; Scroll to the bottom and check the GPU volt value: *xxx*MHz, where xxx - is your current voltage. (**This value changes depending on the RAM requency**)    
>Return to Temporary overrides and increase the GPU frequency by one step.  
>Check the GPU voltage in Miscellaneous, repeating this process until the voltage changes.  
>Then decrease the GPU frequency by one step from the maximum value(not gpu maximized, the value after which voltage will change).
>  
>_Example (random values):  
>GPU frequency 72х - 590mv  
>GPU frequency 768 - 590mv  
>GPU frequency 8хх - 600mv  
>Perform tests at 72х._
>  
>In this way, we determine the maximum frequency at the minimum voltage.  
>Now you can test games at this frequency, be sure to enable RAM overclocking. 5-10 minutes of gameplay in several games will be enough.  
>If any failure or freeze occurs while increasing the frequency or during the game test, reduce GPUv. If not, increase and continue testing.  
* Gpu Eco Mode – selects the level of undervolting across the entire frequency range of the graphics card (the higher the level, the more aggressive the undervolting).
>The higher the value, the lower the power consumption at frequencies above those operating in GPUv Mode (determined in the previous step). Therefore, tests should be conducted at these frequencies. It is also recommended to test with the GPU Freq Governor disabled, testing for about 5-10 minutes. If everything is fine, increase the GPU Eco Mode and test again. If not, lower it. _(If you are unsure which frequency to test, test at 4ifir optimized. It's not entirely correct, but it will do)_
* GPU Overvolt - maximum power consumption levels of the GPU
>Leave this at eBamatic, as setting it manually will not provide any benefit

### RAM
First, you should determine the usage scenario for your console, the choice of RAM frequency will depend on it  
1. Eco Mode - For 30 FPS with low power consumption. Frequencies up to 2000 MHz. It's not entirely certain if it's worth configuring this now since there's a RAM 4IFIR Optimized E profile, that, when properly configured, has decent performance (more on this later)
2. Balanced Mode - For 60 FPS (not always stable) but with acceptable power consumption. Frequencies between 2100 - 2400 MHz are optimal for this scenario
3. Maximum Performance - Mode for docked gaming; any frequency from 2400 MHz up to the maximum achievable frequency can be used.
If the chosen frequency does not work, try manually increasing the eBalance (eBal). The higher the eBal value, the higher the frequency that can be achieved.
***
**Go to 4advanced - RAM**  
* RAM Mhz – choose the memory frequency that will be available in the console overclocking menu 4IFIR Gamechanger>Edit app profile/Temporary overrides/Global profile>Memory>4IFIR Optimized S.  
>Select the desired frequency and reboot (go back one step and choose Complete[Reboot])  
>After rebooting, activate the memory overclocking:  
>4IFIR Gamechanger -> Temporary overrides -> Memory -> 4IFIR Optimized S  
>This is a temporary overclock that will reset after a reboot.    
>In the overlay header, under MEM: *xxxx*MHz your value should appear. If everything is fine and the console hasn't frozen, proceed; if not, press the console's power button for 12 seconds to shut it down, boot into safe mode via Hekate, and select a lower RAM value in Wizard.    
>Stability Tests: Run MemBench several times and record the values  
>Games (important). Test for 10-15 minutes in RAM-sensitive games (RDR).  If everything is stable (no artifacts or freezes), continue. If not, select a lower RAM frequency.
* Ebalance – a set of memory optimizations in the ratio of energy efficiency to performance.  
>The higher the eBAL, the higher the RAM frequency you can achieve.      
>0 - eBamatic - auto; it's good enough to be left as it is.  
>1 - This mode has maximum performance but with higher VDDQ compared to mode 2. It's most beneficial to use it at low RAM frequencies (up to 2000 MHz) because the increased voltage doesn't significantly affect anything   
>2 - Less performant but more power-efficient (compared to eBal 1); a must-have for frequencies above 2000 MHz  
>3 - Less performant (compared to eBal 2) but allows for a higher RAM frequency  
>4 - Less performant (compared to eBal 3) but allows for an even higher RAM frequency     
>The lower the value (excluding eBal 1, which has a different logic), the more advantages you gain (the memory bandwidth increases, which is a measure of the Switch's performance).       
>If value 2 works, test it in MemBench and compare it with previous results. If the results improve, proceed to MemTest and check performance in games.       
* RAM Vddq – Memory power supply voltage. The lower the value, the lower the power consumption.  
>Sequentially reduce the values one step at a time and test for stability.  
* RAM Vdd2 – Selects the maximum memory power consumption limit. The lower the value, the lower the power consumption.   
>Sequentially reduce the values one step at a time and test for stability.   
* Eba-shift - Adjustment of the eBal mode  
>When set to 2, it allows increasing the value of the 8th timing (not for everyone).    
* EMC DVB Mode - controls the internal adaptive mechanism of the memory controller. Selecting a more accurate consumption value  
>By default, it is set to eBamatic; manual adjustment won't provide any benefit  
* Core Timings – Memory timing settings.  
>There are eight timings Core Timings 1–8. Timings do not affect each other. Adjust each parameter individually to achieve maximum stable performance. The higher the value of each timing, the higher the performance.    
>Start with a test in MemBench - record the result. Move to the first timing, increase it by one step, restart the console, test in MemBench several times, and record the new result. If the MemBench result improves, continue increasing and testing.
>When you reach a value where the console becomes unstable, freezes, or crashes, return to the previous value and proceed to the game test. There may also be a threshold where further increasing the timing value does not yield any result. A margin of 30-40 MB/s can be ignored, as there could be a situation: at value 4 - 7650 MB/s; at 5 - 7610 MB/s; and at value 6, it might become -7690 MB/s. But, for example, if the values drop to 7100 MB/s at value 5, it makes sense to stay at 4. Once at this value, move to the next timing. The remaining timings are adjusted using the same algorithm.

### Additional Optimizations
* **Smart mode - QuickTune - eBamatic - e.BAMATIC Stage** - Selection of the eBamatic optimization level. The higher the value, the more aggressive the optimization.
>Increase the values one step at a time and test for stability with MemBench + a game  
* **4advanced-4ekate** – A free performance boost (about 200 MB/s) by selecting ST2. (Works not for everyone, there may be problems with the console waking up from sleep)
>No need to test; it either works or it doesn't  
>**IMPORTANT!!!** Currently, enabling ST2 should be done in [KipTool](https://github.com/kawaii-flesh/KipTool/releases/), because enabling ST2 through Wizard causes sleep problems.

### pMeh and sMeh - worth paying attention to
* pMeh 21 - Adjusts the GPU vMin value for 4ifir Optimized S (The higher the value, the lower the minimum voltage. Use InfoNX to monitor the values.)

### Profile EMC-4ifir Optimised

Settings for **EMC-4IFIR Optimized** mode
Test as previously instructed  
* pMeh 19 - GPU vMin for 4ifir Optimised (The higher the value, the lower the minimum voltage. Use InfoNX to monitor the values)
* pMeh 20 - VDDQ/VDD2 for 4ifir Optimised (The higher the value, the higher the voltage. Use InfoNX to monitor the values)
* sMeh 16 - Sets the EMC-Optimized value to 1600 MHz.
* sMeh 8 - Memory efficiency stages in Optimized mode. The higher the value, the greater the performance.

