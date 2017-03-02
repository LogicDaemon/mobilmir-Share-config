@(REM coding:CP866
REM by LogicDaemon <www.logicdaemon.ru>
REM This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License <http://creativecommons.org/licenses/by-sa/4.0/deed.ru>.
SETLOCAL ENABLEEXTENSIONS
IF "%~dp0"=="" (SET "srcpath=%CD%\") ELSE SET "srcpath=%~dp0"
IF NOT DEFINED PROGRAMDATA SET "PROGRAMDATA=%ALLUSERSPROFILE%\Application Data"
IF NOT DEFINED APPDATA IF EXIST "%USERPROFILE%\Application Data" SET "APPDATA=%USERPROFILE%\Application Data"

SET "MSIFileName=SkypeSetup.msi"
IF NOT DEFINED logmsi CALL :DefineLogMSI
)
(
rem � 2017-03-01, Skype �ॡ�� MSVCP140.DLL
"%~dp0..\..\..\..\Updates\Windows\wsusoffline\cpp\vcredist2015_x86.exe" /q /norestart
%SystemRoot%\System32\msiexec.exe /i "%~dp0%MSIFileName%" /qn /norestart /l+* "%logmsi%" TRANSFORMS=:RemoveStartup.mst;:RemoveDesktopShortcut.mst
EXIT /B
)
:DefineLogMSI
(
SET "logmsi=%TEMP%\%MSIFileName%.%DATE:~-4,4%-%DATE:~-7,2%-%DATE:~-10,2% %TIME::=%.log"
EXIT /B
)
