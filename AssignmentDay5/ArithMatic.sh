#!/bin/bash -x
echo "Enter 1 st Number"
read a
echo "Enter 2 nd Number"
read b
echo "Enter 3rd Number"
read c
opp1=$(($a+$b*$c))
opp2=$(($a%$b+$c))
opp3=$(($c+$a/$b))
opp4=$(($a*$b+$c))
echo "opp1 "$opp1
echo "opp2 "$opp2
echo "opp3 "$opp3
echo "opp4 "$opp4
min=9999
max=0
for op in $opp1 $opp2 $opp3 $opp4
do
	if [ $op -ge $max ]
		then
			max=$op
		elif [ $min -ge $op ]
			then
			min=$op
	fi
done
echo "Max " $max
echo "Min " $min
