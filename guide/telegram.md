---
title: Telegram reminders
permalink: /guide/telegram/
---

[← User guide]({{ '/guide/' | relative_url }})

Reminders can also arrive as Telegram messages from **your own** bot. There is no DailyFixer bot or server.

## Set up (about 2 minutes)
1. In Telegram, open **@BotFather**, send `/newbot`, follow the steps and copy the **token** it gives you.
2. In DailyFixer: Settings → **Telegram** → paste the token. It is stored only in your device's secure storage.
3. In Telegram, open your new bot and send it `/start`.
4. Back in DailyFixer, tap **Detect chat id**, then **Send test message**.

Then choose **Telegram** as a reminder's channel.

## How it works
- **Android** sends Telegram reminders on time even when the app is closed. iOS and desktop send them while the app is running.
- The message contains the task title and due time. You can switch to a generic "Reminder due" in Settings → Telegram.
- If the network is down, it retries after 1, 5, 15 and 30 minutes, then shows a normal notification instead.
- With several devices, **one device sends**: pick which one in Settings → Telegram. If that device has been inactive for too long, another one takes over, and each reminder goes out once.
- Urgent reminders can also go to Telegram (Settings → Reminders).
