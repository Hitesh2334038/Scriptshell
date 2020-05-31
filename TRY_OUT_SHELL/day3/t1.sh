#! /bin/bash

for file in ` ls $1  `
do
	if [ -d $1/$file  ]
	then
		echo $file >> $2
	elif [ -x $1/$file  ]
	then
		echo $file >> $3
	fi
done
			
