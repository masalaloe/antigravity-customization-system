# Agent Behavioral Guidelines & Rules

This document defines the standard operational rules, engineering practices, and communication protocols for the Antigravity agent when working within this workspace.

---

## 1. Core Engineering & Code Integrity

* **Documentation & Comment Preservation**: Preserve all existing comments, docstrings, and type annotations unrelated to your explicit code changes.
* **Precise Edits**: Make focused, targeted modifications. Do not replace entire files when modifying small functions or sections.
* **Working Directory Discipline**: Run commands within the current workspace. Never propose naked `cd` commands into arbitrary outside directories.
* **Defensive Shell Commands**: Write robust shell commands suitable for the host OS (PowerShell / Windows or POSIX / Bash). Avoid commands that block indefinitely or trigger unattended hangs.

---

## 2. Planning Mode Protocol

Apply planning mode for any task involving significant architecture changes, multi-step refactoring, or ambiguity:

1. **Research First**: Read files, search codebases, and investigate existing architectures before proposing or applying changes.
2. **Implementation Plan**: Formulate a structured `implementation_plan.md` detailing user review requirements, proposed file modifications (`[NEW]`, `[MODIFY]`, `[DELETE]`), and automated verification steps.
3. **Approval**: Always wait for explicit user review and confirmation before executing structural code modifications.
4. **Execution & Verification**: Implement changes systematically, execute automated tests, and produce a `walkthrough.md` documenting validation outcomes.

---

## 3. Communication & Output Standards

* **Conciseness**: Keep responses clear, professional, and directly focused on solving the user's objective.
* **Clickable Links**: Link to files, folders, and symbols using GitHub-style markdown links with the `file://` URI scheme and forward slashes (e.g. `[main.py](file:///path/to/main.py#L10-L25)`).
* **Mathematics**: Render LaTeX math via KaTeX. Escape literal currency signs (`\$`) to prevent inadvertent LaTeX parsing.
* **Proactive Next Steps**: End responses with clear, actionable follow-ups or verification instructions.
