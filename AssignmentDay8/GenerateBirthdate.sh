#!/bin/bash -x
i=0
temp=0
declare -A arr1
while [ $i -lt 50 ]
do
#to generate Birth Month using RANDOM function and stored into array
	arr+=($((RANDOM%12+1)))
((i++))
done
echo "${arr[@]}"
#sort the array by ascending order
  for((j=0;j<50;j++))
     do
        for((k=0;k<50-j-1;k++))
        do
        if [ ${arr[k]} -gt ${arr[$((k+1))]} ]
			then
			# swap element
				temp=${arr[k]}
				arr[$k]=${arr[$((k+1))]}
				arr[$((k+1))]=$temp
		fi
		done
	done
echo "Array in sorted order :"
echo ${arr[*]}
#to count number of occurencess of month
m=0
while [ $m -lt 50 ]
	do
			count=0
		for((n=0;n<50;n++))
			do
				if [ ${arr[$m]} -eq ${arr[$n]} ]
					then
						((count++))
				fi
		done
		arr1[${arr[$m]}]=$count
		if [ $count -gt 1 ]
			then
					m=$((m+$count))
				else
					((m++))
		fi
done
echo "Value =count   "${arr1[@]}
echo "keys = Month " ${!arr1[@]}
