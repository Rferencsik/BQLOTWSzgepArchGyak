#!/bin/bash

for (( i=0; i<10; i++ )); do
    array[i]=$((RANDOM % 100))
done

echo "Eredeti tömb:"
echo "${array[@]}"

for (( i=0; i<10; i++ )); do
    ((array[i]++))
done

echo -e "\nTömb növelése 1-gyel:"
echo "${array[@]}"
