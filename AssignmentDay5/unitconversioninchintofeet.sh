#!/bin/bash -x
echo "Enter inch value" 
read in
echo $(($in/12)) "ft"
#printf '%.1f' $(echo "42/12"| bc-l)
