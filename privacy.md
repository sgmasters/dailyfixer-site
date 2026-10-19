---
title: Privacy policy
permalink: /privacy
---

<!-- DRAFT for the owner to review (ADR-0015, Q-016). Facts come from ADR-0002, 0006, 0007, 0010,
     0011, 0014, 0016. Not legal advice. Before publishing: set the effective date and remove the Draft
     banner at the first public release; re-check every section against the shipped build. -->

> **Draft.** This page is not yet final and is not legal advice.

[English](#en) · [Русский](#ru)

# English {#en}

**DailyFixer privacy policy** · Effective date: _set on the first public release_ · Publisher: Yauheni Rusak

DailyFixer is a free daily planner without ads. It is built so that your data stays with you.

## Summary
- Your tasks, goals, reminders and settings are stored **on your device**.
- DailyFixer has **no server** of its own. The developer never receives your data.
- **No ads, no analytics, no tracking, no crash-reporting services.**
- Cloud sync is optional. When you turn it on, files go to **your own** Google Drive app folder and are **end-to-end encrypted** with your passphrase before they leave the device.
- Telegram, AI and Microsoft features are **off until you turn them on**, and then send only the text they need.

## Data stored on your device
Tasks, sub-tasks, notes, tags, goals, missions and progress, learning packs, reminders, settings and the change history (audit log) are kept in a local database on your device. The app works fully offline and without an account.

Secrets you enter (Telegram bot token, AI API keys, the derived sync key, sign-in tokens) are kept in the operating system's secure storage (Android Keystore, Apple Keychain, Windows Credential Manager, Linux Secret Service). They are never written to the database, exports or logs.

Uninstalling the app deletes the data on that device. Exports and backups are files you create and keep yourself.

## Optional: Google sign-in, Drive sync and Google Calendar
Signing in with Google is needed only for cloud sync and Google Calendar. DailyFixer asks only for:

| Permission (scope) | Used for |
|---|---|
| `drive.appdata` | Store sync files in a hidden DailyFixer folder in your Google Drive. The app cannot see your other Drive files. |
| `calendar.calendarlist.readonly`, `calendar.events.readonly` | Show your Google Calendar events next to your tasks. |
| `calendar.events` | Create or change an event only when you ask for it (for example, put a task on your calendar). |

- **End-to-end encryption.** Every sync file is encrypted on your device with a key derived from your passphrase. Your passphrase is never stored or uploaded. Neither the developer nor Google can read the contents; Google can see that encrypted files exist, their sizes and times. If you lose the passphrase (and the recovery key), the cloud copy cannot be decrypted; data on your devices is not affected.
- Calendar events are read directly from Google to your device and are not copied anywhere else.
- Data from Google APIs is used only to provide these features to you, is not transferred to anyone else, and is not used for advertising. DailyFixer's use of information received from Google APIs adheres to the [Google API Services User Data Policy](https://developers.google.com/terms/api-services-user-data-policy), including the Limited Use requirements.
- To stop: sign out in the app's settings (local data stays). Remove access at [myaccount.google.com/permissions](https://myaccount.google.com/permissions). Delete the encrypted cloud copy in Google Drive → Settings → Manage apps → DailyFixer → Delete hidden app data.

On desktop you can instead sync through a folder you choose (for example a Syncthing or Dropbox folder). Those files are encrypted the same way.

## Optional: device calendars
If you allow calendar access, DailyFixer reads your device calendars (Android, iOS, macOS) to show events next to your tasks, and writes an event only when you ask for it. Calendar data stays on the device.

## Optional: Apple iCloud calendar (CalDAV)
If you connect an iCloud calendar, the app talks directly to Apple's calendar server with an app-specific password that you create. The password is kept in secure storage. No one else receives it.

## Optional: Microsoft account
If you connect a Microsoft account, DailyFixer uses Microsoft Graph to import your Microsoft To Do tasks once, and to show (and, when you ask, create or change) Outlook calendar events. The data goes directly between Microsoft and your device. DailyFixer does not use OneDrive.

## Optional: Telegram reminders
Telegram reminders use **your own** Telegram bot. When a reminder is due, your device sends the reminder text (by default the task title and due time; you can change what is sent) to Telegram's Bot API, to your chat with your bot. [Telegram's privacy policy](https://telegram.org/privacy) applies to those messages.

## Optional: AI features
AI is off by default.
- **On-device** mode (for example Gemini Nano on Android, Ollama on your computer) does not send anything over the internet.
- **Own key** mode sends only the text needed for the request (for example a goal's title and description, or a spoken command) to the provider you choose (Anthropic or OpenAI) using your own API key. That provider's privacy policy applies. The app never sends your whole task list.

## Voice input
On Android, iOS and macOS, voice input uses the operating system's speech recognition; depending on your device settings, the OS vendor (Google or Apple) may process the audio. On Windows and Linux, speech is recognized on your computer by the Whisper model; the model file is downloaded once from Hugging Face when you ask for it, and no audio leaves the computer. The microphone is used only while you are dictating.

## Notifications
Reminders are scheduled locally by the operating system. No push service of the developer is involved.

## Children
DailyFixer is not directed at children under 13 and does not knowingly collect any personal data.

## Changes
Changes to this policy are published on this page with a new effective date.

## Contact
[app.dailyfixer@gmail.com](mailto:app.dailyfixer@gmail.com)

---

# Русский {#ru}

**Политика конфиденциальности DailyFixer** · Дата вступления в силу: _будет указана при первом публичном выпуске_ · Издатель: Yauheni Rusak

DailyFixer — бесплатный планировщик дня без рекламы. Он устроен так, чтобы данные оставались у владельца.

## Коротко
- Задачи, цели, напоминания и настройки хранятся **на устройстве**.
- У DailyFixer **нет собственного сервера**. Разработчик не получает данных пользователей.
- **Нет рекламы, аналитики, отслеживания и сервисов отчётов о сбоях.**
- Облачная синхронизация необязательна. Если её включить, файлы попадают в **собственную** папку приложения на Google Диске пользователя и **шифруются сквозным шифрованием** паролем пользователя ещё на устройстве.
- Telegram, ИИ и Microsoft **выключены, пока их не включить**, и отправляют только нужный текст.

## Данные на устройстве
Задачи, подзадачи, заметки, теги, цели, миссии и прогресс, учебные курсы, напоминания, настройки и история изменений (журнал аудита) хранятся в локальной базе данных на устройстве. Приложение полностью работает без интернета и без учётной записи.

Секреты (токен Telegram-бота, ключи API для ИИ, ключ синхронизации, токены входа) хранятся в защищённом хранилище ОС (Android Keystore, Apple Keychain, диспетчер учётных данных Windows, Linux Secret Service). Они никогда не попадают в базу данных, экспорт или журналы.

Удаление приложения удаляет данные на этом устройстве. Экспорт и резервные копии — файлы, которые пользователь создаёт и хранит сам.

## Необязательно: вход через Google, синхронизация через Google Диск и Google Календарь
Вход через Google нужен только для облачной синхронизации и Google Календаря. DailyFixer запрашивает только:

| Разрешение (scope) | Для чего |
|---|---|
| `drive.appdata` | Хранить файлы синхронизации в скрытой папке DailyFixer на Google Диске. Другие файлы Диска приложению недоступны. |
| `calendar.calendarlist.readonly`, `calendar.events.readonly` | Показывать события Google Календаря рядом с задачами. |
| `calendar.events` | Создавать или менять событие только по просьбе пользователя (например, поставить задачу в календарь). |

- **Сквозное шифрование.** Каждый файл синхронизации шифруется на устройстве ключом, полученным из пароля пользователя. Пароль нигде не хранится и не передаётся. Ни разработчик, ни Google не могут прочитать содержимое; Google видит только наличие зашифрованных файлов, их размер и время. Если потерять пароль (и ключ восстановления), облачную копию расшифровать нельзя; данные на устройствах не пострадают.
- События календаря загружаются из Google прямо на устройство и больше никуда не копируются.
- Данные из API Google используются только для работы этих функций, никому не передаются и не используются для рекламы. Использование DailyFixer информации, полученной из API Google, соответствует [Google API Services User Data Policy](https://developers.google.com/terms/api-services-user-data-policy), включая требования Limited Use.
- Отключить: выйти из учётной записи в настройках приложения (локальные данные останутся). Отозвать доступ: [myaccount.google.com/permissions](https://myaccount.google.com/permissions). Удалить зашифрованную облачную копию: Google Диск → Настройки → Управление приложениями → DailyFixer → Удалить скрытые данные приложения.

На компьютере вместо Google Диска можно синхронизировать через выбранную папку (например, Syncthing или Dropbox). Эти файлы шифруются так же.

## Необязательно: календари устройства
Если разрешить доступ к календарю, DailyFixer читает календари устройства (Android, iOS, macOS), чтобы показывать события рядом с задачами, и записывает событие только по просьбе пользователя. Данные календаря остаются на устройстве.

## Необязательно: календарь iCloud (CalDAV)
При подключении календаря iCloud приложение обращается напрямую к серверу календарей Apple с паролем приложения, который создаёт пользователь. Пароль хранится в защищённом хранилище и никому не передаётся.

## Необязательно: учётная запись Microsoft
При подключении учётной записи Microsoft DailyFixer через Microsoft Graph один раз импортирует задачи Microsoft To Do и показывает (а по просьбе пользователя создаёт или меняет) события календаря Outlook. Данные идут напрямую между Microsoft и устройством. OneDrive не используется.

## Необязательно: напоминания в Telegram
Напоминания в Telegram идут через **собственного** бота пользователя. В момент напоминания устройство отправляет его текст (по умолчанию название задачи и срок; состав текста настраивается) в Telegram Bot API, в чат пользователя с его ботом. К этим сообщениям применяется [политика конфиденциальности Telegram](https://telegram.org/privacy).

## Необязательно: функции ИИ
ИИ по умолчанию выключен.
- Режим **на устройстве** (например, Gemini Nano на Android, Ollama на компьютере) ничего не отправляет в интернет.
- Режим **собственного ключа** отправляет только текст, нужный для запроса (например, название и описание цели или голосовую команду), выбранному провайдеру (Anthropic или OpenAI) с ключом API пользователя. Применяется политика конфиденциальности этого провайдера. Весь список задач приложение никогда не отправляет.

## Голосовой ввод
На Android, iOS и macOS голосовой ввод использует распознавание речи операционной системы; в зависимости от настроек устройства звук может обрабатывать производитель ОС (Google или Apple). На Windows и Linux речь распознаётся на компьютере моделью Whisper; файл модели один раз загружается с Hugging Face по запросу пользователя, звук не покидает компьютер. Микрофон используется только во время диктовки.

## Уведомления
Напоминания планирует сама операционная система на устройстве. Push-сервисы разработчика не используются.

## Дети
DailyFixer не предназначен для детей младше 13 лет и намеренно не собирает персональные данные.

## Изменения
Изменения политики публикуются на этой странице с новой датой вступления в силу.

## Контакты
[app.dailyfixer@gmail.com](mailto:app.dailyfixer@gmail.com)
