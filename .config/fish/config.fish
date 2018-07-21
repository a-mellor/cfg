# source ~/.fish_variables

# Disable greeting
set fish_greeting

# Aliases
source "$HOME/.aliases.sh"

set EDITOR nvim
# config
set --export ANSIBLE_VAULT_PASSWORD_FILE "$HOME/.ansible/vault_password/honeycomb"

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
if [ -f '/Users/alexmellor/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/alexmellor/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/alexmellor/Downloads/google-cloud-sdk/path.fish.inc'; end; end

# rbenv 
status --is-interactive; and source (rbenv init -|psub)
