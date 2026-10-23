---
title: Import & export
permalink: /guide/import-export/
---

[← User guide]({{ '/guide/' | relative_url }})

Settings → **Import / export**.

| Format | Use | What happens |
|---|---|---|
| DailyFixer backup (`dailyfixer.export`) | Full backup of everything | Import merges: new items are added; an existing item is replaced only if the imported copy is newer |
| Task list (`dailyfixer.tasks`, or a plain JSON array) | Task lists you write by hand or generate | Creates tasks with sub-tasks, due dates, priority, notes, estimate and done state |
| Learning pack (JSON, Markdown, CSV) | Courses | A goal with one task per lesson; see [Goals & learning]({{ '/guide/goals-learning/' | relative_url }}) |
| Microsoft To Do | Moving from To Do | One-time import with a preview (Microsoft account) |

Secrets (Telegram token, API keys, sync key) are never exported.

**Moving to a new phone:** turn on [sync]({{ '/guide/calendars-sync/' | relative_url }}) on both, or export a backup, copy the file, install DailyFixer on the new phone and import it.
