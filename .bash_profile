export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# App Launch Aliases
alias s='open -a "Sublime Text"'
alias v='vim'

# Rails shortcuts
alias rs='rails server'
alias rc='rails console'

# Repo Path Aliases
alias mc="cd ~/Projects/mc"
alias qa="cd ~/Projects/masteryconnect-qa-automation"
alias rick="cd ~/Projects/masteryconnect-team-rick"
alias parmer="cd ~/Projects/masteryconnect-team-parmer"
alias eric="cd ~/Projects/masteryconnect-team-eric"
alias jenkins="cd ~/Projects/masteryconnect-team-jenkins"
alias jenn="cd ~/Projects/masteryconnect-team-jenn"
alias bibhor="cd ~/Projects/masteryconnect-team-bibhor"
alias blom="cd ~/Projects/masteryconnect-team-blom"
alias doug="cd ~/Projects/masteryconnect-doug"
alias automation="cd ~/Projects/mc-automation"
alias marketing="cd ~/Projects/mc-automation-marketing"
alias pp="cd ~/Projects/Personal\ Projects"

# Git Aliases
alias push="git push"
alias gs="git status"
alias pull="git pull && bundle"
alias add="git add"
alias commit="git commit -m"

# Runs git-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Inserts branch name into shell prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[92m\][\w]\[\033[96m\]\$(parse_git_branch) \[\033[93m\]> \[\033[0m\]"

# Tells Allure where the home folder for Java is
export JAVA_HOME=$(/usr/libexec/java_home)
