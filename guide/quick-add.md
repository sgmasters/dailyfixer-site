---
title: Quick add & voice
permalink: /guide/quick-add/
---

[← User guide]({{ '/guide/' | relative_url }})

One line of text or speech becomes a task. The parts it recognizes show as chips before you add it.

> **Call mom** _tomorrow_ _at 5pm_ _!!_ _remind me 10 min before_ _for 15 min_
>
> title **Call mom** · due **tomorrow 17:00** · priority **P2** · reminder **16:50** · estimate **15 min**

Press Enter (or Send) to add the task; the sheet closes and shows *Added "…" · Undo*. To keep it open for the next task: Settings → Language & voice → *Keep quick add open for the next task*.

## What it understands

| Kind | Examples |
|---|---|
| Date | today, tomorrow, day after tomorrow, monday, on fri, next friday, this weekend, next week, next month, in 3 days, in two weeks, 2026-11-03, Nov 3, 3 nov, 3.11, 3.11.2027 |
| Time | at 5pm, 17:00, 5:30pm, at 5 (1–7 read as pm), noon, midnight, morning (09:00), afternoon (14:00), evening (19:00), tonight (20:00) |
| Relative | in 2 hours, in 30 min |
| Priority | ! / !! / !!!, p1 p2 p3; words in English, Russian, Ukrainian, German, Spanish and French: urgent, asap, critical, top priority → P1 · important, high priority → P2 · low / medium priority, not urgent → P3; spoken "priority one", "P one" |
| Reminder | remind me 10 min before, remind 1 hour before, remind me at 4pm, remind me |
| Urgent reminder | remind me urgently …, urgent reminder, alarm me, wake me (up) → alarm-style reminder (a bare "urgent" still means P1) |
| Estimate | for 30 min, for 2 hours |
| Tags | #work, #family |
| Repeat | every day, every 2 days, every other week, every monday, every mon and thu, every weekday, every month on the 1st, every 25th · ends: 5 times, until dec 15 |

**Russian** works the same way: `завтра в 17:00`, `в следующую пятницу`, `через 2 часа`, `3 ноября`, `напомни за 10 минут`, `срочно`, `каждый понедельник`, `по будням`, `на 30 минут`, `срочно напомни`, `разбуди`. Word endings, number words and ё/е are handled.

## Commands
Quick add also understands a few commands on existing tasks:
- complete X
- move X to friday
- postpone X by 2 days
- rename X to Y
- remind me about X at 4pm

Russian: выполни, перенеси … на пятницу, отложи … на 2 дня.

**App commands** (since 0.2.2), English and Russian:

| Command | Examples |
|---|---|
| Learning packs | complete pack Spanish · archive Spanish · restore Spanish from archive / trash · reopen pack Spanish · delete pack Spanish (with everything) — заверши курс …, архивируй …, восстанови … из корзины, удали курс … со всем |
| Delete a task | delete buy milk — удали задачу … |
| Open a screen | open settings · go to trash · open goals · open learning · start review — открой настройки, перейди в корзину, повтори карточки |
| Settings | dark mode · light theme · system theme · turn off gamification · gamification light · switch to Russian · keep quick add open · turn on dictation — включи тёмную тему, выключи геймификацию, переключись на английский, включи диктовку |

A confirmation chip appears; **nothing changes until you tap it**, and *Undo* follows (opening a screen closes quick add). If X doesn't match one of your tasks or packs, the text simply becomes a new task.

## Voice
Tap the mic in quick add. The transcript fills the same field, so the same rules apply. Tasks are never created automatically when you stop speaking.

| Setting (Language & voice) | What it does |
|---|---|
| **Voice recognition** (engine) | *System speech*: the default on Android, iOS and macOS. *On-device Whisper*: the default on Windows and Linux, also on Android; the model downloads once and audio never leaves the device. *Cloud*: uses your own OpenAI key. If a choice isn't usable on this device, the default is used. |
| **Keep listening until I tap stop** | Dictation for long input. Off by default. |
| **Fix up with AI** | When AI is on, tidies punctuation, numbers and quick-add words before you send. Shows *Fixed up by … · Show original*. |

The microphone permission is asked once; Android remembers your answer.
