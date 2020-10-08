#!/bin/bash -x

echo "Get Dice Number Using Random Function"
rmDice=$((RANDOM%6+1))
echo $rmDice
