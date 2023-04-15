#!/bin/bash

# Pfad zur Textdatei
file_path="path/to/file_context.txt"

# Aktuelles Datum in Europäischer Zeit
date=$(TZ="Europe/Berlin" date +"%d.%m.%Y")

# Datum in Datei ersetzen
sed -i "s/Date:.*/Date: $date/" "$file_path"
