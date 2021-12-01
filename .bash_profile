alias ll='ls -la'

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
alias master-rebase='git fetch origin master:master && git rebase master'
new-branch() { git fetch origin master:master && git checkout -b $1 master; }

# Inserts branch name into shell prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1 /'
}

export PS1="\[\e[97;48;5;22m\] \w \[\e[97;48;5;25m\]\$(parse_git_branch)\[\e[0m\] > "
