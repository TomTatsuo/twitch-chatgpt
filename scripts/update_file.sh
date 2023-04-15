#!/bin/bash

# Pfad zur Textdatei
file_path="file_context.txt"

# Aktuelles Datum in Europäischer Zeit
Date=$(TZ="Europe/Berlin" date +"%d.%m.%Y")

# Datum in Datei ersetzen
sed -i "s/Date: .*/Date: $Date/" "$file_path"

# Commit and push changes
git add "$file_path"
git commit -m "Update File"
git push origin --force
