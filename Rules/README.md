# Antigravity Workspace Rules

Rules are guidelines, coding standards, and behavioral constraints that the agent automatically loads and enforces when operating within specific directories.

---

## Discovery & Scoping

Antigravity uses **hierarchical rule discovery**:
1. When you open or edit a file, the agent walks up from that file's directory through all parent folders to the repository root (the folder containing `.git`).
2. All `GEMINI.md`, `AGENTS.md`, or `.agents/rules/*.md` files found along that path are parsed.
3. Rules are automatically deduplicated by resolved canonical file path, ensuring each rule file is injected at most once per conversation turn.

---

## Included Files

* [`AGENTS.md`](./AGENTS.md): Master workspace guidelines covering code integrity, planning workflows, and communication standards.
* [`GEMINI.md`](./GEMINI.md): Directory-level quick-reference pointer for agent sessions.
* [`policies/modern-web-guidance.toml`](./policies/modern-web-guidance.toml): Tool permission policy rule enforcing user confirmation on specific CLI commands.
