echo off
:start
echo =========================
echo How do you want to play?
echo =========================
echo -
echo 1) Vanilla
echo 2) Modded (enable Bepinex)
echo -
set /p op=Please type the number and press 'return/enter':

if "%op%"=="1" powershell -Command "(gc doorstop_config.ini) -replace 'enabled=true', 'enabled=false' | Out-File -encoding ASCII doorstop_config.ini"
if "%op%"=="1" goto vanilla

if "%op%"=="2" powershell -Command "(gc doorstop_config.ini) -replace 'enabled=false', 'enabled=true' | Out-File -encoding ASCII doorstop_config.ini"
if "%op%"=="2" goto modded

echo =========================
echo That doesn't seem right! Please type 1 or 2.
goto start

:vanilla
echo =========================
echo You're now playing Vanilla Valheim!
goto exit

:modded
echo =========================
echo You're now playing modded Valheim!
goto exit

:exit
echo -
echo This window will now close.
PAUSE
@exit