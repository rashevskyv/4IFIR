## Composition of 4IFIR

1. **[Latitude UI](LATITUDE_UI.md)** — Modern next-generation graphical shell replacing standard qLaunch:
   * Frosted glass theme with customizable blur intensity and underlay opacity (`Settings → Themes`).
   * Animated video backgrounds for each individual game on the home screen.
   * Game icon customization (custom user logo or SteamGridDB fetching).
   * Redesigned **HB Menu** and **Album**.
   * Integrated contextual shortcuts (`R + system tile`):
     * `R + Gameshare` — Built-in **Homebrew Store**;
     * `R + Nintendo eShop` — Built-in **Ownfoil** (background game download and installation from personal server);
     * `R + Virtual Game Cards` — Built-in **File Manager**.
2. **[4efirosphere](https://cloud.sintez.io/s/4IFIR?path=%2FMariko)**, fork of [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere), unlocking the console's full hardware potential.
3. **[Sigpatches](https://jits.cc/patches)**, enabling game backups and modifications.
4. **[hekate](https://cloud.sintez.io/s/4IFIR)**, fork of [hekate](https://github.com/CTCaer/hekate), unlocking high memory clocking potential.
5. **Update System**:
   * Native automatic updates for **4IFIR and HOS** directly in `Settings → System`.
6. **Installed Payloads**:
   * [Lockpick_RCM](https://github.com/shchmue/Lockpick_RCM) — utility for dumping console keys.
   * [TegraExplorer](https://github.com/rashevskyv/TegraExplorer/) — low-level system file manager.
   * [KipTool](https://github.com/kawaii-flesh/KipTool) — payload-based tool to edit parameters in `loader.kip`.
7. **Installed Homebrew and System Services**:
   * **Background MTP Server** — silent background server for direct file transfers and drag-and-drop game installs over USB.
   * **Built-in Homebrew Store** — native homebrew browser (launched via `R + Gameshare`).
   * **Built-in Ownfoil** — background game installer from personal server (launched via `R + Nintendo eShop`).
   * **Built-in File Manager** — MicroSD file explorer (launched via `R + Virtual Game Cards`).
   * [DBI](https://github.com/rashevskyv/dbi) — versatile file, save, and package manager.
   * [Daybreak](https://github.com/Atmosphere-NX/Atmosphere/tree/0.14.1/troposphere/daybreak) — safe offline firmware updater.
   * [Fizeau](https://github.com/averne/Fizeau) — screen color calibration and white balance tool.
   * [SysDVR](https://cloud.sintez.io/s/4IFIR), fork of [SysDVR](https://github.com/exelix11/SysDVR) — wireless and USB screen streaming to PC.
   * [sys-ftpd](https://cloud.sintez.io/s/4IFIR), fork of [sys-ftpd](https://github.com/cathery/sys-ftpd) — background FTP server.
   * [Mhz] — CPU testing tool.
   * [MicroMemBench] — RAM memory benchmark.
   * [MicroMemTest] — RAM stress test.
   * [RaytracingNX] — GPU stress test.

8. **Installed Modules and Overlays**:
   * [SaltyNX](https://cloud.sintez.io/s/4IFIR), fork of [SaltyNX](https://github.com/masagrator/SaltyNX) — process modification framework.
   * [ReverseNX-Tool](https://cloud.sintez.io/s/4IFIR), fork of [ReverseNX-Tool](https://github.com/masagrator/ReverseNX-Tool) — forced dock/handheld mode switching.
   * [sys-clk](https://cloud.sintez.io/s/4IFIR), fork of [sys-clk](https://github.com/retronx-team/sys-clk) — hardware overclocking engine.
   * [sys-con](https://github.com/cathery/sys-con) — third-party USB gamepad support.
   * **[Ultrahand Overlay Menu](https://github.com/ppkantorski/Ultrahand-Overlay)** — modern overlay menu system (invoked via `(L)+(R)+(▲)`):
     - **[4IFIR Wizard](https://github.com/qret/Ultrahand-4IFIR-Wizard)** — hardware tuning and calibration package.
     - [FPSLocker](https://github.com/masagrator/FPSLocker) — FPS lock and unlock utility.
     - [nx-ovlloader](https://github.com/WerWolv/nx-ovlloader/) — overlay loader for Ultrahand.
     - [ovlEdiZon](https://github.com/proferabg/EdiZon-Overlay/releases) — cheat manager overlay.
     - [ovlSysmodules](https://github.com/WerWolv/ovl-sysmodules/) — background sysmodules toggler.
     - [InfoNX-ovl](https://github.com/renA21/InfoNX/) — battery, voltage, and hardware metrics overlay.
     - [QuickNTP](https://github.com/nedex/QuickNTP) — time sync over Wi-Fi.
     - [Status-Monitor-PRO](https://cloud.sintez.io/s/4IFIR), fork of [Status-Monitor-Overlay](https://github.com/masagrator/Status-Monitor-Overlay) — on-screen HUD with metrics and FPS.
     - [sys-ftpd-ovl](https://github.com/SegFault42/sys-ftpd-ovl) — FTP control overlay.
     - [sysdvr-overlay](https://github.com/Hartie95/sysdvr-overlay) — SysDVR controls.
     - [sys-clk overlay](https://github.com/retronx-team/sys-clk) — sys-clk frequency controls.
     - [Fizeau overlay](https://github.com/averne/Fizeau) — display color overlay.
     - [ReverseNX-RT overlay](https://github.com/masagrator/ReverseNX-RT) — handheld/docked switcher overlay.
