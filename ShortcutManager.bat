::THE FRICKING BOOTSTRAPPER
:bootStrapper
@echo off 
chcp 65001 > nul
setlocal EnableDelayedExpansion
set PATH=%~dp0bin;%PATH%


::CHOOSE YOUR FATE Part I
:fate1
cls
echo   ____    _____   _____   __  __   _   ____  
echo  ^|  _ \  ^|  _  ^| ^|  _  ^| ^|  \/  ^| ^| ^| / ___^| 
echo  ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^|\/^| ^| ^|_^| \___ \ 
echo  ^| ^|_^| ^| ^| ^|_^| ^| ^| ^|_^| ^| ^| ^|  ^| ^|     ___) ^|
echo  ^|____/  ^|_____^| ^|_____^| ^|_^|  ^|_^|    ^|____/ 
echo.
echo               ShortCut Control
echo.
echo Created by Doom, mantained by DoomInk
echo.
echo Choose an option:
echo 1- Add a shortcut
echo 2- Open the shortcut list
echo 3- Remove a Shortcut
echo 4- Exit

::CHOOSE YOUR FATE Part II
:fate2
set /p CHOOSEYOURFATE="Select: "
if "%CHOOSEYOURFATE%"=="1" goto AddShortcut
if "%CHOOSEYOURFATE%"=="2" goto OpenShortcutList
if "%CHOOSEYOURFATE%"=="3" goto RemoveShortcut
if "%CHOOSEYOURFATE%"=="4" goto exitSequence
cls
echo It appears you typed an option that does not exist.
echo Press enter to try again.
pause > nul
goto fate1

::FUNCTIONS

:pause1point5
powershell -c "Start-Sleep -Milliseconds 300"
goto :eof
  
:exitSequence
call exitDelay 500
exit /b
  
