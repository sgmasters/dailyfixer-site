---
title: Release notes
permalink: /releases/
---

New versions first. Downloads: [Download page]({{ '/download/' | relative_url }}) (latest) or each version's link below.

{% capture gh %}https://github.com/{{ site.releases_repo }}/releases/tag{% endcapture %}

## 0.2.2 · 28 October 2026 {#v022}

First release with a **Windows** download (portable zip) next to the Android APKs. Includes everything from 0.2.1. [Files for 0.2.2]({{ gh }}/v0.2.2)

**Added**
- **Learning packs: complete, archive, delete, restore.** Each pack has a menu (⋮ on the Learn card and the pack screen):
  - **Mark as completed**: open lessons are closed and the pack moves to a collapsed **Completed** section. Its cards come back 0–3 more times at widening gaps (a week, two weeks, four weeks; 2 by default), then stop.
  - **Archive**: the pack moves to a collapsed **Archived** section; its open lessons and card reviews pause until *Restore from archive*.
  - **Delete pack**: goes to Trash. With *Also delete related items* (on by default, with counts) its open lessons, goal missions and scheduled card reviews go too. Trash has a **Learning packs** section to restore or delete permanently.
  - Every change has Undo. See [Goals & learning]({{ '/guide/goals-learning/' | relative_url }}#complete-archive-delete).
- **Voice and typed commands** in quick add (English and Russian), confirmed with one tap and undoable: learning packs, deleting a task, opening a screen, and settings (theme, gamification, app language, keep quick add open, dictation). See [Quick add]({{ '/guide/quick-add/' | relative_url }}#commands).

**Changed**
- Database schema v6; upgrades in place, nothing to do.
- Trash lists learning packs separately; lessons of an archived or deleted pack are kept when Trash is emptied.

## 0.2.1 · 23 October 2026 {#v021}

0.2.1 was not published as files; its changes ship in 0.2.2.

**Added**
- **More AI providers for your own key**: Gemini (Google), Grok (xAI), DeepSeek and OpenCode Zen, next to Claude and OpenAI (Settings → AI → Own key). Gemini has a free tier with a Google AI Studio key. Each provider keeps its own key on the device; **Get a key** opens the provider's key page. See [AI]({{ '/guide/ai/' | relative_url }}).
- **Model choice**: optional model name per provider (empty = the built-in default), so new models work without an app update.

**Changed**
- Settings → AI: the provider is picked from a list.
- Settings → AI → *What is sent* now lists everything AI requests can contain (dictated text, notes for learning packs, research topics).

**Notes**
- Research mode (web search) stays available with Claude and OpenAI keys only.

## 0.2.0 · 22 October 2026 {#v020}

Feedback release after 0.1.0. [Files for 0.2.0]({{ gh }}/v0.2.0)

**Added**
- **Voice priority words** in English, Russian, Ukrainian, German, Spanish and French ("important", "urgent", "priority one", "важно", "срочно" …) set P1–P3 from speech or typing.
- **Voice engine choice** (Settings → Language & voice): device speech service, on-device Whisper (model downloaded on demand, now also on Android) or cloud transcription with your own OpenAI key.
- **Dictation mode**: keep listening until you tap stop; optional AI fix-up of the transcript (punctuation, numbers, quick-add syntax) before you send it.
- **Goals and learning from voice or text**: describe a goal and AI fills title, why, target date and steps; paste or dictate notes to get a learning pack with lessons and quiz cards. Everything is shown for review first.
- **Research mode** (your own Claude or OpenAI key): give a topic and level; the AI searches the web and builds a learning pack with source links.
- **Urgent reminders**: alarm-style alerts that get through silent mode and, with your permission, Do Not Disturb on Android; time-sensitive on iOS/macOS; optionally also sent to Telegram. Quick add: "remind me urgently", "срочно напомни".

**Changed**
- Quick add closes after a task is added (Settings: "Keep quick add open for the next task").
- Date and time picking shows an explicit **All day / Pick time** choice instead of cancelling the time picker.

**Fixed**
- Android asked for microphone permission almost every time quick add opened.
- Speech recognition stopped after one or two words (use dictation mode for long input).
- Whisper no longer returns placeholder text on silence.

## 0.1.0 · 20 October 2026 {#v010}

First public test build: signed Android APKs. Desktop and iOS builds exist but are not distributed yet. [Files for 0.1.0]({{ gh }}/v0.1.0)

**Added**
- **Tasks**: sub-tasks, priorities P1–P4, due dates, notes, Trash with undo; Today view with an overdue section and a day start hour.
- **Quick add**: natural language in English and Russian (dates, times, priorities, tags, repeats); voice input via the system speech engine, on-device Whisper on Windows/Linux.
- **Recurrence**: daily, weekly (days of week), monthly (day of month), every N days/weeks, until a date or N times; the next occurrence appears on completion.
- **Reminders**: notifications with Done / Snooze (Android, iOS, macOS); Windows toasts, Linux in-app timers; an explanation before every system permission prompt.
- **Telegram reminders** through your own bot; test message and scheduled delivery from Android.
- **Tags**: any number per task, colors, filter, `#tag` in quick add, search.
- **Search** across tasks, tags, goals and learning packs.
- **Calendars**: month, week, day and agenda views; device calendars, Google Calendar, Outlook and iCloud (CalDAV), all opt-in; put a task on a calendar or add an event on request.
- **Microsoft account** (personal): one-time Microsoft To Do import with preview; Outlook calendar events.
- **Gamification**: XP, levels, streaks, daily/weekly/monthly missions, badges, Progress screen; Full / Light / Off modes; unlockable accent themes.
- **Goals**: split a goal into steps with the built-in planner; optional AI planner (on-device or your own Claude/OpenAI key, preview before saving).
- **Learning packs**: import JSON / Markdown / CSV as a goal with lesson tasks and quiz cards; spaced-repetition review; export.
- **Import / export**: full JSON backup.
- **Sync**: Google Drive app folder or a local sync folder (desktop), end-to-end encrypted with your passphrase; automatic and manual (pull down on Today / Tasks / Calendar).
- **History** of every change, viewable in the app.
- **Languages**: English and Russian.
- **Desktop**: tray and start with the system (opt-in) on Windows and Linux.

**Notes**
- No ads, no analytics, no DailyFixer server.
- Google sign-in runs in Google's testing mode until app verification: only invited testers can sign in (Drive sync, Google Calendar).
