@echo off

set OUTPUT_FILE=KeyAccel.exe

REM AHKThe following variables are depend on your enviroment.
REM If needed, change the values.
set INSTALL_DIR=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\

cd %~dp0

echo Installing...
echo Target:     %OUTPUT_FILE%
echo InstallDir: %INSTALL_DIR%%OUTPUT_FILE%
copy "%OUTPUT_FILE%" "%INSTALL_DIR%%OUTPUT_FILE%"
REM echo Done!!
