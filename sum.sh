#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Использование: $0 число1 число2"
    exit 1
fi
sum=$(( $1 + $2 ))
echo "Сумма: $sum"
