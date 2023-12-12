#!/bin/bash

read -p "Adja meg a felhasználónevet: " username
read -p "Adja meg a verziót: " version
read -p "Adja meg a webhelyet: " site

if [ -z "$username" ] || [ -z "$version" ] || [ -z "$site" ]; then
    echo "Hiba: Mindhárom mező kitöltése kötelező."
    exit 1
fi

printf "username: %s\nversion: %s\nsite: %s\n" "$username" "$version" "$site" > config.yml

echo "A konfigurációs fájl (config.yml) elkészült."

