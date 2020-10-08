#!/bin/bash -x
number=$1
	fact=1
	for((i=1;i<=$number;i++))
	do
	fact=$((fact*$i))
	done
	echo $fact
