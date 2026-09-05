# Antigravity Plugins

Plugins are namespaced, shareable bundles that package **Skills**, **Rules**, **Hooks**, and **MCP Server Configurations** into a single deployable unit.

---

## Directory Structure

A plugin is structured as a subdirectory under `plugins/`:
```text
plugins/<plugin_name>/
├── plugin.json       # Required: Manifest file
├── mcp_config.json   # Optional: MCP servers exposed by the plugin
├── hooks.json        # Optional: Lifecycle hooks run by the plugin
├── rules/            # Optional: Rules applied when plugin is active (AGENTS.md / GEMINI.md)
│   └── AGENTS.md
└── skills/           # Optional: Skills exposed by the plugin
    └── <skill_name>/
        └── SKILL.md
```

---

## Installed Plugins

### 1. `gemini-api` (v1.2.0)
* **Description**: Build applications with the Gemini Interactions API and Live API, including text generation, multi-turn chat, streaming, function calling, managed agents, and real-time audio/video.
* **MCP Servers Included**: `gemini-api-docs` (connects to upstream documentation server `https://gemini-api-docs-mcp.dev`)
* **Skills Included**:
  * `gemini-api-dev`
  * `gemini-interactions-api`
  * `gemini-live-api-dev`
  * `gemini-omni-flash-api`

### 2. `modern-web-guidance-plugin` (v1.0.0)
* **Description**: Best practices and guidance for modern web development, Chrome extensions, frontend layout, and APIs.
* **Policies Included**: `policies/modern-web-guidance.toml`
* **Skills Included**:
  * `chrome-extensions`
  * `modern-web-guidance`

---

## Enabling / Disabling Plugins

Plugins discovered in `plugins/` or `~/.gemini/config/plugins/` are enabled by default. To disable or enable a plugin, update your `config.json` under the `plugins` map:

```json
{
  "plugins": {
    "gemini-api": { "enabled": true },
    "modern-web-guidance-plugin": { "enabled": true }
  }
}
```
