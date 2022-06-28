#!/usr/bin/env bash

source "${HOME}/personal/productivity/bashqtools/arrayMethods.sh" # get join
source "${HOME}/personal/productivity/paths.sh" #paths

echo "${paths[@]}"

newPaths=$(append paths bla)
echo "${newPaths}"
