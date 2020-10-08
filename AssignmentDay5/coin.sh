#!/bin/bash -x
#get the coin value
coinValue=$(($RANDOM%2+1));
if [ " $coinValue " -eq " 1 " ]
then
   echo "Head";
else
     echo "Tail";
fi;

