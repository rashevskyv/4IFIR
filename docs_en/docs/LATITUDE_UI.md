# Latitude UI — The New Graphic Shell for 4IFIR

**Latitude UI** is a next-generation graphical interface replacing Nintendo Switch's default home menu (**qLaunch**). Starting with **4IFIR 2.7**, Latitude introduces deep aesthetic customization, background services integration, and fast contextual shortcuts directly from the home screen.

---

## 1. Visual Appearance & Customization

### Frosted Glass Effect
Latitude features a real-time frosted glass effect with configurable transparency across all system screens.

* **Where to configure:** `System Settings` → `Themes`
* **Available options:**
  * **Blur:** Adjusts the intensity of the background blur.
  * **Underlay Opacity / Density:** Adjusts the opacity and darkness of menu plates, game tiles, and information panels.

---

## 2. Game Customization on Home Screen

### Animated (Video) Backgrounds
You can now assign animated or video backgrounds for each individual game, playing dynamically when hovering over its tile on the home screen.
* Supports custom video loops and dynamic wallpapers.
* Configured per title via the game's context menu.

### Custom Game Icons (SteamGridDB & Custom Logos)
No more low-resolution or generic icons:
* **SteamGridDB Integration:** Automatically search and pull official/community box art, vertical grids, and hero logos directly from SteamGridDB over Wi-Fi.
* **Custom User Logos:** Load any custom image from your MicroSD card and apply it to any installed title.

---

## 3. Redesigned System Components

* **New HB Menu:** Modernized Homebrew Menu with clean layout, quick navigation, and full visual synergy with Latitude.
* **New Album:** Redesigned screenshots and video gallery with faster asset loading and playback controls.

---

## 4. Quick Context Actions (`R` Button Shortcuts)

On Latitude's home screen, standard system tiles offer quick alternative functions when launched while holding the **`R`** button:

| Shortcut | Launched Tool / Feature | Description |
| :--- | :--- | :--- |
| **`R` + Gameshare** | **Built-in Homebrew Store** | Native app store. Allows downloading, browsing, and updating homebrew applications and overlays without outdated third-party appstores. |
| **`R` + Nintendo eShop** | **Built-in Ownfoil** | Advanced client for installing games from your personal server. Features **background downloading & installation** without freezing gameplay. |
| **`R` + Virtual Game Cards** | **Built-in File Manager** | Complete MicroSD file explorer: manage files, move, delete, and inspect directories directly from the OS. |

> [!TIP]
> To trigger a shortcut, hold **`R`** on the right Joy-Con and press **`(A)`** on the respective system tile.

---

## 5. Background MTP Server

4IFIR 2.7 integrates an always-on **Background MTP Server**:
* **How to use:** Simply connect the Nintendo Switch to your PC via a USB-C data cable.
* **Capabilities:**
  * Direct access to the MicroSD card contents in Windows Explorer, macOS, or Linux.
  * Drag & drop game installations: copy `.nsp`, `.nsz`, `.xci` files into the virtual install folder without launching DBI or entering Hekate USB tools.
* Runs silently in the background with zero setup required.

---

## 6. Seamless Automatic System & 4IFIR Updates

Firmware and package updates are now fully automated:
* **Location:** `System Settings` → `System`
* When connected to the internet, the console automatically verifies and prompts to install:
  * Fresh updates for **4IFIR components**.
  * Compatible updates for **Horizon OS (HOS)**.
* No need for third-party updaters (AiO Switch Updater) or manual Daybreak workflows.
