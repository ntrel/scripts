CMD='diff'
[[ $1 == show ]] && CMD='show' && shift
[[ $1 == -s ]] && CMD+=' --staged' && shift

F=$(dirname $0)/git.diff
git $CMD $@ >$F && geany $F
