#!/bin/bash

# Pfad zur Textdatei
file_path="file_context.txt"

# Aktuelles Datum in Europäischer Zeit
Date=$(TZ="Europe/Berlin" date +"%d.%m.%Y")

# Datum in Datei ersetzen
sed -i "s/Date:.*/Date: $Date/" "$file_path"

# Commit and push changes
git config --global user.name "TomTatsuo"
git add "$file_path"
git commit -m "file_context.txt"
git fetch origin main
git push "https://${REPO_TOKEN}@github.com/${GITHUB_REPOSITORY}" HEAD:main
