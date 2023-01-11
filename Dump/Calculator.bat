@echo off
title ..::[+] Calculator by Nix [+]::..
color b
:top
echo [+] Welcome %USERNAME%...
echo [+] Batch Calculator By Nix...
echo [+] Enter A Desired Problem Below...
echo.
set /p sum=
set /a ans=%sum%
echo.
echo Answer = %ans%
echo ------------------
pause
cls
echo Previous Answer: %ans%
goto top
pause
exit