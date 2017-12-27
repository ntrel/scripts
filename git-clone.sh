URL=https://github.com/$1/$2
[[ $1 == '-g' ]] && shift && URL="git@github.com:$1/$2.git"

[[ $2 == '' ]] && echo "Usage: $0 [-g] user reponame" && exit
echo Cloning $1/$2:
git clone $URL

case $URL in h*)
	URL="git@github.com:ntrel/$2.git"
	echo Adding remote:
	git remote add ntrel $URL
esac
