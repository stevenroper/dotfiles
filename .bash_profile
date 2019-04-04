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

# Inserts branch name into shell prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[92m\][\w]\[\033[96m\]\$(parse_git_branch) \[\033[93m\]> \[\033[0m\]"
