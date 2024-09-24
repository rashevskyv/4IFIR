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
