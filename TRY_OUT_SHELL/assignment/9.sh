#!/bin/bash
echo "entered number is : $1, $2, $3"

if [ $1 -gt $2 -a $2 -gt $3 ]
then 
	echo "Largest number is : $1 "
elif [ $2 -gt $3 ]
then
	echo "Largest number is : $2 "
else
	echo "Largest number is : $3 "
fi
