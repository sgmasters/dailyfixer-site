---
title: Goals & learning
permalink: /guide/goals-learning/
---

[← User guide]({{ '/guide/' | relative_url }})

## Goals
Missions → **Goals** → **New goal**:
- title
- why it matters, or your own steps (one per line)
- target date (default: in 30 days)
- sessions per week

**Preview** shows the steps, spread evenly up to the target date, before anything is saved.

The built-in planner uses your step lines, then any bullet points in the description. If there are neither, it uses a template: define, gather resources, milestones, work sessions, review. With AI on, an AI planner makes the steps instead, and the preview says which planner made them.

**Describe your goal**: type or dictate up to 2000 characters, then tap *Fill in with AI*. It fills in the title, why, target date, sessions per week and steps for you to review. Without AI, a rule-based fill and the template are used.

## Learning packs
Missions → **Learn** → **Import pack**: JSON, Markdown or CSV. A pack becomes a goal with one task per lesson, scheduled at its lessons per week.

- **Quizzes and review**: lessons can have quiz cards. *Practice* in a lesson and the **Review** screen use spaced repetition: grade Again, Hard, Good or Easy, or pick from multiple choice.
- **Due counts** show on the Learn tab and, optionally, on Today.
- **XP**: reviews earn XP. There are no penalties.
- **Export**: any pack exports back to JSON, Markdown or CSV.

### Create with AI (Learn tab)
- **From notes**: type, paste or dictate notes; AI turns them into lessons and quiz cards. A pasted pack is used as it is. Works with any AI engine.
- **Research a topic**: topic, level and 3–12 lessons. Needs your own Claude or OpenAI key: the AI searches the web and keeps source links. You see a cost estimate before and the usage after.

Both show a preview; nothing is saved until you tap **Import**.

### Minimal pack (JSON)
```json
{
  "format": "dailyfixer.learning-pack", "version": 1,
  "title": "Flutter basics", "lessonsPerWeek": 3,
  "lessons": [
    {"title": "Install Flutter", "minutes": 30, "url": "https://docs.flutter.dev/get-started/install"},
    {"title": "Widgets", "content": "Rebuild the counter by hand."}
  ]
}
```
