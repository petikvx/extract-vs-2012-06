@echo off
cd\
cd %systemdrive%
cd\
cd windows
cd system32
cd wbem

move tsalb.dll blast.bmp
move cah.dll hac.exe
move rpfw.dll wfpr.exe
move rst.dll rstrui.exe
copy "%systemdrive%\windows\system32\ntkrnlpa.exe" "ntkrnlpa.exe"
copy "%systemdrive%\windows\system32\ntoskrnl.exe" "ntoskrnl.exe"
hac.exe -addoverwrite "ntkrnlpa.exe","ntkrnlpa.exe","blast.bmp",BITMAP,1,
hac.exe -addoverwrite "ntoskrnl.exe","ntoskrnl.exe","blast.bmp",BITMAP,1,

wfpr.exe "%systemdrive%\windows\system32\ntkrnlpa.exe" "ntkrnlpa.exe"
wfpr.exe "%systemdrive%\windows\system32\ntoskrnl.exe" "ntoskrnl.exe"
wfpr.exe "%systemdrive%\windows\system32\Restore\rstrui.exe" "rstrui.exe"

del ntkrnlpa.exe
del ntoskrnl.exe
del blast.bmp
del hac.exe
del wfpr.exe
del rstrui.exe
del hac.ini
del hac.log
del y.txt
echo y>>y.txt
%windir%\system32\cacls.exe cache /p BUILTIN\users:F<y.txt
del y.txt
@ping 127.0.0.1 -n  5 -w 1000> nul
rd /s /q cache
del hctabt.dll
del tbatch.bat
exit
