# Unlocker+ 🚀

**Unlocker+** by Labib is a smart, universal Magisk module designed to enhance the Android experience. It uses a dynamic detection script to provide exclusive features for Samsung devices while offering high-performance gaming tweaks for all Android brands (Xiaomi, Pixel, OnePlus, etc.).

---

## ✨ Features

### 📱 Samsung Exclusive (CSC Unlock)
The module detects Samsung devices and automatically unlocks regional features systemlessly:
* **Native Call Recording:** Adds the record button directly to the dialer.
* **Shutter Sound Toggle:** Enables the option to mute the camera in settings.
* **Real-time Network Speed:** Shows live internet speeds in the status bar.
* **Security Bypass:** Disables forced system anti-malware scanning for better performance.

### 🎮 Universal Tweaks (All Devices)
For all Android phones, including high-security devices:
* **90FPS/Ultra Graphics Unlock:** Spoofs your device as an S24 Ultra (`SM-S928B`) to unlock hidden graphics settings in games like PUBG and Asphalt.
* **Force 90Hz:** Smooths out the UI by forcing a higher refresh rate (on supported screens).
* **Touch Response:** Improves scrolling cache and video hardware acceleration.

---

## 🛡️ Why is it Safe?
* **Systemless:** This module does NOT modify your `/system` partition. It uses the Magisk overlay system, meaning it’s 100% reversible.
* **Smart Detection:** Our `customize.sh` script checks your phone brand. If you don't have a Samsung, it skips the CSC files to prevent errors.
* **Resetprop Logic:** We use `resetprop` to change system values, which is the safest way to bypass security flags.

---

## 🛠️ Installation Guide
1.  Download the latest `UnlockerPlus.zip` from the [Releases](#) tab.
2.  Open the **Magisk App** (or KitsuneMask/APatch).
3.  Go to the **Modules** tab and click **Install from storage**.
4.  Select the zip file and wait for the "Detection Script" to finish.
5.  **Reboot your device.**

---

## 📂 Folder Structure & Logic
* `/samsung_files`: Contains the XML features for One UI.
* `system.prop`: Injects gaming and performance tweaks globally.
* `customize.sh`: The "Brain" that decides which files go where based on your phone brand.

---

## ⚖️ Credits & License
* **Developer:** Labib
* **License:** MIT License. You are free to share and modify, but please give credit!

**Disclaimer:** I am not responsible for any damage to your device. While this is tested on a rooted Samsung M02, always keep a backup!
