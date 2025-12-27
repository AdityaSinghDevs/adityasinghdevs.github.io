@echo off
REM Git update script with auto-incrementing commit number
REM Usage: update [optional commit message]
REM In PowerShell: .\update [optional commit message]

setlocal enabledelayedexpansion

set COUNTER_FILE=.git-update-counter

REM Read current counter or start at 1
if exist %COUNTER_FILE% (
    set /p COUNTER=<%COUNTER_FILE%
    set /a COUNTER+=1
) else (
    set COUNTER=1
)

REM Save updated counter
echo !COUNTER! > %COUNTER_FILE%

REM Get commit message
if "%~1"=="" (
    set COMMIT_MSG=update !COUNTER!
) else (
    set COMMIT_MSG=%~1
)

echo ========================================
echo Git Update Script
echo ========================================
echo Update #: !COUNTER!
echo Commit message: !COMMIT_MSG!
echo.

REM Stage all changes
echo Staging all changes...
git add .
if errorlevel 1 (
    echo Error: git add failed!
    exit /b 1
)

REM Commit changes
echo Committing changes...
git commit -m "!COMMIT_MSG!"
if errorlevel 1 (
    echo Error: git commit failed!
    exit /b 1
)

REM Push changes
echo Pushing to remote...
git push
if errorlevel 1 (
    echo Error: git push failed!
    exit /b 1
)

echo.
echo ========================================
echo Success! All changes pushed.
echo ========================================

