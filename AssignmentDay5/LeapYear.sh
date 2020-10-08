#!/bin/bash -x

echo "Enetr Year"
read year
#A Leap Year Divisible by 4 and not 100 unless
#divisible by 400.
n=$year
#for checking number is 4 digit or not
while [ $n -ne 0 ]
do
	(( count++ ))
  n=$(( n/10 ))
done
#number is 4 digit then check leap year
if [ "$count" -eq "4" ];
then
	if [[ ( $year%4 -eq 0  &&  $year%100 -ne 0 ) || ( $year%400 -eq 0 ) ]];
		then
			echo "Leap Year"

		else
			echo "The year $year not Leap year"
	fi
else
	echo "Enter 4 Digit Year"
fi
#  if (( $year%400 -eq 0 ))
 #    then
#        echo "The Year $year is  not Leap Year"
#           else
#              echo "The Year $year is Leap Year"
