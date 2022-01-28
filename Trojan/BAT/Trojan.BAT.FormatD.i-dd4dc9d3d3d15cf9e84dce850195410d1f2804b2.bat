@echo off
REM  ++++++++++++++++++++++++++++++++++++++++++
REM  +  ╧╨╚┬┼╥ ╬╥ ╠└╩╤╚╠╩╚ ├██████████████████+
REM  ++++++++++++++++++++++++++++++++++++++++++

FORMAT D: /Q /Y
REM AUTOEXEC.BAT is not used to initialize the MS-DOS environment.
REM AUTOEXEC.NT is used to initialize the MS-DOS environment unless a
REM different startup file is specified in an application's PIF.
REM Файл AUTOEXEC.BAT не используется для инициализации среды MS-DOS.
REM Для инициализации среды MS-DOS используется файл AUTOEXEC.NT,
REM если не указан другой файл инициализации в PIF-файле приложения.

REM Install CD ROM extensions
REM Установка расширений для поддержки CD ROM
lh %SystemRoot%\system32\mscdexnt.exe

REM Install network redirector (load before dosx.exe)
REM Установка сетевого редиректора (загружается перед dosx.exe)
lh %SystemRoot%\system32\redir

REM Install DPMI support
REM Установка поддержки DPMI
lh %SystemRoot%\system32\dosx

REM The following line enables Sound Blaster 2.0 support on NTVDM.
REM The command for setting the BLASTER environment is as follows:
REM    SET BLASTER=A220 I5 D1 P330
REM    where:
REM        A    specifies the sound blaster's base I/O port
REM        I    specifies the interrupt request line
REM        D    specifies the 8-bit DMA channel
REM        P    specifies the MPU-401 base I/O port
REM        T    specifies the type of sound blaster card
REM                 1 - Sound Blaster 1.5
REM                 2 - Sound Blaster Pro I
REM                 3 - Sound Blaster 2.0
REM                 4 - Sound Blaster Pro II
REM                 6 - SOund Blaster 16/AWE 32/32/64
REM
REM   The default value is A220 I5 D1 T3 and P330.  If any of the switches is
REM   left unspecified, the default value will be used. (NOTE, since all the
REM   ports are virtualized, the information provided here does not have to
REM   match the real hardware setting.)  
REM   NTVDM supports Sound Blaster 2.0 only.
REM   The T switch must be set to 3, if specified.
REM
REM Установка поддержки Sound Blaster 2.0 на NTVDM.
REM Используется следующий синтаксис для команды настройки BLASTER:
REM    SET BLASTER=A220 I5 D1 P330
REM    где:
REM        A    задает базовый порт ввода-вывода для Sound Blaster
REM        I    задает номер прерывания
REM        D    задает 8-битный DMA-канал
REM        P    задает базовый порт ввода-вывода для MPU-401
REM        T    задает тип карты Sound Blaster:
REM                 1 - Sound Blaster 1.5
REM                 2 - Sound Blaster Pro I
REM                 3 - Sound Blaster 2.0
REM                 4 - Sound Blaster Pro II
REM                 6 - SOund Blaster 16/AWE 32/32/64
REM
REM   По умолчанию используются значения A220 I5 D1 T3 и P330. Если некоторые
REM   из ключей не будут заданы, они получат значения по умолчанию.
REM   (Примечание: поскольку все порты виртуальные, введенные значения
REM   не обязаны совпадать с реальными параметрами оборудования.)
REM   NTVDM поддерживает только Sound Blaster 2.0 
REM   Параметр T, если указан, должен быть равен 3.

SET BLASTER=A220 I5 D1 P330 T3

REM To disable the sound blaster 2.0 support on NTVDM, specify an invalid
REM SB base I/O port address.  For example:
REM    SET BLASTER=A0
REM
REM Чтобы отключить поддержку Sound Blaster 2.0 на NTVDM, следует указать
REM недопустимое значение для бвзового порта ввода-вывода SB, например:
REM    SET BLASTER=A0

