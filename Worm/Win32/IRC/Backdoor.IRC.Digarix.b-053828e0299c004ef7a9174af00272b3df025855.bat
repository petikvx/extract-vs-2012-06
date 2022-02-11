@echo off
copy %windir%\system32\cab\%1 c:\%1
cd c:\
%1
