#!/bin/bash -x
echo "Enter number like 1 ,10 ,100 "
read n
case $n in
	1)
		echo $n "One Unit"
		;;
	10)
		echo $n "Ten Unit"
		;;
	100)
		echo $n "Hundred Unit"
		;;
	1000)
		echo $n "Thousand Unit"
		;;
	*)
		echo "Invalid Number"
		;;
esac
