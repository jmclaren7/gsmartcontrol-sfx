@echo off
cd
echo.
echo Starting... Leave this window open, closing it could prevent cleaning temporary files.

cd gsmartcontrol
cmd /c start "" gsmartcontrol.exe -q -l

ping 127.0.0.1 -n 3 >nul
:loop
tasklist | find /i "gsmartcontrol.exe" >nul 2>&1
if not errorlevel 1 (
    ping 127.0.0.1 -n 2 >nul
    goto loop
)

echo.
echo Program closed.
echo.
echo If this window doesn't close automaticly you may need to force close it.
echo.

REM Exit if the script isn't in %temp%
echo %~dp0 | findstr /C:"%temp%" >nul 2>&1
if %errorlevel%==1 ( exit /b )

echo Cleaning temporary files... 
ping 127.0.0.1 -n 2 >nul
rmdir /s /q "%~dp0"
echo Done.
ping 127.0.0.1 -n 2 >nul
exit