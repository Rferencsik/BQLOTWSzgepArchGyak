#!/bin/bash

if [ ! -e "people1.csv" ]; then
    echo "Hiba: A people.csv fájl nem található."
    exit 1
fi

sed 's/@gmail.com/@citromail.com/g' people1.csv > bqlotw__people.csv

echo "Az email címek sikeresen cserélve, az eredmény a neptunkod_people.csv fájlban található."

