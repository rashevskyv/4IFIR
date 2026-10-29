# Installing 4IFIR

Some initial information is sourced from https://customfw.xyz/ — a comprehensive starting point for Nintendo Switch modding.

**IMPORTANT: Follow the guide carefully. If any issue occurs, perform a clean installation.**

1. [Installing 4IFIR on a Clean SD Card](#installing-4ifir-on-a-clean-sd-card)
2. [Migrating from Kefir or other CFW packages](#migrating-from-kefir-or-other-cfw-packages)
3. [Updating (Transition from earlier versions)](#updating-transition-from-earlier-versions)
4. [Background MTP Server Access](#background-mtp-server-access)

---

## Installing 4IFIR on a Clean SD Card

### Preparing Micro-SD
1. Unpack [4IFIR](https://github.com/rashevskyv/4ifir-checker/releases/latest/download/4IFIR.zip) onto your MicroSD card.
2. Hold `(VOL-)` while booting to enter Hekate.
3. Navigate to **Tools → Partition SD card**, click **OK**, then **Next Step → Start**.
4. The card will be properly formatted as **FAT32** with optimized cluster sizes (giving a 15%–30% read speed boost).

### Creating EmuNAND
Using EmuNAND is strongly recommended for 4IFIR to isolate system modifications and protect against potential corruption.
1. Power on the console while holding `(VOL-)` to boot into Hekate.
2. Open **emuMMC**.
3. Select **Create emuMMC → SD File** (or hidden partition).
4. Ensure adequate free space (minimum 32 GB for regular Switch, 64 GB for OLED).
5. Once complete, click **OK**.
6. The Switch will now automatically boot into EmuNAND with 4IFIR and the new **Latitude UI**.
7. To access stock firmware: In Hekate, select **Reboot → OFW**.

---

## Migrating from Kefir or other CFW packages

> [!IMPORTANT]
> Verify that you are running EmuNAND (`System Settings → System`, the system version string must end with the letter **E**).

### Clean Installation (Recommended)
Avoids package conflicts and leftover files:
1. Connect the SD card to your PC (via card reader or background MTP/Hekate USB tools).
2. Delete everything from the SD card **EXCEPT** the `Nintendo` and `emummc` folders (and save backup folders such as `JKSV`).
   * Your installed games and save states will remain intact!
3. Extract the fresh [4IFIR](https://github.com/rashevskyv/4ifir-checker/releases/latest/download/4IFIR.zip) archive directly to the root of the SD card.
4. Insert the card and power on the console.

---

## Updating (Transition from earlier versions)

Starting with **4IFIR 2.7**, updating is now fully native:

### Primary Method: Automatic System Update
1. Connect the Switch to Wi-Fi.
2. From **Latitude UI**, open **System Settings**.
3. Navigate to **System → System Update**.
4. The system will verify and prompt to install the latest 4IFIR release.
5. Confirm the update and let the console reboot automatically.

### Fallback Method: Manual Extraction
If offline:
1. Download the latest `4IFIR.zip` on your PC.
2. Connect the Switch to your PC via USB (using background MTP) or insert the SD card into a card reader.
3. If migrating from older releases (with Uberhand), remove obsolete directories:
   * `config/uberhand/`
   * `switch/.packages/4IFIR Wizard/`
   * `switch/.packages/config.ini`
4. Extract the archive files onto the root of the SD card, overwriting existing files.

---

