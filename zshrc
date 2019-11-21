export PATH=~/.rbenv/shims:/usr/local/bin:/usr/bin:/bin
export CIRCLE_TOKEN=ab8b25466bee34ebd6ad422fa50afb2c769a95f5
export LOLCOMMITS_DELAY=3

eval "$(rbenv init -)"

alias enablelolcommits='lolcommits --enable --fork'
alias gci='git commit -av'
alias gpurge='git branch | grep -v "master" | xargs git branch -D'
alias gst='git status'
alias gs='git show'
alias rmdd='rm -rf /Users/achan/Library/Developer/Xcode/DerivedData'

plugins=(git-prompt)

be() {
  bundle exec $@
}

gb() {
  git branch $@
}

gco() {
  git checkout $@
}

gd() {
  git diff $@
}

gl() {
  git log --oneline $@
}

ggrep() {
  git ls-files | grep $1
}

gxgrep() {
  git ls-files | xargs grep $1
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/repos/zsh-git-prompt/zshrc.sh
NEWLINE=$'\n'
PROMPT='%B%~%b $(git_super_status) ${NEWLINE}%D{%l:%M} %# '
