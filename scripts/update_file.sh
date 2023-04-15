#!/bin/bash
TZ=Europe/Berlin date +"Date: %d.%m.%Y" > file_context.txt
git add file_context.txt
git commit -m "Update file_context.txt"
git push
