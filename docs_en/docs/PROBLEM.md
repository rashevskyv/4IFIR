# Problems and their solutions

1. [Problems related to 4IFIR](#Problems-related-to-4IFIR)
2. [Battery problems](#Battery-problems)
3. [Other problems](#Other-problems)
4. [FAQ](#FAQ)
***

## Problems related to 4IFIR

* #### Black screen after Nintendo logo:  
>try making - [Debug installation](INSTAL_4IFIR.md#debug-installation-pc-required)

* #### Black screen after Nintendo logo (if debug installation didn't help):  
>1. Hekate > payloads > kiptool.bin.  
>2. Kip Wizard - CPU - speedshift set **100** instead of zero and don't forget to apply changes.  
>3. Restart the console  
>This may fix launch into the atmosphere

* #### When playing in dock, stripes appear on the TV screen.
>Most likely, this is related to Smeh 8, which is responsible for increasing the memory efficiency in Optimized E mode. To solve this problem, reset sMeh 8 to 0
>
***

## Battery problems 

* #### The battery began to discharge to 1% from 100% in minutes, but it works without problems at 1% for several hours 

>The power controller is designed for a peak power consumption of about 15W, if it is exceeded, console will activate emergency protection and turn off. You need to reduce your demands, because it affects the calibration data of the controller. Console may consider that the battery has failed and reduce its remaining capacity estimate by 1% for each failure. This can cause the console's charge indicator to instantly drop to 1% when the battery is under load. Solution for this problem is [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx). 

* #### When playing with overclocking enabled, an empty battery icon is shown after a while 

>The power controller is designed for a peak power consumption of about 15W, if it is exceeded, console will activate emergency protection and turn off. This is what happens. You have probably exceeded the threshold set in the controller. Reduce the frequency values.

***

## Other problems 

* #### The Witcher 3/Resident Evil Revelations won't start
>**HB Menu** > **SysDVR** > **DVR-Patches** > **Uninstall** > **Reboot**

* #### FPS in the game always shows 0/254 or ReverseNX doesn't switch modes
>Your game is probably not compatible with **SaltyNX**, which is responsible for these functions. The list of incompatible games is [here](https://github.com/masagrator/SaltyNX#list-of-titles-not-compatible-with-pluginspatches)

***

## FAQ 

**Q**: How does using 4IFIR affect battery life?\
**A**: In short, it doesn’t affect it at all. The battery does not degrade due to current but only when a certain temperature is reached. However, built-in protection mechanisms, based on the laws of physics, break the power circuit long before the reached temperatures can harm the battery to prevent the degradation of the chemical properties of the cells.  
MARIKO  is equipped with a PMIC MAX77812 controller designed for currents up to 6A CPU / 12A GPU. If the limit is reached, it goes into protection mode.  
ERISTA, unexpectedly, is equipped with a more powerful PMICs MAX77621 controller rated at 16A CPU / 16A GPU.  
 
**Q**: Has my battery degraded?\
**A**: It hasn't degraded. Its calibration has gone off. You can restore the factory battery capacity following the instructions above. 

**Q**: Switch turns off when overclocking\
**A**: It’s likely that your device can’t handle the values you’ve set. Try lowering them

**Q**: Switch discharges from 100% to 1% in 10 minutes\
**A**: See the Battery problems section above. 

**Q**: There’s no governor\
**A**: Enable **4IFIR Miracle** > **Miscellaneous** > **Frequency Governor (Experimental)**, then both governors will appear in **4IFIR Miracle** > **Edit app Profile**

**Q**: Frequencies are jumping\
**A**: This is expected behavior when the governor is active

**Q**: I can't delete the account\
**A**: **DBI** > **Tools** > **Delete account...**
