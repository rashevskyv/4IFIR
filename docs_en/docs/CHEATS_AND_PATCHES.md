## Getting More Out of Your Console - Cheats and Graphics Enhancement Patches 

#### Cheats 

In addition to enabling docked mode while playing in handheld mode, you can also install graphic modifications for games. Some of these mods unlock higher frame rates, others allow you to utilize the overclocked console's performance to improve image quality, and some, on the contrary, enhance game performance for stable operation at non-overclocked frequencies. 

Cheats for unlocking 60FPS in some games can be found in **AiO Updater** > **Download cheats** > **Download graphics enhancing cheats**. If there are matching cheats for the installed games, they will be automatically installed. Remember that if you already have cheats installed for these games, installing the FPS unlock cheats will remove the existing ones. However, if you already have FPS unlock cheats, installing regular cheats via the updater will simply add them while retaining the FPS unlock cheats.

Cheats are activated through the menu **Underhand** > **EdiZon** > **Cheats** in a running game. In the menu that appears, activate the desired cheat. After restarting the game, the cheats you activated earlier will also remain active!

#### Modifications 

Mods for improving graphics can be found [on 4PDA](https://4pda.to/forum/index.php?act=findpost&pid=81825647&anchor=Spoil-81825647-8) or in the Telegram bot [Switch_library_bot](https://t.me/Switch_library_bot)  by sending the command `/mods` (password for the bot - `kefir`).

The installation of a mod varies depending on how it is packaged. 

* If the mod comes in the form of a LayeredFS folder, place it in `/atmosphere/contents/%TitleID%/romfs`, where TitleID is the 16-character hexadecimal title ID of your game (e.g., 01002CC003FE6000). Pay close attention to how exactly modification is distributed and do not allow nested folders. For example, if you see an `atmosphere`, folder in the mod archive, simply extract it to the root of the memory card and agree to replace files. If the archive contains a folder with the game's title ID, place it in the `/atmosphere/contents/`. Ensure that the folder is not duplicated (e.g., `/atmosphere/contents/01002CC003FE6000/romfs` is correct, while `/atmosphere/contents/01002CC003FE6000/01002CC003FE6000/romfs` or `/atmosphere/atmosphere/contents/01002CC003FE6000/romfs` are incorrect), otherwise, the mod will not work. 
* If the mod comes in the form of an IPS patch, i.e., as a file or files with the `*.ips` extension, place it in the `atmosphere/exefs_patches` folder. You can create a subfolder with the mod's name within `atmosphere/exefs_patches`. If the mod archive contains just an `exefs_patches` folder, place it into the `atmosphere` folder and agree to replace files. Often, mods may combine both methods, so you need to determine exactly what and where to copy.  If you are unsure, try looking for information where you downloaded the mods or in a text file that may accompany the mod.. 

Mods installed in this way are automatically activated when the game is launched. 

Remember that the game version for which the modification was made is important. A mod designed for one version of the game may not work on another. 

Feel free to experiment with clock speeds and use the Status Monitor to achieve the best stable results!

#### FPSLocker

This plugin allows you to unlock the frame rate in some games without using cheats. 

Header Metrics: 
* **The large number on the right** - shows how many frames have passed in the last second for the running game. This helps ensure the program is working correctly
* **Interval Mode** - an internal value of the game engine based on the NVN API, which can be **0**, **1** or ****2****. By changing this value, you can alter the maximum FPS in the game. **2** - 30 FPS, **1** - 60 FPS, **0** - means the game has no FPS limit or uses a different API. 
* **Custom FPS Target** - displays the maximum FPS for this game. If the game uses its own engine FPS limits instead of standard ones, it might be impossible to unlock more than 30 FPS without additional patches

Toggles:
* **Increase/Decrease FPS target** -  change the target frames per second in 5 FPS increments. **Minimum** - 15 FPS, **maximum** - 60 FPS. If FPS is set above 30, **Interval Mode** is set to 1. Otherwise, it is set to 2.
* **Disable custom FPS target** - removes the FPS limit depending on the set **Interval Mode**. If **Interval Mode** is 2, the game will be capped at 30 FPS, and if it is 1, at 60 FPS. 
* **Sync Wait (!)** - this is a dangerous setting that will usually cause the game to crash (for example, in Witcher 3 and Breath of The Wild), but in some cases, it can be beneficial by disabling double buffering, introducing slight graphical artifacts (for example, in Xenoblade Chronicles 3). Use with caution. It is recommended to keep it **enabled**.
* **Save settings** -  save a profile for the currently running game, which will be automatically loaded by the plugin on the next launch. Do not use this function if you have disabled synchronization (Sync Wait Off) and have not tested it for safety, so you don't have to manually delete the saved profile. The profile is saved in `SaltySD/plugins/FPSLocker/TITLEID.dat`
