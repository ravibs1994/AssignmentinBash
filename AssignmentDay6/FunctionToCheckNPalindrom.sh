#!/bin/bash -x
#define function
function CheckPalindrom(){
	echo "Enter The First Number "
	read n
	echo "enter the Second Number"
	read n1
m=n;
   while [ $n -gt 0 ]
	do
		remainder=$(($n%10))
		rev=$((rev*10+$remainder))
		n=$(($n/10))
		done

if [ "$rev" -eq "$n1" ]
	then 
		echo " Both Numbers are Palindrom to each other "
 else
echo " Both Numbers are Not Palindrom to each other "
fi
}
#function call
CheckPalindrom
