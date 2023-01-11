:: Yes I Know This Is Autistic; Was Asked To Post It (Not By Me)
@echo off
color 0e
title Guessing Game by Surtains
set /a guessnum=0
set /a answer=%RANDOM%
set variable1=surf33
echo -------------------------------------------------
echo Welcome %USERNAME% To The Guessing Game! 
echo. 
echo         Try and Guess my Number! 
echo -------------------------------------------------
echo. 
:top
echo. 
set /p guess=
echo. 
if %guess% GTR %answer% ECHO Lower! 
if %guess% LSS %answer% ECHO Higher! 
if %guess%==%answer% GOTO EQUAL
set /a guessnum=%guessnum% +1
if %guess%==%variable1% ECHO Found the backdoor hey?, the answer is: %answer%
goto top
:equal
echo Congratulations, You guessed right!!! 
echo. 
echo It took you %guessnum% guesses. 
echo. 
pause