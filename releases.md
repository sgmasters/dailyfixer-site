---
title: Release notes
permalink: /releases/
---

New versions first. Downloads: [Download page]({{ '/download/' | relative_url }}) (latest) or each version's link below.

{% capture gh %}https://github.com/{{ site.releases_repo }}/releases/tag{% endcapture %}

## 0.4.0 · 11 November 2026 {#v040}

Android APKs and the Windows zip. [Files for 0.4.0]({{ gh }}/v0.4.0) · Mac and iPhone: [Mac & iPhone]({{ '/apple/' | relative_url }}). On Android and Windows, 0.3.1 and later offer this update in Settings → About → Updates.

**Added**
- **Bulgarian.** The whole app in Bulgarian: Settings → Language & voice → App language → **Български** (or the phone's language). Quick add understands Bulgarian dates, times, repeats, reminders, durations and priorities ("обаждане на мама утре в 5 следобед напомни ми 10 минути преди", "всеки делничен ден"), and commands ("изпълни …", "отложи … с 2 дни"). Voice: Bulgarian speech recognition on phones, offline Whisper (use the Standard model) and cloud transcription. The wording is new: corrections are welcome.
- **AI: My server.** Settings → AI → **My server** uses your own Ollama or LM Studio on your computer, also from your phone over Tailscale; requests go only to that address, never to a cloud provider. API key optional (kept on the device). Set-up and model advice (`qwen3:8b`): [Your own AI server]({{ '/guide/own-server/' | relative_url }}).
- **Mac: updates inside the app.** Settings → About → Updates → **Download and install** downloads, checks the signature and installs when DailyFixer quits; or **Copy command** for Terminal.

**Changed**
- Ollama: thinking models (Qwen3) are asked not to think, so answers come faster.

**Fixed**
- Make a goal with small local models no longer adds copies of your tasks; Bulgarian task lists get Bulgarian milestone names (not Russian).
- iPhone: Done and Snooze on a reminder work when DailyFixer is closed.
- Undo after Make a goal goes back to your tasks instead of "Goal not found".
- Phones: export opens the share sheet, so a backup can be saved outside the app (Files, Drive, mail).
- Phones: the selection bar shows the number of selected tasks.

## 0.3.2 · 10 November 2026 {#v032}

Android APKs and the Windows zip. [Files for 0.3.2]({{ gh }}/v0.3.2)

**11 November 2026: also for Mac, iPhone and iPad** — Mac with one line in Terminal, iPhone and iPad through SideStore: [Mac & iPhone]({{ '/apple/' | relative_url }}). Google sign-in (Drive sync, Google Calendar) isn't in these builds yet.

**Fixed**
- **Windows: Update and restart** closed DailyFixer without installing the update (0.3.1). The app now replaces its files and opens again.
- If you use 0.3.1 on **Windows**, install 0.3.2 once from the [Download page]({{ '/download/' | relative_url }}) (unzip over the old folder). Later updates work from inside the app. On Android, 0.3.1 updates itself normally.

## 0.3.1 · 10 November 2026 {#v031}

Android APKs and the Windows zip. [Files for 0.3.1]({{ gh }}/v0.3.1)

**Added**
- **Updates inside the app** (Android and Windows). Once a day at start DailyFixer asks this site whether a newer version exists and offers it with one message. Settings → About → **Updates** has *Check now*, *What's new*, **Download and install** and *Skip this version*. Every download is checked against the release's SHA-256 before it is used.
  - **Android** opens the system installer; the first time, allow DailyFixer to install apps (*Install unknown apps*). Updates install in place; your data stays.
  - **Windows**: DailyFixer closes, replaces its program files and starts again. Your data (in `%APPDATA%`) stays. If the app folder can't be changed (for example under Program Files), the downloaded zip is shown instead.
  - **macOS and Linux** get a link to the download page.
- The automatic check can be turned off. It sends no data about you; see [Privacy]({{ '/privacy' | relative_url }}#update-check).

From 0.3.1 on, you won't need this page to update. To get 0.3.1 itself, install it from the [Download page]({{ '/download/' | relative_url }}) once.

## 0.3.0 · 10 November 2026 {#v030}

Android APKs and the Windows zip. [Files for 0.3.0]({{ gh }}/v0.3.0)

**Added**
- **Make a goal from your tasks.** Select tasks (long-press in Tasks, or ⋮ → Select) → **Make a goal**, or Missions → Goals → **From my tasks**. Drag tasks into milestones, add more tasks or paste a list, and choose a target date and reminders (on milestones, every step or none). Tasks without a date get dates up to the target; tasks that have a date keep it. Fill the plan with:
  - **Suggest groups**: shared tags and words, no AI;
  - **Organize with AI**: on-device (Gemini Nano on Android, Ollama on your computer) or your own key; only the task titles are sent;
  - **Copy AI prompt** for any AI chat, then **Paste AI answer**.

  Your tasks are moved into the goal, not copied; one **Undo** puts everything back. See [Goals & learning]({{ '/guide/goals-learning/' | relative_url }}#make-a-goal-from-your-tasks).
- **Tasks: List or Board.** The tune icon opens **View**:
  - **List** (as before) groups by date, tag, priority or nothing;
  - **Board** shows a column per tag (plus *No tag*). On phones each column fills the screen: swipe, or tap its tab. On a computer the columns sit side by side; drag the board with the mouse or use Shift + wheel. Drag a card by its handle to another column to move it to that tag.

  See [Tasks]({{ '/guide/tasks/' | relative_url }}#view-list-or-board).
- **More sorting**: due date, priority, manual, created, title A–Z, recently changed, plus a second sort key. **Compact rows** fit one task per line.
- **Select a whole group**: a box in each section header (List) or column header (Board) selects all its tasks.

**Changed**
- Task rows show two tags and "+N" instead of a long line of tags.
- After quick add, the message offers **Open** (the new task) instead of Undo; delete a wrong task from its screen.
- Settings → AI → *What is sent* mentions the task titles you put into Make a goal.
- On the Board, rows don't swipe (a sideways swipe moves between columns); complete tasks with their checkbox.

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
