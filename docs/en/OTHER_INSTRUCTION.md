## Firmware update in EmuNand 
>This instruction assumes that you are using **EmuNand**!!!  
>Part of information is taken from - https://switch.customfw.xyz/update-fw (From Russia with VPN)

>Be sure to follow the instructions exactly in the order in which they are written: first update 4IFIR, then update the system software! Otherwise, your Switch simply will not start. If for some ridiculous reason you updated the system software, but did not update 4IFIR, update 4IFIR!
****

>Warning! Before updating, go to the atmosphere/contents folder and delete the following folders from the memory card, if you have any of them:  
>* 0100000000001000   
>* 0100000000001013  
>* 0100000000000352
*** 

You can use this instruction to change your firmware version to any, not just to 18.1.0.
1. [Update 4IFIR to the latest version](#1-Update-4IFIR-to-the-latest-version)
1. [Downloading firmware 18.1.0](#2-downloading-firmware-1810)
1. [Installing on console](#3-installing-on-console)
2. [Update official firmware](#4-update-official-firmware)
3. [Possible issues](#Possible-issues)  

### 1. Update 4IFIR to the latest version
1. Launch [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **All in One Updater**
   * If you get a black screen instead of launching the application, reinstall the application manually from its [repositories](https://github.com/HamletDuFromage/aio-switch-updater) and manually enter this address `https://sintez.io/AIO.zip` in Custom downloads > Add custom link, then restart the application
1. Go to **Custom Downloads** > **Refresh** > **Continue**, when prompted to rewrite `ini`, select **Yes**
1. Go to **Custom Downloads** > **4IFIR** > **Continue**, when prompted to rewrite `ini`, select **Yes**, when prompted to reinstall hekate select **No**, the console will reboot

### 2. Downloading firmware 18.1.0
1. Launch [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **All in One Updater**
1. Go to the menu **Download firmware** and choose the required version.
1. Press (A), press **Continue**, to start downloading the firmware. The program will download the selected version of the firmware and unpack it into the firmware folder..

### 3. Installing on console
1. Launch [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **Daybreak** > **Install**
2. Go to firmware folder, it contains the 18.1.0 firmware copied earlier, and press (A)
3. Wait until the firmware is processed and press **Continue** to start the installation
4. To the question **Select settings mode - preserve settings** - Allows you to save the settings
5. **Select driver variant - Install (FAT32 + exFAT)** - additional exFAT support driver
6. After installation is complete, click **Reboot** to reboot, or **Shutdown** to turn off the console

### 4. Update official firmware
1. To update the firmware to the current version (18.1.0) in **STOCK/SEMI-STOCK**: Boot into **STOCK/SEMI-STOCK** and update the console using standard methods:
2. System settings > System > System update  

***

### Possible issues 
1. Black screen after the Nintendo logo:  
   >try making - [Debug installation](INSTAL_4IFIR.md#debug-installation-pc-required)  
1. Black screen after the Nintendo logo (if the debug installation did not help):  
   >Download [KipTool](https://github.com/kawaii-flesh/KipTool/releases/)  
   >Drop kiptool.bin file in the bootloader/payloads directory
   >Next Hekate > payloads > kiptool.bin.  
   >Next Kip Wizard - CPU - speedshift set **25 or 100** instead of zero and don't forget to apply changes.  
   >Reboot the console  
   >This may fix launch into the atmosphere    
