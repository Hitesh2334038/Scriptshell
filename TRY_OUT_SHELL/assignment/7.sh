#!/bin/bash
read -p 'variable a : ' a
read -p 'variable b : ' b

temp=$a
a=$b
b=$temp

echo "now variable a is $a"
echo "now variable b is $b"


