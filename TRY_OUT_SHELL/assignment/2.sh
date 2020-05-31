#! /bin/bash
count=$1
while [ $2 -ge $count ]
do
	printf "%d " "$count"
	count=` expr $count + 1 `
	
done
