<!-- :: Batch section

@echo off
setlocal
:start

for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"



echo %username%: %HTAreply%>>log
goto :start
-->
<html>
	<head>
		<HTA:APPLICATION SCROLL="no" SYSMENU="no" >
		
		<title>HTA Buttons</title>
		<link rel=stylesheet href="style.css">
		

	</head>
	<body>
		<label for="input" >Nachricht:</label>
		<input type="text" id="nach" name="input" onkeydown="key(event)">
		<span onclick="closeHTA('2')" onmouseover="red()" onmouseleave="white()" id="close">X</span>
		<script language="JavaScript" src="script.js">
		</script>
	</body>


</html>
