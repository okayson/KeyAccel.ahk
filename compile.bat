@echo off

REM AHKThe following variables are depend on your enviroment.
REM If needed, change the values.
set AHK_COMPILER="C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe"
set INSTALL_DIR=%USER_PROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\

set INPUT_FILE=KeyAccel.ahk
set OUTPUT_FILE=KeyAccel.exe

cd %~dp0

echo Compiling...%OUTPUT_FILE%
%AHK_COMPILER% /in %INPUT_FILE% /out %OUTPUT_FILE%

REM echo Installing...
REM copy %OUTPUT_FILE% %INSTALL_DIR%%OUTPUT_FILE%
REM echo Done!!
