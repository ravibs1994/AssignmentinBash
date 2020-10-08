#!/bin/bash -x
count=0
a=0
b=0
#for Iterating loop
while [ true ]
do
#get the coin value
coinValue=$(($RANDOM%2+1));
#check for head or tail
if [ " $coinValue " -eq " 1 " ]
then
#   echo "Head" ;
		((a++)) 
else
 #    echo "Tail";
		((b++))
fi
#if head or tail comes 11 times then exit
	if [[ ($a -eq 11 || $b -eq 11) ]];
   then
		echo $a "Head"
		echo $b " Tail"
		break
fi
done

