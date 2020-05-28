# ansible
alias avv='ansible-vault view'
alias ave='ansible-vault edit'

# vim
alias v='vim'
alias n='nvim'

alias tree='tree -C'

# nav
alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias code='cd ~/Documents/code/'

#work
alias cad='cd ~/Documents/honeycomb/cadlin'
alias cla='cd ~/Documents/honeycomb/clarence'
alias dyl='cd ~/Documents/honeycomb/dylan/'
alias inf='cd ~/Documents/honeycomb/infrastructure/'
alias jes='cd ~/Documents/honeycomb/jester/'
alias pla='cd ~/Documents/honeycomb/platform/'
alias tra='cd ~/Documents/honeycomb/transcend/'
alias yol='cd ~/Documents/honeycomb/yolanda/'
alias wal='cd ~/Documents/honeycomb/walter/'

# git
alias g='git'
alias ga='git add .; and git status'
alias gap='git add . -p; and git status'
alias gco='git checkout'
alias gd='git diff'
alias gpl='fact && git pull --rebase'
alias gs='git status'
alias glo='git log --oneline --decorate'
alias gca='git commit --amend --no-edit'
alias gbr='git branch'
alias gcm='git commit -m'

# facts
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"

# bundle exec shortcuts
alias be='bundle exec'
alias ber='bundle exec rspec'
alias bi='bundle install'
alias bes='bundle exec rails s'
alias bec='bundle exec rails c'
alias cop='bundle exec rubocop'
alias binr='bin/rspec'

# list
alias l='ls'
alias ll='ls -lh'
alias la='ls -a'
alias lla='ls -lah'

# utils
alias speed='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias config='/usr/bin/git --git-dir=/Users/alexmellor/.cfg/ --work-tree=/Users/alexmellor'

# MFA shell AWS
# alias mfa='~/.mfa.sh'
