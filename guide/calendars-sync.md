---
title: Calendars & sync
permalink: /guide/calendars-sync/
---

[← User guide]({{ '/guide/' | relative_url }})

## Calendars
The **Calendar** tab has Month, Week (3 days on phones), Day and Agenda views of your tasks. Settings → **Calendars** adds events from:
- **Device calendars** (Android, iOS): the default. You can hide individual calendars.
- **Google Calendar** online: opt in. It adds read-only calendar access to your Google sign-in, works on desktop too, and hides the phone's copy of the same account so events don't appear twice.
- **Outlook** (Microsoft account): read-only.
- **iCloud** via CalDAV.

Events show in Today's *Schedule* and in the Calendar tab. You can also put a task on a calendar, or ask quick add to create an event. Nothing is created without your tap, and *Undo* removes it.

## Sync between devices
Settings → **Account & sync**:
- **Google Drive**: files go to the app's private folder in **your** Drive. Sign-in is needed only for this.
- **Sync folder** (desktop): any folder that Dropbox, OneDrive, Syncthing and similar keep in sync.

**End-to-end encrypted.** Every file is encrypted on the device with a key made from your passphrase before it is uploaded. The key is never uploaded. You get a **recovery key** once: keep it safe. If you lose both the passphrase and the recovery key, the cloud copy can't be read; the data on your devices is not affected.

**When it syncs**
- on app start and when you return to the app
- every 15 minutes while the app runs (on Android also in the background)
- 20 seconds after a change
- when you pull down on Today, Tasks or Calendar, or tap Refresh on desktop

**Conflicts.** If two devices change the same item, the newer change wins. The other version stays in **History**, where *Restore this version* brings it back on every device.

Google sign-in is in Google's testing mode until the app is verified, so only invited testers can sign in for now.
