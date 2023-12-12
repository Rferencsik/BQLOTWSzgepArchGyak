#!/bin/bash

# Függvény a lebegőpontos szám ellenőrzéséhez
is_float() {
    if [[ "$1" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        return 0  # Igaz, azaz lebegőpontos szám
    else
        return 1  # Hamis, azaz nem lebegőpontos szám
    fi
}

# Bekérjük az első oldal hosszát
read -p "Adja meg a téglalap egyik oldalának hosszát (lebegőpontos szám): " oldal1

# Ellenőrizzük, hogy az input lebegőpontos szám-e
if ! is_float "$oldal1"; then
    echo "Hiba: Az oldal hossza csak lebegőpontos szám lehet."
    exit 1
fi

# Bekérjük a második oldal hosszát
read -p "Adja meg a téglalap másik oldalának hosszát (lebegőpontos szám): " oldal2

# Ellenőrizzük, hogy az input lebegőpontos szám-e
if ! is_float "$oldal2"; then
    echo "Hiba: Az oldal hossza csak lebegőpontos szám lehet."
    exit 1
fi

# Kiszámoljuk és kiírjuk a területet
terulet=$(awk "BEGIN {print $oldal1 * $oldal2}")
echo "A téglalap területe: $terulet egység."

