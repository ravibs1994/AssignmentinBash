#!/bin/bash -x
number=$1
 flag=0
   for(( i=2; i*i<$number; i++ ))
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
