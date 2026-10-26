# Firmware (HOS) & 4IFIR Update Instructions

> [!IMPORTANT]
> This guide assumes you are using **EmuNAND**!  
> In **4IFIR 2.7**, the update process is automated and integrated directly into the system settings.

---

## 1. Automatic 4IFIR & HOS Updates (Primary Method)

Starting with **4IFIR 2.7**, you no longer need manual third-party updaters or Daybreak:

1. Connect the console to Wi-Fi.
2. From the **Latitude UI** home screen, open **System Settings**.
3. Navigate to **System → System Update**.
4. The system automatically queries and downloads:
   * Latest **4IFIR** build components.
   * Compatible **Horizon OS (HOS)** firmware updates.
5. Click **Update** and confirm.
6. The console prepares the environment, installs the updates, and automatically reboots.

---

## 2. Offline HOS Firmware Update via Daybreak (Fallback Method)

If the console is not connected to the internet:

1. Download the target HOS firmware archive on your PC.
2. Connect the Switch to your PC via USB (with **background MTP**, it appears immediately in File Explorer) or use an SD card reader.
3. Extract the firmware files into a folder named `firmware/` in the root of the SD card.
4. Launch **HB Menu** (press `(A)` on the album tile or a game while holding `R`).
5. Open **Daybreak** → click **Install**.
6. Select the `firmware` folder, wait for file validation, and press **Continue**.
7. Under **Select settings mode**, choose **Preserve settings**.
8. Under **Select driver variant**, choose **Install (FAT32 + exFAT)**.
9. Click **Reboot** once complete.

---

## 3. Updating Official Firmware (OFW / SysNAND)

To update stock firmware:
1. Boot into **Hekate** → select **Reboot → OFW**.
2. Go to `System Settings → System → System Update` and update through standard Nintendo servers.

---

## 4. Recovery from Boot Failures (Black screen after logo)

If HOS was updated before 4IFIR, causing a boot loop:

### Option 1: KipTool Recovery
1. Boot into **Hekate** by holding `(VOL-)`.
2. Go to **Payloads** → run `kiptool.bin`.
3. In **KIP Wizard**, set `SpeedShift` to **25** or **100** (instead of 0).
4. Select **Apply changes** and reboot.

### Option 2: Clean 4IFIR Files Update via Hekate USB
1. Enter **Hekate** while holding `(VOL-)`.
2. Connect the console to your PC:
   * Select **Tools → USB Tools → SD Card**.
3. On the PC, delete everything **EXCEPT**:
   * `emuMMC`
   * `Nintendo`
   * (and save backup folders such as `JKSV`).
4. Copy the fresh [4IFIR.zip](https://github.com/rashevskyv/4ifir-checker/releases/latest/download/4IFIR.zip) onto the SD card.
5. Safely eject the drive, tap **Close** on the Switch, and select **Home → Reboot → Normal**.
