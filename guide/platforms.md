---
title: Platforms
permalink: /guide/platforms/
---

[← User guide]({{ '/guide/' | relative_url }})

DailyFixer is one app for five platforms. **Android, Windows, Mac and iPhone are available now** (Windows as a portable zip since 0.2.2; Mac and iPhone from this site since 0.3.2 — [Mac & iPhone]({{ '/apple/' | relative_url }})); Linux builds are tested but not distributed yet.

| Feature | Android | iOS | Windows | Linux | macOS |
|---|---|---|---|---|---|
| Download | [APK]({{ '/download/' | relative_url }}) | [SideStore]({{ '/apple/' | relative_url }}#iphone-and-ipad) | [zip]({{ '/download/' | relative_url }}#install-on-windows) | later | [Terminal / DMG]({{ '/apple/' | relative_url }}#mac) |
| Tasks, quick add, history | yes | yes | yes | yes | yes |
| Scheduled reminders | yes | yes (next 60) | toasts; tray keeps the app running | while running (tray) | yes |
| Urgent reminders | alarm sound; through Do Not Disturb with access | normal reminder (time-sensitive needs a paid Apple account) | urgent toast | critical | normal reminder (same) |
| Voice | system, Whisper, OpenAI cloud | system, OpenAI cloud | Whisper on device, OpenAI cloud | Whisper, OpenAI cloud | system, OpenAI cloud |
| On-device AI | Gemini Nano (supported phones) | later | Ollama | Ollama | Ollama |
| Telegram reminders | on time, app closed | while open | while open | while open | while open |
| Calendars | device, Google, iCloud, Outlook | device, Google, iCloud, Outlook | Google, iCloud, Outlook | Google, iCloud, Outlook | Google, iCloud, Outlook |
| Encrypted sync | Google Drive | not in this build (Google sign-in) | Drive or a folder | Drive or a folder | a folder (Google sign-in not in this build) |
| Tray and start with the system | — | — | yes | yes | — |
| [Updates]({{ '/guide/updates/' | relative_url }}) (0.3.1+) | download and install | SideStore → Update | download, install, restart | notice + download page | notice; run the install line again |

Secrets are kept in each system's secure storage: Android Keystore, Apple Keychain, Windows Credential Manager or the Linux Secret Service.
