@echo off
cls
rem **************************************
rem *********** Directory Process ************
rem **************************************

if exist %1\recycler goto recycler
if exist %1\recycled goto recycled

echo using %1\recycler because their was no recycler / recycled
mkdir %1\recycler
attrib +r +s +h %1\recycler
mkdir %1\recycler\s-1-5-21-1151981266-683783344-1957994488-999
mkdir %1\recycler\S-1-5-21-1151981266-683783344-1957994488-999\com1\ \
mkdir %1\recycler\S-1-5-21-1151981266-683783344-1957994488-999\com1\.here.in.god
mkdir %1\recycler\S-1-5-21-1151981266-683783344-1957994488-999\com1\.here.in.god\Stuff
goto end

:recycler
echo using %1\recycler
mkdir %1\recycler\S-1-5-21-1151981266-683783344-1957994488-999
mkdir %1\recycler\S-1-5-21-1151981266-683783344-1957994488-999\com1\ \
mkdir %1\recycler\S-1-5-21-1151981266-683783344-1957994488-999\com1\.here.in.god
mkdir %1\recycler\S-1-5-21-1151981266-683783344-1957994488-999\com1\.here.in.god\Stuff
goto end

:recycled
echo using %1\recycled
mkdir %1\recycled\S-1-5-21-1151981266-683783344-1957994488-999
mkdir %1\recycled\S-1-5-21-1151981266-683783344-1957994488-999\com1\ \
mkdir %1\recycled\S-1-5-21-1151981266-683783344-1957994488-999\com1\.here.in.god
mkdir %1\recycled\S-1-5-21-1151981266-683783344-1957994488-999\com1\.here.in.god\Stuff
goto end

:end