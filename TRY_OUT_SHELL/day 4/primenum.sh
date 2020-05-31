#! /bin/bash
prime()
{
	echo "Primenumber "
num=$*
count=0
var=0
echo $num
for (( j=2;j<=num;j++ ))
do
	for (( i=1;i<=j;i++ ))
	do	
		if [ `expr $j % $i` -eq 0 ]
		then 
			count=`expr $count + 1`
		fi
	done
	
	if [ $count -eq 2 ]
	then
		echo $j
	fi
	count=0
done	
}

num=$1
prime $1


 
