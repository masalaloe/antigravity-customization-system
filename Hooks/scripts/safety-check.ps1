# Safety Check Hook Script (PowerShell)
# Triggered on PreToolUse for run_command

param (
    [string]$Command = $env:AGY_TOOL_COMMAND
)

Write-Host "[Hook:PreToolUse] Validating command execution safety..." -ForegroundColor Cyan

# Example: Disallow dangerous rm/del commands on root directories
$forbiddenPatterns = @(
    "rm\s+-rf\s+/",
    "Remove-Item\s+.*-Recurse\s+C:\\",
    "del\s+/f\s+/s\s+/q\s+C:\\"
)

foreach ($pattern in $forbiddenPatterns) {
    if ($Command -match $pattern) {
        Write-Error "[Hook:PreToolUse] BLOCKED: Command matches forbidden pattern: $pattern"
        exit 1
    }
}

Write-Host "[Hook:PreToolUse] Safety check passed." -ForegroundColor Green
exit 0
