@echo off
setlocal enabledelayedexpansion

:: Define OneDrive path
set "ONEDRIVE_PATH="
set "DEST="

:: Get OneDrive path from the registry (if available)
for /f "tokens=3" %%A in ('reg query "HKCU\Software\Microsoft\OneDrive" /v "UserFolder" 2^>nul') do set "ONEDRIVE_PATH=%%A"

:: Check if OneDrive path is found and if the folder exists there
if defined ONEDRIVE_PATH (
    echo OneDrive path found: %ONEDRIVE_PATH%
    set "DEST=%ONEDRIVE_PATH%\Documents\EVE\PlanetaryInteractionTemplates"
    if exist "%DEST%" (
        echo Found the correct OneDrive folder: %DEST%
    ) else (
        echo OneDrive folder not found, exiting script.
        exit /b
    )
) else (
    echo OneDrive not found, exiting script.
    exit /b
)

:: Check if the destination folder exists, if not, create it
if not exist "%DEST%" mkdir "%DEST%"

:: Copy all JSON files from the current folder and subfolders to the destination
set "FILES_COPIED=0"
for /r "%CD%" %%F in (*.json) do (
    copy /Y "%%F" "%DEST%" >nul
    set /a FILES_COPIED+=1
)

:: Show results
echo.
echo =====================================
echo   %FILES_COPIED% JSON files copied!
echo   Destination: %DEST%
echo   Good luck with your PI setup!
echo =====================================
echo.

:: Open the destination folder in File Explorer
start "" "%DEST%"

pause
