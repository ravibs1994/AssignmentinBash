#!/bin/bash -x

echo "Random Function";
random=$(($RANDOM%10));
echo $random
