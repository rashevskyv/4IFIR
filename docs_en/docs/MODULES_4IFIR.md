## Using 4IFIR Modules and Overlays

All overlays and modules are accessed through the **Ultrahand Overlay** menu, invoked by default via:  
**`(L) + (R) + (▲)`**, where `(L)` is the left Joy-Con bumper, `(R)` is the right Joy-Con bumper, and `(▲)` is the D-Pad Up button.

**You can customize the key combination in `/config/ultrahand/config.ini`**

---

### Navigation in Ultrahand
* The main menu lists all active overlays.
* Pressing **`(►)` (Right)** opens the **Packages** tab, where the **[4IFIR Wizard](4IFIR_WIZARD.md)** configuration package is located.
* Press **`(A)`** to enter an overlay or package.
* Press **`(B)`** to navigate back.

---

### Main Overlays in Ultrahand:

* **4IFIR (Overclock / sys-clk-OC)** — Core engine overlay to configure frequency profiles, voltages, timings, and governors in real time.
* **4IFIR Wizard** *(inside Packages `►` tab)* — Interactive tuner for deep console calibration (eBAMATIC Stage, Advanced, Profiles, Service). Located in `switch/.packages/4IFIR Wizard/`.
* **FPSLocker** — Unlock or lock frame rate limits per title (30, 60 FPS, or custom targets).
* **Status Monitor PRO** — Display real-time CPU, GPU, RAM, battery metrics, and FPS directly over gameplay.
* **ReverseNX-RT** — Force docked or handheld graphic profiles on the fly.
* **EdiZon** — Cheat engine and cheat manager.
* **Sysmodules** — Manage background system processes and auto-start services.
* **Fizeau** — Custom display color profiles and white balance adjustments.
* **InfoNX** — Hardware power draw, battery health, and voltage monitoring.
* **QuickNTP** — Fast time synchronization over Wi-Fi.
* **sysdvr-overlay** — Video and audio streaming controls over USB or Wi-Fi.
* **sys-ftpd-ovl** — Background FTP server status and settings.

---

### Enabling and Disabling Modules (Sysmodules)

The **Sysmodules** tool allows managing background modules:
* Next to the module name, status is shown as **On** or **Off**.
* The house icon indicates that the module is scheduled to auto-start on boot.
* Press **`(A)`** to toggle the module on or off.
* Press **`(Y)`** to toggle auto-start.
* Modules are divided into:
  * **Dynamic** — Can be toggled on/off immediately without rebooting.
  * **Static** — Require a system restart to apply state changes.

---

### Managing Console Mode (ReverseNX-RT)

**ReverseNX-RT** forces docked mode in handheld play and vice versa:
1. Open **ReverseNX-RT** in Ultrahand.
2. In **Controlled by system**, toggle to **No** (using Change system control) to unlock manual control.
3. In **Mode**, switch between:
   * **Docked** — Renders the game at higher resolution and visual fidelity (requires adequate overclocking via 4IFIR profile).
   * **Handheld** — Standard portable profile.
