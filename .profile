# Reminder: edit in git only!
EDITOR='geany.exe -i'
export EDITOR
alias gi=$EDITOR
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/mingw32/lib/pkgconfig

PATH=$PATH:/c/Program\ Files/Geany/bin/:/c/Program\ Files/Mozilla\ Firefox/:/c/Program\ Files/Google/Chrome/Application:/c/Program\ Files\ \(x86\)/Google/Chrome/Application:/c/DMC/dm/bin:/c/MinGW/bin:/c/v
alias clang="/c/Program\ Files/LLVM/bin/clang"
alias dmake='HOST_DC=dmd /c/D/dmd2/windows/bin/make.exe'

alias gs='git status'
alias gp='git pull --ff-only'
alias gpr='git pull --rebase'

alias ga='git add'
alias gb='git branch'
alias gbd='git branch --sort=-committerdate'
alias gbl='git blame'

alias gd='git diff'
alias ggd='sh /c/git/scripts/git-diff.sh'
alias gds='sh /c/git/scripts/git-diff.sh show'
alias gwd='git diff --word-diff=color'

alias gc='git commit -v'
alias gca='git commit -v --amend'

# gco is too close to gc and is destructive
alias gcko='git checkout'
alias gcp='git cherry-pick'
alias gf='git fetch'
alias gg='git grep -Fn'
alias gfc='sh /c/git/scripts/git-checkout.sh'
alias gfm='gcko master && gp'
alias gl1='git log --pretty=oneline --abbrev-commit'
alias gl='git log --graph --decorate'

alias grb='git rebase'
alias grbc='grb --continue'
alias grbm='gf && grb origin/master'

alias grs='git reset'
alias gst='git stash'

cd /c/git
eval $(ssh-agent -s)
ssh-add
