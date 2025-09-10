@echo off
setlocal enabledelayedexpansion

:: Benutzer nach Commit-Nachricht fragen
set /p msg=Bitte Commit-Nachricht eingeben [Standard: updated]: 

:: Falls nichts eingegeben wurde, Standardwert setzen
if "%msg%"=="" set msg=updated

:: Git-Befehle ausführen
git add .
git commit -m "%msg%"
git push

pause