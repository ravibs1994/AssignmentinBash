#!/bin/bash -x
	n=$1
	powerOf2=1
		   echo "|"Power "|" Value "|"
	for((i=0;i<=n;i++))
		do
			echo ________________
			echo "|   "  $i      "|   "  $powerOf2  "|" 
			powerOf2=$((2*powerOf2))
		done
