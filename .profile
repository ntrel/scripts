EDITOR='geany.exe -i'
export EDITOR
PATH=$PATH:/c/Program\ Files/Geany/bin/:/c/Program\ Files/Mozilla\ Firefox/:/c/Program\ Files/Google/Chrome/Application

alias gs='git status'
alias gp='git pull --ff-only'
alias gpr='git pull --rebase'
alias gd='sh /c/git/scripts/git-diff.sh'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='sh /c/git/scripts/git-checkout.sh'
alias gf='git fetch'

cd /c/git
eval $(ssh-agent -s)
ssh-add
