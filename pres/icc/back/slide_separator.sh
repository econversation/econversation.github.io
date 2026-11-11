#!/bin/bash

dir=${1:-'dir'}
file=${2:-'file'}
# type=${3:-'html'}

set +x

# echo "Hello world"

perl -i -pe 's/<h2/\n\n---\n\n<h2/g' $dir/$file

# perl -i -pe 's/<h2 /---\n\n<h2 /g' $dir/$file.$type

# perl -i -pe 's/<h2 /---\n\n<h2 /g' $dir/*.$type

# echo "Hello world"

# perl -i -pe 's/<details>/<details open>/g' $dir/*.$type