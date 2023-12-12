#!/bin/bash

# Ellenőrizzük, hogy megadták-e a szükséges paramétert
if [ "$#" -ne 1 ]; then
    echo "Használat: $0 <keresett_név>"
    exit 1
fi

# A paraméterként megadott név
keresett_nev="$1"

# Ellenőrizzük, hogy a people.csv fájl létezik-e
if [ ! -e "people.csv" ]; then
    echo "Hiba: A people.csv fájl nem található."
    exit 1
fi

# Keresés a név alapján, és kiszámoljuk az életkort, ha megtaláljuk
szuletesi_datum=$(awk -F';' -v nev="$keresett_nev" '$1 == nev {print $2}' people.csv)

if [ -z "$szuletesi_datum" ]; then
    echo "Nem található az adott név a people.csv fájlban."
else
    # Kiszámoljuk az életkort a születési dátum alapján
    szuletesi_ev=$(echo "$szuletesi_datum" | cut -d'.' -f1)
    akt_ev=$(date +'%Y')
    eletkor=$((akt_ev - szuletesi_ev))

    echo "Az életkor: $eletkor év."
fi

