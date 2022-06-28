#!/usr/bin/env bash

source "${HOME}/personal/productivity/bashqtools/arrayMethods.sh" # get join
FILE="${HOME}/personal/productivity/paths.sh" #paths
source "${FILE}"

echo "${paths[@]}"
newPaths=$(append paths "$(pwd)")
echo "${newPaths}"

echo "updating ${FILE}"
echo -en '\n' >> $FILE 
echo "paths=(${newPaths})" >> $FILE 
