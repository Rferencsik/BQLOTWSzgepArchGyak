#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Hiba: Kérlek, adj meg egyetlen pozitív számot paraméterként."
    exit 1
fi

if ! [[ "$1" =~ ^[1-9][0-9]*$ ]]; then
    echo "Hiba: A megadott érték nem pozitív egész szám."
    exit 1
fi

number=$1
is_prime=true

for (( i=2; i*i<=$number; i++ )); do
    if [ $((number % i)) -eq 0 ]; then
        is_prime=false
        break
    fi
done

if [ "$is_prime" = true ]; then
    echo "$number prím szám."
else
    echo "$number nem prím szám."
fi
