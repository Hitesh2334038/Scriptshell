#!/bin/bash

for (( i=$#; i>0; i-- ))
do
	eval echo '$'$i
done
