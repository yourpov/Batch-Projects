@echo off
title IP Logs  // User: %USERNAME%
mode con lines=24 cols=78

:reset
cls
color %ran%
echo.
echo         8888888               888
echo           888                 888
echo           888                 888
echo           888   88888b.       888      .d88b.   .d88b.  .d8888b
echo           888   888 "88b      888     d88""88b d88P"88b 88K
echo           888   888  888      888     888  888 888  888 "Y8888b.
echo           888   888 d88P      888     Y88..88P Y88b 888      X88
echo         8888888 88888P"       88888888 "Y88P"   "Y88888  88888P'
echo                 888                                 888
echo                 888                            Y8b d88P
echo                 888                             "Y88P"
echo.
echo [1;96m^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^<^<^<^<^<^<^<^<^<^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>:
echo [1;96m:^<^>[40;33m Press 1 To Open Central IP Logs Database :[1;96m ~[40;33m By Ecstasy [1;96m^<^>:
echo [1;96m^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^<^<^<^<^<^<^<^<^<^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>:
echo. [1;96m
set /p action=Enter a Name/Tag:


if not exist "%USERPROFILE%\IPLogs" mkdir "%USERPROFILE%\IPLogs"
set "LogFile=%USERPROFILE%\IPLogs\IPLogs.txt"
if "%action%"=="1" goto open_logs

set /p IP=ENTER IP ADDRESS FOR %action%: 
echo Tag: %action% // IP: %IP% // %date% %time%>> "%LogFile%"
echo %action%'s Info Saved in Your Database
echo Press any key to restart IP Logs
pause >nul
goto reset

:open_logs
cls
start "" "%LogFile%"
