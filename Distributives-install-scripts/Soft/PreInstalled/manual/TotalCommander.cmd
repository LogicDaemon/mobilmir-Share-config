@(REM coding:CP866
REM Script to install preinstalled and working-without-install software
REM by LogicDaemon <www.logicdaemon.ru>
REM This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License <http://creativecommons.org/licenses/by-sa/4.0/deed.ru>.
SETLOCAL ENABLEEXTENSIONS
IF "%~dp0"=="" (SET "srcpath=%CD%\") ELSE SET "srcpath=%~dp0"
IF NOT DEFINED PROGRAMDATA SET "PROGRAMDATA=%ALLUSERSPROFILE%\Application Data"
IF NOT DEFINED APPDATA IF EXIST "%USERPROFILE%\Application Data" SET "APPDATA=%USERPROFILE%\Application Data"
IF NOT DEFINED utilsdir SET "utilsdir=%~dp0..\utils\"
IF NOT DEFINED LOCALAPPDATA CALL :DefineLocalAppData
SET "UIDCreatorOwner=S-1-3-0;s:y"
CALL :FindAutoHotkeyExe || (CALL "%~dp0..\..\Keyboard Tools\AutoHotkey\install.cmd" & CALL :FindAutoHotkeyExe)

SET OS64Bit=
IF /I "%PROCESSOR_ARCHITECTURE%"=="AMD64" SET "OS64Bit=1"
IF DEFINED PROCESSOR_ARCHITEW6432 SET "OS64Bit=1"
)
SET "TCDir=%LOCALAPPDATA%\Programs\Total Commander"
(
    "%utilsdir%7za.exe" x -r -aoa -o"%TCDir%" -- "%~dpn0.7z"
    "%utilsdir%7za.exe" x -r -aoa -o"%TCDir%" -- "%~dpn0.Plugins.7z"
    IF DEFINED OS64Bit (
	"%utilsdir%7za.exe" x -r -aoa -o"%TCDir%" -- "%~dpn0.64bit.7z"
	"%utilsdir%7za.exe" x -r -aoa -o"%TCDir%" -- "%~dpn0.Plugins64bit.7z"
    )
    "%SystemDrive%\SysUtils\SetACL.exe" -on "%TCDir%" -ot file -actn ace -ace "n:%UIDCreatorOwner%;p:change;i:so,sc;m:set;w:dacl"
    rem this causes weird permissions after profile permission reset --- "%utilsdir%xln.exe" %AutohotkeyExe% "%TCDir%\AutoHotkey.exe" || 
    XCOPY %AutohotkeyExe% "%TCDir%\*.*" /I /Y || (
	@ECHO Error copying AutoHotkey to TC dir
	PING 127.0.0.1 -n 3 >NUL
    )
    SET "dist7zDir=%~dp0..\..\Archivers Packers\7Zip"
    SET "distzpaqDir=%~dp0..\..\..\Soft FOSS\Archivers Packers\zpaq"
    SET "distNotepad2Mask=Notepad2-mod.*"
    IF DEFINED OS64Bit ( SET "Notepad2DistSuffix=_x64.zip" ) ELSE SET "Notepad2DistSuffix=_x86.zip"
    SET "distNotepad2Dir=%~dp0..\..\..\Soft FOSS\Office Text Publishing\Text Documents\Notepad2\Special and Custom Editions\notepad2-mod"
)
(
    IF NOT EXIST "%dist7zDir%" SET "dist7zDir=\\Srv0.office0.mobilmir\Distributives\Soft\Archivers Packers\7Zip"
    IF NOT EXIST "%distzpaqDir%" SET "distzpaqDir=\\Srv0.office0.mobilmir\Distributives\Soft FOSS\Archivers Packers\zpaq"
    IF NOT EXIST "%distNotepad2Dir%" SET "distNotepad2Dir=\\Srv0.office0.mobilmir\Distributives\Soft FOSS\Office Text Publishing\Text Documents\Notepad2\Special and Custom Editions\notepad2-mod"
)
(
    CALL :UnpackNotepad2Mod
    REM unpacking config after notepad2.zip to overwrite notepad2.ini
    "%utilsdir%7za.exe" x -r -aoa -o"%TCDir%" -- "%~dpn0.config.7z"
    IF NOT EXIST "%APPDATA%\GHISLER\wincmd.ini" START "" /D"%TCDir%" AutoHotkey.exe "%TCDir%\_copy_config.ahk"

    rem IF /I "%SystemDrive:~0,2%" NEQ "%TCDir:~0,2%" GOTO :Unpack7ZipLibs
    rem !BUG: dir7z not defined
    rem IF NOT EXIST "%dir7z%\7zg.exe" GOTO :Unpack7ZipLibs
    rem IF NOT EXIST "%dir7z%\7z.dll" GOTO :Unpack7ZipLibs
rem :Link7ZipLibs
rem     "%utilsdir%xln.exe" -n "%dir7z%\Lang" "%TCDir%\PlugIns\wcx\Total7zip\Lang" || XCOPY "%dir7z%\Lang" "%TCDir%\PlugIns\wcx\Total7zip\Lang\*.*" /E /I /Y || GOTO :Unpack7ZipLibs
rem     "%utilsdir%xln.exe" "%dir7z%\7z.dll" "%TCDir%\PlugIns\wcx\Total7zip\7z.dll" || XCOPY "%dir7z%\7z.dll" "%TCDir%\PlugIns\wcx\Total7zip\*.*" /I /Y || GOTO :Unpack7ZipLibs
rem     "%utilsdir%xln.exe" "%dir7z%\7z.sfx" "%TCDir%\PlugIns\wcx\Total7zip\7z.sfx" || XCOPY "%dir7z%\7z.sfx" "%TCDir%\PlugIns\wcx\Total7zip\*.*" /I /Y || GOTO :Unpack7ZipLibs
rem     "%utilsdir%xln.exe" "%dir7z%\7z.exe" "%TCDir%\PlugIns\wcx\Total7zip\7zG.exe" || XCOPY "%dir7z%\7z.exe" "%TCDir%\PlugIns\wcx\Total7zip\*.*" /I /Y || GOTO :Unpack7ZipLibs
rem     EXIT /B
rem :Unpack7ZipLibs
    FOR /F "usebackq delims=" %%N IN (`DIR /B /A-D "%dist7zDir%\7z*.exe"`) DO CALL :Unpack7ZipDist "%dist7zDir%\%%~N"
    rem "%utilsdir%7za.exe" x -r -aoa -o"%TCDir%\PlugIns\wcx\Total7zip" -- "%~dp0..\..\Archivers Packers\7Zip\7z*.exe" Lang\* 7z.dll 7z.sfx 7zg.exe
    FOR /F "usebackq delims=" %%N IN (`DIR /B /A-D "%distzpaqDir%\zpaq*.zip"`) DO CALL :Unpackzpaq "%distzpaqDir%\%%~N" && EXIT /B
    @ECHO 7-Zip not unpacked!
EXIT /B
)

:Unpack7ZipDist
(
    rem SET "dist7zPath=%~1"
    SET "dist7zNameNoExt=%~n1"
    SET "outSubdir="
    SET "flagVar=Unpacked32bit7Zip"
)
(
    IF "%dist7zNameNoExt:~-4%"=="-x64" (
	IF NOT DEFINED OS64Bit EXIT /B
	SET "outSubdir=\64"
	SET "flagVar=Unpacked64bit7Zip"
    )
)
(
    IF NOT DEFINED %flagVar% "%utilsdir%7za.exe" x -r -aoa -o"%TCDir%\PlugIns\wcx\Total7zip%outSubdir%" -- %1 Lang\* 7z.dll 7z.sfx 7zg.exe && SET "%flagVar%=1"
    EXIT /B
)

:Unpackzpaq
(
    IF DEFINED OS64Bit (
	"%utilsdir%7za.exe" x -r -aoa -o"%TCDir%\zpaq" -- %1 zpaq64.exe readme.txt
	MOVE /Y "%TCDir%\zpaq\zpaq64.exe" "%TCDir%\zpaq64.exe"
    ) ELSE (
	"%utilsdir%7za.exe" x -r -aoa -o"%TCDir%\zpaq" -- %1 zpaq.exe readme.txt
	MOVE /Y "%TCDir%\zpaq\zpaq.exe" "%TCDir%\zpaq.exe"
    )
    MOVE /Y "%TCDir%\zpaq\readme.txt" "%TCDir%\zpaq-readme.txt"
    RD "%TCDir%\zpaq"
)

:UnpackNotepad2Mod
FOR /F "usebackq delims=" %%A IN (`DIR /B /O-D "%distNotepad2Dir%\%distNotepad2Mask%%Notepad2DistSuffix%"`) DO (
    %utilsdir%7za.exe x -aoa -o"%TCDir%" -- "%distNotepad2Dir%\%%~A"
    EXIT /B
)
EXIT /B 1

:DefineLocalAppData
    SET "LOCALAPPDATA=%USERPROFILE%\AppData\Local"
(
    IF NOT EXIST "%LOCALAPPDATA%" (
	MKDIR "%USERPROFILE%\AppData"
	"%utilsdir%xln.exe" -n "%USERPROFILE%\Local Settings\Application Data" "%LOCALAPPDATA%"
	"%utilsdir%xln.exe" -n "%USERPROFILE%\Application Data" "%USERPROFILE%\AppData\Roaming"
    )
EXIT /B
)

:FindAutoHotkeyExe
(
    FOR /F "usebackq tokens=2 delims==" %%I IN (`ftype AutoHotkeyScript`) DO CALL :CheckAutohotkeyExe %%I
    rem continuing if AutoHotkeyScript type isn't defined or specified path points to incorect location
    IF NOT DEFINED AutohotkeyExe CALL :CheckAutohotkeyExe "%ProgramFiles%\AutoHotkey\AutoHotkey.exe" || CALL :CheckAutohotkeyExe "%ProgramFiles(x86)%\AutoHotkey\AutoHotkey.exe" || SET AutohotkeyExe="%~dp0..\utils\AutoHotkey.exe"
    EXIT /B
)
:CheckAutohotkeyExe <exepath>
(
    IF NOT EXIST %1 EXIT /B 1
    SET AutohotkeyExe=%1
EXIT /B 0
)
