#!/bin/bash

factorial(){
    echo "Factorial of ${n}:"
    fact=1

    for ((i=1; i<= n; ++i));do
        fact=$((fact*i))
    done

    echo "Factorial of ${n} is ${fact}"
}

read -p "Enter a number (0-20): " n
factorial n