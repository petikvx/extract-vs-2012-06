@echo off

REGEDIT.EXE /S YEA.REG
REGEDIT.EXE -S YEA.REG
REGEDIT /S YEA.REG
REGEDIT -S YEA.REG

REGEDIT.EXE /S a.reg
REGEDIT /S a.reg
REGEDIT.EXE -S a.reg
REGEDIT -S a.reg

pskill.exe actalert.exe
pskill.exe bargains.exe
pskill.exe msbb.exe
pskill.exe webrebates0.exe
pskill.exe webrebates1.exe
pskill.exe optimize.exe
pskill.exe alchem.exe
pskill.exe SyncroAd.exe
del %systemdrive%\Program Files\Windows SyncroAd\SyncroAd.exe
pskill.exe WinSync.exe
del %systemdrive%\Program Files\Windows SyncroAd\WinSync.exe
pskill.exe.EXE actalert.exe
pskill.exe.EXE bargains.exe
pskill.exe.EXE msbb.exe
del %systemdrive%\msbb.exe /s
pskill.exe.EXE webrebates0.exe
pskill.exe.EXE webrebates1.exe
pskill.exe.EXE optimize.exe
pskill.exe.EXE alchem.exe
pskill.exe.EXE SyncroAd.exe
attrib -h -r -s -a "%systemdrive%\Program Files\Windows SyncroAd\SyncroAd.exe"
del %systemdrive%\SyncroAd.exe /s
pskill.exe.EXE WinSync.exe
attrib -h -s -r -a "%systemdrive%\Program Files\Windows SyncroAd\WinSync.exe"
del %systemdrive%\WinSync.exe /s

del %systemdrive%\actalert.exe /s
del %systemdrive%\bargains.exe /s
del %systemdrive%\msbb.exe /s
del %systemdrive%\webrebates0.exe /s
del %systemdrive%\webrebates1.exe /s
del %systemdrive%\winsync.exe /s
del %systemdrive%\syncroad.exe /s
del %systemdrive%\optimize.exe /s
del %systemdrive%\alchem.exe /s
del %systemroot%\systb.dll /s
del %systemroot%\nem219.dll /s
del %systemroot%\lu.dat /s
del %systemdrive%\2_0_1browserhelper2.dll /s
del %userprofile%\Local Settings\Temp\*.exe /s

RMDIR /S /Q %systemdrive%\temp
RMDIR /S /Q "%systemdrive%\Program Files\Windows SyncroAd"
RMDIR /S /Q "%systemdrive%\Program Files\BullsEye Network"
RMDIR /S /Q "%systemdrive%\Program Files\Web_Rebates"
RMDIR /S /Q "%systemdrive%\Program Files\Internet Optimizer"
del %systemdrive%\recycler\xset.exe /s
del c:\recycler\xset.exe /s
del d:\recycler\xset.exe /s
del e:\recycler\xset.exe /s
del %windir%\yea.reg /s
del %windir%\killa.bat /s
del /s/q killa.bat
