#!/bin/bash -x
function unit(){
echo " 1 For degF "
echo " 2 for DegC "
echo " Enter the Celsius value" 
read cValue
echo " Enter Farade Value"
read fValue
echo "Enetr Your Choice"
read ch
case $ch in
1)
#check for the user input is valid or not
 if [[ "$cValue" -ge "0" && "$cValue" -le "100" ]];
	then
#formula for calulate Faraday
		degF=$(( $cValue * 9/5+32 ))
		echo $degF " DegF "
		else
			echo "you Entered Wrong Value "
 fi
 ;;
2)
 if [[ "$fValue" -ge " 32" && "$fValue" -le "212" ]];
      then
#formula for calulate Celsius

		degC=$(($fValue-32*5/9))
		echo $degC "DegC";
		else
			 echo "you Entered Wrong value "
fi
 ;;
*)
echo "You entered Wrong Choice"
esac
}
 unit


