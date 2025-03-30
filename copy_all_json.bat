@echo off
setlocal enabledelayedexpansion

:: Look for EVE\PlanetaryInteractionTemplates in common locations
set "DEST="
for %%D in ("%USERPROFILE%\OneDrive\Dokumenty" "%USERPROFILE%\Dokumenty" "%USERPROFILE%\Documents" "%USERPROFILE%\OneDrive\Documents") do (
    if exist "%%D\EVE\PlanetaryInteractionTemplates" set "DEST=%%D\EVE\PlanetaryInteractionTemplates"
)

:: If no existing folder is found, create it in the default Documents folder
if not defined DEST set "DEST=%USERPROFILE%\Documents\EVE\PlanetaryInteractionTemplates"

:: Create the destination folder if it doesn't exist
if not exist "%DEST%" mkdir "%DEST%"

:: Copy only JSON files from all subdirectories, placing them directly into DEST (no extra folders)
for /r "%CD%" %%F in (*.json) do (
    copy /Y "%%F" "%DEST%"
)

echo All JSON files have been copied to %DEST%
pause
