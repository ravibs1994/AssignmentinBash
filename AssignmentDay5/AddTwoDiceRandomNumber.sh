#!/bin/bash -x

echo "Add Two Dice Number"
rmDice1=$((RANDOM%6+1))
echo $rmDice1
rmDice2=$((RNDOM%6+1))
echo $rmDice2
echo "Addition of Two Dice Number"
echo $(($rmDice1 + $rmDice2))
