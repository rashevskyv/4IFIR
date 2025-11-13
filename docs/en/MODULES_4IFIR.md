##  Using 4ifir Modules

All settings are configured through the Uberhand menu, which is called up by pressing `(L)+(R)+(▲)`, where `(L)` - is the left Joy-Con's upper bumper, `(R)` -  is the right Joy-Con's upper bumper, and `(▲)` - is the up button on the D-pad.

**You can set any combination in the `/config/uberhand/config.ini` file**

After pressing these three buttons simultaneously, the Uberhand menu will appear with the following options: 

* **FPSLocker** - a module for locking the frame rate in games
* **Fizeau** - a module for managing the display and its color profiles
* **InfoNX** - a module that shows detailed information about the console's power consumption
* **QuickNTP** - a module that allows you to synchronize the console's clock via the internet, as the built-in synchronization method in 4ifir is disabled 
* **ReverseNX-RT** - a module that allows you to forcibly select the console's operating mode (handheld or docked)
* **Status Monitor** - a module that displays system performance metrics in real-time over the screen without taking control away from the game. It has several modes, including a mode that displays frequency and FPS counters in the upper left corner of the screen
* **EdiZone** - a module for managing cheats 
* **Sysmodules** - a module for managing other modules, allowing you to enable or disable installed modules
* **4IFIR Gamechanger** - a module for managing overclocking profiles
* **SysDVR Overlay** - a module that manages streaming the console's display to a PC via WiFi or cable 

Pressing **(A)** on an item will open its individual menu.

### Enabling and Disabling Modules 

The **Sysmodules** module allows you to enable and disable selected modules and manage their autoloading. Keep in mind that some modules can be enabled and disabled without restarting, while others require a console reboot to be activated or deactivated. 

To the right of the module name, its status is indicated, for example **On | х**, where On indicates the current state of the module, and **х** indicates whether the module is set to autoload (**х** - not set, **house icon** - set). 

Pressing **(A)** allows you to enable or disable the module. The (Y) button toggles the module's autoload setting.If pressing (A) doesn't change the module's state, it means it can only be controlled by rebooting the console. Enable the module's autoload and reboot the console to activate it, or disable autoload and reboot to deactivate it. 

Modules that can be enabled at any time are grouped in the **Dynamic** section at the top, while those that require a reboot are grouped in the **Static** section.

### Managing Console Operation Mode (Handheld/Docked, ReverseNX-RT)

The **ReverseNX-RT** module allows you to forcibly enable docked mode when playing in handheld mode and vice versa. Using the **Change system control** button, you need to enable manual mode switching (displayed in the **Controlled by system** line, where **No** means you can manually switch modes).  After that, you can switch modes with the Change mode button (displayed in the **Mode** line).

It is important to understand that in docked mode, the console forcibly increases CPU clock speeds, resulting in better image quality but faster battery consumption.
