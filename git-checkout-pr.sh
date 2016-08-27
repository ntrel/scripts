[[ $1 == "" ]] && echo Usage: $0 310 [branchname] && exit

git fetch origin pull/$1/head:$2 || exit
if [ "$2" == "" ]; then
	git checkout FETCH_HEAD
else
	git checkout $2
fi
