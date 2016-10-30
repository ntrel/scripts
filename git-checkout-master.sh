git fetch origin master
git checkout origin/master || exit

if [[ $1 == "" ]]; then exit; fi
git checkout -b $1
