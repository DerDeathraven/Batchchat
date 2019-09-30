@echo off

color 0a
cd stuff
start viewer.bat
echo %username% joined the chat >>log

:loop
cls
call HTA\test.bat

goto loop

:error
echo f*** dich, du hast es kaputt gemacht.
pause
exit