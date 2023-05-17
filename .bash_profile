alias ll="ls -la"
# Use bat for prettier output
# https://github.com/sharkdp/bat
alias cat="bat --paging=never"

# App Launch Aliases
alias v='vim'

# Git Aliases
alias push='git push'
alias gs='git status'
alias pull='git pull'
alias add='git add'
alias commit='git commit -m'
alias diff='git diff'
alias log='git log'
alias gb='git branch'

# Git helpers
new-branch() { git fetch origin && git checkout -b $1 origin/develop && git branch --unset-upstream; }
cleanup_branches() {
  git remote prune origin && git branch -vv | grep ': gone' | grep -v '\*' | awk '{ print $1; }' | xargs -r -n1 git branch -D;
}

# Git completion
source "/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash"

# Inserts branch name into shell prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1 /'
}
export PS1="\[\e[97;48;5;22m\] \w \[\e[97;48;5;25m\]\$(parse_git_branch)\[\e[0m\] > "

# NVM config
# https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
