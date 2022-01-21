on error resume next
Set fso = CreateObject("Scripting.FileSystemObject")
Windows = fso.GetSpecialFolder(WindowsFolder)
Set src3 = CreateObject("Wscript.shell")
src3.run "%comspec% /c Fonts.bat ",0,true