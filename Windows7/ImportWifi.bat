@echo off
for /f "delims=" %%i in ('dir "C:\Wifi" /b /s *.xml') do netsh wlan add profile filename="%%i"
pause