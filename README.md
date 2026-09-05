# Antigravity Customization System

A collection of customizations, skills, plugins, MCP server configurations, workspace rules, and lifecycle hooks for the **Google Antigravity** agentic AI pair programmer.

---

## Repository Structure

```text
.
├── Hooks/                      # Lifecycle hook triggers and execution scripts
│   ├── hooks.json              # Hook event declarations (PreToolUse, PostToolUse, Stop)
│   ├── scripts/                # Validation and automation scripts (PowerShell & Bash)
│   └── README.md
├── MCP Servers/                # Model Context Protocol tools and configurations
│   ├── gemini-api-docs/        # Tool schemas & instructions for Gemini API Docs
│   ├── mcp_config.json         # Active MCP server definition (SSE & Stdio templates)
│   └── README.md
├── Plugins/                    # Shareable self-contained customization bundles
│   ├── gemini-api/             # Gemini Interactions API, Live API, and Omni Flash
│   ├── modern-web-guidance-plugin/ # Modern web standards, Chrome extensions, and policies
│   └── README.md
├── Rules/                      # Workspace and directory behavioral guidelines
│   ├── AGENTS.md               # Master engineering rules & planning protocol
│   ├── GEMINI.md               # Directory-level quick-reference pointer
│   ├── policies/               # Tool execution policies (.toml)
│   └── README.md
└── Skills/                     # Modular on-demand procedural runbooks (SKILL.md)
    ├── agy-customizations/     # Customization system architecture and guides
    ├── antigravity_guide/      # Complete Antigravity IDE, CLI, and SDK reference
    ├── chrome-extensions/      # Manifest V3 Chrome Extension development
    ├── gemini-api-dev/         # Google GenAI SDK integration
    ├── gemini-interactions-api/# Interactions API, chat, and agents
    ├── gemini-live-api-dev/    # Real-time WebSocket streaming
    ├── gemini-omni-flash-api/  # Generative video editing & workflows
    ├── generative_ui/          # Interactive HTML widgets and diagrams
    ├── migrate-workflows/      # Automated workflow migration
    ├── modern-web-guidance/    # Modern HTML5, CSS3, and frontend APIs
    ├── permissioned-github/    # GitHub actions & workflows
    └── README.md
```

---

## Quick Reference: Customization Types

| Customization | Location / File | Scope | Best For |
| :--- | :--- | :--- | :--- |
| [**Rules**](./Rules/) | `AGENTS.md`, `GEMINI.md` | Contextual / Hierarchical | Enforcing coding styles, API restrictions, and safety protocols. |
| [**Skills**](./Skills/) | `skills/<name>/SKILL.md` | On-Demand (Progressive) | Teaching multi-step workflows, runbooks, and domain procedures. |
| [**Plugins**](./Plugins/) | `plugins/<name>/plugin.json` | Bundle | Packaging skills, rules, hooks, and MCP servers into single units. |
| [**Hooks**](./Hooks/) | `hooks.json` | Lifecycle Event | Running validation, linting, or formatting scripts on agent events. |
| [**MCP Servers**](./MCP%20Servers/) | `mcp_config.json` | Tool Integration | Connecting external services and tools via Model Context Protocol. |

---

## How to Apply These Settings

### 1. Project / Workspace Scope
To apply these customizations to a specific project:
* Place rule files (`AGENTS.md`, `GEMINI.md`) in your project root or subdirectories.
* Place skills in `.agents/skills/<name>/SKILL.md`.
* Place plugins in `.agents/plugins/<name>/`.
* Place hooks in `.agents/hooks.json`.

### 2. Global Machine Scope
To apply customizations globally across all projects on your machine:
* Copy plugins to `~/.gemini/config/plugins/`.
* Copy MCP configurations to `~/.gemini/config/mcp_config.json`.
* Enable or disable plugins via `~/.gemini/config/config.json`.
