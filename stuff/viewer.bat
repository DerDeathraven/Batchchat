@echo off
color 70
:start
start  mshta.exe \HTA\view.hta
timeout /t 1 >nul
cls
goto start


::hier ist alles in ordnung. vielleicht ein system f�r mehrere kan�le.