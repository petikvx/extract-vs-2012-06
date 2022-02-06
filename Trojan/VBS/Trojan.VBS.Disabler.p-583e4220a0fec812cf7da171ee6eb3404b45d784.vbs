on error resume next
dim ws
Dim oShell

Set ws = CreateObject("Wscript.shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")



ws.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\EnableFirewall",0,"REG_DWORD"

ws.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\EnableFirewall",0,"REG_DWORD"



