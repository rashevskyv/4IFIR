# 4IFIR 1.3

[ИНСТРУКЦИЯ НА РУССКОМ](README.md)

![](https://gbatemp.net/attachments/1_done-png.358918/)

**ATTENTION! The guide is still a work in progress! Pull requests with corrections and additions are welcome.**

The guide is extensive. Use the search function to use it successfully.

This is a collection of modified components designed to maximize the overclocking of the Nintendo Switch and improve the user experience through additional functionality. The modification is intended for those who would like to get the most out of their console, achieve graphics on par with the PS4 (recommended to be used in conjunction with mods by [ECLIPSE00074](https://4pda.to/forum/index.php?showuser=176532)), unlock 60fps, speed up loading times, fix the native resolution, emulate PS2 at full speed (if an emulator for Switch is available, of course), reduce cooling system noise, etc.

In the case of 4IFIR, overclocking does not mean unlocking frequencies within stock tables, but rather overclocking that includes overvolting of each overclocked component. By installing the modification without theoretical preparation, you remove the author's responsibility for any possible consequences, including console failure, and fully assume the risks yourself. According to my circuit calculations, if they are correct, no problems should arise. Currently, there have been no incidents of console failure. However, your console could be the first, as safe overclocking is impossible by definition. I have warned you. To prevent potential software issues, use EmuNand, FAT32, and have backups. To avoid conflicts, it is recommended to perform a clean installation.

## Содержание 

1. [Что может 4IFIR]()
1. [Состав 4IFIR]()
1. [Установка]()
   * [Установка с нуля (она же переустановка начисто)]()
   * [Установка (с кефира или другой сборки)]()
   * [Обновление (переход с предыдущих версий)]()
1. [Как использовать 4IFIR]()
   * [Включение и отключение модулей]()
   * [Управление режимом работы консоли (портатив \ докстанция, ReverseNX-RT)]()
   * [Разгон]()
      * [Настройки частот и говернор (governor) (sys-clk-OC)]()
      * [STAGE (Self-Torture by Aggressive Generation of Explosions)]()
   * [Выжимаем больше - читы и патчи на улучшение графики]()
      * [Читы]()
      * [Модификации]()
   * [Оптимизация работы, выбор подходящих частот и энергопотребление]()
1. [Проблемы и их решения]()
   * [Проблемы с батареей]()
      * [Батарея начала разряжаться до 1% со 100% за считаные минуты, однако без проблем работает на 1% несколько часов]()
      * [При игре с включенным разгоном через некоторое время показывается значок пустой батареи]()
1. [FAQ]()
1. [Лицензии]()
1. [Благодарности]()

## Что может 4IFIR

* Разгон вплоть до значений в 2397 Mhz для CPU, 1536 Mhz для GPU, 24хх Mhz для RAM (точный потолок значения индивидуален для каждой консоли)
* Автоматический овервольтинг
* Автоматический буст при загрузке игры 
* Поддержка говернора - снижения потребления ресурсов когда они не требуются консоли 
* Видеозапись без ограничений во всех играх, кроме нескольких не поддерживаемых
* Беспроводная видеотрансляция с повышенным битрейтом, 60 кадрами в секунду, на внешние мониторы - практически без задержек
* Эмуляция док режима
* Ускоренная зарядка
* Снижение порога тока для Official Charger
* Радикальное снижение шума системы охлаждения
* Overlay c FPS и системными метриками
* Над-экранное меню, для управления перечисленными возможностями на лету
* Фоновый FTP сервер
* Необходимые для совместной работы всего перечисленного системные модули

## Table of Contents

1. [What can 4IFIR do?]()
1. [4IFIR Components]()
1. [Installation]()
   * [Fresh installation]()
   * [Installation (from Kefir or other builds)]()
   * [Update (transition from previous versions)]()
1. [How to use 4IFIR]()
   * [Enabling and disabling modules]()
   * [Console mode management (portable \ docked, ReverseNX-RT)]()
   * [Overclocking]()
      * [Frequency and governor settings (sys-clk-OC)]()
      * [STAGE (Self-Torture by Aggressive Generation of Explosions)]()
   * [Get more out of it - cheats and patches for improving graphics]()
      * [Cheats]()
      * [Modifications]()
   * [Optimizing performance, selecting appropriate frequencies and power consumption]()
1. [Issues and solutions]()
   * [Battery problems]()
      * [The battery starts to discharge to 1% from 100% in a matter of minutes, but works without problems for several hours at 1%]()
      * [When playing with overclocking enabled, the empty battery icon appears after some time]()
1. [FAQ]()
1. [Licenses]()
1. [Acknowledgments]()

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
   * [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx) - a program for fixing battery desync. Use only when the battery discharges to 1% in 5 minutes and then works for two hours. Use strictly according to the instructions in the program repository if you do not want to lose the full capacity potential of your battery. **Do not use unless necessary!**
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

### Installation from scratch (also known as a clean install)
1. Remove everything from your memory card except for the Nintendo and emummc folders (if they exist)
   * The card must be in [FAT32](https://format.customfw.xyz)
1. Unpack [4IFIR](https://sintez.io/4IFIR.zip) onto your console
1. Install [AiO Updater](https://github.com/HamletDuFromage/aio-switch-updater)
1. Unpack [this](https://sintez.io/aio.zip) onto your console
1. Restart the console

### Installation (from Kefir or other builds)
Perform a clean install

### Update (transition from previous versions)
1. Install [4IFIR](https://sintez.io/4IFIR.zip) through [AiO Updater](https://github.com/HamletDuFromage/aio-switch-updater)
2. Restart the console

## How to use 4IFIR

All settings are made through the Tesla menu, which is called by the key combination (L) + (R3) + (▼), where (L) is the upper bumper of the left joy-con, (R3) is the press on the right stick, and (▼) is the down button on the "D-pad". 
After simultaneous pressing of these three buttons, the Tesla menu with the following items will appear: 

* **FPSLocker** - module for locking frame rates in games
* **Fizeau** - module for controlling display and its color profiles
* **InfoNX** - module showing extended information about console power consumption
* **QuickNTP** - module for clock synchronization via internet, since the built-in synchronization method in kefir is disabled
* **ReverseNX-RT** - module allowing to forcibly choose console operation mode (portable or docked)
* **Status Monitor PRO** - module displaying system metrics in real time over the screen, without taking away control from the game. There are many operating modes, including a mode that allows you to display frequency and FPS counters in the upper left corner of the screen.
* **EdiZone** - module for cheat management
* **Sysmodules** - module for managing modules. Allows you to enable/disable installed modules
* **sys-clk-OC** - module for managing overclocking profiles
* **sys-ftpd-ovl** - module showing current IP address for establishing FTP connection
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
#### Frequency Settings and Governor (sys-clk-OC)

Overclocking is configured through the Sys-clk-OC overlay module.

The header contains the following parameters:
* **App ID** - displays the titleid of the running game
* **Profile** - a parameter synchronized with ReverseNX-RT settings and shows the current console mode (**Docked** - dock mode, **Handheld** - portable)
* **CPU** - the current processor frequency
* **GPU** - the current video processor core frequency
* **MEM** - the current memory frequency
* **SOC** - processor temperature (SoC - System on a Chip, meaning that the video core and central processor are on the same chip, so they share the same temperature)
* **PCB** - console board temperature
* **Skin** - console temperature (?)

* **Enable** - responsible for activating overclocking. On - enabled, Off - disabled
* **Edit app Profile** - overclocking profile settings for the running application. The specified settings will be automatically applied when the application is launched. They have medium priority.

* Advance
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

**Docked** and **Handheld** profiles are synchronized with Reverse-NX settings (can be disabled in **Miscellaneous** of **sys-clk-OC** module) and depend on the console mode (dock/portable). The **Charging** profile is activated when any charger is connected to the console. The **Official Charger** profile is activated when connecting the original charger, or any other charger with Power Delivery support. The **USB Charger** profile is activated when connecting any other charger. That is, you can set up a separate overclocking profile for charging from any source and separately for powerful or low-power sources, with the latter having a higher priority.

**Edit app Profile** contains governor management.

A governor, in the context of CPU frequency management, is a program or mechanism that controls the processor's operating frequency and energy consumption.

The governor's task is to determine the optimal processor frequency depending on the load on it. If the processor is not loaded, the governor can reduce its frequency to reduce energy consumption and heat dissipation. If the processor is under high load, the governor can increase its frequency to ensure high performance.

* **CPU Freq Governor** - enable or disable **central** processor frequency management
* **GPU Freq Governor** - enable or disable **graphics** processor frequency management

Both of these items will be available only if the **Frequency Governor (Experimental)** value is activated in **Miscellaneous**.

Enabling the GPU governor in some games may cause stuttering or decreased FPS (for example, Metroid Prime Remastered sometimes drops FPS to 30 when exiting the map to the game). If your game experiences this, disable the GPU governor.

Each of the profiles contains separate items for overclocking **CPU**, **GPU**, and **Memory**. It's easy to understand what each item does by its name. Each of these items has a **Default** value, which is responsible for the default value taken from the previous overclocking setting (Temporary/App/Global/System value) in the corresponding priority profile. Working frequencies are selected individually for each specific game on each specific console. More details on frequency selection will be below.
#### STAGE (Self-Torture by Aggressive Generation of Explosions)

The higher the STAGE, the more aggressive the optimization of timings/undervolting values. The faster and more energy-efficient the gaming console. The stock 4IFIR should work on any console and its performance is equivalent to STAGE 5+. The probability of ST6 and higher working for you depends on the [luck of the CPU binning process](https://www.computerra.ru/285384/dzhekpot-kremnievoj-loterei-chto-takoe-binning-protsessory/) of your specific console.

The selection of stages is done in **AiO Updater**, in the **Custom Downloads** menu. After selecting the stage, the console must be restarted.

To choose a stable stage, test the console as follows:

**WARNING!!!** If at any stage during stage testing there is a freeze, or the game freezes, or artifacts appear on the screen, or any unexpected console behavior occurs, lower the stage. Your current console can't handle it!

1. Select the maximum available stage in AiO, restart
1. Disable governors (**sys-clk-OC** > **Frequency Governor (Experimental)** > **Off**)
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
### Performance Optimization, Choosing Suitable Frequencies, and Power Consumption

To achieve optimal performance and avoid excessive energy consumption on your device, it is necessary to select frequency parameters that prevent the game from lagging. It is recommended to use the Status Monitor, a tool that allows you to track the load on your device's components.

To find the optimal balance between performance and power consumption, you can lower (or raise) the frequency settings according to the component load results in the Status Monitor. Find the point where the hardware is not loaded at 100%, but close to that level. Remember that memory is the "bottleneck" on the switch, and it can be overclocked virtually for free, meaning you can set it to the maximum at which the device operates stably without affecting battery consumption. The higher the stage, the "cheaper" memory overclocking is for the console, and the more efficient it becomes. Overclocking the CPU is usually not very useful (but there are exceptions). Therefore, the optimal option to start with would be maximum memory overclocking and CPU/GPU overclocking somewhere in the middle. It is recommended to disable governors during this process. If the game still lags, add GPU frequency and do this until the lags disappear completely. Then enable the governors. If FPS drops are observed after their activation, disable the GPU governor, as it can often lead to these drops.

Don't chase frequencies and numbers. The only measure of successful overclocking is your comfort while gaming. Frequencies do not reflect actual performance or power consumption. Keep in mind that each device has unique characteristics, so you need to adjust frequencies according to the specific model of your device and the games you plan to run on it. Each game has unique requirements.

Using the **InfoNX** module, you can monitor the console's power consumption. Measure consumption in the tested game without overclocking and with overclocking, and then find a balance between performance and power consumption. Remember that the higher the energy consumption, the faster the battery will drain in portable mode. For operation in dock mode or from a charger, power consumption is not that important.
## Problems and Solutions

### Battery Issues

The battery does not degrade due to current strength but only when reaching a certain temperature. However, built-in protection mechanisms based on the laws of physics disconnect the power supply long before the temperatures reached have a chance to harm the battery, preventing the degradation of the cells' chemical properties.

MARIKO is equipped with the PMIC MAX77812 controller, designed for currents up to 6A CPU / 12A GPU. Reach the limit = catch the shutdown and go into protection mode.
ERISTA, surprisingly, is equipped with a more powerful PMICs MAX77621 controller, with 16A CPU / 16A GPU.

A load above 15 watts (approximately; exact current limit values for different console models are specified in the manufacturer's specifications) can lead to a decrease in the estimated residual battery capacity in the Nintendo Switch console. The console's power controller compares actual readings with factory-set readings, and in case of an exceedance, it triggers an emergency shutdown. The console may think that the battery cannot handle the load and reduces the estimated residual capacity by 1% with each failure. This can cause the console's charge indicator to instantly drop to 1% charge when the battery is under load. Battery Fix may allow you to "regenerate" the battery capacity mistakenly written off.
#### Battery drains from 100% to 1% within minutes, but it works fine at 1% for several hours

The power controller is designed for a peak power consumption of approximately 15W. If exceeded, the console will activate emergency protection and shut down. You need to reduce the demands, as this affects the controller's calibration data. The console may think that the battery cannot handle the load and lower its estimated residual capacity by 1% with each failure. This can cause the console's charge indicator to instantly drop to 1% charge when the battery is under load. To solve this problem, the 4IFIR package includes the [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx) program.

**WARNING!!!** Do not run [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx) if you don't have battery problems, or else they will appear! You will need to perform separate calibrations for stock and each of your emuNANDs separately, as calibration data is stored separately in each!

To reset battery statistics:
1. Launch [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx)
2. Press (X) to reset statistics
3. Press (B) to exit the application
4. Reboot the console into the official firmware
5. Fully discharge the console twice and fully charge it
   * Full discharge means discharging to a red battery state and HOS shutdown due to low discharge. The console itself remains on and wakes up when connected to a charger
   * Do not reboot the console until you have done this
   * If the console goes to sleep due to low charge, wake it up until you see the red battery icon
   * If the console turns off due to low battery (stops waking up when pressing the power button), connect it to a charger. If the console hangs on a black screen with a battery icon after this, disconnect/connect the charger. Do this until you can enter the firmware again and charge the console to 100% within the firmware, then repeat the discharge/charge cycle once more
   * Do not leave the console charging on a black screen with a battery icon, otherwise, the firmware will restore the previous battery calibration values, which we do not need, and you will have to start all over again
6. After calibrating the battery in sysNAND, do the same for each emuNAND, if you have more than one.
   * Do not switch between sysNAND and emuNANDs until you have completed two charging/discharging cycles, as the firmware will restore the previous battery calibration values, which we do not need, and you will have to start all over again
#### When playing with overclocking enabled, the empty battery icon appears after a while

The power controller is designed for a peak power consumption of approximately 15W. If exceeded, the console will activate emergency protection and shut down. This is what's happening. You have probably exceeded the controller's threshold. Temper your enthusiasm and lower the frequency values.

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
**A**: Enable **sys-clk-OC** > **Miscellaneous** > **Frequency Governor (Experimental)**, then both governors will appear in **sys-clk-OC** > **Edit app Profile**.

**Q**: Frequencies are jumping            
**A**: This is normal when the governor is working.

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