if [[ $1 == '-h' ]]; then
    echo "Fetch and checkout."
    echo "-b = Create local branch"
    echo "-p = Pull existing branch"
    echo "$0 [-b|-p] [BRANCH]"
    echo "$0 [-b|-p] REPO BRANCH"
    exit
fi
if [[ $1 == '-b' ]]; then CO=1; shift; fi
if [[ $1 == '-p' ]]; then PULL=1; shift; fi

REPO=origin
BRANCH=master

if [[ $2 != "" ]]; then
    REPO=$1
    BRANCH=$2
else
    [[ $1 != "" ]] && BRANCH=$1
fi

if [ ! $PULL ]; then
    git fetch $REPO $BRANCH
    git checkout -q $REPO/$BRANCH || exit

    if [ ! $CO ]; then exit; fi
    git checkout -b $BRANCH
else
    [[ $CO != "" ]] && echo Both flags set! && exit;
    [[ $2 != "" ]] && echo "Can't provide REPO with -p" && exit;
    git checkout $BRANCH || exit;
    git pull --ff-only;
fi