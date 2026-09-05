#!/usr/bin/env bash
# Lint Checker Hook Script (POSIX Bash)
# Triggered on PostToolUse for replace_file_content / write_to_file

TARGET="${AGY_TARGET_FILE:-$1}"

echo "[Hook:PostToolUse] Running post-modification validation on: $TARGET"

if [ -f "$TARGET" ] && [[ "$TARGET" == *.json ]]; then
    if command -v jq >/dev/null 2>&1; then
        if jq empty "$TARGET" >/dev/null 2>&1; then
            echo "[Hook:PostToolUse] JSON validation successful."
        else
            echo "[Hook:PostToolUse] Warning: Invalid JSON detected in $TARGET" >&2
        fi
    fi
fi

exit 0
