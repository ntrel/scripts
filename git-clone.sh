URL=https://github.com/$1/$2
[[ $1 == '-g' ]] && shift && URL="git@github.com:$1/$2.git"
# note this makes fetch slower
[[ $1 == '-1' ]] && shift && OPT='--depth 1'

[[ $2 == '' ]] && echo "Usage: $0 [-g] user reponame" && exit
echo Cloning $1/$2:
git clone $URL $OPT
cd $2

case $URL in h*)
	URL="git@github.com:ntrel/$2.git"
	echo Adding remote:
	git remote add ntrel $URL
esac
