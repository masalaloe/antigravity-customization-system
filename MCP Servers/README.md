# Model Context Protocol (MCP) Servers

The Model Context Protocol (MCP) connects the Antigravity agent to external tools, databases, APIs, and services.

---

## Configuration (`mcp_config.json`)

MCP servers are configured in `mcp_config.json`.

### Supported Transports

1. **SSE Transport (Remote)**:
   Connects over HTTP/HTTPS using Server-Sent Events.
   ```json
   {
     "mcpServers": {
       "gemini-api-docs": {
         "serverUrl": "https://gemini-api-docs-mcp.dev",
         "tools": {
           "gemini_search_docs": { "eager": true },
           "gemini_get_doc": { "eager": true }
         }
       }
     }
   }
   ```

2. **Stdio Transport (Local)**:
   Spawns a local executable or CLI process communicating over stdin/stdout.
   ```json
   {
     "mcpServers": {
       "sqlite-helper": {
         "command": "sqlite-mcp-server",
         "args": ["/path/to/database.db"],
         "env": {
           "DB_READONLY": "true"
         }
       }
     }
   }
   ```

---

## Tool Loading: Eager vs. Lazy

* **Eager Tools (`eager: true`)**: Tool schemas are directly injected into the agent's active system prompt so the model can call them instantly as native tools.
* **Lazy Tools (default)**: Tool schemas are cached on disk (`.gemini/antigravity/mcp/<serverName>/<toolName>.json`). The agent inspects schemas on-demand and invokes them via `call_mcp_tool`, minimizing prompt token overhead.

---

## Included MCP Configurations

* [`gemini-api-docs/`](./gemini-api-docs/): Tool schema definitions and usage instructions for querying official Gemini API & SDK documentation.
* [`mcp_config.json`](./mcp_config.json): Working configuration for `gemini-api-docs` and template for stdio servers.
