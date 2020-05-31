#! /bin/bash
for file  in ` ls -l /dev`
do
	if [ -x $file ]
	then
		echo $file
	fi

done
