# Himmelsscheibe — Patch Notes

Original app: **Lernabenteuer Deutsch — Das Geheimnis der Himmelsscheibe**  
Developer: Goethe-Institut  
Package: `de.goethe.lernabenteuer`  
Version: 1.9.3 (versionCode 100193)

## Goal
Modernize the original APK (targetSdk 22, 2015) to run on modern Android (tested on Samsung Galaxy S23 Ultra, Android 14).

---

## Patch 1 — SDK and Manifest (`apktool.yml`, `AndroidManifest.xml`)

- `minSdkVersion` 9 → 19
- `targetSdkVersion` 22 → 28
- `android:exported="true"` on the launcher activity (required for targetSdk ≥ 31)
- `android:exported="false"` on all other activities, services and receivers
- `android:requestLegacyExternalStorage="true"` — preserves storage access on Android 10
- `android:networkSecurityConfig` — allows HTTP traffic (legacy Unity may require it)
- `WRITE/READ_EXTERNAL_STORAGE` with `maxSdkVersion="28"` — cleans up obsolete permission
- Removed `CHECK_LICENSE` permission (legacy Google Play DRM)
- `installLocation` preferExternal → internalOnly

New file: `res/xml/network_security_config.xml`

---

## Patch 2 — Notification.Builder (`smali/com/unity3d/plugin/downloader/b/i.smali`)

**Problem:** `Notification.setLatestEventInfo()` was removed in API 23. With targetSdk > 22 Android throws a `RuntimeException`.

**Fix:** Replaced with `Notification.Builder` in both call sites:
- `a(I)V` — download status notification
- `a(Lcom/unity3d/plugin/downloader/a/b;)V` — download progress notification

---

## Patch 3 — License Check bypass (`smali/com/unity3d/plugin/downloader/c/j.smali`)

**Problem:** `checkAccess()` calls `bindService` to Google Play to verify the app license. Without Play Store available, the main thread blocks indefinitely, making the device unresponsive.

**Fix:** Method `a(Lcom/unity3d/plugin/downloader/c/n;)V` replaced to call `callback.a()` directly (equivalent to the "cached license response" path that already existed in the original code).

The original method was preserved and renamed to `a_original_disabled` for reference.

---

## Installation

### Dependencies
- Java 21 (Android Studio JBR): `C:\Program Files\Android\Android Studio\jbr`
- Android SDK Build Tools 36.1.0
- apktool 2.11.1: `C:\Users\Felip\ApkProjects\apktool.jar`
- Debug keystore: `C:\Users\Felip\ApkProjects\debug.keystore`

### Build
```bat
cd C:\Users\Felip\ApkProjects
build.bat
```

### Install on device
```bat
# Single device connected:
install.bat

# Multiple devices (e.g. emulator + phone):
adb -s <SERIAL> install -r output\himmelsscheibe-signed.apk
```

### OBB (game data — ~116MB, required)
```bat
adb -s <SERIAL> shell "mkdir -p /sdcard/Android/obb/de.goethe.lernabenteuer"
adb -s <SERIAL> push main.100193.de.goethe.lernabenteuer.obb /sdcard/Android/obb/de.goethe.lernabenteuer/
```

The OBB file is not included in this repository. Download the XAPK from: https://apkpure.com/adventure-german/de.goethe.lernabenteuer/download  
Extract the `.xapk` (it's a ZIP) and copy the `.obb` from `Android/obb/de.goethe.lernabenteuer/` inside it.

---

## Planned next phases

- [ ] `targetSdk` 28 → 31 + Notification Channels
- [ ] Support Library → AndroidX (1,048 Smali files)
- [ ] Scoped Storage (replace WRITE_EXTERNAL_STORAGE)
- [ ] Native ARM64 support (requires original Unity project)
