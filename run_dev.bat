@echo off
cls
set dirpath=%~dp0
if "%dirpath:~-1%" == "\" set dirpath=%dirpath:~0,-1%
set "choice=n"
if "%choice%"=="y" (
    set "exepath=%dirpath%\env\scripts\python"
) else (
    set "exepath=%dirpath%\env\scripts\pythonw"
)
start "TwitchDropsMiner" "%exepath%" "%dirpath%\main.py"