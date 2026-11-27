---
title: Food
permalink: /guide/food/
---

[← User guide]({{ '/guide/' | relative_url }})

From version **0.6**, DailyFixer counts calories: snap your plate or say what you ate, and Today shows where you are.

## Where you are
The **Food** card on Today: "1,240 of 2,000 kcal · 760 left", a bar, and protein / carbs / fat when known. Tap it for the Food screen. Menu → **Hide from Today** turns the tracker off (Settings → Food turns it back on).

## Add food
| Way | How |
|---|---|
| Photo | camera button on the card → take or choose a photo → check the items → **Save** |
| In words | **+** → "2 eggs, toast and a latte" → **Estimate** → check → **Save** |
| Quick add / voice | "burger 500 kcal", "овсянка 350 ккал", "баница 400 kcal"; with AI also "ate a burger", "съел борщ" |
| Without AI | **+** → "Oatmeal 350" (food and kcal), or tap a **recent food** chip |

Every item can be edited before saving: name, amount, kcal, protein / carbs / fat, and the meal (picked from the time of day). Undo right after saving.

## Photos and AI
Photos and estimates use the AI you set in Settings → AI ([Your own AI server]({{ '/guide/own-server/' | relative_url }}) works too):

| AI mode | Photos |
|---|---|
| Own key | Claude, OpenAI, Gemini (free tier) or Grok; not DeepSeek or OpenCode Zen |
| My server / Ollama | a model that can see images, for example `qwen2.5vl:7b`, chosen as the model in Settings → AI ([details]({{ '/guide/own-server/#food-photos' | relative_url }})) |
| Off / On-device | describe in words or type kcal |

The photo is shrunk, sent once to that engine and dropped; DailyFixer never stores it. Before the first photo to a cloud provider, the app tells you which one. Estimates can be off: check portions before saving.

## Daily target
Settings → Food → **Daily target**: type a number, or use the **Target calculator** (age, height, weight, activity, goal). Only the result is saved, not your body data. Protein, carbs and fat targets are optional.

## History and stats
Food screen → **Day**: entries by meal, ← → for other days; tap to edit, swipe to delete (Undo).
**Stats**: 7 or 30 days of bars against your target, average per day, days logged, days on target (±10 %), energy from protein / carbs / fat, most eaten foods.

No XP and no warnings: going over shows plainly ("120 kcal over").
