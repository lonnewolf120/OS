#!/bin/bash

arrival=(0 1 2)
burst=(4 3 1)
completion=(0 0 0)
turnaround=(0 0 0)
waiting=(0 0 0)
# process=('P1' 'P2' 'P3')

for i in {0..2}; do
    if [ ${i}==0 ]; then
        completion[$i]=${burst[$i]}
    else 
        completion[$i]=$((${completion[$(($i-1))]} + ${burst[$i]})) 
    fi
    turnaround[$i]=$((${completion[$i]} - ${arrival[$i]}))
    waiting[$i]=$((turnaround[$i] - burst[$i]))
done

echo "Completion Turnaround Waiting"
for i in {0..2}; do
   echo "${completion[$i]}   ${turnaround[$i]}   ${waiting[$i]}"
done

