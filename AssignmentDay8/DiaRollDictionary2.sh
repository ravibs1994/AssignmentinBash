#!/bin/bash -x
temp1=0;
declare -A assArray1
one=0
two=0
three=0
four=0
five=0
six=0
#set the limit up to any individual Random Number Generate 10 Times
	while [[ $one -lt 10 && $two -lt 10 && $three -lt 10 && $four -lt 10 && $five -lt 10 && $six -lt 10 ]]
      do
         temp1=$((RANDOM%6+1))
#Storing Random number into Associative/Dictinary Array
#echo $temp1
			if [ $temp1 -eq 1 ]
				then
	#counting the Number of Occurences
					((one++))
					assArray1[1]=$one
				elif [ $temp1 -eq 2 ]
					then
						((two++))
						assArray1[2]=$two
				elif [ $temp1 -eq 3 ]
               then
                  ((three++))
						assArray1[3]=$three
				elif [ $temp1 -eq 4 ]
               then
                  ((four++))
						assArray1[4]=$four
				elif [ $temp1 -eq 5 ]
               then
                  ((five++))
						assArray1[5]=$five
				elif [ $temp1 -eq 6 ]
               then
                  ((six++))
						assArray1[6]=$six
			fi
done
key=0
keyM=0
max=0
min=999
arrLength="${#assArray1[@]}"
echo "Array Values =" ${assArray1[@]}
echo "Array Keys   ="${!assArray1[@]}
#finding Maximum times and Minimum Times
for((i=1;i<=arrLength;i++))
	do
	if [ ${assArray1[$i]} -gt $max ]
			then
				max=${assArray1[$i]}
				key=$i
		elif [ $min -gt ${assArray1[$i]} ]
				then
					min=${assArray1[$i]}
					keyM=$i
		fi
done
echo "Max Number Count "$max
echo "Min Number Count "$min
echo "Max Number key "$key
echo "Min Number key "$keyM
