---
title: Reminders
permalink: /guide/reminders/
---

[← User guide]({{ '/guide/' | relative_url }})

Add a reminder in Task details → **Add reminder**, or in quick add ("remind me 10 min before"). Reminders are scheduled by your device's operating system: no server, no internet needed.

- A notification has **Done** and **Snooze** buttons, which work even when the app is closed (Android). Tapping the notification opens the task.
- Completing, deleting or restoring a task updates its reminders automatically.
- On Android, allow *Alarms & reminders* for exact times; without it Android may deliver a little late. Reminders survive a restart of the phone.
- iOS keeps at most 64 pending notifications, so the app schedules the next 60.

## Urgent reminders
For things you must not miss: Add reminder → **Urgent** switch, or say "remind me urgently", "alarm me", "wake me up" (Russian: "срочно напомни", "разбуди"). Urgent is separate from task priority.

| Platform | How an urgent reminder behaves |
|---|---|
| Android | Alarm sound on the alarm volume; with *Do Not Disturb access* granted (Settings → Reminders) it also rings through Do Not Disturb |
| iOS / macOS | Time-sensitive notification (in builds signed with that capability) |
| Windows / Linux | Urgent toast / critical notification |
| Telegram | Optional: Settings → Reminders → *Also send urgent reminders to Telegram* sends one extra message, starting with 🚨 |

Settings → Reminders → **Test urgent alert** shows what one looks like.

Want reminders in Telegram too? See [Telegram]({{ '/guide/telegram/' | relative_url }}).
