#! /bin/bash
sum=0
total=0
mult=1
count=1
while [ $count -ne ` expr $# + 1 ` ]
do
	sum=` expr $sum + $count`
	count=` expr $count + 1`
	eval mult=` expr '$'$count * $mult `
	echo $count $mult
done
echo $sum
count=` expr $count - 1 `
echo "scale=2; $sum / $count" | bc
echo $mult

