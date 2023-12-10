#!/bin/bash

if [ "$#" -ne 1 ]; then
    printf "Használat: %s <forrásfájl>\n" "$0"
    exit 1
fi

forrásfájl="$1"
cél="vizsgaidőszakra"


if [ ! -e "$forrásfájl" ]; then
    printf "Hiba: A megadott forrásfájl nem létezik: %s\n" "$forrásfájl"
    exit 1
fi


while IFS= read -r sor; do
    módosított_sor=$(printf "%s\n" "$sor" | sed 's/happy/vizsgaidőszakra/g')
    printf "%s\n" "$módosított_sor"
done < "$forrásfájl" > out.txt

printf "A szöveg sikeresen át lett alakítva. Az eredmény az out.txt fájlban található.\n"
