#!/usr/bin/env bash

dirlist=$(find ${HOME}  -type d | grep -v '.git/' | grep '/.git$')

SUB='git@github.com'

# URL="$(git remote get-url origin)"
# echo "git clone" "$URL" "$(pwd)" >> out.txt

for dir in $dirlist
do
  (
  cd $dir
  URL="$(git remote get-url origin)"
  if [[ "$URL" == *"$SUB"* ]]; then
      echo -e "git clone" "$URL" "$(pwd | sed 's/\/.git//')\n" 
  fi
  );
done >> localGitState.sh
