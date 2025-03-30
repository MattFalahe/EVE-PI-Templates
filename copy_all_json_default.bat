@echo off
setlocal enabledelayedexpansion

:: Get the correct Documents folder, considering OneDrive redirection
for /f "usebackq delims=" %%D in (`powershell -NoProfile -Command ^
    "$onedrivePath = (Get-ItemProperty -Path 'HKCU:\Software\Microsoft\OneDrive' -Name 'UserFolder' -ErrorAction SilentlyContinue).UserFolder; ^
    if (Test-Path \"$onedrivePath\Documents\") { echo $onedrivePath\Documents } else { echo [Environment]::GetFolderPath('MyDocuments') }"`) do set "DOCS=%%D"

:: Define the target folder
set "DEST=%DOCS%\EVE\PlanetaryInteractionTemplates"

:: Create the destination folder if it doesn't exist
if not exist "%DEST%" mkdir "%DEST%"

:: Copy only JSON files from all subdirectories, placing them directly into DEST (no extra folders)
for /r "%CD%" %%F in (*.json) do (
    copy /Y "%%F" "%DEST%"
)

echo.
echo =====================================
echo  ✅ All JSON files have been copied!
echo  📂 Destination: %DEST%
echo  🚀 Good luck with your PI setup! 
echo =====================================
echo.

pause
