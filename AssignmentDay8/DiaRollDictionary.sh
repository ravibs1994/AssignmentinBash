#!/bin/bash -x
temp1=0;
declare -A assArray1
declare -A arr1
	for((j=0;j<10; j++))
		do
			temp1=$((RANDOM%6+1))
#			echo $temp1
			assArray1[$j]=$temp1
 			arrLength="${#assArray1[@]}"
	#echo $arrLength
#echo "array"
done
#for k in "${!assArray1[@]}"
#do
 #   temp+=(${assArray1["$k"]})
#done  |
#sort -n -k3
#echo "${temp[@]}" "sorted array"
#echo "${#temp[@]}" "length"


echo "Array Values =" ${assArray1[@]}
echo "Array Keys ="${!assArray1[@]}
#for((m=0;m<$arrLength;m++))
#do
#for((n=0;n<$arrLength-m-1;n++))
#do
# if [ ${assArray1[n]} -gt ${assArray1[$((n+1))]} ]
#then
# swap#
#temp=${assArray1[n]}
#assArray1[$n]=${assArray1[$((n+1))]}
#assArray1[$((n+1))]=$temp
#fi
#done
#done
#echo "Array in sorted order :"
#echo "${assArray1[*]}"
			#if [ $j -ne 0 ]
			#	then
			#		a=0;
			#		for((k=0;k<$arrLength-1;k++))
			#		o
#	do
			#				count=$(($k+1))
			#				#echo "Count value "$count
			#				if [ ${assArray1[$k]}-eq${assArray1[$count]} ]
			#					then
			#						echo "repeat number "$temp1
			#						((a++))
			#					echo "Repeat number count "$a
			#				fi
			#		if [ $a -eq 10 ]
			#			then
			#				break
			#		fi
			#		done
			#fi

#echo "Array Length ="$arrLength
#echo "Array element =" ${assArray1[@]}
m=0
while [ $m -lt 10 ]
   do
         count=0
      for((n=0;n<10;n++))
         do
            if [ ${assArray1[$m]} -eq ${assArray1[$n]} ]
               then
                  ((count++))
            fi
      done
#      echo ${assArray1[$m]} " Count =" $count
      arr1[${assArray1[$m]}]=$count
     # if [ $count -gt 1 ]
      #   then
       #        m=$((m+$count))
        #    else
         #      ((m++))
      #fi
((m++))
done
echo "Value =count  " ${arr1[@]}
#for k in ${arr1[*]}
#do
#  echo $k "=>" ${arr1[$k]}
#done
echo "keys dia repeate" ${!arr1[@]}
