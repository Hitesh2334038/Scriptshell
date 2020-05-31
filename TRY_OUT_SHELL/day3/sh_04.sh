#! /bin/bash


echo "number of arguments $#"
if (( $# == 3 | $# == 4 )) 
then
case $1 in 
-f )
	for file in ` ls $2 `
	do 
		if [ $1 $2/$file ]
		then
			echo $file >> $3
		fi
	done
	;;

-d )
	for file in ` ls $2 `
	do 
		if [ $1 $2/$file ]
		then
			echo $file >> $4
		fi
	done
	;;

-df | -fd )
	for file in ` ls $2 `
	do 
		if [ -f $2/$file ]
		then
			echo $file >> $4
	
		elif [ -d $2/$file ]
		then
			echo $file >> $3
		fi
	done
	;;

* )
	
	echo " You can give only -f or -d or -df or -fd"
	;;
 
esac
else
	echo "usage : <script> -options <directory to be scan> <destionation file> pattern in must first argument in your choice in second activity"
	

fi




