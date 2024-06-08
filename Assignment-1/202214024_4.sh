#!/bin/bash

exit_op(){
    read -p "Do you wanna exit? (y/n): " inp
    case "${inp}" in
        [yY]|[yY][eE][sS]) exit;;
        [nN]|[nN][oO]) echo "ok, resuming";;
    esac
}

addition(){
    sum=$((a+b))
    echo "${a} + ${b} = ${sum}"
}
subtraction(){
    sub=$((a-b))
    echo "${a} - ${b} = ${sub}"
}
multiplication(){
    mult=$((a*b))
    echo "${a} * ${b} = ${mult}"
}
division(){
    div=$((a/b))
    echo "${a} / ${b} = ${div}"
}

trap exit_op SIGINT

while true; do
    echo "Enter 2 numbers:"
    read -p "Enter A: " a
    read -p "Enter B (smaller than A prefered): " b
    addition a b
    subtraction a b
    multiplication a b
    division a b
done