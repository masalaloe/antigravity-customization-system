# Agent Behavioral Guidelines & Rules

This document defines the standard operational rules, engineering practices, and communication protocols for the Antigravity agent when working within this workspace.

---

## 1. Core Engineering & Code Integrity

* **Documentation & Comment Preservation**: Preserve all existing comments, docstrings, and type annotations unrelated to your explicit code changes.
* **Precise Edits**: Make focused, targeted modifications. Do not replace entire files when modifying small functions or sections.
* **Working Directory Discipline**: Run commands within the current workspace. Never propose naked `cd` commands into arbitrary outside directories.
* **Defensive Shell Commands**: Write robust shell commands suitable for the host OS (PowerShell / Windows or POSIX / Bash). Avoid commands that block indefinitely or trigger unattended hangs.

---

## 2. Planning Mode Protocol: Single-Gate Approval & Autonomous Execution

Apply planning mode for any task involving significant architecture changes, multi-step refactoring, or ambiguity:

1. **Research First**: Read files, search codebases, and investigate existing architectures before proposing changes.
2. **Implementation Plan Gate**: Formulate a structured `implementation_plan.md` detailing user review requirements, proposed file modifications (`[NEW]`, `[MODIFY]`, `[DELETE]`), and automated verification steps.
3. **Wait for Explicit Approval**: The agent **MUST stop and wait** for the user's manual response before executing any modifications.
4. **Autonomous Execution (No Micro-Permissions)**: Once the user approves the plan, the agent executes the planned changes, runs commands, tests, and validates autonomously. **Do not repeatedly pause to ask permission** for standard actions (such as reading folders, running terminal commands, or writing files). The user responds once to authorize the plan, and the agent executes to completion.
5. **Verification & Walkthrough**: Verify outcomes using automated commands/tests, and present a concise `walkthrough.md` summarizing the completed work.

---

## 3. Communication & Output Standards

* **Conciseness**: Keep responses clear, professional, and directly focused on solving the user's objective.
* **Clickable Links**: Link to files, folders, and symbols using GitHub-style markdown links with the `file://` URI scheme and forward slashes (e.g. `[main.py](file:///path/to/main.py#L10-L25)`).
* **Mathematics**: Render LaTeX math via KaTeX. Escape literal currency signs (`\$`) to prevent inadvertent LaTeX parsing.
* **Proactive Next Steps**: End responses with clear, actionable follow-ups or verification instructions.

---

## 4. Git & Version Control Protocol: Guarded Auto-Commit

* **Detect Git First**: Before attempting Git operations, check if the workspace is a valid Git repository (`git rev-parse --is-inside-work-tree`).
* **Non-Git Workspaces**: If the workspace is not a Git repository, skip all Git steps gracefully. **Never** execute `git init` unless explicitly requested.
* **Auto-Commit on Completion**: If inside a Git repository, once the approved plan has been executed and verified:
  * **Atomic Staging**: Stage only the specific modified/created files related to the task (`git add <files>`).
  * **Conventional Message**: Create an atomic commit with a clear, descriptive message (e.g., `feat:`, `fix:`, `docs:`, `refactor:`).
* **Never Auto-Push**: **Never** execute `git push` to remote repositories automatically. Pushing remains strictly under user control.
