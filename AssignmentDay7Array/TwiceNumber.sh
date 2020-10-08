#!/bin/bash -x
#Iterate the loop from 0 to 100
for ((n=0;n<=100;n++))
	do
	temp=$n;
		rev=0
#checking twice number its just like palindrome
		while [ $temp -gt 0 ]
 		do 
		remainder=$(($temp%10))
		temp=$(($temp/10))
		rev=$((rev*10+$remainder))
		done
#we want twice number thats why number greater then 10
#if number is equals to rev number then that is twice number ie 22,33
			
			if [[ $n -gt 10 && $n -eq $rev ]]
				then
					echo "Twice Value ="$n
#store that numbers in to array
						arr+=($n)
				fi
done
echo "Array element " "${arr[@]}"
