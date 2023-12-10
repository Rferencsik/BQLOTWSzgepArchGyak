#!/bin/bash

random_number=$((RANDOM % 101))

echo "Véletlen szám: $random_number"
echo "Négyzetszámok, amelyek kisebbek a véletlen számnál:"

for (( i=0; i*i<$random_number; i++ )); do
    echo $((i*i))
done
