@echo off

set "ScriptName=%~nx0"
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

echo.
if not exist "%StartupFolder%\%ScriptName%" (
    echo Feito por Luis
    cls
    copy "%ScriptName%" "%StartupFolder%"
    cls
    goto 1
) else (
    echo rilei
    cls
    goto 2
)

echo Inicializando
timeout /t 5 /nobreak >nul

