## Update 4IFIR 2.7
1. **Latitude UI:** New graphical user interface replacing standard qLaunch:
   * Frosted glass visual theme with configurable blur intensity and underlay opacity in `Settings → Themes`.
   * Support for individual animated (video) wallpapers for each game on the home screen.
   * Game icon customization: upload custom logos or fetch directly from SteamGridDB.
   * New modernized **HB Menu** and **Album**.
2. **Built-in `R` Button Shortcuts:**
   * `R + Gameshare` — Built-in Homebrew Store.
   * `R + Nintendo eShop` — Built-in **Ownfoil** (background game installation from personal servers).
   * `R + Virtual Game Cards` — Built-in File Manager.
3. **Background MTP Server:**
   * Constantly active MTP server: connect to PC via USB for direct SD card browsing and drag-and-drop game installations without opening DBI.
4. **Automated 4IFIR & HOS Updates:**
   * System update process integrated into `Settings → System`. Third-party updaters (AiO Switch Updater) and manual Daybreak flows are no longer required.
5. **Ultrahand Overlay:**
   * Upgraded to **Ultrahand Overlay** replacing Uberhand. Config located at `/config/ultrahand/config.ini`.
6. **New 4IFIR Wizard:**
   * Integrated [Ultrahand-4IFIR-Wizard](https://github.com/qret/Ultrahand-4IFIR-Wizard) with new menu layout (eBAMATIC Stage, Advanced, Profiles, Service), hardware-specific backup management (`/atmosphere/kips/.bak/`), JSON profile import, and full support for pMeh 0–22 and sMeh 0–17.

## Update from 18.01.2025 - 4IFIR Houdini
1. Fixed an issue where sliders in EMC Magician with saved profiles reset to default positions upon waking from sleep mode.
2. SaltyNX no longer causes overlays to crash or hang.

## Update from 12.01.2025 - 4IFIR Houdini
1. Cosmetic improvements to 4ekate.

## Update from 06.01.2025 - 4IFIR Houdini
1. Fixed micro-stutter issues in select titles.

## Update from 26.12.2024 - 4IFIR Houdini
1. Added full support for HOS 19.0.x.

## Update from 18.12.2024 - 4IFIR Houdini
1. Release codename updated from **4IFIR Gamechanger** to **4IFIR Houdini**.
2. Reworked timing preset preservation in **EMC Magician** (individual timing profiles are now saved per eBal mode).

## Update from 07.12.2024 - 4IFIR 2.4 Gamechanger
1. Added **EMC Magician** to **4IFIR** overlay for real-time memory timing configuration.

## Update from 12.11.2024 - 4IFIR 2.4 Gamechanger
1.  In **4IFIR Gamechanger > Miscellaneous** added item - **Adaptive EMC Priority**  
2.  In **4IFIR Gamechanger > Miscellaneous** added item - **EMC Magician**  
>Automatic adjustment of sMeh/pMeh for maximum performance at current timings (???)

## Update from 10.11.2024 - 4IFIR 2.4 Gamechanger
1. Added automatic adjustment of monitor/TV frequency when playing in dock mode **(Auto Frame Rate)**  
1. In **4IFIR Gamechanger > Miscellaneous** added item - **Active MC Arbitration**  
>Dynamic memory controller timing management. (Automatic adjustment of sMeh/pMeh for maximum performance at current timings (???))

## Update from 24.09.2024 - 4IFIR 2.4 Gamechanger
1. In **4IFIR Gamechanger > Miscellaneous** added item - TDP Limit

## Update from 20.09.2024 - 4IFIR 2.4 Gamechanger
1. Pre-release -> Release. Increased stability.
2. EMC - Default has become dynamic. EMC - default = the last active EMC mode. If you want the system to switch to EMC - Optimized mode by default on the home screen, set it through Edit Profile for the home screen. If you want it to switch from other modes to Optimized by default for all applications, set it in the Global Overrides profile, and it will be as you want. This will ensure seamless transitions without micro-stutters during in-game loading screens.
3. 4LOG > OLED:
The Fast Charge driver has been improved, and the temperature compensation formula now takes into account the PCB sensor temperature, among other factors.

## Update from 13.09.2024 - 4IFIR 2.4 Gamechanger
1.  Dock mode functionality restored.  

##  Update from 08.20.2024 - 4IFIR 2.4 Gamechanger
1.  KipTool has been added to the build - this is a payload-based tool that allows you to edit the value of parameters in your loader.kip file.  
>Installation and usage instructions can be found on the [project page](https://github.com/kawaii-flesh/KipTool)

## Update from 15.08.2024 - 4IFIR 2.4 Gamechanger
1.  Added automatic adjustment of the screen refresh rate in accordance with the current FPS(analog for VRR)
> **4IFIR Gamechanger > Edit app Profile**/**Temporary overrides**/**Global profile > LCD Freq Governor**
2.  In **4IFIR Gamechanger > Miscellaneous** an item has been added - NVIDIA PRISM 2 (Hardware Accelerated Display ECO feature)
3.  Reworked memory modes for **Edit app Profile**/**Temporary overrides**/**Global profile**
>If you configure 4ifir Optimised S (Wizard) profile, 4ifir Optimised mode (1333 или 1600 MHz) will also be automatically configured.  
>Added EMC mode - 4ifir Optimised E+ (1333 MHz)
4.  Rebalanced **RAM - EMC Ballance - eBamatic**  mode

## Update from 16.07.2024 
1.  Added patches to reduce the delay in sound output via bluetooth
2.  Added patches that fix launch of some games
3.  **4ekate** - updated to version  6.2.1 (now there should be no problems with SemiStock)
4.  **TegraExplorer** - updated to version  4.2.0
5.  In "**AIO - custom downloads**" **4ekate.zip** archive has been updated to the current version (if you install it, 4ekate - ST 2 can be activated without causing problems with sleep)

## Update from 01.07.2024    
1.  **4IFIR Miracle > Gamechanger** item has been hidden (Now it is available 4IFIR Miracle > Miscellaneous open with "Х")  
2.  Restored Semi-stock on 18.1

## Update from 24.06.2024  

### To the overclocking settings **Edit app Profile**/**Temporary overrides**/**Global profile** the following items has been added:
1. LCD - setting the screen refresh rate, i.e. now you can set it individually for each application (Does not work on OLED)
2. RAM - A new profile 4IFIR Optimised S has been added
   >4IFIR Optimised E - Eco mode, the desired RAM frequency can be set in the overlay 4IFIR Miracle > Gamechanger
   >4IFIR Optimised - 2nd mode, the desired RAM frequency and voltages can be set in the overlay 4IFIR Miracle > Gamechanger
   >4IFIR Optimised S - 3rd mode, your settings from 4IFIR Wizard
   
### The following items have been added to the overlay **4IFIR Miracle > Gamechanger**:  
1. Changing the screen refresh rate (Does not work on OLED)
2. Changing the RAM frequency in real time for the profiles 4IFIR Optimised E and 4IFIR Optimised
3. Changing VDD2 and VDDQ in real time for 4IFIR Optimised
4. Changing GPUv Min and CPU min in real time for 4IFIR Optimised
5. Real-time SOC voltage change
