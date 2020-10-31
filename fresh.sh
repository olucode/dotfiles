#!/bin/sh
# exit when any command fails
# set -e

echo "Setting up your Mac..."

echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew recipes
echo "Brew Update"
brew update

# Install all our dependencies with bundle (See Brewfile)
echo "Brew Bundle"
brew tap homebrew/bundle
brew bundle

# Set default MySQL root password and auth type.
# mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"

# Install global Composer packages
# echo "Composer install: valet, laravel"
# /usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
# echo "Valet install"
# $HOME/.composer/vendor/bin/valet install

# Create a Code directory
mkdir $HOME/code

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
echo "Symlink Mackup config"
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Install NVM
echo "Install NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | zsh

# Invoke NVM
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Install LTS Node (as at this time)
nvm install 12.19.0

# Install npm modules
npm i -g eslint pure-prompt standard typescript 

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
