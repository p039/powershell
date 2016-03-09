@echo off

cls

set ROOT_DIR=C:\
set APP_DIR=%ROOT_DIR%\app\bin



c:
cd \
cd %APP_DIR%

start PowerShell.exe python backend.py
timeout 5
start PowerShell.exe python frontend.py