# Git update script with auto-incrementing commit number and 60s countdown
# Usage: .\update.ps1 [optional commit message]

$counterFile = ".git-update-counter"

# Read current counter or start at 1
if (Test-Path $counterFile) {
    $counter = [int](Get-Content $counterFile)
    $counter++
} else {
    $counter = 1
}

# Save updated counter
$counter | Out-File -FilePath $counterFile -NoNewline

# Get commit message
if ($args.Count -gt 0) {
    $commitMessage = $args[0]
} else {
    $commitMessage = "update $counter"
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Git Update Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Update #: $counter" -ForegroundColor Yellow
Write-Host "Commit message: $commitMessage" -ForegroundColor Yellow
Write-Host ""

# Stage all changes
Write-Host "Staging all changes..." -ForegroundColor Green
git add .

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: git add failed!" -ForegroundColor Red
    exit 1
}

# Commit changes
Write-Host "Committing changes..." -ForegroundColor Green
git commit -m $commitMessage

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: git commit failed!" -ForegroundColor Red
    exit 1
}

# Push changes
Write-Host "Pushing to remote..." -ForegroundColor Green
git push

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: git push failed!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Success! All changes pushed." -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

# 60-second countdown with progress bar
Write-Host "Starting 60-second countdown..." -ForegroundColor Magenta
for ($i = 60; $i -gt 0; $i--) {
    $percentComplete = ((60 - $i + 1) / 60) * 100
    $progressBar = "[" + ("█" * [math]::Floor($percentComplete / 5)) + ("░" * (20 - [math]::Floor($percentComplete / 5))) + "]"
    Write-Host -NoNewline "`rProgress: $progressBar $percentComplete% ($i seconds remaining)"
    Start-Sleep -Seconds 1
}
Write-Host "`rProgress: [████████████████████] 100% (0 seconds remaining) - Complete!" -ForegroundColor Green
Write-Host ""
