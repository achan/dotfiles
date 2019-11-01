export CIRCLE_TOKEN=ab8b25466bee34ebd6ad422fa50afb2c769a95f5
export LOLCOMMITS_DELAY=3

eval "$(rbenv init -)"

mu() {
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
}

be() {
  bundle exec $@
}

ggrep() {
  git ls-files | grep $1
}

gxgrep() {
  git ls-files | xargs grep $1
}

current_branch() {
  git symbolic-ref --short HEAD
}

gb() {
  git branch $@
}

gco() {
  git checkout $@
}

gci() {
  git commit -av
}

gd() {
  git diff $@
}

gst() {
  git status $@
}

gs() {
  git show $@
}

gl() {
  git log --oneline $@
}

gpurge() {
  git branch | grep -v "master" | xargs git branch -D
}

enablelolcommits() {
  lolcommits --enable --fork
}

rmdd() {
  rm -rf /Users/achan/Library/Developer/Xcode/DerivedData
}

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
