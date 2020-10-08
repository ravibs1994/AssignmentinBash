#!/bin/bash -x
echo "Enter the choice"
echo " 1 for Feet to Inch"
echo " 2 for Feet to Meter"
echo " 3 for Inch to Feet"
echo " 4 for Meter to Feet"
read ch
case $ch in
1)
echo "Enter feet value "
read f
echo $(($f*12)) "inch";;
2)
echo "Enter feet value "
read f1
meter=$(echo |awk '{ print '$f1'*0.3048}')
echo $meter " Meter";;
3)
echo "Enter inch value"
read in
echo $(($in/12)) "ft" ;;
4)
echo "Enter meter value"
read m
feet=$(echo |awk '{ print '$m'*3.28084}')
echo $feet " Feet";;
*)
echo "Envalid"
esac



