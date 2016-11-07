if [[ $1 == '-h' ]]; then
    echo "Fetch, checkout and branch (optional)"
    echo "$0    # checkout, pull master"
    echo "$0 [-b] [BRANCH]"
    echo "$0 [-b] REPO BRANCH"
    exit
fi
if [[ $1 == '-b' ]]; then CO=1; shift; fi

REPO=origin
BRANCH=master

if [[ $1 == "" ]]; then
    [[ $CO == "" ]] || exit;
    git checkout master || exit;
    git pull --ff-only;
    exit;
fi
if [[ $2 != "" ]]; then
    REPO=$1
    BRANCH=$2
else
    BRANCH=$1
fi

git fetch $REPO $BRANCH
git checkout -q $REPO/$BRANCH || exit

if [ ! $CO ]; then exit; fi
git checkout -b $BRANCH
