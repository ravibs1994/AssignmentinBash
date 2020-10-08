#!/bash/bin -x
echo "Enter 1st Number"
read a
echo "Enter 2nd Number"
read b
echo "Enter 3rd Number"
read c

d=$(($a+$b*$c))
echo $d
e=$(($a%$b+$c))
echo $e
f=$(($c+$a/$b))
echo $f
g=$(($a*$b+$c))
echo $g

if [ "$d" -ge ]
