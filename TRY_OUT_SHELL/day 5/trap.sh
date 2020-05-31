#! /bin/bash
terminate ()
{
	count=`expr $count + 1`
	echo $count

	if [ $count -eq $val ]
	then
		exit 0
	fi	
}

echo $1
val=$1
trap 'terminate $val' INT

count=0

while [ 1 ]
do 
	echo "typing"
	sleep 2
done
