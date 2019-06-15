[[ $1 == "" ]] && echo Usage: $0 [-c] 310 [branchname] && exit
[[ $1 == "-c" ]] && CO=1 && shift

git fetch origin pull/$1/head:$2 || exit
[ "$CO" != "1" ] && exit

if [ "$2" == "" ]; then
	git checkout FETCH_HEAD
else
	git checkout $2
fi
