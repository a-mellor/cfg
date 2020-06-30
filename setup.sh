#!/usr/bin/env bash

# Fail if an error occurs
set -e

echo "Starting setup"

# =================
# Install x-code commandline tools
# =================
if test ! $(which xcode-select); then
    echo "Installing xcode-select..."
    xcode-select --install

    echo "Press y when xcode is installed"
    read stdin
    echo

    if [[ $stdin != [Yy] ]]; then
        echo "Exiting"
        exit
    fi
fi


# =================
# Use brew to install packages
# =================

# Check if Homebrew is installed
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "Installing packages..."
# See Brewfile to see what is being installed
brew bundle --file "./Brewfile"

echo "Setting up git"

# =================
# Fish shell setup
# =================
echo "Adding fish to known shells"
echo /usr/local/bin/fish | sudo tee -a /etc/shells

echo "Make fish the default shell"
chsh -s /usr/local/bin/fish

# =================
# OS stuff
# =================
echo "Switching scroll direction..."
defaults write -g com.apple.swipescrolldirection -bool FALSE

echo "Show library in finder..."
chflags nohidden ~/Library/

echo "Set fast key repeat rate..."
defaults write NSGlobalDomain KeyRepeat -int 2

# =================
# Setup dotfiles
# =================
echo "Create bare cfg dir..."
# git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no

# Current directory
DIR="$(pwd -P)"

echo "Moving dotfiles from $DIR to $HOME..."
cp -R $DIR/.config/* $HOME/.config/
cp $DIR/.aliases.sh $HOME
cp $DIR/.bash_profile $HOME
cp $DIR/.gitconfig $HOME
cp $DIR/.gitignore_global $HOME
cp $DIR/.profile $HOME
cp $DIR/.vimrc $HOME

# =================
# Manage languae versions with asdf
# =================

