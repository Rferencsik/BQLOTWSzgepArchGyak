#!/bin/bash

# Ellenőrizzük, hogy megadták-e a szükséges paramétert
if [ "$#" -ne 1 ]; then
    printf "Használat: %s <forrásfájl>\n" "$0"
    exit 1
fi

forras="$1"
cel="nem gondoltam a vizsgaidőszakra"

# Ellenőrizzük, hogy létezik-e a forrásfájl
if [ ! -e "$forras" ]; then
    printf "Hiba: A megadott forrásfájl nem létezik: %s\n" "$forras"
    exit 1
fi

# Cseréljük le a szövegeket és írjuk át az új fájlba a printf parancs segítségével
printf "%s\n" "$(sed "s/happy/$cel/g" "$forras")" > out.txt

printf "A szöveg sikeresen átlett alakítva. Az eredmény az out.txt fájlban található.\n"

