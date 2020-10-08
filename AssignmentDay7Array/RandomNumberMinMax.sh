#  !/bin/bash -x
i=1
large=0
sLarge=0
ssmall=0
while [ $i -le 10 ]
do
arrayVar+=($((RANDOM%900+100)))
((i++))
done
echo "${arrayVar[@]}"
#echo "${arrayVar[1]}"

arrayLenth="${#arrayVar[@]}"
for(( j=0;j<$arrayLenth;j++ ))
do
	if [ "${arrayVar[j]}" -gt $large ];
		then
			sLarge=$large
			large="${arrayVar[$j]}"	
		elif [[ "${arrayVar[j]}" -gt $sLarge && "${arrayVar[j]}" -ne $large ]];
		then
			sLarge="${arrayVar[$j]}"
		fi
done

small=$large
for (( k=0;k<$arrayLenth;k++ ))
	do
			if [ "${arrayVar[k]}" -le $small ];
      	then
         ssmall=$small
         small="${arrayVar[$k]}"

	elif [[ "${arrayVar[k]}" -lt $ssmall && "${arrayVar[k]}" -ne $small ]];
	then
		ssmall="${arrayVar[$k]}"
	fi
done
echo "Large Number " $large
echo "Small Number " $small
echo "Second larg number " $sLarge
echo "Second Small Number " $ssmall
