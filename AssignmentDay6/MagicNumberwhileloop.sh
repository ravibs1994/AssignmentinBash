#!/bin/bash -x
	echo "Enter Number Between 1 to 100"
	read number
i=1
#for half comparision
n=$((100/2));
#number is less or not
	if (($number <= $n))
            then
#iterate loop 
   		while [ $i -le $n ]
				do
#check given number is equal to other
					if [ $number -eq $i ];
							then
							echo $number "Majic Number Found"
#if given number found then exit from loop
							break
							fi
					((i++))
					done
					
	else
#this for another half
					for((j=$n;j<=100;J++))
					 do
                  if [ $number -eq $j ];
                     then
                     echo $number "Majic Number Found"
                     break
							fi	
					done
fi
