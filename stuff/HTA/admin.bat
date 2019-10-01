<!-- :: Batch section
@echo off
echo %username% was accepted as admin(%time%) >>adminlog
:start
setlocal
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
if "%HTAreply%" == "1" goto clear

if "%HTAreply%" == "3" goto adminlog
if "%HTAreply%" == "4" goto exit
goto start
:clear
del log
echo %username% used Clear(%time%)>>adminlog
echo Ahh nice a fresh Page >>log
goto start

:adminlog
echo %username% started the adminlog(%time%) >>adminlog
start HTA\adminlog.hta
goto start
:exit
exit

-->
<html>
	<head>
		<HTA:APPLICATION SCROLL="no" SYSMENU="no" >
		
		<title>HTA Buttons</title>
		<link rel=stylesheet href="style.css">
		

	</head>
	<body>
		<button id="but1" onclick="closeHTA(1)">Clear</button>
		<button id="but3" onclick="closeHTA(3)">View Adminlog</button>
		<button id="but4" onclick="closeHTA(4)">Close</button>
		<script language="JavaScript" src="script.js">
		</script>
	</body>


</html>
