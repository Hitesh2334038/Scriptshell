#!/bin/bash

for (( i=1;i<=$#;i= i + 2  ))
do 
	 eval echo '$'$i
done
