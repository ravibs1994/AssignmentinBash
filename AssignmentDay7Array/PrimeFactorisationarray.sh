#!/bin/bash -x
#Tack number from command line
number=$1
for ((i=2;i*i<=$number;i++))
 	do
#calculating factors
	while [ $((number%i)) -eq 0 ]
		do
			#echo $i
			arr+=($i)
			number=$((number/i))
		done
	done
#if number is not divisible then
if [ $number -gt 2 ];
	then
		echo $number
fi
echo "${arr[@]}"
echo "${!arr[@]}"
echo "Array Size ="${#arr[@]}

