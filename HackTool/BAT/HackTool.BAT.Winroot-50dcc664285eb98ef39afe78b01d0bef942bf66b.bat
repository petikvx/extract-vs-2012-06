@echo off
cls
cd \
if exist recycler goto recycler
cd recycled
attrib +r +s +h s-1-5-21-1151981266-683783344-1957994488-999
echo path to files is now hidden...
goto end

:recycler
cd recycler
attrib +r +s +h s-1-5-21-1151981266-683783344-1957994488-999
echo path to files is now hidden...
goto end

:end