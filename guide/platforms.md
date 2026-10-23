---
title: Platforms
permalink: /guide/platforms/
---

[← User guide]({{ '/guide/' | relative_url }})

DailyFixer is one app for five platforms. **Android is available now**; the other builds are tested but not distributed yet.

| Feature | Android | iOS | Windows | Linux | macOS |
|---|---|---|---|---|---|
| Download | [APK]({{ '/download/' | relative_url }}) | later | later | later | later |
| Tasks, quick add, history | yes | yes | yes | yes | yes |
| Scheduled reminders | yes | yes (next 60) | toasts; tray keeps the app running | while running (tray) | yes |
| Urgent reminders | alarm sound; through Do Not Disturb with access | time-sensitive | urgent toast | critical | time-sensitive |
| Voice | system, Whisper, OpenAI cloud | system, OpenAI cloud | Whisper on device, OpenAI cloud | Whisper, OpenAI cloud | system, OpenAI cloud |
| On-device AI | Gemini Nano (supported phones) | later | Ollama | Ollama | Ollama |
| Telegram reminders | on time, app closed | while open | while open | while open | while open |
| Calendars | device, Google, iCloud, Outlook | device, Google, iCloud, Outlook | Google, iCloud, Outlook | Google, iCloud, Outlook | Google, iCloud, Outlook |
| Encrypted sync | Google Drive | Google Drive | Drive or a folder | Drive or a folder | Drive or a folder |
| Tray and start with the system | — | — | yes | yes | — |

Secrets are kept in each system's secure storage: Android Keystore, Apple Keychain, Windows Credential Manager or the Linux Secret Service.
