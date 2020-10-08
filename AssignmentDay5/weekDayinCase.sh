#!/bin/bash -x
#Read a Number and Display the week day (Sunday, Monday,…)
echo " Enter the number in between 1 to 7"
read n
case $n in 
1)
echo " Sunday";;
2)
echo " Monday";;
3)
echo " Tuesday";;
4)
echo " Wednesday";;
5)
echo " Thusday";;
6)
echo " Friday";;
7)
echo " Saturday";;
*)
echo " Envalid Number";;
esac

