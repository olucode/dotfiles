#!/bin/sh
# exit when any command fails
# set -e

echo "Setting up your Mac..."

echo "Install oh-my-zsh"
if test ! $(which zsh); then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

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

# Create a Code directory (if it doesn't exist)
[ ! -d "$HOME/code" ] && mkdir $HOME/code

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Downloads the powerlevel10k ZSH Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Symlink the Mackup config file to the home directory
echo "Symlink Mackup config"
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Install NVM
if ! command -v nvm &> /dev/null; then
  echo "Install NVM"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | zsh
fi

# Invoke NVM
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Install LTS Node (as at this time)
# Check if node is installed
if ! command -v node &> /dev/null; then
  echo "Installing Node"
  nvm install --lts
  # Install npm modules
  npm i -g eslint standard typescript @nestjs/cli 
fi

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
