#!/bin/sh
# Various actions against source files to make sure the changes only apply to
# actual code, not indentation or formatting shit

# Make sure we are in the good folder
if [ ! -f COPYING ]
then
    echo "Launch me in the root folder"
    exit 1
fi

# Remove trailing spaces on every line
LANG=C find . -name "*.php" -exec sed -e 's/ +$//' -i '' {} \;
