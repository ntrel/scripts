CMD='diff'
[[ $1 == show ]] && CMD='show' && shift
[[ $1 == -s ]] && CMD+=' --staged' && shift

git $CMD $@ >/c/git/git.diff
geany /c/git/git.diff
