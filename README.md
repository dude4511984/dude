# D.U.D.E. — Dedicated Universal Dialect Engine

**Translates what you mean into what Linux needs. Local, free, yours.**

---

## Why This Exists

Microsoft is dumping tons of silicon in the trash heap. Perfectly good machines declared obsolete because they won't run the latest version of a system designed to sell you something. At the same time, Linux — which runs beautifully on that hardware — has a learning curve that takes a beating out of people before they get their first real lesson. That throws a lot of people off who otherwise might have made it through.

DUDE exists because everyone should have access to compute. Every piece of discarded silicon is another person who got left behind. Every person who hits a wall at the terminal and gives up is someone who might have built something worth building.

The idea is simple: you shouldn't have to know whether you're on bash or fish or zsh. You shouldn't have to remember the exact flag. You should be able to say what you're trying to do and have the machine understand you — not the other way around.

It'll still be a learning curve. But maybe you can set grandma in front of the terminal.

---

## What It Does

You type what you mean — plain English, bash, fish, zsh, half-remembered syntax, whatever comes out. DUDE figures out what you're trying to do and runs the correct command for the environment you're actually on.

- No cloud. No calling home. Runs entirely on your machine.
- No UI. Terminal only — clean, simple, out of your way.
- If it's not sure what you mean, it asks one question and moves on.
- Shows you the command it ran so you learn over time without trying.
- If something's beyond its scope, one line explanation and a link — not a wall of text.

---

## How It Works

DUDE uses a small local language model via [Ollama](https://ollama.com) to translate your intent into the right command for your environment. It detects what shell you're running, what OS you're on, and what tools you have available — then gets out of the way.

No subscription. No API key. No data leaving your machine unless you choose to share it.

---

## The Dataset — The Long Game

Every translation DUDE makes is a potential training pair:

```
INPUT:  "show me what's eating my ram"
OUTPUT: ps aux | awk '{print $2,$4}' | sort -k2,2nr | head
ENV:    fish / Garuda Linux
```

If you want to help make DUDE smarter, you can opt in to contribute your pairs to a shared community dataset. Simple instructions are included. If you'd rather review what you send first, copy your pairs and email them to **dude1984451@everysilicon.org** — send only what you're comfortable with. You stay in control of exactly what we see.

The goal is a model trained on what real people actually type when they're trying to do real things on Linux. Not synthetic data. Not academic sets. Real humans who were frustrated enough to try something new.

**DUDE trains its own successor. And that model belongs to the people who built it.**

---

## Current State

- [x] Proof of concept — fish function running on Garuda Linux
- [ ] Environment auto-detection
- [ ] Multi-shell support (bash, zsh)
- [ ] Ambiguity detection and single-question clarification
- [ ] Install script
- [ ] Lightweight model tier for low-resource machines
- [ ] Dataset logging and opt-in contribution

---

## Installation

*Full install script coming. For now:*

1. Install [Ollama](https://ollama.com)
2. Pull the model: `ollama pull qwen2.5-coder:3b`
3. Add the function in `dude.fish` to your fish config:
   ```bash
   cat dude.fish >> ~/.config/fish/config.fish
   source ~/.config/fish/config.fish
   ```
4. Type `dude` followed by whatever you're trying to do.

---

## Philosophy

Everyone should have access to compute. The people institutions overlooked were never dumb or gullible. They saw clearly. They just didn't have the tools.

This is one of those tools.

Built at Pop's Shop, Mena Arkansas. Coded with Claude. Refined by the people who use it.

---

## Contributing

Pull requests welcome. Dataset contributions welcome. If you want to help and don't know where to start — open an issue and say so. That's a fine place to start.

MIT License — free forever.
