join () 
{
  local -n array=$1 
  local sep=$2
  local strOarr=''
  for str in "${array[@]}"
    do
      strOarr="${strOarr}${str}${sep}"
    done

  echo "${strOarr}"
}

append ()
{
  local -n array=$1 
  array+=($2)
  echo "${array[@]}"

}
