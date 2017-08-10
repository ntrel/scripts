EDITOR='geany.exe -i'
export EDITOR
PATH=$PATH:/c/Program\ Files/Geany/bin/:/c/Program\ Files/Mozilla\ Firefox/:/c/Program\ Files/Google/Chrome/Application

alias gs='git status'
alias gp='git pull --ff-only'
alias gpr='git pull --rebase'

alias ga='git add'
alias gd='sh /c/git/scripts/git-diff.sh'
alias gwd='git diff --word-diff=color'
alias gds='sh /c/git/scripts/git-diff.sh show'
alias gc='git commit -v'
alias gca='git commit -v --amend'
alias gco='git checkout'
alias gf='git fetch'
alias gg='sh /c/git/scripts/git-checkout.sh'
alias gl='git log --graph --decorate'

cd /c/git
eval $(ssh-agent -s)
ssh-add
