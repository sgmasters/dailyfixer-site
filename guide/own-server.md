---
title: Your own AI server
permalink: /guide/own-server/
---

[← User guide]({{ '/guide/' | relative_url }}) · [AI]({{ '/guide/ai/' | relative_url }})

From version **0.4**, DailyFixer can use **your own AI server**: Ollama or LM Studio running free models on your PC, used by the app on the same PC, on your phone and on your other computers. No API bill, no cloud provider: requests go only to your PC. From outside your home it works over **Tailscale**, a free private network between your own devices.

## What you need
| | |
|---|---|
| A PC | Windows, macOS or Linux. A graphics card with 8 GB of memory answers in seconds; without one it works, but slowly |
| AI server | [Ollama](https://ollama.com/download) (simplest) or [LM Studio](https://lmstudio.ai) (with a window to browse models), free |
| Network | [Tailscale](https://tailscale.com/download) on the PC and on the phone, free Personal plan. At home on the same Wi-Fi it also works without Tailscale on a computer, but phones need the HTTPS address from Tailscale |

## 1. Tailscale on the PC and the phone
1. Install Tailscale from [tailscale.com/download](https://tailscale.com/download) on the PC and on the phone and sign in with **the same account** on both.
2. In the [admin console](https://login.tailscale.com/admin/dns), page **DNS**: keep **MagicDNS** on and turn on **HTTPS Certificates**.
3. Your PC now has a name like `my-pc.tail1234.ts.net` (shown in the admin console under **Machines**, or by `tailscale status`).

`tailscale serve` (below) makes the AI server reachable **only from your own devices** in your tailnet, with a real HTTPS certificate. Do not use `tailscale funnel`: that would put it on the public internet.

## 2a. Ollama
1. Install Ollama from [ollama.com/download](https://ollama.com/download) and start it.
2. Download a model in a terminal (several GB, see [Which model](#which-model)):
   ```
   ollama pull qwen3:8b
   ```
3. **Let Ollama accept your `ts.net` name.** Ollama checks the name a request was sent to and refuses anything but `localhost` while it listens on this PC only, so requests through `tailscale serve` get *Ollama refused this address (HTTP 403)*. Set the environment variable `OLLAMA_HOST` to `0.0.0.0` and restart Ollama:
   - **Windows**: run `setx OLLAMA_HOST 0.0.0.0` in a terminal (or Settings → System → About → Advanced system settings → Environment Variables → New), then quit Ollama from the tray icon and start it again. If Windows asks whether to allow Ollama through the firewall, you can say **no**: `tailscale serve` reaches Ollama on the PC itself, so the firewall can stay closed.
   - **macOS**: `launchctl setenv OLLAMA_HOST 0.0.0.0`, then quit and reopen Ollama.
   - **Linux** (systemd): `sudo systemctl edit ollama`, add `[Service]` and `Environment="OLLAMA_HOST=0.0.0.0"`, then `sudo systemctl restart ollama`.
4. Publish it on your tailnet with HTTPS (one line, runs in the background and survives restarts):
   ```
   tailscale serve --bg --https=11443 http://127.0.0.1:11434
   ```
5. Address for the app: `https://my-pc.tail1234.ts.net:11443` · server type **Ollama** · no API key.

## 2b. LM Studio
1. Install LM Studio from [lmstudio.ai](https://lmstudio.ai). In **Discover**, download a model (for example *Qwen3 8B* or *Gemma 3 4B*, quantization **Q4_K_M**).
2. Open the **Developer** tab and **Start server** (port 1234). Load the model, or turn on loading models on demand (JIT).
3. Recommended: in the server settings turn on **Require API token** and create a token. You paste it into DailyFixer as the API key.
4. Publish it on your tailnet:
   ```
   tailscale serve --bg --https=11234 http://127.0.0.1:1234
   ```
5. Address for the app: `https://my-pc.tail1234.ts.net:11234` · server type **LM Studio or another OpenAI-compatible server** · API key = the token.

Other OpenAI-compatible servers (llama.cpp server, vLLM, Jan) work the same way with that server type.

## 3. In DailyFixer
1. On the phone: Tailscale **on**.
2. **Settings → AI → My server**.
3. Pick the server type, enter the address, the API key if your server needs one, then **Connect**. The line below shows *Connected · N models*.
4. Choose the **Model** and tap **Test**: *Server works · qwen3:8b · 1.4 s*.

On the PC itself you can simply use `http://127.0.0.1:11434` (Ollama) or `http://127.0.0.1:1234` (LM Studio).

| Address | Computer | Phone |
|---|---|---|
| `https://…ts.net:11443` (tailscale serve) | yes | yes (recommended) |
| `http://…ts.net:11434` (direct to Ollama) | only if the PC's firewall lets Ollama in | same, and phones allow it only for `ts.net` names |
| `http://100.x.y.z:11434` or `http://192.168.x.y:11434` | only if the firewall lets Ollama in | no: phones allow plain `http://` only to `ts.net` names |
| `http://127.0.0.1:11434` | yes, same PC | the phone itself only |

If the server can't be reached (PC asleep, Tailscale off), DailyFixer uses the AI on the device, then its built-in rules. It never switches to a cloud provider in this mode.

## Which model {#which-model}
Measured on a PC with an 8 GB graphics card (RTX 3070 Ti) with DailyFixer's own AI tasks in English and Russian: organizing 20 tasks into a goal, planning a goal, a learning pack from notes, tidying up dictation. Three runs each, 2026-11-11.

| Model (Ollama name) | Download | Works for DailyFixer | Speed (warm) | Notes |
|---|---|---|---|---|
| **`qwen3:8b`** | 5.2 GB | goals, plans, learning packs and dictation in English and Russian | ~6 s, long Russian plans ~13 s | **best pick**: groups 20 tasks well, keeps your language |
| `qwen2.5-coder:7b` | 4.7 GB | most tasks | ~5 s | long Russian goal plans fail |
| `llama3.2` | 2.0 GB | simple English requests | ~1–2 s | fastest; weak on Russian and long lists |
| `gemma3:4b` | 3.4 GB | English only | ~3 s | answers Russian notes and goals in English |

Not tested yet: `qwen3:4b` (for smaller graphics cards) and `gemma3:12b` (fills 8 GB, slower). In LM Studio pick the same families (Qwen3 8B, Q4_K_M).

**Our pick: `qwen3:8b`** (`ollama pull qwen3:8b`). With a smaller graphics card or less memory, try `llama3.2` for English. Quick add commands that the built-in rules already understand never wait for the AI.

Downloading a model takes several GB; bigger than your graphics memory means much slower answers.

## Troubleshooting
| You see | Do this |
|---|---|
| *Can't reach the server* | Tailscale on, on both devices? PC awake? Ollama / LM Studio running? On the PC, `tailscale serve status` should list your port. Check the port in the address. Direct `http://` addresses also need the PC's firewall to let Ollama in: use the `https://…ts.net` address from `tailscale serve` instead |
| *Ollama refused this address (HTTP 403)* | Set `OLLAMA_HOST=0.0.0.0` and restart Ollama (step 2a.3) |
| *Phones allow http:// only to \*.ts.net names* | Use the `https://…ts.net` address from `tailscale serve`, or the `ts.net` name instead of the IP |
| *The server rejected the API key* | LM Studio: copy the token again (server settings). Ollama needs no key: remove it |
| *The server has no models* | `ollama pull qwen3:8b`, or download and load a model in LM Studio |
| *The server did not answer in time* / the first answer is slow | The first request loads the model into memory (10–30 s). Later ones are fast for 30 minutes. A model larger than your graphics memory stays slow: pick a smaller one |
| Answers are unusable or in the wrong language | Pick a bigger model from the table above |
| Undo the set-up | `tailscale serve --https=11443 off` (only that port; `tailscale serve reset` would remove all your serve settings), and remove `OLLAMA_HOST` |

## Privacy
In My server mode the request text (what a feature needs, for example the tasks you put into Make a goal) goes only to the address you entered. Tailscale encrypts traffic between your devices. The optional API key stays in the secure storage of each device. See the [privacy policy]({{ '/privacy' | relative_url }}).
