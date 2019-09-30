<!-- :: Batch section

@echo off
setlocal
:start

for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
if "%HTAreply%" == "clear" goto clear
if "%HTAreply%" == "2" goto exit
	

echo %username%: %HTAreply%>>log
goto :start
:clear
del log
echo Ahh nice a fresh Page >>log
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
		<label for="input" >Nachricht:</label>
		<input type="text" id="nach" name="input" onkeydown="key(event)" autofocus>
		<script >
			window.onload = function() {
  		 document.getElementById("nach").focus();
}
		</script>
		<span onclick="closeHTA('2')" onmouseover="red()" onmouseleave="white()" id="close">X</span>
		<script language="JavaScript" src="script.js">
		</script>
	</body>


</html>
