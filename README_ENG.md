# 4IFIR 1.5 by **[Cooler3D](https://github.com/Cooler3D)**

[ИНСТРУКЦИЯ НА РУССКОМ](README.md) | [OPTIMAL OVERCLOCKING SETTINGS](OPTIMAL_OVERCLOCKING.md) | [Telegram](https://t.me/kefir_switch/48074)

Translated from Russian to English using the generative model GPT-4. Please report any inaccuracies in Issues and make Pull Requests.

![](https://gbatemp.net/attachments/1_done-png.359267/)

**ATTENTION! The guide is still a work in progress! Pull requests with corrections and additions are welcome.**

The guide is extensive. Use the search function to use it successfully.

This is a collection of modified components designed to maximize the overclocking of the Nintendo Switch and improve the user experience through additional functionality. The modification is intended for those who would like to get the most out of their console, achieve graphics on par with the PS4 (recommended to be used in conjunction with mods by [ECLIPSE00074](https://4pda.to/forum/index.php?showuser=176532)), unlock 60fps, speed up loading times, fix the native resolution, emulate PS2 at full speed (if an emulator for Switch is available, of course), reduce cooling system noise, etc.

In the case of 4IFIR, overclocking does not mean unlocking frequencies within stock tables, but rather overclocking that includes overvolting of each overclocked component. By installing the modification without theoretical preparation, you remove the author's responsibility for any possible consequences, including console failure, and fully assume the risks yourself. According to my circuit calculations, if they are correct, no problems should arise. Currently, there have been no incidents of console failure. However, your console could be the first, as safe overclocking is impossible by definition. I have warned you. To prevent potential software issues, use EmuNand, FAT32, and have backups. To avoid conflicts, it is recommended to perform a clean installation.

## Table of Contents

1. [What can 4IFIR do?](#what-can-4ifir-do)
1. [Composition of 4IFIR](#composition-of-4ifir)
1. [Installation](#installation)
   * [Installation (with kefir or other build)](#installation-with-kefir-or-other-build)
   * [Update (transition from previous versions), clean reinstallation](#update-transition-from-previous-versions-clean-reinstallation)
   * [Additional methods](#additional-methods)
1. [How to use 4IFIR](#how-to-use-4ifir)
   * [Enabling and disabling modules](#enabling-and-disabling-modules)
   * [Managing Console Operation Mode (portable \ dock, ReverseNX-RT)](#managing-console-operation-mode-portable--dock-reversenx-rt)
   * [Overclocking](#overclocking)
      * [Frequency and governor settings (4IFIR Kraken)](#frequency-settings-and-governor-4ifir-kraken)
      * [STAGE (Self-Torture by Aggressive Generation of Explosions)](#stage-self-torture-by-aggressive-generation-of-explosions)
   * [Squeeze more - cheats and patches for graphics improvement](#squeeze-more---cheats-and-patches-for-graphics-improvement)
      * [Cheats](#cheats)
      * [Modifications](#modifications)
      * [FPSLocker](#fpslocker)
   * [Performance Optimization, Choosing Suitable Frequencies, and Power Consumption](#performance-optimization-choosing-suitable-frequencies-and-power-consumption)
1. [Troubleshootings](#troubleshootings)
   * [Battery Issues](#battery-issues)
      * [Battery drains from 100% to 1% within minutes, but it works fine at 1% for several hours](#battery-drains-from-100-to-1-within-minutes-but-it-works-fine-at-1-for-several-hours)
      * [When playing with overclocking enabled, the empty battery icon appears after a while](#when-playing-with-overclocking-enabled-the-empty-battery-icon-appears-after-a-while)
      * [The game stopped running and started crashing](#the-game-stopped-running-and-started-crashing)
      * [Witcher 3 won't start](#witcher-3-wont-start)
      * [FPS in-game always shows 0\254 \ ReverseNX does not switch modes](#fps-in-game-always-shows-0254--reversenx-does-not-switch-modes)
1. [FAQ](#faq)
1. [Licenses](#licenses)
1. [Acknowledgments](#acknowledgements)

## What can 4IFIR do?

* Overclocking up to 2397 Mhz for CPU, 1536 Mhz for GPU, 24xx Mhz for RAM (the precise limit varies for each console)
* Automatic overvolting
* Automatic boost on game launch
* Support for governors - reducing resource consumption when the console is idle
* Video recording without restrictions in all games except a few unsupported ones
* Wireless video streaming with increased bitrate, 60 frames per second, to external monitors - virtually without delay
* Dock mode emulation
* Accelerated charging
* Lowered threshold for Official Charger current
* Radically reduced system cooling noise
* Overlay with FPS and system metrics
* On-screen menu for managing listed features on-the-fly
* Background FTP server
* Required system modules for all of the above to work together

## Composition of 4IFIR

1. [4efirosphere](https://cloud.sintez.io/s/4IFIR?path=%2FMariko), a fork of [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere) that unlocks the console's overclocking potential.
2. [Sigpatches](https://jits.cc/patches), which unlock the gaming potential of the console.
3. [4ekate](https://cloud.sintez.io/s/4IFIR), a fork of [hekate](https://github.com/CTCaer/hekate) that unlocks the console's memory overclocking potential.
4. Installed payloads:
   * [Lockpick_RCM](https://github.com/shchmue/Lockpick_RCM) - a program for dumping console keys.
   * [TegraExplorer](https://github.com/rashevskyv/TegraExplorer/) - a low-level file manager for working with the system.
5. Installed Homebrew:
   * [AiO Switch Updater](https://github.com/rashevskyv/kefir-updater) - a program for updating 4IFIR to the latest version.
   * [Homebrew App Store 2.2](https://github.com/fortheusers/hb-appstore/releases) - an app store.
   * [Daybreak](https://github.com/Atmosphere-NX/Atmosphere/tree/0.14.1/troposphere/daybreak) - a program for updating system software.
   * [DBI](https://github.com/rashevskyv/dbi) - a potentially better file manager, save manager, and program installer for the console.
   * [Fizeau](https://github.com/averne/Fizeau) - a program that allows you to change color display settings on the screen.
   * [SysDVR](https://cloud.sintez.io/s/4IFIR), a fork of [SysDVR](https://github.com/exelix11/SysDVR) - a program for wireless transmission of images from the console to a PC or other device.
   * [sys-ftpd](https://cloud.sintez.io/s/4IFIR), a fork of [sys-ftpd](https://github.com/cathery/sys-ftpd) - an FTP server running in the background.
6. Installed modules. Modules are additional components that work within Atmosphere and allow you to do cool things like using Xbox-compatible controllers, amiibo emulation, overclocking, and more.
   * [SaltyNX](https://cloud.sintez.io/s/4IFIR), a fork of [SaltyNX](https://github.com/masagrator/SaltyNX), a background module that allows you to modify files/processes on the console, supports plugins. Not compatible with 32-bit games (list on the project's GitHub). Required for some other modules to work (e.g. ReverseNX).
   * [ReverseNX-Tool](https://cloud.sintez.io/s/4IFIR), fork of [ReverseNX-Tool](https://github.com/masagrator/ReverseNX-Tool) - a program that forcibly switches console modes between docked and portable, regardless of whether the console is in the dock or not. Potentially improves image quality on the portable screen by rendering images as if the console were in the dock.
   * [sys-clk](https://cloud.sintez.io/s/4IFIR), fork of [sys-clk](https://github.com/retronx-team/sys-clk), a module responsible for overclocking the CPU, memory, and GPU, resulting in better performance.
   * [sys-con](https://github.com/cathery/sys-con) - a module that allows connecting virtually any gamepad to the console via USB.
   * [Tesla Overlay Menu](https://cloud.sintez.io/s/4IFIR), fork of [Tesla Overlay Menu](https://github.com/WerWolv/Tesla-Menu/) - a special overlay menu for interacting with the system: overclocking, managing modes through ReverseNX, enabling cheats, and more.
     - [FPSLocker](https://github.com/masagrator/FPSLocker) - an overlay that allows locking FPS in games.
     - [nx-ovlloader](https://github.com/WerWolv/nx-ovlloader/) - this module enables switching between installed modules via Tesla.
     - [ovlEdiZon](https://github.com/proferabg/EdiZon-Overlay/releases) - an overlay for using cheats.
     - [ovlSysmodules](https://github.com/WerWolv/ovl-sysmodules/) - an overlay for enabling and disabling installed system modules.
     - [InfoNX-ovl](https://github.com/renA21/InfoNX/) - an overlay that shows battery/CPU/GPU/DRAM(EMC) information.
     - [QuickNTP](https://github.com/nedex/QuickNTP) - an overlay for clock synchronization over the internet, as the native one is disabled in the firmware.
     - [Status-Monitor-PRO](https://cloud.sintez.io/s/4IFIR), fork of [Status-Monitor-Overlay](https://github.com/masagrator/Status-Monitor-Overlay) - a module for monitoring console parameters in real-time. Can act as an FPS counter in the upper-left corner of the screen.
     - [sys-ftpd-ovl](https://github.com/SegFault42/sys-ftpd-ovl) - an overlay for working with sys-ftpd via Tesla.
     - [sysdvr-overlay](https://github.com/Hartie95/sysdvr-overlay), fork of [sysdvr-overlay](https://github.com/Hartie95/sysdvr-overlay) - an overlay for configuring SysDVR via Tesla.
     - sys-clk overlay - an overlay for managing overclocking via Tesla.
     - Fizeau overlay - an overlay for configuring Fizeau via Tesla.
     - ReverseNX-RT overlay - an overlay for switching console mode via Tesla.

## Installation

**IMPORTANT! Follow the instructions strictly and do not deviate from them. In case of any problems, return to the instructions and reinstall 4IFIR from scratch.**

Versioning of the chip is very conditional (it's simpler to say, it's completely absent), so many updates can be released without changing the version of the chip at all. You can follow the new versions in the [chip chat](https://t.me/kefir_switch/48074), or on [this page](https://github.com/rashevskyv/4ifir-checker), where it will be shown when a new version is released and what specifically has changed in it. Updating from current 4ifir installation possibly over [AIO](#update-transition-from-previous-versions)

### Installation (with kefir or other build)
1. Unzip the [All in One Updater with 4IFIR's config](https://sintez.io/aio.zip) to the console memory card
1. Launch [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **All in One Updater**
   * If you get a black screen instead of launching the app, download the app manually from its [repository](https://github.com/HamletDuFromage/aio-switch-updater) and manually enter this address `https://sintez.io/aio.zip` in Custom downloads > Add custom link, then restart the app
1. Go to **Custom Downloads** > **4IFIR 1.5** > **Continue**, choose **Yes** when asked to overwrite `ini`, choose **No** when asked to reinstall hekate, the console will reboot

### Update (transition from previous versions), clean reinstallation
1. Launch [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **All in One Updater**
   * If you get a black screen instead of launching the app, download the app manually from its [repository](https://github.com/HamletDuFromage/aio-switch-updater) and manually enter this address `https://sintez.io/aio.zip` in Custom downloads > Add custom link, then restart the app
1. Go to **Custom Downloads** > **4IFIR 1.5** > **Continue**, choose **Yes** when asked to overwrite `ini`, choose **No** when asked to reinstall hekate, the console will reboot

### Additional methods
* Fresh installation is needed _only_ for those who don't have any system installed at all, but already have the ability to launch it from a memory card (for example, if a chip is installed).
* Debug installation is a method that should be used _only_ if you understand what you're doing or if you have been asked to do so by a [competent person](https://t.me/Cooler3D).
   
#### Fresh installation
1. Unzip [4IFIR](https://sintez.io/4IFIR.zip) to the console's memory card
   * The card must be in [FAT32](https://format.customfw.xyz)
   * It is recommended to work with the memory card through a card reader, not through the console.
1. Insert the card into the console and turn it on

#### Debug installation
**Perform only in case of problems with the above methods**
1. Remove everything from the memory card except for the Nintendo and emummc (if any) folders (the folder with save backups, such as JKSV, should not be deleted either)
   * The card must be in [FAT32](https://format.customfw.xyz)
   * It is recommended to work with the memory card through a card reader, not through the console.
1. Unzip [4IFIR](https://sintez.io/4IFIR.zip) to the console's memory card
1. Insert the card into the console and turn it on

## How to use 4IFIR

All settings are made through the Tesla menu, which is called by the key combination (L) + (R) + (▲), where (L) is the upper bumper of the left joy-con, (R) is the upper bumper of the right joy-con, and (▲) is the up button on the "D-pad". 

**You can set any combination in the `/config/tesla/config.ini` file or simply delete it, in which case the default combination will be restored.**

After simultaneous pressing of these three buttons, the Tesla menu with the following items will appear: 

* **FPSLocker** - module for locking frame rates in games
* **Fizeau** - module for controlling display and its color profiles
* **InfoNX** - module showing extended information about console power consumption
* **QuickNTP** - module for clock synchronization via internet, since the built-in synchronization method in kefir is disabled
* **ReverseNX-RT** - module allowing to forcibly choose console operation mode (portable or docked)
* **Status Monitor** - module displaying system metrics in real time over the screen, without taking away control from the game. There are many operating modes, including a mode that allows you to display frequency and FPS counters in the upper left corner of the screen.
* **EdiZone** - module for cheat management
* **Sysmodules** - module for managing modules. Allows you to enable/disable installed modules
* **4IFIR Kraken** - module for managing overclocking profiles
* **SysDVR Overlay** - module controlling streaming of console image to PC via WiFi or cable

Pressing **(A)** on a item will open its personal menu.
### Enabling and Disabling Modules

The **Sysmodules** module allows you to enable and disable selected modules, as well as manage their autoload. Keep in mind that some modules can be enabled and disabled without rebooting, but some modules require a console reboot after being enabled.

The module's state is indicated to the right of its name, for example **On | х**, where On refers to the current state of the module (On - enabled, Off - disabled), and **х** indicates whether the module is set to autoload (**х** - not set, **house icon** - set).

Press the **(A)** button to enable or disable a module. The (Y) button enables or disables the module's autoload. If pressing the (A) button does not change the module's state, it can only be controlled by restarting the console. Enable the module's autoload and reboot the console for it to start working, or disable it and reboot to stop it.

Modules that can be enabled at any time are grouped at the top into the **Dynamic** group, while those that require a reboot are grouped into the **Static** group.

### Managing Console Operation Mode (portable \ dock, ReverseNX-RT)

The **ReverseNX-RT** module allows you to forcibly enable dock mode while playing in portable mode and vice versa. Use the **Change system control** button to enable forced mode switching (displayed in the **Controlled by system** line, the **No** position means you can change modes manually). After that, you can switch modes with the Change mode button (displayed in the **Mode** line, where **Docked** - dock mode, **Handheld** - portable).

It is important to understand that in dock mode, the console forcibly increases the processor's operating frequencies, resulting in a higher-quality image but also faster battery consumption.

### Overclocking

In chifir, overclocking is achieved through deep optimizations of HOS components. The efficiency of the hardware in terms of watts is approximately 3-5 times higher than at stock frequencies without overclocking. All this is thanks to breakthrough memory optimization (overcoming frequency and timing thresholds). At the moment, undervolting in the classic sense is not implemented in 4IFIR, however, thanks to optimizations, chifir consumes energy much more economically when overclocking than its competitors.

For stable overclocking, you need to select the stage at which your console can work, and then the operating frequencies for the CPU\GPU\Memory and other settings. All this is done experimentally and individually for each specific console and, moreover, for each specific game.

#### Frequency Settings and Governor (4IFIR Kraken)

Overclocking is configured through the 4IFIR Kraken overlay module.

The header contains the following parameters:
* **App ID** - displays the titleid of the running game
* **Profile** - a parameter synchronized with ReverseNX-RT settings (if the corresponding setting is enabled in the parameters) and shows the current console mode (**Docked** - dock mode, **Handheld** - portable)
* **CPU** - the current processor frequency
* **GPU** - the current video processor core frequency
* **MEM** - the current memory frequency
* **SOC** - processor temperature (SoC - System on a Chip, meaning that the video core and central processor are on the same chip, so they share the same temperature)
* **PCB** - console board temperature
* **Skin** - console temperature (?)

* **Enable** - responsible for activating overclocking. On - enabled, Off - disabled
* **Edit app Profile** - overclocking profile settings for the running application. The specified settings will be automatically applied when the application is launched. They have medium priority.

* Advanced
   * **Temporary overrides** - overclocking settings for all applications. The specified settings apply to all launched applications and are valid until the console is rebooted. They have the highest priority.
   * **Global profile** - overclocking settings for all applications. The specified settings apply to all launched applications. They have the lowest priority.
   * **Miscellaneous** - additional console settings, such as charge voltage limitation, auto boost, charge percentage limitation, and others. More details will be covered separately.

Overclocking is done by changing the maximum frequency for CPU/GPU/Memory through the overclocking settings **Global profile**/**Edit app Profile**/**Temporary overrides**. The settings will be applied depending on the priority (**Temporary overrides** -> **Edit app Profile** -> **Global profile**). The highest priority is with **Temporary overrides**, if there are no settings specified there, the program looks at the settings in **Edit app Profile**, if it is empty, the settings from **Global profile** are applied. And if there is nothing there either, the system's default settings (**Default**) are applied.
**Global profile** and **Edit app Profile** are divided into profiles:
  * **Docked**
  * **Handheld**
  * **Charging**
  * **Official Charging**
  * **USB Charger**

Profiles also have their own priority. From highest to lowest: **Docked** -> **Official Charging** / **USB Charger** -> **Charging** -> **Handheld**. The application principle is exactly the same. **Docked** mode has the highest priority and overwrites the values of lower priority profiles. **Official Charging** or **USB Charger** have the same priority and overwrite the values of **Charging** and **Handheld** profiles, and so on.

**Docked** and **Handheld** profiles are synchronized with Reverse-NX settings (can be disabled in **Miscellaneous** of **4IFIR Kraken** module) and depend on the console mode (dock/portable). The **Charging** profile is activated when any charger is connected to the console. The **Official Charger** profile is activated when connecting the original charger, or any other charger with Power Delivery support. The **USB Charger** profile is activated when connecting any other charger. That is, you can set up a separate overclocking profile for charging from any source and separately for powerful or low-power sources, with the latter having a higher priority.

**Edit app Profile** contains governor management.

A governor, in the context of CPU frequency management, is a program or mechanism that controls the processor's operating frequency and energy consumption.

The governor's task is to determine the optimal processor frequency depending on the load on it. If the processor is not loaded, the governor can reduce its frequency to reduce energy consumption and heat dissipation. If the processor is under high load, the governor can increase its frequency to ensure high performance.

* **CPU Freq Governor** - enable or disable **central** processor frequency management
* **GPU Freq Governor** - enable or disable **graphics** processor frequency management

Both of these items will be available only if the **Frequency Governor (Experimental)** value is activated in **Miscellaneous**.

Enabling the GPU governor in some games may cause stuttering or decreased FPS (for example, Metroid Prime Remastered sometimes drops FPS to 30 when exiting the map to the game). If your game experiences this, disable the GPU governor.

Each of the profiles contains separate items for overclocking **CPU**, **GPU**, and **Memory**. It's easy to understand what each item does by its name. Each of these items has a **Default** value, which is responsible for the default value taken from the previous overclocking setting (Temporary/App/Global/System value) in the corresponding priority profile. Working frequencies are selected individually for each specific game on each specific console. More details on frequency selection will be below.

* **Miscellaneous** - section with additional settings. It contains the following options:
   * **Auto CPU Boost** - active layer of auto boost. Increases CPU frequency under system core load, which usually means loading data, streaming textures, locations, etc. On Erista, it is better to disable, as it affects battery life
   * **Sync ReverseNX Mode** - setting that synchronizes the state of the ReverseNX value with the sys-clk profile. That is, if Reverse is set to **Handheld**, the active sys-clk profile will be **Handheld**, if **Docked**, then **Docked** accordingly
   * **Frequency Governor (Experimental)** - enables governors in **Edit app Profile**
   * **Charging current** - charging current limit
   * **Charging Limit** - limit to which the console will be charged
   * **Force Disable Charging** - option that allows not charging the battery while working from a charger. That is, the battery will not discharge, but it will not be charged either. Helps avoid battery desynchronization problems
   * **Screen Backlight** - disables screen backlight. Useful in combination with sys-dvr
   * **Info** - various metrics:
      * **Charger** - type of charging device connected to the console. Displays voltage and amperage, as well as power in Watts
      * **Battery** - battery voltage and temperature
      * **Current Limit** -
      * **Charging Limit** - value specified in **Charging current**
      * **Raw Charge** - Battery charge provided by the charging controller
      * **Battery Age** - "health" of the battery
      * **Power Role** -
      * **Current Flow** - current consumption
      * **CPU Volt** - CPU voltage
      * **GPU Volt** - GPU voltage
      * **DRAM Volt** - memory voltage

#### STAGE (Self-Torture by Aggressive Generation of Explosions)

The higher the STAGE, the more aggressive the optimization of timings/undervolting values. The faster and more energy-efficient the gaming console. The stock 4IFIR 1.5 should work on any console and its performance is equivalent to STAGE 6+. The probability of ST7 and higher working for you depends on the [luck of the CPU binning process](https://www.computerra.ru/285384/dzhekpot-kremnievoj-loterei-chto-takoe-binning-protsessory/) of your specific console.

The selection of stages is done in **AiO Updater**, in the **Custom Downloads** menu. After selecting the stage, the console must be restarted.

To choose a stable stage, test the console as follows:

**WARNING!!!** If at any stage during stage testing there is a freeze, or the game freezes, or artifacts appear on the screen, or any unexpected console behavior occurs, lower the stage. Your current console can't handle it!

1. Select the maximum available stage in AiO, restart
1. Disable governors (**4IFIR Kraken** > **Frequency Governor (Experimental)** > **Off**)
1. Select the maximum available memory frequency.
1. If the console doesn't freeze, select the maximum available GPU frequency
1. If the console doesn't freeze, select the maximum available CPU frequency
1. If the console doesn't freeze, launch any heavy game and test it for 10-15 minutes.
1. If no glitches/freezes/artifacts are detected, congratulations, your console has won the silicon lottery.

You can achieve stable stage operation by lowering memory or GPU frequencies.

### Squeeze more - cheats and patches for graphics improvement

#### Cheats

In addition to the ability to enable dock mode while playing in handheld, you can also install graphics modifications for games. Some of them activate a higher frame rate, some allow you to use the performance of an overclocked console to improve the displayed image, while others, on the contrary, improve the game's performance for stable operation at non-overclocked frequencies.

You can get cheats to unlock 60FPS in some games in **AiO Updater** > **Download cheats** > **Download graphics enhancing cheats**. If there are corresponding cheats for installed games, they will be installed automatically. Remember that if you already had cheats installed for these games, installing cheats for unlocking will delete the existing cheats. However, if you have FPS unlocking cheats, installing regular cheats through the updater will simply add them, preserving the unlocking cheats.

Activate cheats through the **Tesla** > **EdiZon** > **Cheats** menu in the enabled game. In the menu that appears, activate the required cheat. After restarting the game, the cheats you activated earlier will also be active!

#### Modifications

Look for mods to improve the picture [on 4PDA](https://4pda.to/forum/index.php?act=findpost&pid=81825647&anchor=Spoil-81825647-8) or in the Telegram bot [Switch_library_bot](https://t.me/Switch_library_bot) by request `/mods` (password for the bot - `kefir`).

Installing a mod varies depending on how exactly it is made.

* If the mod comes in the form of a LayeredFS folder, you need to put it in `/atmosphere/contents/%TitleID%/romfs`, where TitleID is the title id of your game, consisting of 16 characters in hexadecimal (for example, 01002CC003FE6000). Pay close attention to how exactly such a modification is distributed and do not allow nested folders. For example, if you see an `atmosphere` folder in the mod archive, simply unpack it to the root of the memory card and agree to replace files. If there is a folder with the game's title id in the archive, place it in the `/atmosphere/contents/` folder. Make sure the folder is not duplicated (for example, `/atmosphere/contents/01002CC003FE6000/romfs` is correct, while `/atmosphere/contents/01002CC003FE6000/01002CC003FE6000/romfs` or `/atmosphere/atmosphere/contents/01002CC003FE6000/romfs` is not correct), otherwise the mod will not work.
* If the mod comes as an IPS patch, that is, as a file or files with the `*.ips` extension, place it in the `atmosphere/exefs_patches` folder. In the `atmosphere/exefs_patches` folder, you can create a folder with the name of the mod, which is allowed. If the mod archive contains just an `exefs_patches` folder, place it with replacement in the `atmosphere` folder. Often, mods can combine both methods, then you need to understand what exactly to copy and where. If something is unclear, try searching for information where you downloaded these mods or in a text file that may be distributed with the mod.

Mods installed this way are automatically activated when the game is launched.

Remember that the game version for which the mod was made is important. A mod made for one game version may not work on another.

Don't hesitate to play with frequencies and use the Status Monitor to achieve the best stable result!

#### FPSLocker

With this plugin, you can unlock the frame rate in some games without using cheats.

Metrics in the header:
* **Large number on the right** - shows how many frames have passed in the last second for the running game. Allows you to make sure the program is working correctly
* **Interval Mode** - internal game engine value based on NVN API, can take a value of **0**, **1**, or ****2****. By changing this value, we can change the maximum amount of FPS in the game. **2** - 30 FPS, **1** - 60 FPS, **0 - means the game has no FPS limit or uses another API.
* **Custom FPS Target** - shows the maximum number of FPS for a particular game. If the game uses its own engine FPS restrictions, rather than the standard ones, it may be impossible to unlock more than 30 FPS without additional patches

Switches:
* **Increase/Decrease FPS target** - change the target number of frames per second in increments of 5 FPS. **Minimum** - 15 FPS, **maximum** - 60 FPS. If FPS is set above 30, then **Interval Mode** is set to 1. Otherwise, it is set to 2.
* **Disable custom FPS target** - removes the FPS limit depending on the set **Interval Mode**. If **Interval Mode** is 2, the game will be capped at 30 FPS, if 1, at 60.
* **Sync Wait (!)** - this is a dangerous setting that in most cases will lead to the game crashing (for example, Witcher 3 and Breath of The Wild), but in some cases, it can be beneficial by disabling double buffering, introducing minor graphical artifacts (for example, Xenoblade Chronicles 3). Use with caution. It is recommended to keep this **enabled**.
* **Save settings** - save the profile for the currently running game, which will be automatically loaded by the plugin at launch next time. Do not use this feature if you have disabled synchronization (Sync Wait Off) and have not tested its safety, so you do not have to manually delete the saved profile. The profile is saved in `SaltySD/plugins/FPSLocker/TITLEID.dat`

### Performance Optimization, Choosing Suitable Frequencies, and Power Consumption

To achieve optimal performance and avoid excessive energy consumption on your device, it is necessary to select frequency parameters that prevent the game from lagging. It is recommended to use the Status Monitor, a tool that allows you to track the load on your device's components.

To find the optimal balance between performance and power consumption, you can lower (or raise) the frequency settings according to the component load results in the Status Monitor. Find the point where the hardware is not loaded at 100%, but close to that level. Remember that memory is the "bottleneck" on the switch, and it can be overclocked virtually for free, meaning you can set it to the maximum at which the device operates stably without affecting battery consumption. The higher the stage, the "cheaper" memory overclocking is for the console, and the more efficient it becomes. Overclocking the CPU is usually not very useful (but there are exceptions). Therefore, the optimal option to start with would be maximum memory overclocking and CPU/GPU overclocking somewhere in the middle. It is recommended to disable governors during this process. If the game still lags, add GPU frequency and do this until the lags disappear completely. Then enable the governors. If FPS drops are observed after their activation, disable the GPU governor, as it can often lead to these drops.

Don't chase frequencies and numbers. The only measure of successful overclocking is your comfort while gaming. Frequencies do not reflect actual performance or power consumption. Keep in mind that each device has unique characteristics, so you need to adjust frequencies according to the specific model of your device and the games you plan to run on it. Each game has unique requirements.

Using the **InfoNX** module, you can monitor the console's power consumption. Measure consumption in the tested game without overclocking and with overclocking, and then find a balance between performance and power consumption. Remember that the higher the energy consumption, the faster the battery will drain in portable mode. For operation in dock mode or from a charger, power consumption is not that important.

## Troubleshootings

### Battery Issues

The battery does not degrade due to current strength but only when reaching a certain temperature. However, built-in protection mechanisms based on the laws of physics disconnect the power supply long before the temperatures reached have a chance to harm the battery, preventing the degradation of the cells' chemical properties.

MARIKO is equipped with the PMIC MAX77812 controller, designed for currents up to 6A CPU / 12A GPU. Reach the limit = catch the shutdown and go into protection mode.
ERISTA, surprisingly, is equipped with a more powerful PMICs MAX77621 controller, with 16A CPU / 16A GPU.

A load above 15 watts (approximately; exact current limit values for different console models are specified in the manufacturer's specifications) can lead to a decrease in the estimated residual battery capacity in the Nintendo Switch console. The console's power controller compares actual readings with factory-set readings, and in case of an exceedance, it triggers an emergency shutdown. The console may think that the battery cannot handle the load and reduces the estimated residual capacity by 1% with each failure. This can cause the console's charge indicator to instantly drop to 1% charge when the battery is under load. Battery Fix may allow you to "regenerate" the battery capacity mistakenly written off.

#### Battery drains from 100% to 1% within minutes, but it works fine at 1% for several hours

The power controller is designed for a peak power consumption of approximately 15W. If exceeded, the console will activate emergency protection and shut down. You need to reduce the demands, as this affects the controller's calibration data. The console may think that the battery cannot handle the load and lower its estimated residual capacity by 1% with each failure. This can cause the console's charge indicator to instantly drop to 1% charge when the battery is under load. To solve this problem, exists the [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx) program.

**WARNING!!!** Do not run [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx) if you don't have battery problems, or else they will appear! You will need to perform separate calibrations for stock and each of your emuNANDs separately, as calibration data is stored separately in each!

To reset battery statistics:
1. Launch [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx)
2. Press (X) to reset statistics
3. Press (B) to exit the application
4. Reboot the console into the official firmware
5. Fully discharge the console twice and fully charge it
   * Full discharge is defined as a battery level within the range of 3205-3210mV, which can be checked in InfoNX ([learn more..](https://t.me/kefir_switch/48074/172575))
   * Do not reboot the console until you have done this
   * If the console goes to sleep due to low charge, wake it up until you see the red battery icon
   * If the console turns off due to low battery (stops waking up when pressing the power button), connect it to a charger. If the console hangs on a black screen with a battery icon after this, disconnect/connect the charger. Do this until you can enter the firmware again and charge the console to 100% within the firmware, then repeat the discharge/charge cycle once more
   * Do not leave the console charging on a black screen with a battery icon, otherwise, the firmware will restore the previous battery calibration values, which we do not need, and you will have to start all over again
6. After calibrating the battery in sysNAND, do the same for each emuNAND, if you have more than one.
   * Do not switch between sysNAND and emuNANDs until you have completed two charging/discharging cycles, as the firmware will restore the previous battery calibration values, which we do not need, and you will have to start all over again

#### When playing with overclocking enabled, the empty battery icon appears after a while

The power controller is designed for a peak power consumption of approximately 15W. If exceeded, the console will activate emergency protection and shut down. This is what's happening. You have probably exceeded the controller's threshold. Temper your enthusiasm and lower the frequency values.

#### The game stopped running and started crashing

First, try removing the game's profile from FPSLocker. You may have disabled Sync Wait without ensuring its safety. The profile is located at `SaltySD/plugins/FPSLocker/TITLEID.dat`. You can view the game's title in **DBI** > **Browse Installed**

#### Witcher 3 won't start

**HB Menu** > **SysDVR** > **DVR-Patches** > **Uninstall** > **Reboot**

#### FPS in-game always shows 0\254 \ ReverseNX does not switch modes

Your game may not be compatible with **SaltyNX**, which is responsible for these functions. The list of incompatible games can be found [here](https://github.com/masagrator/SaltyNX#list-of-titles-not-compatible-with-pluginspatches)

## FAQ

**Q**: How does using 4IFIR affect battery life?            
**A**: In short, it doesn't affect it at all.

**Q**: My battery has degraded            
**A**: It hasn't degraded. Its calibration has been thrown off. You can restore the factory capacity of the battery by following the instructions above.

**Q**: Switch turns off when using overclocking            
**A**: Your particular unit probably can't handle the values you set. Try lowering them.

**Q**: Switch discharges to 1% from 100% in 10 minutes            
**A**: Refer to the Problems and Solutions section above.

**Q**: No governor            
**A**: Enable **4IFIR Kraken** > **Miscellaneous** > **Frequency Governor (Experimental)**, then both governors will appear in **4IFIR Kraken** > **Edit app Profile**.

**Q**: Frequencies are jumping            
**A**: This is normal when the governor is working.

**Q**: Cannot remove account            
**A**: **DBI** > **Tools** > **Delete account...**

## Licenses

Listed below are the licenses for the programs that have been modified specifically for 4IFIR. In accordance with these licenses, all code in the modifications is distributed under the same license.

[GPL 2.0](https://github.com/Atmosphere-NX/Atmosphere/blob/master/LICENSE): 
  * [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere)
  * [hekate](https://github.com/CTCaer/hekate)
  * [SysDVR](https://github.com/exelix11/SysDVR)
  * [sysdvr-overlay](https://github.com/Hartie95/sysdvr-overlay)
  * [Tesla Overlay Menu](https://github.com/WerWolv/Tesla-Menu/)
  * [Status-Monitor-Overlay](https://github.com/masagrator/Status-Monitor-Overlay)

[GPL 3.0](https://github.com/masagrator/ReverseNX-Tool/blob/master/LICENSE): 
  * [ReverseNX-Tool](https://github.com/masagrator/ReverseNX-Tool)
  * [sys-ftpd](https://github.com/cathery/sys-ftpd)

[THE BEER-WARE LICENSE](https://github.com/retronx-team/sys-clk/blob/develop/LICENSE): 
  * [sys-clk](https://github.com/retronx-team/sys-clk)

[MIT license](https://github.com/masagrator/FPSLocker/blob/main/LICENSE):
  * [FPSLocker](https://github.com/masagrator/FPSLocker)

No license: 
  * [SaltyNX](https://github.com/masagrator/SaltyNX)

## Acknowledgements 

* Atmosphere NX team
* KymPossibl
* KazushiMe
* RetroNX team
* ChanseyIsTheBest
* 4PDA
