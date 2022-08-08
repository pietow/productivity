#!/usr/bin/env bash

source "${HOME}/personal/productivity/bashqtools/arrayMethods.sh" # get append
FILE="${HOME}/personal/productivity/paths.sh" #paths
source "${FILE}"

# echo "${paths[@]}"
newPaths=$(append paths "$(pwd | sed 's#'$HOME'#~#' )")
newPaths=$(echo "${newPaths}" | sed 's#'$HOME'#~#g' ) 
echo "${newPaths}"

# echo "${newPaths}" | sed "s#$HOME#~#g"

# echo "updating ${FILE}"
echo -en '\n' >> $FILE 
echo "paths=(${newPaths})" >> $FILE 
