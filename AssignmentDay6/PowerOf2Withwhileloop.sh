#!/bin/bash -x
  n=$1
  powerOf2=1
i=0
   echo "|"Power "|" Value "|"
while [ $i -le $n ]
      do
         echo ________________
         echo "|   "  $i      "|   "  $powerOf2  "|"
         powerOf2=$((2*powerOf2))
#Limits 2 pwer n till 256
			if [ $powerOf2 -gt 256 ];
				then
				break
				fi 
		((i++))
		done
