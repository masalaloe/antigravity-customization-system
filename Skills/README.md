# Antigravity Skills

Skills are modular packages of procedural knowledge, workflows, runbooks, and scripts that extend the Antigravity agent's capabilities.

Antigravity uses **progressive disclosure**: skill instructions are not loaded into the context window up-front. Only the YAML frontmatter (`name` and `description`) is provided to the model. Full instructions and reference files are loaded on-demand when the user request triggers the skill.

---

## Directory Structure

Each skill is self-contained in its own directory:
```text
skills/<skill_name>/
├── SKILL.md          # Required: Main instruction file with YAML frontmatter
├── scripts/          # Optional: Helper scripts and utilities
├── examples/         # Optional: Reference implementations
├── resources/        # Optional: Additional assets or templates
└── references/       # Optional: Detailed documentation and manuals
```

---

## Included Skills

| Skill | Category | Description |
| :--- | :--- | :--- |
| [`agy-customizations`](./agy-customizations/SKILL.md) | Built-in / System | Comprehensive reference for skills, rules, plugins, hooks, and MCP servers. |
| [`antigravity_guide`](./antigravity_guide/SKILL.md) | Built-in / System | Complete guide and cheatsheet for Antigravity IDE, CLI (`agy`), 2.0, Python SDK, slash commands, and keybindings. |
| [`generative_ui`](./generative_ui/SKILL.md) | Built-in / System | How to render rich interactive HTML widgets inline in chat or as standalone artifacts. |
| [`migrate-workflows`](./migrate-workflows/SKILL.md) | Built-in / System | Automated migration of legacy workflows to modern `SKILL.md` configurations. |
| [`permissioned-github`](./permissioned-github/SKILL.md) | Built-in / System | GitHub operations and automation within permission boundaries. |
| [`chrome-extensions`](./chrome-extensions/SKILL.md) | Web Development | Manifest V3 Chrome extension development, APIs, side panels, popups, and Web Store publishing. |
| [`modern-web-guidance`](./modern-web-guidance/SKILL.md) | Web Development | Cutting-edge HTML5, CSS3, modern Web APIs, performance CWV, and frontend best practices. |
| [`gemini-api-dev`](./gemini-api-dev/SKILL.md) | AI & Gemini SDK | Comprehensive guide for building with Google GenAI SDKs (Python, JS/TS, Go, Java). |
| [`gemini-interactions-api`](./gemini-interactions-api/SKILL.md) | AI & Gemini SDK | Multi-turn chat, managed agents, streaming, and function calling with the Interactions API. |
| [`gemini-live-api-dev`](./gemini-live-api-dev/SKILL.md) | AI & Gemini SDK | Real-time bidirectional streaming over WebSockets for low-latency audio/video/text. |
| [`gemini-omni-flash-api`](./gemini-omni-flash-api/SKILL.md) | AI & Gemini SDK | Generative video editing, video-to-video transitions, ffmpeg optimization, and Omni Flash workflows. |
