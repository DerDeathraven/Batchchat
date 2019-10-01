@echo off

color 0a
cd stuff
start view.hta
echo %username% joined the chat >>log
if "%username%" == "IDNWTW" start  /min HTA\admin.bat
:loop
cls
call HTA\test.bat

goto loop

:error
echo f*** dich, du hast es kaputt gemacht.
pause
exit