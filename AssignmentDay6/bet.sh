#!/bin/bash -x
rs=100
nbets=0
won=0
loss=0
#for iterating loop
while [ true ]
do
#fire random value
	betValue=$(($RANDOM%2+1));
	((nbets++))
#check won or loss based on random value
	if [ $betValue  -eq  1  ];
	then
	((rs++))
	((won++))
	else
		((rs--))
	((loss++))
	fi
#if gambler reaches to 200 and Gamble Reaches to 0 then exit
if [[ $rs -eq 200 || $rs -eq 0 ]];
	then
		echo $rs "Rs"
			break
		fi
done
echo $nbets "Number of Bets"
echo $won "Number of times Won "
echo $loss "Number of times Loss "
