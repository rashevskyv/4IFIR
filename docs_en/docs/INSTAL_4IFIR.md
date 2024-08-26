# Installation 
Some of the information is taken from the site https://customfw.xyz/ (from Russia with VPN) - if you have just become a Nintendo Switch user - here are the answers to many of your questions 

**IMPORTANT! Follow the instructions strictly and do not deviate from them. In case of problems, return to the instructions and reinstall 4ifir completely.**

1. [Installing 4IFIR on a clean SD](#installing-4IFIR-on-a-clean-SD)   
1. [Installing (from kefir or another build)](#Installing-from-kefir-or-another-build)  
1. [Updating (upgrade from previous versions)](#Updating-upgrade-from-previous-versions)
2. [Possible problems](#Possible-problems)  

# Installing 4IFIR on a clean SD

### Preparing Micro-SD
1. Unzip [4IFIR](https://sintez.io/4IFIR.zip) onto the console's memory card
1. Hold (VOL-) on the console while the bootlogo appears to enter hekate
1. Go to Tools -> Partition SD card, press OK, Next Step -> Start
1. Your card will be formatted in a special way in FAT32 to give a speed increase of 15%-30%  
>[Alternative method using Rufus](https://customfw.xyz/format_sd) (from Russia with VPN)

### Creating EmuNand
When using 4IFIR - creating EmuNand is necessary for security purposes. During overclocking, system failures may occur, and restoring emuNand is much easier and faster. Also, using EmuNand helps to avoid console ban. [Worth checking out](https://switchpirate.chan.uz/?p=emunand) - the most detailed information about EmuNanD (from Russia with VPN)
1. Turn on the console, holding the volume down button to boot into hekate
1. Go to “emuMMC”
1. Press “Create emuMMC” -> “SD File”
1. To create emuMMC, you need to have at least 32GB of free space on the card, or 64GB if you have an OLED! If you don’t have that much, take another card, or delete some games from the console, booting into stock
1. After the emuMMC is created, click “OK”
1. Now, when you start the console, it will automatically launch emuMMC with 4IFIR installed.
1. To get into the official firmware, run hekate -> reboot -> OFW

>There is an option to create EmuNAND on a hidden partition, this allows you to set the partition size that EmuNand will take (10 GB will be enough)
[Instructions from 4PDA](https://4pda.to/forum/index.php?showtopic=900987&view=findpost&p=103853258)

# Installing (from kefir or another build)
**IMPORTANT - before installation, make sure that you have EmuNAND installed:**  
>("System settings" then "System" in the line "Current system version" at the end there should be the letter "E") 
   
**If - No, then it is recommended to install it with preliminary [formatting the memory card](#Preparing-Micro-SD) (all data from the card will be erased)**

### Debug installation (PC required)   
>Recommended method, as it avoids most problems when switching from other projects due to component conflicts  
>**Games and saves are stored in the Nintendo and emummc folders, after the debug installation they will remain on the console**   
1. Delete everything from the memory card except the Nintendo and emummc folder (if you have any) (The folder with backups of saves, such as JKSV, should also not be deleted)
   * The card must be in [FAT32](https://format.customfw.xyz)
   * It is recommended to work with the memory card through a card reader, not through the console.
2. Unzip [4IFIR](https://sintez.io/4IFIR.zip) to the console's memory card
   * Some providers in Ukraine block `sintez.io`, you can use [alternative link to 4IFIR from github](https://github.com/rashevskyv/4ifir-checker/raw/main/github/4IFIR.zip). *Also suitable in case of `sintez.io` server down*.
3. Insert the card into the console and turn it on

### All in One Updater (If you don't have a PC)  
>There may be traces of previous builds (Kefir updater, etc.)  
1. Unzip [All in One Updater with 4IFIR config](https://sintez.io/AIO.zip) onto the console's memory card
   * Some providers in Ukraine block `sintez.io`, you can use [an alternative link to All in One Updater with 4IFIR config from github](https://github.com/rashevskyv/4ifir-checker/raw/main/github/AIO.zip). *Also suitable in case of `sintez.io` server down*.
1. Launch [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **All in One Updater**
   * If you get a black screen instead of running the application, download the application manually from its [repository](https://github.com/HamletDuFromage/aio-switch-updater) and manually enter this address `https://sintez.io/AIO.zip` in Custom downloads > Add custom link, then restart the application
1. Go to **Custom Downloads** > **4IFIR** > **Continue**, when asked to rewrite `ini`, select **Yes**, when asked to reinstall hekate, select **No**, the console will reboot



# Updating (upgrade from previous versions) 

1. Launch [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **All in One Updater**
   * If you get a black screen instead of running the application, download the application manually from its [repository](https://github.com/HamletDuFromage/aio-switch-updater) and manually enter this address `https://sintez.io/AIO.zip` in Custom downloads > Add custom link, then restart the application
1. Go to **Custom Downloads** > **Refresh** > **Continue**, when asked to rewrite `ini`, select **Yes**
1. Go to **Custom Downloads** > **4IFIR** > **Continue**, when asked to rewrite `ini`, select **Yes**, when asked to reinstall hekate, select **No**, the console will reboot

# Possible problems 

1. Black screen after the Nintendo logo:  
   >Hekate > payloads > kiptool.bin.  
   >Next Kip Wizard - CPU - speedshift set **25 or 100** instead of zero and don't forget to apply changes.  
   >Reboot the console  
   >This can fix launch into the atmosphere    
