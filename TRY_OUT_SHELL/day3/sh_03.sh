#! /bin/bash

echo "number of arguments $#"
if [ $# -lt 4  ]
then
	echo "Give proper command line "
	fi

case $1 in 
-f)
	for file in ` ls $2 `
	do 
		if [ $1 $file ]
		then
			echo $file >> $3


