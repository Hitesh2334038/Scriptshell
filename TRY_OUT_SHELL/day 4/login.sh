#! /bin/bash

check() 
{
	if [ ` whoami ` == $* ]
	then
		echo $*
		exit 0
	fi	
}

arr=( $1 $2 $3 )

for(( i = 0 ; i < 3 ; i++ ))
do
	check  ${arr[$i]} 
done
