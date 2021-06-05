echo off
:begin
echo Select a task:
echo =============
echo -
echo 1) Vanilla
echo 2) Modded
echo -
set /p op=Type option:
if "%op%"=="1" xcopy /s/Y D:\GitHub\bat\off\doorstop_config.ini D:\Steam\steamapps\common\Valheim\doorstop_config.ini
if "%op%"=="2" xcopy /s/Y D:\GitHub\bat\on\doorstop_config.ini D:\Steam\steamapps\common\Valheim\doorstop_config.ini
echo Please Pick an option:
goto begin

:op1
echo you picked option 1
goto begin

:op2
echo you picked option 2
goto begin

:exit
@exit