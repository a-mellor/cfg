# Node num version manager
export NVM_DIR="/Users/alexmellor/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Ruby rbenv version manager
if [ -d "$HOME/.rbenv" ]; then
  eval "$("$HOME"/.rbenv/bin/rbenv init -)"
fi

export ANSIBLE_VAULT_PASSWORD_FILE=~/.ansible/vault_password/honeycomb
