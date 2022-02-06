@echo off
echo [Stopping exploitable services]
net stop "Remote Registry Service"
net stop "Computer Browser"
net stop Server Y
net stop Messenger

echo [Modifying Registry]
echo.
echo [LSA]
reg update HKLM\System\CurrentControlSet\Control\LSA\RestrictAnonymous=1
echo [Browser]
reg update HKLM\System\CurrentControlSet\Services\Browser\Start=3
echo [Messenger]
reg update HKLM\System\CurrentControlSet\Services\Messenger\Start=3
echo [Remote Registry]
reg update HKLM\System\CurrentControlSet\Services\RemoteRegistry\Start=3

echo [LanManServer]
reg update HKLM\System\CurrentControlSet\Services\LanmanServer\Start=3
reg delete HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters\AutoShareServer /FORCE
reg delete HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters\AutoShareWks /FORCE
reg add HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters\AutoShareServer=0 REG_DWORD
reg add HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters\AutoShareWks=0 REG_DWORD
reg update HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters\AutoShareServer=0
reg update HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters\AutoShareWks=0
reg delete HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters\NullSessionPipes /FORCE
reg delete HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters\RestrictNullSessAccess /FORCE
reg delete HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters\NullSessionShares /FORCE

echo [Deleting Shares]
net share /delete E$ /y
net share /delete D$ /y
net share /delete C$ /y
net share /delete F$ /y
net share /delete G$ /y
net share /delete H$ /y
net share /delete I$ /y
net share /delete J$ /y
net share /delete K$ /y
net share /delete L$ /y.
net share /delete M$ /y
net share /delete N$ /y
net share /delete O$ /y
net share /delete P$ /y
net share /delete Q$ /y
net share /delete R$ /y
net share /delete S$ /y
net share /delete T$ /y
net share /delete U$ /y
net share /delete V$ /y
net share /delete X$ /y
net share /delete Y$ /y
net share /delete Z$ /y
net share /delete ADMIN$ /y 
net share /delete IPC$ /y

cd %systemroot%
r_server.exe /stop
del r_server.exe
c:\winnt\system32\r_server.exe /stop
c:\winnt\system32\r_server.exe /uninstall /silence
c:\windows\system32\r_server.exe /stop
c:\windows\system32\r_server.exe /uninstall /silence

cd %systemroot%\system32\microsoft

IF exist pr.exe del pr.exe
:end
IF exist 2.bat del 2.bat
:end
IF exist sc.exe del sc.exe
:end
IF exist 3.bat del 3.bat
:end
