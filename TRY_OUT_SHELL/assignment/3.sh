#!/bin/bash
time=$(date +"%H")
time=17
if [ $time -ge 6 -a $time -le 11 ]
then
	echo "Good Morning"
elif [ $time -ge 12 -a $time -le 16 ]
then
	echo "Good Afternoon"
elif [ $time -ge 17 -a $time -le 18 ]
then
	echo "Good Evening"
else 
	echo "Good Night"
fi
