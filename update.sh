#!/usr/bin/env bash

set -eo

git pull
echo "Pulled"

files=$(find . -name '*.sql' -or -name '*.ra' -or -name '*.datalog' -or -name '*.drawio' -or -name '*.md' -or -name '*.png')

git add $files
git commit -a -m "[Autoupdate] $files"
echo Commited changes to $files

git push
echo "Changes uploaded"
