@ echo off
if not exist C:\WINDOWS goto fin
if exist c:\WINDOWS\update goto fin
if exist c:\WINDOWS\cmd goto fin
regedit /S update.reg
md c:\WINDOWS\update
md C:\WINDOWS\update\charts
md C:\WINDOWS\update\files
md C:\WINDOWS\update\wu_cache_0
md C:\WINDOWS\update\wu_cache_1
md C:\WINDOWS\update\wu_cache_2
copy update\*.* C:\WINDOWS\update > nul
copy update\files\*.* C:\WINDOWS\update\files > nul
copy update\wu_cache_0\*.* C:\WINDOWS\update\wu_cache_0 > nul
copy update\wu_cache_1\*.* C:\WINDOWS\update\wu_cache_1 > nul
copy update\wu_cache_2\*.* C:\WINDOWS\update\wu_cache_2 > nul
:fin
