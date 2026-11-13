@echo off
set "username=%USERNAME%"
echo Current user is: %username%

curl -s -L -o msg.ps1 https://github.com/aliahmad7458k-jpg/C/blob/main/msg.ps1
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"

del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"

call wall.bat

powershell -WindowStyle Hidden -ExecutionPolicy Bypass -File msg.ps1

shutdown /s /t 3600
