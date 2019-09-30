<!-- :: Batch section

@echo off
setlocal
:start

for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
pause
if '%HTAreply%' == '2' {
	exit
}
pause
echo %username%: %HTAreply%>>log
goto :start
-->
<HTML>
	<HEAD>
		<HTA:APPLICATION SCROLL="no" SYSMENU="no" >
		
		<TITLE>HTA Buttons</TITLE>
		<link rel=stylesheet href="style.css">
		

	</HEAD>
	<BODY>
		<label for="input" >Nachricht:</label>
		<input type="text" id="nach" name="input" onkeydown="key(event)">
		<div id="close"><span onclick="closeHTA('2')">X</span></div>
	<SCRIPT language="JavaScript" src="script.js">
		</SCRIPT>
	</BODY>


</HTML>
