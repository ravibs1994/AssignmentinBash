#!/bin/bash -x
temp=0
k=1
while [ $k -le 10 ]
do
arrayVar+=($((RANDOM%100+100)))
((k++))
done
echo "${arrayVar[@]}"
arrayLenth="${#arrayVar[@]}"
echo $arrayLenth Array Size
for ((i = 0; i<$arrayLenth; i++))
do

    for((j = 0; j<$arrayLenth-i-1; j++))
    do

        if [ ${arrayVar[j]} -gt ${arrayVar[$((j+1))]} ]
        then
            # swap
            temp=${arrayVar[j]}
            arrayVar[$j]=${arrayVar[$((j+1))]}
            arrayVar[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arrayVar[*]}
echo " second Small Number " ${arrayVar[1]}
echo " second Large Number " ${arrayVar[$arrayLenth-2]}
