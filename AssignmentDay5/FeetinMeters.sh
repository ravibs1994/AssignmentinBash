#!/bin/bash -x 
a=60
b=40
feet=$(($a*$b))
echo $feet "Feet"
meter=$(echo |awk '{ print '$feet' * 0.3048}')
echo "Meter Value "$meter

