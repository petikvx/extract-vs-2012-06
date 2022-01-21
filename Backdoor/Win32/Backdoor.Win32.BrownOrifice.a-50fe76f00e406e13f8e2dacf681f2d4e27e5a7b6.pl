#!/usr/bin/perl

use GDBM_File qw(GDBM_WRCREAT);

print "Content-type: image/gif\n\n";
open my $fp, 'BOHTTPD_logo.gif'; print while <$fp>; close $fp;
close STDOUT;

my $url = $ENV{HTTP_REFERER} || $ENV{HTTP_REFERRER} or exit 0;
$url =~ s/\/\/+$/\//;
$url =~ /127\.0\.0\.1/ and exit 0;
$url =~ /:[0-9]/ or exit 0;

my %db;
tie %db, 'GDBM_File', 'BOHTTPD.gdbm', &GDBM_WRCREAT, 0666;
$db{$url} = time;
untie %db;

