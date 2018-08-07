if [[ $1 == '' ]]; then
	echo "Usage: $0 <commit>"
	exit
fi
git push origin $1:master
