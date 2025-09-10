@echo off
setlocal enabledelayedexpansion

:: Benutzer nach Commit-Nachricht fragen
set /p msg=Bitte Commit-Nachricht eingeben (Updated): 

:: Falls nichts eingegeben wurde, Standardwert setzen
if "%msg%"=="" set msg=updated

:: Git-Befehle ausführen
git add .
if errorlevel 1 goto error

git commit -m "%msg%"
if errorlevel 1 goto error

git push
if errorlevel 1 goto error

:: Wenn alles erfolgreich war → Fenster schließen
exit

:error
pause