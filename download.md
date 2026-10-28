---
title: Download
permalink: /download/
---

{% assign newest = site.data.releases.first %}
{% assign r = site.data.releases | where_exp: "x", "x.files != false" | first %}
{% capture base %}https://github.com/{{ site.releases_repo }}/releases/download/v{{ r.version }}{% endcapture %}

**DailyFixer {{ r.version }}** for Android{% if r.windows %} and Windows{% endif %} · released {{ r.date | date: "%-d %B %Y" }} · [what's new]({{ '/releases/' | relative_url }}#v{{ r.version | replace: '.', '' }})

| File | For |
|---|---|
| [dailyfixer-{{ r.version }}-arm64-v8a.apk]({{ base }}/dailyfixer-{{ r.version }}-arm64-v8a.apk) | **Most phones** (64-bit ARM) |
| [dailyfixer-{{ r.version }}-universal.apk]({{ base }}/dailyfixer-{{ r.version }}-universal.apk) | Any device, if unsure (larger) |
| [dailyfixer-{{ r.version }}-armeabi-v7a.apk]({{ base }}/dailyfixer-{{ r.version }}-armeabi-v7a.apk) | Older 32-bit phones |
| [dailyfixer-{{ r.version }}-x86_64.apk]({{ base }}/dailyfixer-{{ r.version }}-x86_64.apk) | Emulators and x86 devices |
{% if r.windows %}| [DailyFixer-{{ r.version }}-windows-x64.zip]({{ base }}/DailyFixer-{{ r.version }}-windows-x64.zip) | **Windows 10/11** (64-bit), portable |
{% endif %}| [SHA256SUMS.txt]({{ base }}/SHA256SUMS.txt) | Checksums of the files above |

All versions: [GitHub Releases](https://github.com/{{ site.releases_repo }}/releases).
{% if newest.version != r.version %}
**DailyFixer {{ newest.version }}** ([what's new]({{ '/releases/' | relative_url }}#v{{ newest.version | replace: '.', '' }})) is released; its downloads will appear here soon.
{% endif %}

## Install on Android
1. Download the APK on your phone and open it.
2. When Android asks, allow **Install unknown apps** for your browser or file manager. DailyFixer is not on Google Play yet, so Play Protect may show a warning; the APK is signed by the developer.
3. Open DailyFixer. It works offline right away; no account is needed.

**Updating:** install the newer APK over the installed one. Your data stays. All APKs on this page carry the same signature, so updates install in place.

**Check the download (optional):** on a computer, put the APK next to `SHA256SUMS.txt` and run `sha256sum -c SHA256SUMS.txt --ignore-missing`.

{% if r.windows %}
## Install on Windows
1. Download the zip and unzip it anywhere (for example `Documents\DailyFixer`).
2. Run `dailyfixer.exe`. The build is not code-signed yet, so Windows SmartScreen may say *Windows protected your PC*: choose **More info** → **Run anyway**.
3. Optional: Settings → Desktop → tray icon and *Start with Windows*.

**Updating:** quit DailyFixer (also from the tray), unzip the new version over the old folder or into a new one. Your data is kept in `%APPDATA%\app.dailyfixer\DailyFixer`, not in the app folder. **Removing:** switch off *Start with Windows*, then delete the folder.
{% endif %}
## Good to know
- **Google sign-in** (Drive sync, Google Calendar) is in Google's testing mode until the app is verified: only invited testers can sign in for now. Everything else works without it.
- **Exact reminder times:** on Android 14 and newer, also allow *Alarms & reminders* when the app asks.
- **Other platforms:** Linux, macOS and iOS builds exist and are tested, but are not distributed yet. See the [platform overview]({{ '/guide/platforms/' | relative_url }}).

Next: [Getting started]({{ '/guide/getting-started/' | relative_url }}) · [Privacy policy]({{ '/privacy' | relative_url }})
