git fetch origin master
git checkout origin/master

if [[ $1 == "" ]]; then exit; fi
git checkout -b $1
