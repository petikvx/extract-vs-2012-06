#!/bin/sh
declare -i A
declare -i B
declare -i C
declare -i D

read ARGV

A=`echo $ARGV|cut -d. -f 1`
B=`echo $ARGV|cut -d. -f 2`
C=`echo $ARGV|cut -d. -f 3`
D=`echo $ARGV|cut -d. -f 4`

        echo "$A.$B.$C.$D"


while true 
do 

if [  "$A" -ge "229" ]
then
  A=1
fi

while [ "$A" -lt "230" ]
do 
	if [ "$B" -ge "229" ]
    	then
    	B=0
    	fi

	while [ "$B" -lt "230" ]
	do 

 		 if [  "$C" -ge "229" ]
   		 then
      		 C=0
    		 fi
        
		while [ "$C" -lt "230" ]
        	do 

        		if [  "$D" -ge "229" ]
       		        then
      			    D=0
        		 fi

			while [ "$D" -lt "230" ]
			do
       
       			  D=D+1
        		  echo "$A.$B.$C.$D"
        		done
           	 C=C+1
         	done
    	 B=B+1 
	 done 
 A=A+1
done 

done

   