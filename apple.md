---
title: Mac & iPhone
permalink: /apple/
---

{% assign a = site.data.apple %}
**DailyFixer {{ a.version }}** for Mac, iPhone and iPad — the same app as on Android and Windows, installed from this site instead of the App Store. [What's new]({{ '/releases/' | relative_url }})

## Mac

**Install** (macOS 14 or newer): open **Terminal** and paste

```bash
curl -fsSL https://sgmasters.github.io/dailyfixer-site/install.sh | bash
```

DailyFixer goes into the *Applications* folder of your home folder (no administrator password) and opens without any security warning.

**Update:** DailyFixer tells you when a new version is out (Settings → About → **Updates**). Tap **Download and install**: the new version is downloaded, its signature checked, and it is installed when you quit DailyFixer (builds from 0.4 on). Older builds: run the same line in Terminal again. Your tasks and settings stay either way.

**Can't use Terminal?** Download [DailyFixer {{ a.version }} for Mac (DMG)]({{ a.mac_dmg }}), open it and drag DailyFixer to *Applications*. The first time, macOS says it can't check the app: open **System Settings → Privacy & Security**, scroll down and click **Open Anyway** next to DailyFixer. For updates, download the new DMG the same way (or use the Terminal line).

**Reminders:** in the first steps DailyFixer asks to send notifications. macOS shows a banner — choose **Options → Allow** (or later: System Settings → Notifications → DailyFixer).

**Already had a DailyFixer in /Applications** (an older test build)? Move it to the Trash so only the new one opens.

## iPhone and iPad

Apps from outside the App Store are installed with **SideStore** (free). SideStore installs DailyFixer with your own Apple ID and keeps it working.

**One-time setup** (about 15 minutes, needs a computer once):

1. Install SideStore by following the official guide at [sidestore.io](https://sidestore.io) (it uses a computer once to create a "pairing file").
2. On the iPhone, turn on **Settings → Privacy & Security → Developer Mode** when the guide asks you to.
3. In SideStore, tap **Sources → +** and add this source:
   ```
   https://sgmasters.github.io/dailyfixer-site/apple/source.json
   ```
4. Open the DailyFixer source and tap **Get**. SideStore signs DailyFixer with your Apple ID and installs it. (AltStore works the same way; the [.ipa file]({{ a.ios_ipa }}) is here too.)
5. The first time you open it: **Settings → General → VPN & Device Management** → your Apple ID → **Trust**.

**Updates:** SideStore shows new versions under *My Apps → Updates*; tap **Update**.

**Keep it running:** Apple lets a free Apple ID run a self-installed app for **7 days**. SideStore renews it in the background; open SideStore at least once a week (or tap **Refresh All**) so DailyFixer keeps opening. Your tasks stay on the phone either way.

**Limits of a free Apple ID:** up to 3 self-installed apps at a time (SideStore counts as one) and 10 new apps per week.

## What's different on Mac and iPhone

- **Google sign-in** (Drive sync, Google Calendar) works. Signed in before on another device? Use the same Google account and **Sync now**.
- **Urgent reminders** arrive as normal reminders: alarm-style alerts need a paid Apple developer account.
- **iPhone:** reminders are scheduled on the phone (the next 60); Telegram reminders go out while the app is open.
- Full list: [Platforms]({{ '/guide/platforms/' | relative_url }}).

Checksums: [SHA256SUMS-apple.txt]({{ a.sums }})
