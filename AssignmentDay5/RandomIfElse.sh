#!/bin/bash
echo "Five random number"
max=100
min=1000
for((n=1;n<=5;n++))
	do
		random=$(($RANDOM%900+100))
		echo "Random no="$random
	if [ $random -ge $max ]
		then
			max=$random
	
	elif [ $min -ge $random ]
		then
			min=$random
	fi
	done
	echo "Max"$max
	echo "Min"$min

