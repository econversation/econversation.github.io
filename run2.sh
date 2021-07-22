#!/bin/sh

set -ev

# find ./ -iname "*.md" -type f -exec sh -c 'pandoc "${0}" -o "${0%.md}.pdf"' {} \;

find ./ -iname "*.md" -type f -exec sh -c 'pandoc -s "${0}" -V linkcolor:#B31B1B -o "${0%.md}.html"' {} \;

