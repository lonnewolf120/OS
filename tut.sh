#!/bin/bash

a=0
b=0
echo "Enter value of a: "
read a
echo "Enter value of b: "
read b

c=$(expr $a + $b )
echo $c

d=$(( a * b ))
echo $d

if [ $a -gt $b ]; then
	echo "$a is greater than $b"
elif [ $a -lt $b ]; then
	echo "$b is greater than $a"
else
	echo "$a is equal to $b"
fi

echo "is it morning yet(y/n)?: "
read TOD
case "$TOD" in
	Y|y|yes ) echo "Good morning";;
	n|N|no ) echo "Good day sir";;
	* ) echo "Bye";;
esac

# $# -> no of args
# $n -> n-th args
# $* -> all args
a=1
for i in $*
do
	echo "The $a no arg is $i"
	a=$(expr $a + 1)
done

pass = "ift"
read ps
until [ $ps != $pass ];
do
	echo "Password not matched"
	read ps
done

