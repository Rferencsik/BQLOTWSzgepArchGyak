#!/bin/bash

read -p "Adja meg a születési dátumát (yyyy.mm.dd formátumban): " szuletesi_datum

if ! [[ "$szuletesi_datum" =~ ^[0-9]{4}\.[0-9]{2}\.[0-9]{2}$ ]]; then
    echo "Hiba: Helytelen dátumformátum. Kérjük, használja a yyyy.mm.dd formátumot."
    exit 1
fi

szuletesi_ev=$(echo "$szuletesi_datum" | cut -d'.' -f1)

aktualis_ev=$(date +'%Y')
eletkor=$((aktualis_ev - szuletesi_ev))

echo "Az életkor: $eletkor év."

