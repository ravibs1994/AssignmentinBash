#!/bin/bash -x

	echo "Random Two Digit Value" 
	for ((n=5; n>=1; n--)) 
	do
		rmDice=$((RANDOM%89+10))
		sum=$(($sum + $rmDice))
		count=$((count+1))
	done
	avg=$(($sum / $count))
	echo "Sum= "$sum
	echo "Avg="$avg
