#!/usr/bin/env bash

FILE=./bio.md
if test -f "$FILE"; then
    echo "$FILE exists. Add requirement met!"
else
    echo "$FILE does not exist. You failed to add a new file to revision control..."
fi

cat version.txt | grep 1.0
if [ $? -eq 0 ]; then
   echo "You successfully modified version.txt. Update requirement met!"
else
   echo "You failed to modify version.txt as per specification. Update requirement not met..."
fi
