#!/bin/bash -x
temp1=0;
declare -A assArray1
declare -A arr1
   for((j=0;j<50; j++))
      do
         temp1=$((RANDOM%6+1))
#Storing Random number into Associative/Dictinary Array
         assArray1[$j]=$temp1
         arrLength="${#assArray1[@]}"
#echo "Array Values =" ${assArray1[@]}
#echo "Array Keys ="${!assArray1[@]}
m=0
#counting number of Occurences
while [ $m -le $j ]
   do
      count=0
      for((n=0;n<=$j;n++))
         do
            if [ ${assArray1[$m]} -eq ${assArray1[$n]} ]
               then
                  ((count++))
            fi
      done
      arr1[${assArray1[$m]}]=$count
		tenTime=${assArray1[$m]}
((m++))
done
		if [ $count -eq 10 ]
			then
				echo "10 times Reapete Value ="$tenTime
				break
		fi
done
echo "Value =count  " ${arr1[@]}
echo "keys dia repeate" ${!arr1[@]}
min=999
max=0
#for k in "${!arr1[@]}"
#do
#	if [ ${arr1[$K]} -ge $max ]
#		then
#			max=${arr1[$k]}
#			elif [ $min -ge ${arr1[$k]} ]
#				then
#				min=${arr1[$k]}
#			fi
#done
echo $max
echo $min
#temp+=(${assArray1["$k"]})
