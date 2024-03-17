#!/usr/bin/env bash

set -e -o pipefail

git pull
echo "Pulled"

files=$(find . -name '*.sql' -or -name '*.ra' -or -name '*.datalog' -or -name '*.drawio' -or -name '*.md' -or -name '*.png')

git add $files
git commit -a -m "[Autoupdate] $(git diff --name-only HEAD)"
echo "Commited changes"

git push
echo "Changes uploaded"
