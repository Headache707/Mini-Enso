
```markdown
# 🌀 Mini-Enso.ahk

> _"This is not a bot. This is a brushstroke."_  
> — The Architect

---

## 🔍 Overview

**Mini-Enso** is a self-contained AutoHotkey script that automates a sequence of browser profile launches inside **Dolphin Anty**, interacts with VPN extensions, navigates to a target site, mimics human action — then retreats. It is **not scalable**, **not modular**, and that’s the point.

This script is a _minimal functional poem_ about what automation really is: not just execution, but intention.

---

## 🧠 Philosophy

- **Why AutoHotkey?** Because it's raw. Clunky. Human. It exposes the flow.
- **Why hardcoded positions?** Because Mini-Enso is _not_ about abstraction — it's about _contact_.
- **Why the name?** “Enso” (円相) is the Zen circle, drawn in a single stroke. One move. One breath. One function.

This is not a microservice. This is a _manifestation_.

---

## 🔧 What It Does

On a loop (every hour), Mini-Enso:

1. Opens Dolphin Anty
2. Sends a scancode to trigger profile search (`/`)
3. Enters profile number (0–9) via raw scancodes
4. Launches the profile
5. Activates the TunnelBear VPN extension
6. Navigates to `freebitco.in`
7. Scrolls, clicks, waits — like a human (but not quite)
8. Logs each action to `enso.log`
9. Closes the browser and moves to the next profile

Every action is deliberate. Every delay has a shape.

---

## 🗂️ Files

```

Mini-Enso/
├── Mini-Enso.ahk        # The script itself
├── enso.log             # Execution log (created automatically)

```

> _Note:_ Requires **Dolphin Anty**, the **TunnelBear** browser extension, and a screen resolution where hardcoded coordinates make sense. Adapt if needed.

---

## 💬 Why It Exists

This project is not here to scale. It's here to _reveal_.

Mini-Enso demonstrates:
- Mastery of input-level automation (via raw scancodes)
- Orchestration of GUI without APIs or endpoints
- Behavioral scripting with embedded humanlike patterns
- Architecture under constraint — and beyond it

---

## 🧘 Author

**@Headache** —  
I build behavioral systems, not spambots.  
My agents are resilient. Some even kind.  
This isn't about clicks. It's about cause and effect.

> _“Silence. Structure. Scalable compassion.”_

---

## ⚠️ Disclaimer

This script is for **educational and conceptual** purposes.  
It intentionally breaks best practices to highlight structure-in-chaos.

Use mindfully.
```

