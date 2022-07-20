dirlist=$(find ${HOME}  -type d | grep -v '.git/' | grep '/.git$')

for dir in $dirlist
do
  (
  cd $dir
  echo "git clone" "$(git remote get-url --all origin)" "$(pwd)" 
  )
done
