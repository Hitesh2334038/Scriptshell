# !/bin/bash
echo "1]factorial 2]fibonacci"
echo "Enter the number: "
read num
case $num in
1 ) 
echo "number $1"
a=$1
fact=1
facto()
{
for((i=2;i<=$a;i++))
do
  fact=$(( fact * $i ))
done  
 echo $fact
}

facto
;;
2)
fibonacci()
{ 
   p=$1
   a=0
   b=1
 echo "The Fibonacci series is : "
   
for (( i=0; i<=p; i++ )) 
do
    echo -n "$a "
    fn=$((a + b)) 
    a=$b 
    b=$fn 

done
}
fibonacci $1
;;
* )
	echo "u should enter the available choice number "
;;
esac 
exit 0
