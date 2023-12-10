#!/bin/bash

# Felhasználótól név bekérése
read -p "Kérem adja meg a nevet: " nev

# Felhasználótól telefonszám bekérése
read -p "Kérem adja meg a telefonszámot: " telefon

# JSON fájl létrehozása
echo "{\"nev\": \"$nev\", \"telefon\": \"$telefon\"}" > neptunkod.json

echo "Az adatok ki lettek írva a neptunkod.json fájlba."
