---
title: Updates
permalink: /guide/updates/
---

[← User guide]({{ '/guide/' | relative_url }})

From version **0.3.1**, DailyFixer can update itself on Android and Windows. Your tasks, settings and history stay as they are.

## How you hear about a new version
- Once a day, a few seconds after the app opens, DailyFixer asks this site which version is the latest.
- If there is a newer one, you see *DailyFixer X is available · View*. Tap **View** to see what's in it. Nothing is downloaded until you tap **Download and install**.
- No message? You already have the latest version, or the app checked earlier today, or you are offline (it tries again at the next start).

## The Updates screen
Settings → About → **Updates**:

| Item | What it does |
|---|---|
| Installed | the version you have |
| Check for updates automatically | the daily check; turn it off and the app only checks when you tap *Check now* |
| Check now | asks the site right away |
| What's new | opens the release notes on this site |
| Download and install | downloads the update, checks it, then installs it (below) |
| Skip this version | no message for this version; a newer one is offered again. *Check now* still shows it, so you can install it later |

Every download is checked against the release's SHA-256 checksum before it is used. A damaged or changed file is deleted and nothing is installed.

## Android
1. Tap **Download and install**. The progress bar shows the download (25–35 MB).
2. **First time only:** Android asks to allow DailyFixer to install apps. Tap **Open settings**, turn on **Allow from this source**, come back and tap **Download and install** again.
3. The Android installer asks *Do you want to update this app?* → **Update**, then **Open**.

The update installs over the current app with the same signature, so nothing is lost. To take the permission back later: Android Settings → Apps → Special app access → Install unknown apps → DailyFixer.

## Windows
1. Tap **Download and install** → **Update and restart**.
2. DailyFixer downloads the zip (about 17 MB), closes, replaces its program files and opens again a few seconds later.

Your data lives in `%APPDATA%\app.dailyfixer\DailyFixer`, not in the app folder, so it is not touched.

- **App folder can't be changed** (for example DailyFixer is in *Program Files*): the downloaded zip is shown in Explorer instead. Quit DailyFixer and unzip it over the app folder, or move the app to a folder of your own (for example `Documents\DailyFixer`) so updates work.
- **Using 0.3.1 on Windows?** Its *Update and restart* closed the app without updating. Install 0.3.2 once from the [Download page]({{ '/download/' | relative_url }}#install-on-windows) (unzip over the old folder); from then on updates work from inside the app.
- **Didn't restart?** Start `dailyfixer.exe` again. Details of the last update are in `%TEMP%\dailyfixer-update.log`.

## macOS and Linux
DailyFixer tells you about new versions; **Open download page** takes you to the downloads. Installing from inside the app is not available there yet.

## iOS
No update check: iPhone builds will come through the App Store or TestFlight.

## Privacy
The check is a plain request for one small file on this site (hosted by GitHub Pages); downloads come from GitHub Releases. No account, device id, app data or version number is sent. GitHub sees your IP address and the time, as for any visit to a website. See [Privacy]({{ '/privacy' | relative_url }}#update-check).

## Updating by hand
You can always download the newest version from the [Download page]({{ '/download/' | relative_url }}) and install it over the old one, as before.
