---
title: Getting started
permalink: /guide/getting-started/
---

[← User guide]({{ '/guide/' | relative_url }})

1. **Install** the APK from the [Download page]({{ '/download/' | relative_url }}).
2. **First launch** shows a short onboarding. Skip it any time; nothing needs an account, and the app works offline.
3. **Add your first task** with the **+ Add** button: type "Call mom tomorrow at 5pm" and press Enter. See [Quick add]({{ '/guide/quick-add/' | relative_url }}) for everything it understands.

## Permissions
DailyFixer explains each permission before Android asks. You can say no; the related feature then stays off.

| Permission | Asked when | Needed for |
|---|---|---|
| Notifications | the first reminder | Reminders |
| Alarms & reminders (Android 14+) | the first timed reminder | Reminders at the exact minute (otherwise Android may delay them a little) |
| Microphone (and speech) | the first tap on the mic | Voice input |
| Do Not Disturb access | Settings → Reminders → *Urgent reminders in Do Not Disturb* | Urgent reminders that ring through Do Not Disturb |
| Calendars | Settings → Calendars → connect | Showing your phone's calendars |

## Language
Settings → **Language & voice**: app language (System, English, Русский) and the quick-add language. Quick add follows the app language unless you pick another.

## Optional connections
All off until you turn them on in Settings:
- **Account & sync**: Google Drive (encrypted) or a folder on desktop → [Calendars & sync]({{ '/guide/calendars-sync/' | relative_url }})
- **Telegram**: reminders through your own bot → [Telegram]({{ '/guide/telegram/' | relative_url }})
- **Calendars**: device, Google, Outlook, iCloud → [Calendars & sync]({{ '/guide/calendars-sync/' | relative_url }})
- **AI**: on-device or your own key → [AI]({{ '/guide/ai/' | relative_url }})

Every change you make is kept in **Settings → Audit log** (and per task in Task → History), so you can see what changed and when.
