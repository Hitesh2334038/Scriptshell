#! /bin/bash
#excutable file
for file in * 
	do
         if [ -d $file ]
	    then
		echo "  :$file "
		cat $file >> /home/boss/Desktop/dir.txt		
	fi
done
 #directory file
for file in *
	do
         if [ -d $file ]
    then
 		echo " excution files present$file "
	fi
done

#readable file
#for file in *
#	do
 #         if [ -r $file ]
  #  then
#		echo " excution files present$file "
#	fi
#done

#regular file
#for file in *
#	do
 #        if [ -f $file ]
#	    then
#		echo " excution files present$file "
#	fi
#done

#writeable files
#for file in *
#	do
 #        if [ -w $file ]
#	    then
#		echo " excution files present$file "
#	fi
#done

#internal fild seperator	
#while IFS=" " read -r line
#do 
#	$line
#done < 5mem.sh
