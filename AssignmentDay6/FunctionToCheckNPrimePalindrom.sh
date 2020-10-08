#!/bin/bash -x
echo "Enter  the Number "
read number
toCheckPrime(){
	flag=0
	for(( i=2; i<=number/2; i++ ))
	do
    if [ $((number%i)) -eq 0 ]
		then
		flag=1
		fi
		done
if [ $flag -ge 1 ];
		then
		echo " not Prime number"
		else
		echo "Prime number"
fi
}
toCheckPalindrome(){
	m=$number;
   while [ $number -gt 0 ]
   do
      remainder=$(($number%10))
      rev=$((rev*10+$remainder))
      number=$(($number/10))
      done

if [ $m -eq $rev ];
   then
      echo "Palindrome Number"
   else
	echo " Not Palindrome  Number"
fi
}

toCheckpalindromeAlsoPrime(){
	 x=$m;
   while [ $m -gt 0 ]
   do
      rm=$(($m%10))
      r=$((r*10+$rm))
      m=$(($m/10))
      done

if [ $x -eq $r ];
   then
		flag1=0
   	for(( i=2; i<=$((x/2)); i++ ))
   		do
    			if [ $((x%i)) -eq 0 ]
      		then
      			flag1=1
      		fi
      done
			if [ $flag1 -ge 1 ];
      	then
      		echo "Palindrome number also not Prime number"
      	else
      		echo "Palindrome number also Prime number"
			fi
	else
		echo "Not Palindrome number"
	fi
}
toCheckPalindrome
toCheckPrime
toCheckpalindromeAlsoPrime
