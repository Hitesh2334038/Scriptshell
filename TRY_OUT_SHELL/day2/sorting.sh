#! /bin/bash
#read a
#echo $a
#ps1="touch me"
#echo $ps1
#ps2="Hello Archana"
#echo $ps2
#ifs="hello "
#echo $ifs
#exit 08*/


echo Maximum out of 5 members
 arr=( $1  $2  $3  $4 $5)
temp=0
echo "Before sorting "
echo ${arr[*]}
for((i=0;i<5-1;i++))
	do
       for((j=i+1;j<5;j++))
	do
		if((${arr[i]}<${arr[j]}))
			then
				temp=${arr[$i]} 
				 arr[$i]=${arr[$j]}
				arr[$j]=$temp
			fi
		done
	done

echo ${arr[*]}	
echo ${arr[0]}	
	
exit 0
