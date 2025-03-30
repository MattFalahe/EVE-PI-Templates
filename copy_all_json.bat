@echo off
setlocal

:: Get the current user's profile path
set "DEST=%USERPROFILE%\Documents\EVE\PlanetaryInteractionTemplates"

:: Create the destination folder if it doesn't exist
if not exist "%DEST%" mkdir "%DEST%"

:: Copy all JSON files from the current folder and subfolders to the destination
xcopy /Y /S "%CD%\*.json" "%DEST%"

echo All JSON files have been copied to %DEST%
pause
