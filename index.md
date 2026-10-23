---
title: DailyFixer
permalink: /
---

<!-- DRAFT for the owner to review (ADR-0015, Q-016). Content follows the app handbook (v0.2.0, 2026-10-22). -->

**DailyFixer** is a free daily planner: tasks and sub-tasks, reminders by notification or Telegram, quick add by text or voice, calendars, missions built from your goals, and learning packs. No ads, no tracking.

[Download for Android]({{ '/download/' | relative_url }}) · [User guide]({{ '/guide/' | relative_url }}) · [Release notes]({{ '/releases/' | relative_url }})

<video controls preload="none" width="100%" poster="{{ '/assets/media/dailyfixer-intro-poster.jpg' | relative_url }}">
  <source src="{{ '/assets/media/dailyfixer-intro.mp4' | relative_url }}" type="video/mp4">
</video>

- **Local-first.** Everything is stored on your device and works offline, without an account.
- **Your cloud, encrypted.** Optional sync through your own Google Drive app folder (or a folder on desktop), end-to-end encrypted with your passphrase. There is no DailyFixer server.
- **Fast input.** Type or say "Call mom tomorrow at 5pm !! remind me 10 min before" and the date, priority and reminder are filled in.
- **Reminders that get through.** Notifications with Done and Snooze, Telegram messages through your own bot, and urgent alarm-style reminders.
- **Goals and learning.** Turn a goal into scheduled steps; import or generate learning packs with quizzes and spaced repetition.
- **AI is optional.** Off by default. Use the AI built into your phone, Ollama on your computer, or your own API key.
- **Platforms.** Android today (signed APK). Windows, Linux, macOS and iOS builds exist and will follow.

<div style="display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:12px;margin:24px 0">
{% for shot in site.static_files %}{% if shot.path contains '/assets/media/screenshots/' %}
  <a href="{{ shot.path | relative_url }}"><img src="{{ shot.path | relative_url }}" alt="Screenshot: {{ shot.basename | split: '_' | shift | join: ' ' }}" loading="lazy" style="width:100%;border-radius:12px;border:1px solid #ddd"></a>
{% endif %}{% endfor %}
</div>

[Privacy policy]({{ '/privacy' | relative_url }}) · [Политика конфиденциальности]({{ '/privacy' | relative_url }}#ru)

---

**DailyFixer** — бесплатный планировщик дня: задачи и подзадачи, напоминания, календари, голосовой ввод, миссии и учебные курсы. Без рекламы и отслеживания. Данные хранятся на устройстве; синхронизация — через собственный Google Диск пользователя со сквозным шифрованием. Интерфейс и разбор быстрого ввода — на английском и русском. [Скачать для Android]({{ '/download/' | relative_url }}).
