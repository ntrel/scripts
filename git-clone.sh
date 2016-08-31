[[ $1 == '' ]] && echo "Usage: $0 [-g] user reponame" && exit
CMD=https://github.com/$1/$2
[[ $1 == '-g' ]] && shift && CMD='git@github.com:$1/$2.git'
git clone $CMD
