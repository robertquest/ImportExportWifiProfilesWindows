@echo off
md "C:\Wifi"
netsh wlan export profile key=clear folder="C:\Wifi"
