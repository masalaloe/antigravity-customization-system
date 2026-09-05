# Lint Checker Hook Script (PowerShell)
# Triggered on PostToolUse for replace_file_content / write_to_file

param (
    [string]$TargetFile = $env:AGY_TARGET_FILE
)

Write-Host "[Hook:PostToolUse] Running post-modification validation on: $TargetFile" -ForegroundColor Cyan

if (-not [string]::IsNullOrEmpty($TargetFile) -and (Test-Path $TargetFile)) {
    if ($TargetFile.EndsWith(".json")) {
        try {
            $null = Get-Content $TargetFile -Raw | ConvertFrom-Json
            Write-Host "[Hook:PostToolUse] JSON validation successful." -ForegroundColor Green
        } catch {
            Write-Warning "[Hook:PostToolUse] Invalid JSON detected in $TargetFile : $_"
        }
    }
}

exit 0
