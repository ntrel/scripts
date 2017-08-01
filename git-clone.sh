CMD=https://github.com/$1/$2
[[ $1 == '-g' ]] && shift && CMD="git@github.com:$1/$2.git"

[[ $2 == '' ]] && echo "Usage: $0 [-g] user reponame" && exit
echo Cloning $1/$2:
git clone $CMD
