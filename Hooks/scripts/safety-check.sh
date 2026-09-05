#!/usr/bin/env bash
# Safety Check Hook Script (POSIX Bash)
# Triggered on PreToolUse for run_command

echo "[Hook:PreToolUse] Validating command execution safety..."

CMD="${AGY_TOOL_COMMAND:-$1}"

if echo "$CMD" | grep -Eq 'rm -rf /|rm -rf /\*'; then
    echo "[Hook:PreToolUse] BLOCKED: Destructive root command detected!" >&2
    exit 1
fi

echo "[Hook:PreToolUse] Safety check passed."
exit 0
