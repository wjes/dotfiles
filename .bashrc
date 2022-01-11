#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="${PATH}:${HOME}/.local/bin"

alias v='nvim'

alias ls='ls --color=auto -h'
alias l='ls -lX'
alias ll='ls -lXa'
alias cc='clear'
alias rr='reset'

alias gta='git add'
alias gtc='git commit -m'
alias gtp='git push'
alias gts='git status'

alias stng-production='ssh -i ~/.ssh/stngec2production.pem ec2-user@api.stng.cl'
alias stng-testing='ssh -i ~/.ssh/stng-kp-testing-2.pem ec2-user@api.stngtesting.de'
alias stng-tableau='ssh -i ~/.ssh/stng-kp-tableau-warren.pem root@18.229.15.64'
alias stng='terminator --layout STNG'

alias go='cd $(ls -d */ | fzf)'

# Dotfile
alias dotfile='git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}'
alias dfs='dotfile status'
alias dfa='dotfile add -f'
alias dfc='dotfile commit -m'
alias dfp='dotfile push'

PS1="» "
