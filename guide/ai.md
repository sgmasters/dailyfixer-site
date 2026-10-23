---
title: AI
permalink: /guide/ai/
---

[← User guide]({{ '/guide/' | relative_url }})

AI is **optional and off by default**. Everything works without it: quick add, planning and import fall back to the built-in rules.

## Modes (Settings → AI)

| Mode | Uses | Internet |
|---|---|---|
| **Off** (default) | built-in rules | never |
| **On-device** | the AI on your device (below), else rules | never |
| **Own key** | on-device first, then your own API key, else rules | only to the provider you chose |

## On-device engines
- **Gemini Nano** on supported Android phones (recent Pixel and Galaxy models, among others). Settings → AI shows whether your phone has it and offers **Download model**.
- **Ollama** on Windows, Linux and macOS: install it from [ollama.com](https://ollama.com), pull a model (for example `ollama pull llama3.2`) and pick it in Settings → AI. DailyFixer talks to it only on your own computer.

## Your own API key
In **Own key** mode, pick a provider and paste your key. It is stored only in your device's secure storage: never synced, exported or logged. **Test key** sends one tiny request. Requests go straight from your device to the provider and are billed to your account; DailyFixer pays for nothing and sees nothing.

| Provider | Available | Notes |
|---|---|---|
| Claude (Anthropic) | since 0.1.0 | also research mode |
| OpenAI | since 0.1.0 | also research mode and cloud voice transcription |
| Gemini (Google) | since 0.2.1 | **free tier**: create a key with your Google account in [Google AI Studio](https://aistudio.google.com/apikey). Google may use free-tier requests to improve its products and people may review them, so keep private details out. In the EU, Switzerland and the UK only the paid tier may be used |
| Grok (xAI) | since 0.2.1 | |
| DeepSeek | since 0.2.1 | |
| OpenCode Zen | since 0.2.1 | use a model it serves over its OpenAI-compatible API (DeepSeek, Kimi, GLM, Qwen, MiniMax, Mistral or a free model); free models may train on your requests |

**Model**: type a model name for the provider, or leave it empty for the default (shown in the field). **Get a key** opens the provider's page for creating one. Research mode needs a Claude or OpenAI key.

**Why not my free ChatGPT / Gemini / DeepSeek chat account?** Those apps don't let other apps use your account. Tools that try it break the providers' terms, and accounts get blocked. A free Gemini API key or an on-device model is the free option.

## What is sent
Only the text needed for the request, for example:
- what you typed or said in quick add, with today's date
- a goal's title and description
- notes you turn into a learning pack
- a dictated text to tidy up
- for research: the topic, level and number of lessons

Never your task list, history or other data. Anything that would change your tasks needs a tap to confirm first.
