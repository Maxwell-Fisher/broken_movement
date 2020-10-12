:Made by Maxwell Fisher @Maxwellcrafter
echo Loading...
@echo off
color 0F
title 3D rendering in batch
setlocal
setlocal enableDelayedExpansion
call :setESC
set red=%ESC%[91m%ESC%[41m  %ESC%[0m
set yellow=%ESC%[93m%ESC%[43m  %ESC%[0m
set green=%ESC%[92m%ESC%[42m  %ESC%[0m
set blue=%ESC%[94m%ESC%[44m  %ESC%[0m
set cyan=%ESC%[96m%ESC%[46m  %ESC%[0m
set magenta=%ESC%[95m%ESC%[45m  %ESC%[0m
set black=%ESC%[30m%ESC%[40m  %ESC%[0m
set white=%ESC%[90m%ESC%[47m  %ESC%[0m
::set blank=%ESC%[90m%ESC%[47m  %ESC%[0m
set input=null
set pos_x=1
set pos_y=1
set plus_1=null
call :reset
call :draw
cls


::echo !var%num%!

:loop
call :getInput
call :move
call :draw
call :reset
if not "%input%" == "null" echo %input%
if "%input%" == "null" echo.
goto loop

pause >nul



exit

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
set ESC=%%b
exit /B
)

:move
::next_place must be the full location, not just the pos_x cord
if "%input%"=="w" (
set /a plus_1=%pos_x%+1 && if "!board_%plus_1%-%pos_y%!"=="%white%" (
set /a pos_x=%pos_x%+1))


if "%input%"=="s" (
set /a plus_1=%pos_x%-1 && if "!board_%plus_1%-%pos_y%!"=="%white%" (
set /a pos_x=%pos_x%-1))


if "%input%"=="a" (
set /a plus_1=%pos_y%-1 && if "!board_%pos_x%-%plus_1%!"=="%white%" (
set /a pos_y=%pos_y%-1))


if "%input%"=="d" (
set /a plus_1=%pos_y%+1 && if "!board_%pos_x%-%plus_1%!"=="%white%" (
set /a pos_y=%pos_y%+1))




::if "%input%"=="w" set /a pos_x=%pos_x%+1
::if "%input%"=="s" set /a pos_x=%pos_x%-1
::if "%input%"=="a" set /a pos_y=%pos_y%-1
::if "%input%"=="d" set /a pos_y=%pos_y%+1


::if "%input%"=="null"

exit /B

:draw
cls
echo Position=%pos_x%-%pos_y%
echo Looking at %plus_1%-%pos_y%
echo Looking at color !board_%plus_1%-%pos_y%!
::echo.
::echo %plus_1%
::echo board_%plus_1%-%pos_y%
::echo !board_%plus_1%-%pos_y%!

set board_%pos_x%-%pos_y%=%blue%
echo %black%%black%%black%%black%%black%%black%%black%%black%%black%%black%%black%%black%
echo %black%%board_9-0%%board_9-1%%board_9-2%%board_9-3%%board_9-4%%board_9-5%%board_9-6%%board_9-7%%board_9-8%%board_9-9%%black%
echo %black%%board_8-0%%board_8-1%%board_8-2%%board_8-3%%board_8-4%%board_8-5%%board_8-6%%board_8-7%%board_8-8%%board_8-9%%black%
echo %black%%board_7-0%%board_7-1%%board_7-2%%board_7-3%%board_7-4%%board_7-5%%board_7-6%%board_7-7%%board_7-8%%board_7-9%%black%
echo %black%%board_6-0%%board_6-1%%board_6-2%%board_6-3%%board_6-4%%board_6-5%%board_6-6%%board_6-7%%board_6-8%%board_6-9%%black%
echo %black%%board_5-0%%board_5-1%%board_5-2%%board_5-3%%board_5-4%%board_5-5%%board_5-6%%board_5-7%%board_5-8%%board_5-9%%black%
echo %black%%board_4-0%%board_4-1%%board_4-2%%board_4-3%%board_4-4%%board_4-5%%board_4-6%%board_4-7%%board_4-8%%board_4-9%%black%
echo %black%%board_3-0%%board_3-1%%board_3-2%%board_3-3%%board_3-4%%board_3-5%%board_3-6%%board_3-7%%board_3-8%%board_3-9%%black%
echo %black%%board_2-0%%board_2-1%%board_2-2%%board_2-3%%board_2-4%%board_2-5%%board_2-6%%board_2-7%%board_2-8%%board_2-9%%black%
echo %black%%board_1-0%%board_1-1%%board_1-2%%board_1-3%%board_1-4%%board_1-5%%board_1-6%%board_1-7%%board_1-8%%board_1-9%%black%
echo %black%%board_0-0%%board_0-1%%board_0-2%%board_0-3%%board_0-4%%board_0-5%%board_0-6%%board_0-7%%board_0-8%%board_0-9%%black%

echo %black%%black%%black%%black%%black%%black%%black%%black%%black%%black%%black%%black%
exit /B

:reset
set board_0-0=%white%
set board_0-1=%white%
set board_0-2=%white%
set board_0-3=%white%
set board_0-4=%white%
set board_0-5=%white%
set board_0-6=%white%
set board_0-7=%white%
set board_0-8=%white%
set board_0-9=%white%
set board_1-0=%white%
set board_1-1=%white%
set board_1-2=%white%
set board_1-3=%white%
set board_1-4=%white%
set board_1-5=%white%
set board_1-6=%white%
set board_1-7=%white%
set board_1-8=%white%
set board_1-9=%white%
set board_2-0=%white%
set board_2-1=%white%
set board_2-2=%white%
set board_2-3=%white%
set board_2-4=%white%
set board_2-5=%white%
set board_2-6=%white%
set board_2-7=%white%
set board_2-8=%white%
set board_2-9=%white%
set board_3-0=%white%
set board_3-1=%white%
set board_3-2=%white%
set board_3-3=%white%
set board_3-4=%white%
set board_3-5=%white%
set board_3-6=%white%
set board_3-7=%white%
set board_3-8=%white%
set board_3-9=%white%
set board_4-0=%white%
set board_4-1=%white%
set board_4-2=%white%
set board_4-3=%white%
set board_4-4=%white%
set board_4-5=%white%
set board_4-6=%white%
set board_4-7=%white%
set board_4-8=%white%
set board_4-9=%white%
set board_5-0=%white%
set board_5-1=%white%
set board_5-2=%white%
set board_5-3=%white%
set board_5-4=%white%
set board_5-5=%white%
set board_5-6=%white%
set board_5-7=%white%
set board_5-8=%white%
set board_5-9=%white%
set board_6-0=%white%
set board_6-1=%white%
set board_6-2=%white%
set board_6-3=%white%
set board_6-4=%white%
set board_6-5=%white%
set board_6-6=%white%
set board_6-7=%white%
set board_6-8=%white%
set board_6-9=%white%
set board_7-0=%white%
set board_7-1=%white%
set board_7-2=%white%
set board_7-3=%white%
set board_7-4=%white%
set board_7-5=%white%
set board_7-6=%white%
set board_7-7=%white%
set board_7-8=%white%
set board_7-9=%white%
set board_8-0=%white%
set board_8-1=%white%
set board_8-2=%white%
set board_8-3=%white%
set board_8-4=%white%
set board_8-5=%white%
set board_8-6=%white%
set board_8-7=%white%
set board_8-8=%white%
set board_8-9=%white%
set board_9-0=%white%
set board_9-1=%white%
set board_9-2=%white%
set board_9-3=%white%
set board_9-4=%white%
set board_9-5=%white%
set board_9-6=%white%
set board_9-7=%white%
set board_9-8=%white%
set board_9-9=%white%

set board_6-6=%green%
set board_2-7=%red%
set board_5-8=%yellow%
exit /B

:getInput
set rawInput=null
set input=null
choice /d P /t 1 /c WASDP >nul
set rawInput=%errorlevel%
if "%rawInput%"=="1" set input=w
if "%rawInput%"=="2" set input=a
if "%rawInput%"=="3" set input=s
if "%rawInput%"=="4" set input=d
if "%rawInput%"=="5" set input=null

exit /B