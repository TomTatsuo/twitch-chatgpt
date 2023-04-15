#!/bin/bash

# Aktuelles Datum in die Variable 'current_date' speichern
current_date=$(date +"%d.%m.%Y")

# Das Datum in die Datei 'file_context.txt' schreiben
sed -i "s/Date:.*/Date: $current_date/g" file_context.txt

# Git Befehle ausführen
git add file_context.txt
git commit -m "Update file_context.txt with current date"
git push origin master
