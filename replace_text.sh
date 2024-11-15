#!/bin/bash
if [ $# -ne 3 ]; then
    echo "Использование: $0 filename old_word new_word"
    exit 1
fi
sed -i "s/$2/$3/g" $1
echo "Текст заменен."
