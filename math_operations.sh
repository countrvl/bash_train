#!/bin/bash

add() {
    echo "Сумма: $(($1 + $2))"
}

subtract() {
    echo "Разность: $(($1 - $2))"
}

multiply() {
    echo "Произведение: $(($1 * $2))"
}

divide() {
    if [ $2 -ne 0 ]; then
        echo "Частное: $(($1 / $2))"
    else
        echo "Ошибка: деление на ноль"
    fi
}

read -p "Введите первое число: " num1
read -p "Введите второе число: " num2
read -p "Выберите операцию (+ - * /): " op

case $op in
    +) add $num1 $num2 ;;
    -) subtract $num1 $num2 ;;
    \*) multiply $num1 $num2 ;;
    /) divide $num1 $num2 ;;
    *) echo "Неверная операция" ;;
esac
