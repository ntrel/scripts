EDITOR='geany.exe -i'
export EDITOR
PATH=$PATH:/c/Program\ Files/Geany/bin/:/c/Program\ Files/Mozilla\ Firefox/

alias gs='git status'
alias gp='git pull --ff-only'
alias gpr='git pull --rebase'
alias gd='sh /c/git/git-diff.sh'

cd /c/git/stuff
eval $(ssh-agent -s)
ssh-add
