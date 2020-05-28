# Disable greeting
set fish_greeting

# Aliases
source "$HOME/.aliases.sh"

# Terminal
set EDITOR nvim

# config
set --export ANSIBLE_VAULT_PASSWORD_FILE "$HOME/.ansible/vault_password/honeycomb"

# Prompt
function fish_prompt -d "Write out the prompt"
  set laststatus $status

  printf '%s%s %s%s%s%s%s' \
    (set_color green) $USER \
    (set_color yellow) (echo $PWD | sed -e "s|^$HOME|~|") \
    (set_color white) (__fish_git_prompt) \
    (set_color white)
  if test $laststatus -eq 0
    printf " %s\$ %s" (set_color grey) (set_color normal)
  else
    printf " %s✘ %s\$ %s" (set_color -o red) (set_color grey) (set_color normal)
  end
end


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alexmellor/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/alexmellor/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/alexmellor/Downloads/google-cloud-sdk/path.fish.inc'; end; end;

# asdf
source ~/.asdf/asdf.fish

# Postgres config
set --export PGHOST localhost
set --export PGUSER postgres
set --export PGPASSWORD postgres
set PATH "/usr/local/opt/postgresql@12/bin:$PATH"

# Golang
set --export GOPATH $HOME/.local/go
set --export GOBIN $HOME/.local/bin
set --export GOROOT /usr/local/opt/go/libexec
set --export GOPATH $HOME/golang
set PATH $GOPATH/bin $GOROOT/bin $PATH

# macports
set -xg PATH /opt/local/bin /opt/local/sbin $PATH
set -xg MANPATH /opt/local/share/man $MANPATH
set -xg DISPLAY :0.0

