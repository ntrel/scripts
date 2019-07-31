# Reminder: edit in git only!
EDITOR='geany.exe -i'
export EDITOR
alias gi=$EDITOR
PATH=$PATH:/c/Program\ Files/Geany/bin/:/c/Program\ Files/Mozilla\ Firefox/:/c/Program\ Files/Google/Chrome/Application:/c/DMC/dm/bin

alias gs='git status'
alias gp='git pull --ff-only'
alias gpr='git pull --rebase'

alias ga='git add'
alias gb='git branch'
alias gd='git diff'
alias ggd='sh /c/git/scripts/git-diff.sh'
alias gwd='git diff --word-diff=color'
alias gc='git commit -v'
alias gca='git commit -v --amend'
alias gco='git checkout'
alias gf='git fetch'
alias gg='git grep -F'
alias gcp='sh /c/git/scripts/git-checkout.sh'
alias gl='git log --graph --decorate'
alias grb='git rebase'
alias gst='git stash'

cd /c/git
eval $(ssh-agent -s)
ssh-add
