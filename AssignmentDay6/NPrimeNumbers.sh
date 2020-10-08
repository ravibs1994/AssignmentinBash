#!/bin/bash -x
number=$1
   for(( i=2; i<=$number; i++ ))
   do
		flag=2
		for((j=2;j<=i/2;j++))
			do
			if [ $((i%j)) -eq 0 ]
      	then
      		flag=$((flag+1))
      	fi
     done
		if [ $flag -eq 2 ];
      then
      echo "Prime number" $i
		fi
	done
