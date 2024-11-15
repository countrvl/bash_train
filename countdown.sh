#!/bin/bash
number=$1
while (( number >= 0 )); do
    echo $number
    ((number--))
done
