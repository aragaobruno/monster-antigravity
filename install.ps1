# install.ps1 — Windows installation script for Monster AntiGravity
# Installs 19 premium agent skills globally into your config folder.

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$destDir = Join-Path -Path $HOME -ChildPath ".gemini\config\skills"
New-Item -ItemType Directory -Force -Path $destDir | Out-Null

$srcDir = Join-Path -Path $PSScriptRoot -ChildPath "skills"

if (Test-Path -Path $srcDir) {
    Write-Host ""
    Write-Host "👾 Installing Monster AntiGravity Skills..." -ForegroundColor Cyan
    Copy-Item -Path "$srcDir\*" -Destination $destDir -Recurse -Force
    Write-Host "✅ 19 premium skills successfully installed globally at $destDir !" -ForegroundColor Green
    Write-Host "🚀 Restart your AI agent terminal session to load your new capabilities." -ForegroundColor Yellow
    Write-Host ""
} else {
    Write-Error "Source skills directory not found! Make sure you are running this from the repository root."
    exit 1
}
