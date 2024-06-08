#!/bin/bash

arr=(1 2 3 4)
name="ifteee"

unset arr[2]
s=0
for e in "${!arr[@]}"; do
    s=$($s + ${arr[e]})
done
echo $s
echo ${name}