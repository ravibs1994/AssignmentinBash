#!/bin/bash -x
#Check if user input date is in between March 20 to Jun 20

echo " Enter day of month "
read day
echo " Enter Month "
read month
if(( $month==3 && $day>=20))
   then
      echo "True"
elif(( $month==6 && $day<=20 ))
      then
      echo "True"
#Check if user input Mont is above March and below jun
elif(( $month>3 && $month<6))
then
		echo "True"
else
echo "Fales"
fi
