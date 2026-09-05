# Antigravity Lifecycle Hooks

Lifecycle hooks allow you to execute external shell commands or scripts at specific points during the agent's execution loop. They are useful for enforcing safety guards, running linters, auto-formatting code, or capturing telemetry.

---

## Configuration (`hooks.json`)

Hooks are declared in a top-level `hooks.json` file. Each key defines a named hook specification containing event listeners.

```json
{
  "safety-gate": {
    "enabled": true,
    "PreToolUse": [
      {
        "matcher": "run_command",
        "hooks": [
          {
            "type": "command",
            "command": "powershell -File ./Hooks/scripts/safety-check.ps1",
            "timeout": 15
          }
        ]
      }
    ]
  }
}
```

---

## Supported Event Types

| Event | When It Fires | Matcher Target | Structure |
| :--- | :--- | :--- | :--- |
| `PreToolUse` | Before a tool step executes | Tool name (e.g. `run_command`, `write_to_file`) | Grouped (`matcher` + `hooks`) |
| `PostToolUse` | After a tool step completes | Tool name (e.g. `replace_file_content`) | Grouped (`matcher` + `hooks`) |
| `PreInvocation` | Before the model is called | N/A | Flat list of handlers |
| `PostInvocation` | After tool calls finish | N/A | Flat list of handlers |
| `Stop` | When the agent execution loop finishes | N/A | Flat list of handlers |

---

## Included Handlers in [`scripts/`](./scripts/)

* **`safety-check.ps1` / `safety-check.sh`**: PreToolUse validator preventing destructive root commands.
* **`lint-check.ps1` / `lint-check.sh`**: PostToolUse checker verifying syntax integrity on modified JSON/code files.
* **`session-summary.ps1` / `session-summary.sh`**: Stop event notification logging successful session completion.
