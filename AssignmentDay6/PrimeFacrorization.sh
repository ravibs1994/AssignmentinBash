#!/bin/bash -x
number=$1
for((i=2; i*i <=$number;i++))
do
#calculating factors
while [ $((number%i)) -eq 0 ]
do
echo $i
number=$((number/i))
done
done
#if number is not divisible then 
if [ $number -gt 2 ]
then
echo $number
fi
