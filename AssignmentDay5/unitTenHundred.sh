#!/bin/bash -x
echo "Enter The Number"
read number
n=$number
#nlen=1
while [ $number -gt 0 ]
	do
	((nlen++))
#echo $nlen
case $nlen in
	1)
		pos=$((n%10))
		echo " One $pos";;
	2)
		tp=$(($n%100))
		echo  "Ten $tp " ;;
		
	3)
		hp=$((n%1000))
		echo "Hundred $hp ";;
	4)
		ts=$((n%10000))
		echo "Thousand $ts";;
	*)
	echo "Envalid";
esac
	number=$(( number/10 ))
done
