#!/bin/bash

# Pfad zur Textdatei
file_path="file_context.txt"

# Aktuelles Datum in Europäischer Zeit
Date=$(TZ="Europe/Berlin" date +"%d.%m.%Y")

# Datum in Datei ersetzen
sed -i "s/Date:.*/Date: $date/" "$file_path"
