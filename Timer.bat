@echo off
MODE CON COLS=32 LINES=10
color 2F
set A=000
title Timer
:1
echo How many seconds to countdown?
set /p A=
set /a x=%A%
if %A% == 0 (goto start)
if %x% neq 0 (goto start)
echo Enter number please
goto 1
:start
set T=%time:~6,2%
:2
set T1=%T%
if %T1% neq %time:~6,2% (
set /a A=%A%-1 & set T=%time:~6,2%
cls
echo:
echo ================================
echo              %A%
echo ================================
echo:
)
if %A% LSS 0 (
cls
color 4f
echo:
echo ====================================
echo      Тамер закрнчился timer stop
echo ====================================
echo:
goto end
)
goto 2
:end
pause
