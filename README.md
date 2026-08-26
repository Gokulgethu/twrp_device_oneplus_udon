# OrangeFox Recovery Project (OFRP) Device Tree for OnePlus 11R (udon / aston / CPH2487)

Official OrangeFox Recovery source tree for the **OnePlus 11R 5G** (Qualcomm Snapdragon 8+ Gen 1 - `SM8475`).

---

## 📱 Device Specifications

| Feature | Specification |
| :--- | :--- |
| **SoC** | Qualcomm Snapdragon 8+ Gen 1 (SM8475 - 4nm) |
| **CPU** | Octa-core (1x3.19 GHz Cortex-X2 & 3x2.75 GHz Cortex-A710 & 4x1.80 GHz Cortex-A510) |
| **GPU** | Adreno 730 |
| **RAM** | 8 GB / 16 GB LPDDR5X |
| **Storage** | 128 GB / 256 GB UFS 3.1 |
| **Display** | 6.74" 1.5K 120Hz Super Fluid AMOLED (1240 x 2772 px) |
| **Battery** | 5000 mAh Dual-cell (100W SuperVOOC) |
| **Partitions** | Dynamic Super Partitions, Virtual A/B |

---

## 🦊 OrangeFox Key Features Included

- **Decryption:** Full support for Android 13/14 WrappedKey Metadata Encryption & FBE v2.
- **Dynamic Super Partitions:** Support for `system`, `vendor`, `product`, `system_ext`, `odm`, and `my_*` logical partitions.
- **Flashing:** Fastbootd, A/B Slot switching (`fastboot --set-active=a|b`), and OTA survivability.
- **Built-in Utilities:** `bash`, `nano`, `tar`, `sed`, `lptools`, and `resetprop`.
- **Torch / Flashlight:** Dual LED flash support enabled in recovery UI.
- **Backlight Control:** Panel brightness calibrated for OnePlus 11R AMOLED screen.

---

## 🔨 How to Build OrangeFox Recovery

### Method 1: Using 1-Click GitHub Actions (Cloud CI)
1. Go to the **Actions** tab in this repository.
2. Select **"Build OrangeFox Recovery for OnePlus 11R (udon)"**.
3. Click **Run workflow** -> Choose `fox_12.1` -> Run.
4. Download the compiled `OrangeFox-*.zip` and `recovery.img` from the workflow summary artifacts!

### Method 2: Local / Crave.io Build

```bash
# 1. Initialize OrangeFox Manifest
mkdir ~/fox && cd ~/fox
repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_12.1 --depth=1
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# 2. Clone this device tree
git clone https://github.com/Gokulgethu/device_oneplus_udon-orangefox.git device/oneplus/udon

# 3. Build OrangeFox Recovery
source build/envsetup.sh
lunch fox_udon-eng
mka recoveryimage -j$(nproc --all)
```

---

## ⚡ How to Flash OrangeFox Recovery

```bash
# Flash recovery image to both slots
fastboot flash recovery_a recovery.img
fastboot flash recovery_b recovery.img

# Or boot directly to OrangeFox
fastboot boot recovery.img
```
