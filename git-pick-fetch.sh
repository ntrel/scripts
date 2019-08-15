#untested
OB=FETCH_HEAD
NB=HEAD
echo Picking from $OB onto $NB; press a key to start
read -n1
#~ NB=origin/master
#~ git fetch
#~ git checkout $NB
git cherry-pick `git merge-base $NB $OB`..$OB
