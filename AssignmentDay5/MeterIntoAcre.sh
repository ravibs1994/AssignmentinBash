#!/bin/bash -x 
a=60
b=40
c=25
mValue=0.3048 # 1 Feet equals to 0.3048 Meters
aValue=0.000247105 #1 Meter equal to 0.000247105 Acres
feet=$(($a*$b))
echo $feet "Feet"
meter=$(echo |awk '{ print '$feet'*'$mValue'}')
echo "Meter Value "$meter
plot=$(echo |awk '{ print '$meter'*'$c'}')
echo $plot
acre=$(echo |awk '{ print '$plot'*'$aValue'}')
echo "Acre Value "$acre
