# flutter_crossplatform_demo

A **Flutter demo app** showing clean compilation across **Web**, **Android**, **iOS**, and **macOS** targets.

This project demonstrates Flutter’s ability to maintain a consistent build pipeline and UI experience across platforms using a single codebase.

---

## 🧩 Overview
- Built entirely in **Dart + Flutter**.
- Designed for a **mobile viewport** (390×844) even on web/desktop — intentionally constrained for demo purposes.
- Currently uses **static layout and data**.
- Future updates will introduce **live data integration** and responsive scaling.

---

## 💻 Tested Platforms
| Platform | Status | Notes |
|-----------|---------|-------|
| **Web** | ✅ | Hosted via GitHub Pages (mobile-sized viewport) |
| **Android** | ✅ | Tested on emulator |
| **iOS** | ✅ | Tested on simulator |
| **macOS** | ✅ | Desktop build sized to iPhone-like window |

---

## 🚀 Build & Run

```bash
# Fetch dependencies
flutter pub get

# Web
flutter build web
flutter run -d chrome

# Android
flutter build apk
flutter run -d android

# iOS
flutter build ios
flutter run -d ios

# macOS
flutter build macos
flutter run -d macos
