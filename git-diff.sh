#!/usr/bin/env bash
CMD='diff'
[[ $1 == -s ]] && CMD+=' --staged' && shift

F=$(dirname $0)/git.diff
git $CMD $@ >$F
if [[ `head $F` == '' ]]; then 
	echo "No changes."
else
	geany $F
fi
