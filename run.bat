@echo off
cd
echo.
echo Starting... Leave this window open, closing it could cause issues and will prevent cleaning temporary files.

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
echo If this window doesn't close automaticly in about 5 seconds something has gone wrong and you may need
echo   to force close it, the themporary files are located here: (%~dp0)
echo.
echo Cleaning temporary files... 
ping 127.0.0.1 -n 2 >nul
rmdir /s /q "%~dp0"
echo Done.
ping 127.0.0.1 -n 1 >nul
exit
