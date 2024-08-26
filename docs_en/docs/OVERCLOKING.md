# Overclocking 

In 4ifir, overclocking is achieved through deep optimizations of HOS components. The efficiency of hardware per watt is approximately 3-5 times higher than at stock frequencies without overclocking. All this is due to breakthrough memory optimization (overcoming the frequency and timing threshold). 4IFIR implements CPU\GPU\Memory undervolting, thanks to optimizations, 4ifir uses energy much more economically during overclocking than its competitors.

1. [Description of 4IFIR overlay items](#Description-of-4IFIR-overlay-items)   
1. [Setting CPU/GPU/EMC(ram)/LCD](#Setting-CPUGPUEMCramLCD)  
1. [Governors](#Governors)  

## Description of 4IFIR overlay items

Overclocking is configured via the **4IFIR Gamechanger overlay** module. The modules are located in **Uberhand**, which is opened with the combination **(L)+(R)+(▲)**.

**Parameters in the header:**     
>App ID - shows the titleid of the running game   
>Profile - the parameter is synchronized with the ReverseNX-RT settings (if the corresponding setting is enabled in the parameters) and shows what mode the console is currently running in (**Docked** - docking station mode, **Handheld** - portable)  
>CPU - current processor frequency   
>GPU - current video processor core frequency   
>MEM - current memory frequency   
>SOC - processor temperature (SoC - system on chip, means that both the video core and the central processor are located on one chip, so they have the same temperature for both)  
>PCB - console board temperature   
>Skin - console temperature itself (?)  

**Enable** - is responsible for activating overclocking. On - enabled, Off - disabled
   
**Edit app Profile** - overclocking profile settings for the running application. The specified settings will be automatically applied when the application is launched. They have medium priority. 

**Advanced:**
* Temporary overrides - overclocking settings for all applications. The specified settings are applied to all launched applications and are valid until the console is rebooted. They have the highest priority.
* Global profile - overclocking settings for all applications. The specified settings are applied to all launched applications. They have the lowest priority.
* Gamechanger - Setting the screen refresh rate and setting the RAM profiles - 4IFIR Optimised and 4IFIR Optimised E 
* Miscellaneous - a section with additional settings. Contains the following options:
   * Auto CPU Boost - an active auto-boost layer. It increases the CPU frequency when there is a load on the system core, which usually means loading data, streaming textures, locations, etc. It's better to disable it on Erista, as it affects battery life
   * Sync ReverseNX Mode - a setting that synchronizes the state of the ReverseNX value with the sys-clk profile. This means, that if **Handheld** is set in ReverseNX, then the active profile in sys-clk will be **Handheld**, if **Docked**, then **Docked** accordingly
   * Frequency Governor - enables governors in **Edit app Profile**
   * Charging current - charging current limit
   * Charging Limit - the limit to which the console will charge
   * Force Disable Charging - an option that allows you not to charge the battery when working from a charger. That is, the battery will not run down, but it will not actually charge either. Allows you to avoid problems with battery desynchronization 
   * Screen Backlight - disables the screen backlight. Useful in conjunction with sys-dvr 
   * Info - various metrics:   
   >Charger - type of charger connected to the console. Voltage and amperage are shown, as well as power in watts  
   >Battery - battery voltage and its temperature  
   >Current Limit -   
   >Charging Limit - the value specified in **Charging current**  
   >Raw Charge - Battery charge that the charging controller gives   
   >Battery Age - battery "health"  
   >Power Role -   
   >Current Flow - current consumption   
   >CPU Volt - CPU voltage   
   >GPU Volt - GPU voltage   
   >DRAM Volt - memory voltages   

## Setting CPU/GPU/EMC(ram)/LCD
  Overclocking is performed by changing the maximum frequency for CPU/GPU/EMC(Memory)/LCD(Screen refresh rate) through the overclocking settings **Edit app Profile**/**Temporary overrides**/**Global profile**.   
  The settings will be applied depending on the priority (**Temporary overrides** -> **Edit app Profile** -> **Global profile**).   
  **Temporary overrides** have the highest priority, if no settings are specified there, the program looks at the settings from **Edit app Profile**, if it is empty, the settings from **Global profile** are applied. And if there is nothing there, the default system settings (**Default**) are set.


**Global profile** and **Edit app Profile** contain a division into profiles: 
  * **Docked**
  * **Handheld**
  * **Charging**
  * **Official Charging**
  * **USB Charger** 

>Profiles also have their own priority. From highest to lowest: **Docked** -> **Official Charging** / **USB Charger** -> **Charging** -> **Handheld**.    
The principle of application is exactly the same. The **Docked** mode has the highest priority and overwrites the values ​​of profiles with a lower priority. **Official Charging** or **USB Charger** have the same priority and overwrite the values ​​of the **Charging** and **Handheld** profiles, and so on.

>Each of the profiles contains separate items for overclocking **CPU**, **GPU**, **EMC(ram)**, **LCD**. Each of these items has a **Default** value, which is responsible for the default value, which is taken from the previous overclocking priority setting (Temporary/App/Global/System value) from the profile of the corresponding priority. Operating frequencies are selected individually for each specific game on each specific console. More details about frequency selection will be below. 

>The **Docked** and **Handheld** profiles are synchronized with the Reverse-NX settings (can be disabled in **Miscellaneous** of the **4IFIR Gamechanger** module) and depend on the console operating mode (dock/portable). The **Charging** profile is enabled when any charger is connected to the console. The **Official Charger** profile is enabled when the original charger is connected, or any other, but with support for the Power Delivery protocol. The **USB Charger** profile, when any other charger is connected. That is, you can set up a separate overclocking profile for charging from any source and separately for a powerful or low-power one, with the latter having higher priority.


## Governors

**Edit app Profile** contains governor management

A governor in the context of processor frequency management is a program or mechanism that controls the processor frequency and its energy consumption.

The essence of the governor's work is to determine the optimal processor frequency depending on the load on it. If the processor is not loaded, the governor can reduce its frequency to reduce energy consumption and reduce heat generation. If the processor receives a high load, the governor can increase its frequency to ensure high performance.

**CPU Freq Governor** - enable or disable frequency control of the **central** processor
**GPU Freq Governor** - enable or disable frequency control of the **graphics** processor
**LCD Freq Governor** - enable or disable control of the console display refresh rate, analog for VRR

These items will be available only if the **Frequency Governor** value is enabled in **Miscellaneous**

>Enabling the GPU governor in some games can lead to slowdowns or a decrease in FPS (for example, Metroid Prime Remastered sometimes drops the FPS to 30 when exiting the map into the game). If this is observed in your game, disable the governor for the GPU.

***

**For more effective overclocking for your console, you need to configure the parameters in 4IFIR Wizard on which your console is capable of working. All this is done experimentally and individually for each specific console and, moreover, for each specific game.**
