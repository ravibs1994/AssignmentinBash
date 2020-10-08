#!/bin/bash -x
n=$1
harmonic=1
for((i=2; i<=n; i++))
do
harmonic=`awk 'BEGIN{print '$harmonic' + '1'/'$i'}'`
done
echo $harmonic
