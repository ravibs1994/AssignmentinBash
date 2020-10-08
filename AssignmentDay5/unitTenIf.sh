#!/bin/bash -x
echo "Enter number like 1 ,10 ,100 "
read n
one=1
t=10
h=100
th=1000
if [ $n -eq $one ] 
	then
		echo $n "One Unit"
	elif [ $n -eq $t ]
		then
			echo $n "Ten Unit"
	elif [ $n -eq $h ]
		then
			echo $n "Hundred Unit"
	elif [ $n -eq $th ]
		then
			echo $n "Thousand Unit"
	else
		echo "Invalid Number"
fi

