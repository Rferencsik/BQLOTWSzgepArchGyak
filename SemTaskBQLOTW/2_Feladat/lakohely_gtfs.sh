#!/bin/bash

zip_url="https://gtfsapi.mvkzrt.hu/gtfs/gtfs.zip"
output_folder="/home/robert/Dokumentumok/BQLOTWSzgepArchGyak/SemTaskBQLOTW/2_Feladat/GTFS"

if [ ! -d "$output_folder" ]; then
    mkdir "$output_folder"
fi

cd "$output_folder" || exit

if [ -e "downloaded_file.zip" ]; then
    echo "Deleting previous version of downloaded ZIP file."
    rm downloaded_file.zip
fi

if [ "$(ls -A .)" ]; then
    echo "Deleting previous content of the extraction folder."
    rm -r *
fi

wget "$zip_url" -O downloaded_file.zip

if [ $? -eq 0 ]; then
    echo "ZIP file download successful."
    unzip downloaded_file.zip

    if [ $? -eq 0 ]; then
        echo "Extraction successful."
    else
        echo "Extraction failed."
        exit 1
    fi
else
    echo "ZIP file download failed."
    exit 1
fi
touch lakohelyutvonal.txt
output_file="lakohelyutvonal.txt"

grep "$Szent Anna tér" "/home/robert/Dokumentumok/BQLOTWSzgepArchGyak/SemTaskBQLOTW/2_Feladat/GTFS/routes.txt" >>  "$output_file"
# Ellenőrizzük, hogy a szűrés sikeres volt-e
if [ $? -eq 0 ]; then
    echo "A szűrt eredmények ki lettek írva a $output_file fájlba."
else
    echo "Hiba történt a szűrés során."
fi
