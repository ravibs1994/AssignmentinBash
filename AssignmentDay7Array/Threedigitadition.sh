#!/bin/bash -x
echo "How Many element you want to enter"
read n
echo "Enetr Array  Element "
l=0
while [ $l -lt $n ]
do
#read array element from User input
read a
#place element to array
 arr[$l]=$a
((l++))
done
echo "Array Elememnt " "${arr[@]}"
arrlength="${#arr[@]}"
#Iterate loop till array length
for((i=0;i<$arrlength-2;i++))
do
	for((j=i+1;j<$arrlength-1;j++))
		do
			for((k=j+1;k<$arrlength;k++))
				do
					#sum of digits
					((sum="${arr[$i]}" + "${arr[$j]}"+"${arr[$k]}"))
						if(($sum == 0))
							then
								echo "${arr[$i]}" "," "${arr[$j]}" "," "${arr[$k]}" "="$sum
						fi
				done
		done
done

