<!-- ──────────────────────────────────────────────── -->
<!-- HEADER LOGO -->
<p align="center">
  <img src="docs/images/logo-full.png" alt="Electro Botics Logo" width="100" style="border-radius:16px; box-shadow:0 4px 12px rgba(0,0,0,0.3);" />
</p>

<h1 align="center">Flutter Cross-Platform Demo</h1>
<p align="center">
  <strong>Web  •  iOS  •  Android  •  macOS</strong><br/>
  <em>One codebase — Everywhere</em>
</p>

---

### 🌐 Live Demo

<table>
  <tr>
    <td width="260" valign="top"   align="center">
      <img src="docs/images/Flutter-demo.gif"
           alt="Flutter Cross-Platform Demo"
           width="240">
       <a href="https://timmytimmytimmytime.github.io/flutter_crossplatform_demo"><strong>Launch the running web app</strong></a>
       <br>
      <em>(Hosted via GitHub Pages)</em>
    </td>
  </tr>
</table>

---

## 🧭 Purpose

This project exists as a **proof-of-execution** for modern Flutter development:  
a single Dart codebase that builds and runs seamlessly across all major targets — Web, iOS, Android, and macOS.  

It’s intentionally small-screen focused to demonstrate design discipline and platform-agnostic polish rather than size or complexity.

---

## 🧩 Highlights

| Feature | Description |
|----------|--------------|
| **Cross-platform builds** | Verified on Web (Chrome), Android (Emulator), iOS (Simulator), macOS (Desktop) |
| **Custom splash screen** | Gradient Electro Botics branding with smooth transitions |
| **Static cards** | “Weeding”, “Performance”, and “Map” layouts as placeholders |
| **Expandable architecture** | Future-ready for live data and responsive scaling |
| **GitHub Pages deployment** | Fully automated static hosting pipeline |

---

## 🧠 Design Intent

> “Show, don’t tell.”  
> This repo isn’t a toy — it’s a concise representation of *craft*: thoughtful layout, clean Dart, multi-target builds, and live deployment proof.  

It’s the kind of project link you drop into a portfolio or recruiter email to demonstrate technical precision and execution capability.

---

## ⚙️ Build & Run

```bash
flutter pub get

# Web
flutter build web --base-href /flutter_crossplatform_demo/
flutter run -d chrome

# Android
flutter run -d android

# iOS
flutter run -d ios

# macOS
flutter run -d macos
