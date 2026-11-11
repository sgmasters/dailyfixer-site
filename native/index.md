---
title: DailyFixer for iPhone and Mac
permalink: /native/
---

{% assign n = site.data.native %}
DailyFixer for iPhone, iPad and Mac is installed from this site, not from the App Store. It works fully offline; sign in with Google in Settings to sync your tasks through your own Google Drive (DailyFixer can only see its own hidden folder there, nothing else in your Drive).

## Mac

**Install** (macOS 14 or newer): open **Terminal** and paste

```bash
curl -fsSL https://sgmasters.github.io/dailyfixer-site/native/install.sh | bash
```

The script downloads the current version and puts **DailyFixer** in the *Applications* folder of your home folder (no administrator password). It opens without any security warning. Run the same line again any time to reinstall.

**Updates** come inside the app: DailyFixer checks once a day and offers new versions; you can also choose **DailyFixer → Check for Updates…**. Each update is checked against our signing key before it is installed.

**Can't use Terminal?** Download [DailyFixer {{ n.version }} for Mac (DMG)]({{ n.mac_dmg }}), open it and drag DailyFixer to *Applications*. The first time, macOS says it can't check the app: open **System Settings → Privacy & Security**, scroll down and click **Open Anyway** next to DailyFixer. You only do this once; later updates arrive inside the app.

**Reminders on Mac:** the first time DailyFixer wants to remind you, macOS shows a banner asking to allow notifications — choose **Allow** (or later: System Settings → Notifications → DailyFixer).

## iPhone and iPad

Apps from outside the App Store are installed with **SideStore** (free). SideStore installs DailyFixer with your own Apple ID and keeps it working.

**One-time setup** (about 15 minutes, needs a computer once):

1. Install SideStore by following the official guide at [sidestore.io](https://sidestore.io) (it uses a computer once to create a "pairing file").
2. On the iPhone, open **Settings → Privacy & Security → Developer Mode** and turn it on when the guide asks you to.
3. In SideStore, tap **Sources → +** and add this source:
   ```
   https://sgmasters.github.io/dailyfixer-site/native/source.json
   ```
4. Open the DailyFixer source and tap **Get** (current version: {{ n.version }}; the [.ipa file]({{ n.ios_ipa }}) is there for AltStore users too). SideStore signs DailyFixer with your Apple ID and installs it.
5. The first time you open it: **Settings → General → VPN & Device Management** → your Apple ID → **Trust**.

**Updates:** SideStore shows new DailyFixer versions under *My Apps → Updates*; tap **Update**.

**Keep it running:** Apple lets a free Apple ID run a self-installed app for **7 days**. SideStore renews it in the background; open SideStore at least once a week (or tap **Refresh All**) so DailyFixer doesn't stop opening. Your tasks stay on the phone either way.

**Limits of a free Apple ID:** up to 3 self-installed apps at a time (SideStore counts as one) and 10 new apps per week. No push notifications are used: reminders are scheduled on the phone itself.

## What's new

**0.1.0** (11 November 2026) — first preview: tasks that work offline; Mac install in one line and updates inside the app; iPhone and iPad through SideStore. Google Drive sync is built in and is switched on in a later build. Reminders, goals, missions and learning from the main DailyFixer app aren't in the native preview yet.

## Your data

Tasks live on your device first. With Google sync on, each task is a small file in DailyFixer's hidden folder in your Google Drive; to remove everything, sign out in DailyFixer and remove DailyFixer at [myaccount.google.com/permissions](https://myaccount.google.com/permissions). Privacy policy: [privacy]({{ '/privacy/' | relative_url }}).
