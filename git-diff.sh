CMD='diff'
[[ $1 == show ]] && CMD='show' && shift
[[ $1 == -s ]] && CMD+=' --staged' && shift

F=$(dirname $0)/git.diff
git $CMD $@ >$F
if [[ `cat $F` == '' ]]; then 
	echo "No changes."
else
	geany $F
fi
