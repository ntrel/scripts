GIT=git
STEM=https://github.com/
[ "$1" = '-g' ] && shift && STEM="git@github.com:"
# note this makes fetch slower
[ "$1" = '-1' ] && shift && OPT='--depth 1'

URL=$STEM$1/$2
[ "$2" = '' ] && echo "Usage: $0 [-g] user reponame" && exit

set -x #echo on
$GIT clone $URL $OPT || exit
cd $2

case $URL in h*)
	URL="git@github.com:ntrel/$2.git"
	$GIT remote add ntrel $URL
esac
