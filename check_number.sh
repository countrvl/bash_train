#!/bin/bash
read -p "Введите число: " number
if (( number > 0 )); then
    echo "Положительное число"
elif (( number < 0 )); then
    echo "Отрицательное число"
else
    echo "Ноль"
fi
