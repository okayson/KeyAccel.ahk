@echo off

REM AHKThe following variables are depend on your enviroment.
REM If needed, change the values.
set AHK_COMPILER="C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe"

set INPUT_FILE=KeyAccel.ahk
set OUTPUT_FILE=KeyAccel.exe

cd %~dp0

echo Compiling...%OUTPUT_FILE%
%AHK_COMPILER% /in %INPUT_FILE% /out %OUTPUT_FILE%
