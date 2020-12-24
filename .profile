# Reminder: edit in git only!
EDITOR='geany.exe -i'
export EDITOR
alias gi=$EDITOR
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/mingw32/lib/pkgconfig

PATH=$PATH:/c/Program\ Files/Geany/bin/:/c/Program\ Files/Mozilla\ Firefox/:/c/Program\ Files/Google/Chrome/Application:/c/Program\ Files\ \(x86\)/Google/Chrome/Application:/c/DMC/dm/bin:/c/v:/c/mingw-w64/mingw32/bin:/c/Users/ntrel/Geany\ 1.36/bin
#/c/MinGW/bin
alias clang="/c/Program\ Files/LLVM/bin/clang"
alias dmake='HOST_DC=dmd /c/D/dmd2/windows/bin/make.exe'

alias ga='git add'
alias gb='git branch'
alias gbd='git branch --sort=-committerdate'
alias gbl='git blame'

alias gd='git diff'
alias ggd='sh /c/git/scripts/git-diff.sh'
alias gds='sh /c/git/scripts/git-diff.sh show'
alias gdw='git diff --word-diff=color'

alias gc='git commit -v'
alias gca='git commit -v --amend'
# gco is too close to gc and is destructive
alias gcko='git checkout'
alias gcp='git cherry-pick'
alias gf='git fetch'
alias gfn='git fetch ntrel'
alias gfo='git fetch origin'
alias gfc='sh /c/git/scripts/git-checkout.sh'
alias gg='git grep -Fn'
alias glo='git log --pretty=oneline --abbrev-commit'
alias gl='git log --graph --decorate'

alias grb='git rebase'
alias grbc='grb --continue'
alias grbm='gfo && grb origin/master'

alias gp='git pull --ff-only'
alias gpm='gcko master && gp'
alias gpr='git pull --rebase'

alias grs='git reset'
alias gs='git status'
alias gst='git stash'
alias gstm='gst push -m'
alias gsw='git switch'

alias vout='/c/git/vdev/tools/mktest.exe ./v.exe'


cd /c/git
eval $(ssh-agent -s)
ssh-add
