#!/bin/bash

read -p "Adja meg a téglalap egyik oldalának hosszát (egész szám): " oldal1

if ! [[ "$oldal1" =~ ^[0-9]+$ ]]; then
    echo "Hiba: Az oldal hossza csak egész szám lehet."
    exit 1
fi

read -p "Adja meg a téglalap másik oldalának hosszát (egész szám): " oldal2

if ! [[ "$oldal2" =~ ^[0-9]+$ ]]; then
    echo "Hiba: Az oldal hossza csak egész szám lehet."
    exit 1
fi

terulet=$((oldal1 * oldal2))
echo "A téglalap területe: $terulet egység."

